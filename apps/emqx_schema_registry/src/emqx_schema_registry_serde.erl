%%--------------------------------------------------------------------
%% Copyright (c) 2023-2024 EMQ Technologies Co., Ltd. All Rights Reserved.
%%--------------------------------------------------------------------
-module(emqx_schema_registry_serde).

-behaviour(emqx_rule_funcs).

-include("emqx_schema_registry.hrl").
-include_lib("emqx/include/logger.hrl").
-include_lib("snabbkaffe/include/snabbkaffe.hrl").

%% API
-export([
    make_serde/3,
    handle_rule_function/2,
    destroy/1
]).

%% Tests
-export([
    decode/2,
    decode/3,
    encode/2,
    encode/3,
    eval_decode/2,
    eval_encode/2
]).

-define(BOOL(SerdeName, EXPR),
    try
        _ = EXPR,
        true
    catch
        error:Reason ->
            ?SLOG(debug, #{msg => "schema_check_failed", schema => SerdeName, reason => Reason}),
            false
    end
).

%%------------------------------------------------------------------------------
%% API
%%------------------------------------------------------------------------------

-spec handle_rule_function(atom(), list()) -> any() | {error, no_match_for_function}.
handle_rule_function(sparkplug_decode, [Data]) ->
    handle_rule_function(
        schema_decode,
        [?EMQX_SCHEMA_REGISTRY_SPARKPLUGB_SCHEMA_NAME, Data, <<"Payload">>]
    );
handle_rule_function(sparkplug_decode, [Data | MoreArgs]) ->
    handle_rule_function(
        schema_decode,
        [?EMQX_SCHEMA_REGISTRY_SPARKPLUGB_SCHEMA_NAME, Data | MoreArgs]
    );
handle_rule_function(sparkplug_encode, [Term]) ->
    handle_rule_function(
        schema_encode,
        [?EMQX_SCHEMA_REGISTRY_SPARKPLUGB_SCHEMA_NAME, Term, <<"Payload">>]
    );
handle_rule_function(sparkplug_encode, [Term | MoreArgs]) ->
    handle_rule_function(
        schema_encode,
        [?EMQX_SCHEMA_REGISTRY_SPARKPLUGB_SCHEMA_NAME, Term | MoreArgs]
    );
handle_rule_function(schema_decode, [SchemaId, Data | MoreArgs]) ->
    decode(SchemaId, Data, MoreArgs);
handle_rule_function(schema_decode, Args) ->
    error({args_count_error, {schema_decode, Args}});
handle_rule_function(schema_encode, [SchemaId, Term | MoreArgs]) ->
    %% encode outputs iolists, but when the rule actions process those
    %% it might wrongly encode them as JSON lists, so we force them to
    %% binaries here.
    IOList = encode(SchemaId, Term, MoreArgs),
    iolist_to_binary(IOList);
handle_rule_function(schema_encode, Args) ->
    error({args_count_error, {schema_encode, Args}});
handle_rule_function(schema_check_decode, [SchemaId, Data | MoreArgs]) ->
    check_decode(SchemaId, Data, MoreArgs);
handle_rule_function(schema_check_encode, [SchemaId, Term | MoreArgs]) ->
    check_encode(SchemaId, Term, MoreArgs);
handle_rule_function(_, _) ->
    {error, no_match_for_function}.

-spec check_decode(schema_name(), encoded_data(), [term()]) -> decoded_data().
check_decode(SerdeName, Data, VarArgs) ->
    with_serde(
        SerdeName,
        fun(Serde) ->
            ?BOOL(SerdeName, eval_decode(Serde, [Data | VarArgs]))
        end
    ).

-spec check_encode(schema_name(), decoded_data(), [term()]) -> encoded_data().
check_encode(SerdeName, Data, VarArgs) when is_list(VarArgs) ->
    with_serde(
        SerdeName,
        fun(Serde) ->
            ?BOOL(SerdeName, eval_encode(Serde, [Data | VarArgs]))
        end
    ).

-spec decode(schema_name(), encoded_data()) -> decoded_data().
decode(SerdeName, RawData) ->
    decode(SerdeName, RawData, []).

-spec decode(schema_name(), encoded_data(), [term()]) -> decoded_data().
decode(SerdeName, RawData, VarArgs) when is_list(VarArgs) ->
    with_serde(SerdeName, fun(Serde) ->
        eval_decode(Serde, [RawData | VarArgs])
    end).

-spec encode(schema_name(), decoded_data()) -> encoded_data().
encode(SerdeName, RawData) ->
    encode(SerdeName, RawData, []).

-spec encode(schema_name(), decoded_data(), [term()]) -> encoded_data().
encode(SerdeName, Data, VarArgs) when is_list(VarArgs) ->
    with_serde(
        SerdeName,
        fun(Serde) ->
            eval_encode(Serde, [Data | VarArgs])
        end
    ).

with_serde(Name, F) ->
    case emqx_schema_registry:get_serde(Name) of
        {ok, Serde} ->
            F(Serde);
        {error, not_found} ->
            error({serde_not_found, Name})
    end.

-spec make_serde(serde_type(), schema_name(), schema_source()) -> serde().
make_serde(avro, Name, Source) ->
    Store0 = avro_schema_store:new([map]),
    %% import the schema into the map store with an assigned name
    %% if it's a named schema (e.g. struct), then Name is added as alias
    Store = avro_schema_store:import_schema_json(Name, Source, Store0),
    #serde{
        name = Name,
        type = avro,
        eval_context = Store
    };
