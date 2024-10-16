[
  {
    "tableName": "sys_user",
    "id": "userId",
    "fields": [
      {
        "type": "bigint(20)",
        "required": true,
        "name": "user_id",
        "isnull": false,
        "default": null,
        "auto_increment": true,
        "alias": "userId"
      },
      {
        "type": "bigint(20)",
        "required": false,
        "name": "dept_id",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "deptId"
      },
      {
        "type": "varchar(30)",
        "required": false,
        "name": "user_name",
        "isnull": false,
        "default": null,
        "auto_increment": false,
        "alias": "userName"
      },
      {
        "type": "varchar(30)",
        "required": false,
        "name": "nick_name",
        "isnull": false,
        "default": null,
        "auto_increment": false,
        "alias": "nickName"
      },
      {
        "type": "varchar(2)",
        "required": false,
        "name": "user_type",
        "isnull": true,
        "default": "00",
        "auto_increment": false,
        "alias": "userType"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "email",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "email"
      },
      {
        "type": "varchar(11)",
        "required": false,
        "name": "phonenumber",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "phonenumber"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "sex",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "sex"
      },
      {
        "type": "varchar(100)",
        "required": false,
        "name": "avatar",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "avatar"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "status",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "status"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "del_flag",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "delFlag"
      },
      {
        "type": "varchar(128)",
        "required": false,
        "name": "login_ip",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "loginIp"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "login_date",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "loginDate"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "create_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "createBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "create_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "createTime"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "update_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "updateBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "update_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "updateTime"
      },
      {
        "type": "varchar(500)",
        "required": false,
        "name": "remark",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "remark"
      }
    ]
  },
  {
    "tableName": "sys_role",
    "id": "roleId",
    "fields": [
      {
        "type": "bigint(20)",
        "required": true,
        "name": "role_id",
        "isnull": false,
        "default": null,
        "auto_increment": true,
        "alias": "roleId"
      },
      {
        "type": "varchar(30)",
        "required": false,
        "name": "role_name",
        "isnull": false,
        "default": null,
        "auto_increment": false,
        "alias": "roleName"
      },
      {
        "type": "varchar(100)",
        "required": false,
        "name": "role_key",
        "isnull": false,
        "default": null,
        "auto_increment": false,
        "alias": "roleKey"
      },
      {
        "type": "int(4)",
        "required": false,
        "name": "role_sort",
        "isnull": false,
        "default": null,
        "auto_increment": false,
        "alias": "roleSort"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "data_scope",
        "isnull": true,
        "default": "1",
        "auto_increment": false,
        "alias": "dataScope"
      },
      {
        "type": "tinyint(1)",
        "required": false,
        "name": "menu_check_strictly",
        "isnull": true,
        "default": "1",
        "auto_increment": false,
        "alias": "menuCheckStrictly"
      },
      {
        "type": "tinyint(1)",
        "required": false,
        "name": "dept_check_strictly",
        "isnull": true,
        "default": "1",
        "auto_increment": false,
        "alias": "deptCheckStrictly"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "status",
        "isnull": false,
        "default": null,
        "auto_increment": false,
        "alias": "status"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "del_flag",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "delFlag"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "create_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "createBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "create_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "createTime"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "update_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "updateBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "update_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "updateTime"
      },
      {
        "type": "varchar(500)",
        "required": false,
        "name": "remark",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "remark"
      }
    ]
  },
  {
    "tableName": "sys_product",
    "id": "id",
    "fields": [
      {
        "type": "int(11)",
        "required": true,
        "name": "id",
        "isnull": false,
        "default": null,
        "auto_increment": true,
        "alias": "id"
      },
      {
        "type": "varchar(255)",
        "required": false,
        "name": "name",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "name"
      },
      {
        "type": "varchar(255)",
        "required": false,
        "name": "node_type",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "nodeType"
      },
      {
        "type": "varchar(255)",
        "required": false,
        "name": "net_type",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "netType"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "create_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "createTime"
      },
      {
        "type": "varchar(255)",
        "required": false,
        "name": "desc",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "desc"
      },
      {
        "type": "varchar(255)",
        "required": false,
        "name": "key",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "key"
      },
      {
        "type": "varchar(255)",
        "required": false,
        "name": "secret",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "secret"
      },
      {
        "type": "bit(1)",
        "required": false,
        "name": "auto_register",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "autoRegister"
      },
      {
        "type": "text",
        "required": false,
        "name": "topic",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "topic"
      },
      {
        "type": "text",
        "required": false,
        "name": "thing",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "thing"
      },
      {
        "type": "text",
        "required": false,
        "name": "auto_topic",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "autoTopic"
      }
    ]
  },
  {
    "tableName": "sys_post",
    "id": "postId",
    "fields": [
      {
        "type": "bigint(20)",
        "required": true,
        "name": "post_id",
        "isnull": false,
        "default": null,
        "auto_increment": true,
        "alias": "postId"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "post_code",
        "isnull": false,
        "default": null,
        "auto_increment": false,
        "alias": "postCode"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "post_name",
        "isnull": false,
        "default": null,
        "auto_increment": false,
        "alias": "postName"
      },
      {
        "type": "int(4)",
        "required": false,
        "name": "post_sort",
        "isnull": false,
        "default": null,
        "auto_increment": false,
        "alias": "postSort"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "status",
        "isnull": false,
        "default": null,
        "auto_increment": false,
        "alias": "status"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "create_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "createBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "create_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "createTime"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "update_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "updateBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "update_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "updateTime"
      },
      {
        "type": "varchar(500)",
        "required": false,
        "name": "remark",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "remark"
      }
    ]
  },
  {
    "tableName": "sys_oper_log",
    "id": "operId",
    "fields": [
      {
        "type": "bigint(20)",
        "required": true,
        "name": "oper_id",
        "isnull": false,
        "default": null,
        "auto_increment": true,
        "alias": "operId"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "title",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "title"
      },
      {
        "type": "int(2)",
        "required": false,
        "name": "business_type",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "businessType"
      },
      {
        "type": "varchar(100)",
        "required": false,
        "name": "method",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "method"
      },
      {
        "type": "varchar(10)",
        "required": false,
        "name": "request_method",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "requestMethod"
      },
      {
        "type": "int(1)",
        "required": false,
        "name": "operator_type",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "operatorType"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "oper_name",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "operName"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "dept_name",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "deptName"
      },
      {
        "type": "varchar(255)",
        "required": false,
        "name": "oper_url",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "operUrl"
      },
      {
        "type": "varchar(128)",
        "required": false,
        "name": "oper_ip",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "operIp"
      },
      {
        "type": "varchar(255)",
        "required": false,
        "name": "oper_location",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "operLocation"
      },
      {
        "type": "varchar(2000)",
        "required": false,
        "name": "oper_param",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "operParam"
      },
      {
        "type": "varchar(2000)",
        "required": false,
        "name": "json_result",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "jsonResult"
      },
      {
        "type": "int(1)",
        "required": false,
        "name": "status",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "status"
      },
      {
        "type": "varchar(2000)",
        "required": false,
        "name": "error_msg",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "errorMsg"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "oper_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "operTime"
      }
    ]
  },
  {
    "tableName": "sys_notice",
    "id": "noticeId",
    "fields": [
      {
        "type": "int(4)",
        "required": true,
        "name": "notice_id",
        "isnull": false,
        "default": null,
        "auto_increment": true,
        "alias": "noticeId"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "notice_title",
        "isnull": false,
        "default": null,
        "auto_increment": false,
        "alias": "noticeTitle"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "notice_type",
        "isnull": false,
        "default": null,
        "auto_increment": false,
        "alias": "noticeType"
      },
      {
        "type": "longblob",
        "required": false,
        "name": "notice_content",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "noticeContent"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "status",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "status"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "create_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "createBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "create_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "createTime"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "update_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "updateBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "update_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "updateTime"
      },
      {
        "type": "varchar(255)",
        "required": false,
        "name": "remark",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "remark"
      }
    ]
  },
  {
    "tableName": "sys_menu",
    "id": "menuId",
    "fields": [
      {
        "type": "bigint(20)",
        "required": true,
        "name": "menu_id",
        "isnull": false,
        "default": null,
        "auto_increment": true,
        "alias": "menuId"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "menu_name",
        "isnull": false,
        "default": null,
        "auto_increment": false,
        "alias": "menuName"
      },
      {
        "type": "bigint(20)",
        "required": false,
        "name": "parent_id",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "parentId"
      },
      {
        "type": "int(4)",
        "required": false,
        "name": "order_num",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "orderNum"
      },
      {
        "type": "varchar(200)",
        "required": false,
        "name": "path",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "path"
      },
      {
        "type": "varchar(255)",
        "required": false,
        "name": "component",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "component"
      },
      {
        "type": "varchar(255)",
        "required": false,
        "name": "query",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "query"
      },
      {
        "type": "int(1)",
        "required": false,
        "name": "is_frame",
        "isnull": true,
        "default": "1",
        "auto_increment": false,
        "alias": "isFrame"
      },
      {
        "type": "int(1)",
        "required": false,
        "name": "is_cache",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "isCache"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "menu_type",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "menuType"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "visible",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "visible"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "status",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "status"
      },
      {
        "type": "varchar(100)",
        "required": false,
        "name": "perms",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "perms"
      },
      {
        "type": "varchar(100)",
        "required": false,
        "name": "icon",
        "isnull": true,
        "default": "#",
        "auto_increment": false,
        "alias": "icon"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "create_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "createBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "create_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "createTime"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "update_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "updateBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "update_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "updateTime"
      },
      {
        "type": "varchar(500)",
        "required": false,
        "name": "remark",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "remark"
      }
    ]
  },
  {
    "tableName": "sys_logininfor",
    "id": "infoId",
    "fields": [
      {
        "type": "bigint(20)",
        "required": true,
        "name": "info_id",
        "isnull": false,
        "default": null,
        "auto_increment": true,
        "alias": "infoId"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "user_name",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "userName"
      },
      {
        "type": "varchar(128)",
        "required": false,
        "name": "ipaddr",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "ipaddr"
      },
      {
        "type": "varchar(255)",
        "required": false,
        "name": "login_location",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "loginLocation"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "browser",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "browser"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "os",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "os"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "status",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "status"
      },
      {
        "type": "varchar(255)",
        "required": false,
        "name": "msg",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "msg"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "login_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "loginTime"
      }
    ]
  },
  {
    "tableName": "sys_job_log",
    "id": "jobLogId",
    "fields": [
      {
        "type": "bigint(20)",
        "required": true,
        "name": "job_log_id",
        "isnull": false,
        "default": null,
        "auto_increment": true,
        "alias": "jobLogId"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "job_name",
        "isnull": false,
        "default": null,
        "auto_increment": false,
        "alias": "jobName"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "job_group",
        "isnull": false,
        "default": null,
        "auto_increment": false,
        "alias": "jobGroup"
      },
      {
        "type": "varchar(500)",
        "required": false,
        "name": "invoke_target",
        "isnull": false,
        "default": null,
        "auto_increment": false,
        "alias": "invokeTarget"
      },
      {
        "type": "varchar(500)",
        "required": false,
        "name": "job_message",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "jobMessage"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "status",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "status"
      },
      {
        "type": "varchar(2000)",
        "required": false,
        "name": "exception_info",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "exceptionInfo"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "create_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "createTime"
      }
    ]
  },
  {
    "tableName": "sys_job",
    "id": "jobId",
    "fields": [
      {
        "type": "bigint(20)",
        "required": true,
        "name": "job_id",
        "isnull": false,
        "default": null,
        "auto_increment": true,
        "alias": "jobId"
      },
      {
        "type": "varchar(64)",
        "required": true,
        "name": "job_name",
        "isnull": false,
        "default": "",
        "auto_increment": false,
        "alias": "jobName"
      },
      {
        "type": "varchar(64)",
        "required": true,
        "name": "job_group",
        "isnull": false,
        "default": "DEFAULT",
        "auto_increment": false,
        "alias": "jobGroup"
      },
      {
        "type": "varchar(500)",
        "required": false,
        "name": "invoke_target",
        "isnull": false,
        "default": null,
        "auto_increment": false,
        "alias": "invokeTarget"
      },
      {
        "type": "varchar(255)",
        "required": false,
        "name": "cron_expression",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "cronExpression"
      },
      {
        "type": "varchar(20)",
        "required": false,
        "name": "misfire_policy",
        "isnull": true,
        "default": "3",
        "auto_increment": false,
        "alias": "misfirePolicy"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "concurrent",
        "isnull": true,
        "default": "1",
        "auto_increment": false,
        "alias": "concurrent"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "status",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "status"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "create_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "createBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "create_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "createTime"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "update_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "updateBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "update_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "updateTime"
      },
      {
        "type": "varchar(500)",
        "required": false,
        "name": "remark",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "remark"
      }
    ]
  },
  {
    "tableName": "sys_dict_type",
    "id": "dictId",
    "fields": [
      {
        "type": "bigint(20)",
        "required": true,
        "name": "dict_id",
        "isnull": false,
        "default": null,
        "auto_increment": true,
        "alias": "dictId"
      },
      {
        "type": "varchar(100)",
        "required": false,
        "name": "dict_name",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "dictName"
      },
      {
        "type": "varchar(100)",
        "required": false,
        "name": "dict_type",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "dictType"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "status",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "status"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "create_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "createBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "create_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "createTime"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "update_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "updateBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "update_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "updateTime"
      },
      {
        "type": "varchar(500)",
        "required": false,
        "name": "remark",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "remark"
      }
    ]
  },
  {
    "tableName": "sys_dict_data",
    "id": "dictCode",
    "fields": [
      {
        "type": "bigint(20)",
        "required": true,
        "name": "dict_code",
        "isnull": false,
        "default": null,
        "auto_increment": true,
        "alias": "dictCode"
      },
      {
        "type": "int(4)",
        "required": false,
        "name": "dict_sort",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "dictSort"
      },
      {
        "type": "varchar(100)",
        "required": false,
        "name": "dict_label",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "dictLabel"
      },
      {
        "type": "varchar(100)",
        "required": false,
        "name": "dict_value",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "dictValue"
      },
      {
        "type": "varchar(100)",
        "required": false,
        "name": "dict_type",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "dictType"
      },
      {
        "type": "varchar(100)",
        "required": false,
        "name": "css_class",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "cssClass"
      },
      {
        "type": "varchar(100)",
        "required": false,
        "name": "list_class",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "listClass"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "is_default",
        "isnull": true,
        "default": "N",
        "auto_increment": false,
        "alias": "isDefault"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "status",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "status"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "create_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "createBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "create_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "createTime"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "update_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "updateBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "update_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "updateTime"
      },
      {
        "type": "varchar(500)",
        "required": false,
        "name": "remark",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "remark"
      }
    ]
  },
  {
    "tableName": "sys_device",
    "id": "id",
    "fields": [
      {
        "type": "int(50)",
        "required": true,
        "name": "id",
        "isnull": false,
        "default": null,
        "auto_increment": true,
        "alias": "id"
      },
      {
        "type": "int(11)",
        "required": false,
        "name": "product_id",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "productId"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "secret",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "secret"
      },
      {
        "type": "varchar(255)",
        "required": false,
        "name": "desc",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "desc"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "create_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "createTime"
      },
      {
        "type": "bit(1)",
        "required": false,
        "name": "enable",
        "isnull": true,
        "default": "b'1'",
        "auto_increment": false,
        "alias": "enable"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "last_online",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "lastOnline"
      },
      {
        "type": "bit(1)",
        "required": false,
        "name": "status",
        "isnull": true,
        "default": "b'0'",
        "auto_increment": false,
        "alias": "status"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "batch_id",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "batchId"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "location_x",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "locationX"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "location_y",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "locationY"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "devId",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "devId"
      }
    ]
  },
  {
    "tableName": "sys_dept",
    "id": "deptId",
    "fields": [
      {
        "type": "bigint(20)",
        "required": true,
        "name": "dept_id",
        "isnull": false,
        "default": null,
        "auto_increment": true,
        "alias": "deptId"
      },
      {
        "type": "bigint(20)",
        "required": false,
        "name": "parent_id",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "parentId"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "ancestors",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "ancestors"
      },
      {
        "type": "varchar(30)",
        "required": false,
        "name": "dept_name",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "deptName"
      },
      {
        "type": "int(4)",
        "required": false,
        "name": "order_num",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "orderNum"
      },
      {
        "type": "varchar(20)",
        "required": false,
        "name": "leader",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "leader"
      },
      {
        "type": "varchar(11)",
        "required": false,
        "name": "phone",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "phone"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "email",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "email"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "status",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "status"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "del_flag",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "delFlag"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "create_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "createBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "create_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "createTime"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "update_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "updateBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "update_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "updateTime"
      }
    ]
  },
  {
    "tableName": "sys_config",
    "id": "configId",
    "fields": [
      {
        "type": "int(5)",
        "required": true,
        "name": "config_id",
        "isnull": false,
        "default": null,
        "auto_increment": true,
        "alias": "configId"
      },
      {
        "type": "varchar(100)",
        "required": false,
        "name": "config_name",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "configName"
      },
      {
        "type": "varchar(100)",
        "required": false,
        "name": "config_key",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "configKey"
      },
      {
        "type": "varchar(500)",
        "required": false,
        "name": "config_value",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "configValue"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "config_type",
        "isnull": true,
        "default": "N",
        "auto_increment": false,
        "alias": "configType"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "create_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "createBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "create_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "createTime"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "update_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "updateBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "update_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "updateTime"
      },
      {
        "type": "varchar(500)",
        "required": false,
        "name": "remark",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "remark"
      }
    ]
  },
  {
    "tableName": "gen_table_column",
    "id": "columnId",
    "fields": [
      {
        "type": "bigint(20)",
        "required": true,
        "name": "column_id",
        "isnull": false,
        "default": null,
        "auto_increment": true,
        "alias": "columnId"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "table_id",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "tableId"
      },
      {
        "type": "varchar(200)",
        "required": false,
        "name": "column_name",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "columnName"
      },
      {
        "type": "varchar(500)",
        "required": false,
        "name": "column_comment",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "columnComment"
      },
      {
        "type": "varchar(100)",
        "required": false,
        "name": "column_type",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "columnType"
      },
      {
        "type": "varchar(500)",
        "required": false,
        "name": "java_type",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "javaType"
      },
      {
        "type": "varchar(200)",
        "required": false,
        "name": "java_field",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "javaField"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "is_pk",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "isPk"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "is_increment",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "isIncrement"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "is_required",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "isRequired"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "is_insert",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "isInsert"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "is_edit",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "isEdit"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "is_list",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "isList"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "is_query",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "isQuery"
      },
      {
        "type": "varchar(200)",
        "required": false,
        "name": "query_type",
        "isnull": true,
        "default": "EQ",
        "auto_increment": false,
        "alias": "queryType"
      },
      {
        "type": "varchar(200)",
        "required": false,
        "name": "html_type",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "htmlType"
      },
      {
        "type": "varchar(200)",
        "required": false,
        "name": "dict_type",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "dictType"
      },
      {
        "type": "int(11)",
        "required": false,
        "name": "sort",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "sort"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "create_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "createBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "create_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "createTime"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "update_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "updateBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "update_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "updateTime"
      }
    ]
  },
  {
    "tableName": "gen_table",
    "id": "tableId",
    "fields": [
      {
        "type": "bigint(20)",
        "required": true,
        "name": "table_id",
        "isnull": false,
        "default": null,
        "auto_increment": true,
        "alias": "tableId"
      },
      {
        "type": "varchar(200)",
        "required": false,
        "name": "table_name",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "tableName"
      },
      {
        "type": "varchar(500)",
        "required": false,
        "name": "table_comment",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "tableComment"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "sub_table_name",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "subTableName"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "sub_table_fk_name",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "subTableFkName"
      },
      {
        "type": "varchar(100)",
        "required": false,
        "name": "class_name",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "className"
      },
      {
        "type": "varchar(200)",
        "required": false,
        "name": "tpl_category",
        "isnull": true,
        "default": "crud",
        "auto_increment": false,
        "alias": "tplCategory"
      },
      {
        "type": "varchar(100)",
        "required": false,
        "name": "package_name",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "packageName"
      },
      {
        "type": "varchar(30)",
        "required": false,
        "name": "module_name",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "moduleName"
      },
      {
        "type": "varchar(30)",
        "required": false,
        "name": "business_name",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "businessName"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "function_name",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "functionName"
      },
      {
        "type": "varchar(50)",
        "required": false,
        "name": "function_author",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "functionAuthor"
      },
      {
        "type": "char(1)",
        "required": false,
        "name": "gen_type",
        "isnull": true,
        "default": "0",
        "auto_increment": false,
        "alias": "genType"
      },
      {
        "type": "varchar(200)",
        "required": false,
        "name": "gen_path",
        "isnull": true,
        "default": "/",
        "auto_increment": false,
        "alias": "genPath"
      },
      {
        "type": "varchar(1000)",
        "required": false,
        "name": "options",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "options"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "create_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "createBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "create_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "createTime"
      },
      {
        "type": "varchar(64)",
        "required": false,
        "name": "update_by",
        "isnull": true,
        "default": "",
        "auto_increment": false,
        "alias": "updateBy"
      },
      {
        "type": "datetime",
        "required": false,
        "name": "update_time",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "updateTime"
      },
      {
        "type": "varchar(500)",
        "required": false,
        "name": "remark",
        "isnull": true,
        "default": null,
        "auto_increment": false,
        "alias": "remark"
      }
    ]
  }
]
