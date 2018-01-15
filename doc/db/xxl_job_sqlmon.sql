use `xxl-job`;
-- sql监控sql配置
DROP TABLE IF EXISTS XXL_JOB_SQLMON ;
CREATE TABLE XXL_JOB_SQLMON
  (
    `id` int(11) NOT NULL AUTO_INCREMENT,
-- 应用名称
    app_name VARCHAR(50) NOT NULL,
-- sql名称
    name VARCHAR(50) NOT NULL,
-- 数据源名称
    ds_name VARCHAR(50) NOT NULL,
-- cron expr
    cron_expr VARCHAR(50) NOT NULL,
-- sql
    sql_text   VARCHAR(512) NOT NULL,
-- sql描述
    rmk VARCHAR(100) NULL,
-- 更新时间戳
    upd_tm VARCHAR(100) NULL,
-- 更新操作员
    upd_opr VARCHAR(100) NULL,
    PRIMARY KEY (id),
    UNIQUE KEY XXL_JOB_SQLMON_UI1 (app_name,name)
);
-- sql监控sql数据源配置
DROP TABLE IF EXISTS XXL_JOB_SQLMON_DS ;
CREATE TABLE XXL_JOB_SQLMON_DS
(
    `id` int(11) NOT NULL AUTO_INCREMENT,
-- 应用名称
    app_name VARCHAR(50) NOT NULL,
-- 数据源名称
    name  VARCHAR(50) NOT NULL,
-- jdbc驱动
    jdbc_driver  VARCHAR(200) NOT NULL,
-- jdbc url
    jdbc_url  VARCHAR(200) NOT NULL,
-- jdbc用户
    jdbc_user  VARCHAR(20) NOT NULL,
-- jdbc密码
    jdbc_password  VARCHAR(100) NOT NULL,
-- 数据源描述
    rmk VARCHAR(100) NULL,
-- 更新时间戳
    upd_tm VARCHAR(100) NULL,
-- 更新操作员
    upd_opr VARCHAR(100) NULL,
    PRIMARY KEY (id),
    UNIQUE KEY XXL_JOB_SQLMON_DS_UI1 (app_name, name)
);

-- 公共参数表
DROP TABLE IF EXISTS XXL_JOB_CMM_PARAM ;
CREATE TABLE XXL_JOB_CMM_PARAM
(
    `id` int(11) NOT NULL AUTO_INCREMENT,
-- 应用名称
    app_name VARCHAR(50) NOT NULL,
-- 数据源名称
    param_name  VARCHAR(50) NOT NULL,
-- 参数值
    param_value  VARCHAR(200) NOT NULL,
-- 参数描述
    rmk VARCHAR(100) NULL,
-- 更新时间戳
    upd_tm VARCHAR(100) NULL,
-- 更新操作员
    upd_opr VARCHAR(100) NULL,
    PRIMARY KEY (id),
    UNIQUE KEY XXL_JOB_CMM_PARAM_UI1 (app_name, param_name)
);

commit;