make_serde(protobuf, Name, Source) ->
    SerdeMod = make_protobuf_serde_mod(Name, Source),
    #serde{
        name = Name,
        type = protobuf,
        eval_context = SerdeMod
    };
make_serde(json, Name, Source) ->
    case json_decode(Source) of
        SchemaObj when is_map(SchemaObj) ->
            %% jesse:add_schema adds any map() without further validation
            %% if it's not a map, then case_clause
            ok = jesse_add_schema(Name, SchemaObj),
            #serde{name = Name, type = json};
        _NotMap ->
            error({invalid_json_schema, bad_schema_object})
    end.

eval_decode(#serde{type = avro, name = Name, eval_context = Store}, [Data]) ->
    Opts = avro:make_decoder_options([{map_type, map}, {record_type, map}]),
    avro_binary_decoder:decode(Data, Name, Store, Opts);
eval_decode(#serde{type = protobuf, eval_context = SerdeMod}, [EncodedData, MessageName0]) ->
    MessageName = binary_to_existing_atom(MessageName0, utf8),
    Decoded = apply(SerdeMod, decode_msg, [EncodedData, MessageName]),
    emqx_utils_maps:binary_key_map(Decoded);
eval_decode(#serde{type = json, name = Name}, [Data]) ->
    true = is_binary(Data),
    Term = json_decode(Data),
    {ok, NewTerm} = jesse_validate(Name, Term),
    NewTerm.

eval_encode(#serde{type = avro, name = Name, eval_context = Store}, [Data]) ->
    avro_binary_encoder:encode(Store, Name, Data);
eval_encode(#serde{type = protobuf, eval_context = SerdeMod}, [DecodedData0, MessageName0]) ->
    DecodedData = emqx_utils_maps:safe_atom_key_map(DecodedData0),
    MessageName = binary_to_existing_atom(MessageName0, utf8),
    apply(SerdeMod, encode_msg, [DecodedData, MessageName]);
eval_encode(#serde{type = json, name = Name}, [Map]) ->
    %% The input Map may not be a valid JSON term for jesse
    Data = iolist_to_binary(emqx_utils_json:encode(Map)),
    NewMap = json_decode(Data),
    case jesse_validate(Name, NewMap) of
        {ok, _} ->
            Data;
        {error, Reason} ->
            error(Reason)
    end.

destroy(#serde{type = avro, name = _Name}) ->
    ?tp(serde_destroyed, #{type => avro, name => _Name}),
    ok;
destroy(#serde{type = protobuf, name = _Name, eval_context = SerdeMod}) ->
    unload_code(SerdeMod),
    ?tp(serde_destroyed, #{type => protobuf, name => _Name}),
    ok;
destroy(#serde{type = json, name = Name}) ->
    ok = jesse_del_schema(Name),
    ?tp(serde_destroyed, #{type => json, name => Name}),
    ok.

%%------------------------------------------------------------------------------
%% Internal fns
%%------------------------------------------------------------------------------

json_decode(Data) ->
    emqx_utils_json:decode(Data, [return_maps]).

jesse_add_schema(Name, Obj) ->
    jesse:add_schema(jesse_name(Name), Obj).

jesse_del_schema(Name) ->
    jesse:del_schema(jesse_name(Name)).

jesse_validate(Name, Map) ->
    jesse:validate(jesse_name(Name), Map, []).

jesse_name(Str) ->
    unicode:characters_to_list(Str).

-spec make_protobuf_serde_mod(schema_name(), schema_source()) -> module().
make_protobuf_serde_mod(Name, Source) ->
    {SerdeMod0, SerdeModFileName} = protobuf_serde_mod_name(Name),
    case lazy_generate_protobuf_code(Name, SerdeMod0, Source) of
        {ok, SerdeMod, ModBinary} ->
            load_code(SerdeMod, SerdeModFileName, ModBinary),
            SerdeMod;
        {error, #{error := Error, warnings := Warnings}} ->
            ?SLOG(
                warning,
                #{
                    msg => "error_generating_protobuf_code",
                    error => Error,
                    warnings => Warnings
                }
            ),
            error({invalid_protobuf_schema, Error})
    end.

-spec protobuf_serde_mod_name(schema_name()) -> {module(), string()}.
protobuf_serde_mod_name(Name) ->
    %% must be a string (list)
    SerdeModName = "$schema_parser_" ++ binary_to_list(Name),
    SerdeMod = list_to_atom(SerdeModName),
    %% the "path" to the module, for `code:load_binary'.
    SerdeModFileName = SerdeModName ++ ".memory",
    {SerdeMod, SerdeModFileName}.

-spec lazy_generate_protobuf_code(schema_name(), module(), schema_source()) ->
    {ok, module(), binary()} | {error, #{error := term(), warnings := [term()]}}.
lazy_generate_protobuf_code(Name, SerdeMod0, Source) ->
    %% We run this inside a transaction with locks to avoid running
    %% the compile on all nodes; only one will get the lock, compile
    %% the schema, and other nodes will simply read the final result.
    {atomic, Res} = mria:transaction(
        ?SCHEMA_REGISTRY_SHARD,
        fun lazy_generate_protobuf_code_trans/3,
        [Name, SerdeMod0, Source]
    ),
    Res.

-spec lazy_generate_protobuf_code_trans(schema_name(), module(), schema_source()) ->
    {ok, module(), binary()} | {error, #{error := term(), warnings := [term()]}}.
lazy_generate_protobuf_code_trans(Name, SerdeMod0, Source) ->
    Fingerprint = erlang:md5(Source),
    _ = mnesia:lock({record, ?PROTOBUF_CACHE_TAB, Fingerprint}, write),
    case mnesia:read(?PROTOBUF_CACHE_TAB, Fingerprint) of
        [#protobuf_cache{module = SerdeMod, module_binary = ModBinary}] ->
            ?tp(schema_registry_protobuf_cache_hit, #{name => Name}),
            {ok, SerdeMod, ModBinary};
        [] ->
            ?tp(schema_registry_protobuf_cache_miss, #{name => Name}),
            case generate_protobuf_code(SerdeMod0, Source) of
                {ok, SerdeMod, ModBinary} ->
                    CacheEntry = #protobuf_cache{
                        fingerprint = Fingerprint,
                        module = SerdeMod,
                        module_binary = ModBinary
                    },
                    ok = mnesia:write(?PROTOBUF_CACHE_TAB, CacheEntry, write),
                    {ok, SerdeMod, ModBinary};
                {ok, SerdeMod, ModBinary, _Warnings} ->
                    CacheEntry = #protobuf_cache{
                        fingerprint = Fingerprint,
                        module = SerdeMod,
                        module_binary = ModBinary
                    },
                    ok = mnesia:write(?PROTOBUF_CACHE_TAB, CacheEntry, write),
                    {ok, SerdeMod, ModBinary};
                error ->
                    {error, #{error => undefined, warnings => []}};
                {error, Error} ->
                    {error, #{error => Error, warnings => []}};
                {error, Error, Warnings} ->
                    {error, #{error => Error, warnings => Warnings}}
            end
    end.

generate_protobuf_code(SerdeMod, Source) ->
    gpb_compile:string(
        SerdeMod,
        Source,
        [
            binary,
            strings_as_binaries,
            {maps, true},
            %% Fixme: currently, some bug in `gpb' prevents this
            %% option from working with `oneof' types...  We're then
            %% forced to use atom key maps.
            %% {maps_key_type, binary},
            {maps_oneof, flat},
            {verify, always},
            {maps_unset_optional, omitted}
        ]
    ).

-spec load_code(module(), string(), binary()) -> ok.
load_code(SerdeMod, SerdeModFileName, ModBinary) ->
    _ = code:purge(SerdeMod),
    {module, SerdeMod} = code:load_binary(SerdeMod, SerdeModFileName, ModBinary),
    ok.

-spec unload_code(module()) -> ok.
unload_code(SerdeMod) ->
    _ = code:purge(SerdeMod),
    _ = code:delete(SerdeMod),
    ok.
