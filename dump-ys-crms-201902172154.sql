-- MySQL dump 10.13  Distrib 5.7.23, for macos10.13 (x86_64)
--
-- Host: localhost    Database: ys-crms
-- ------------------------------------------------------
-- Server version	5.7.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `case_dispatch`
--

DROP TABLE IF EXISTS `case_dispatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `case_dispatch` (
  `cd_id` int(11) NOT NULL AUTO_INCREMENT,
  `cd_nc_id` int(11) NOT NULL COMMENT '案件id',
  `cd_nc_number` varchar(20) DEFAULT NULL COMMENT '案件编号',
  `cd_time` datetime DEFAULT NULL COMMENT '调度时间-数据新增时间',
  `cd_dispatch_emp_id` varchar(20) DEFAULT NULL COMMENT '调度人id',
  `cd_dispatch_name` varchar(20) DEFAULT NULL COMMENT '调度人',
  `cd_technical_emp_id` varchar(20) DEFAULT NULL COMMENT '负责人',
  `cd_technical_name` varchar(20) DEFAULT NULL COMMENT '负责人姓名',
  `cd_task_time` datetime DEFAULT NULL COMMENT '任务时间',
  `cd_suggestion` longtext COMMENT '建议',
  `cd_dispatch_state` varchar(20) DEFAULT '1' COMMENT '调度状态    1 正常    2 取消',
  `cd_multi_task` tinyint(4) DEFAULT '0' COMMENT '是否多人任务  0 正常     1 多人任务',
  `cd_aidance` varchar(100) DEFAULT NULL COMMENT '协助人，逗号分隔',
  `cd_cancel_time` datetime DEFAULT NULL COMMENT '取消时间',
  PRIMARY KEY (`cd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8 COMMENT='案件调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_dispatch`
--

--
-- Table structure for table `case_modify_record`
--

DROP TABLE IF EXISTS `case_modify_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `case_modify_record` (
  `cmr_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cmr_nc_id` int(11) NOT NULL COMMENT '案件id',
  `cmr_type` tinyint(4) DEFAULT NULL COMMENT '类型  1 调度.  2 调度退回 3 . 删除   4 .完成   5.取消调度  6.客户撤案. 7.注销  8. 再次上报  9.完成并转单 10.转咨询 11.外勤退回',
  `cmr_create_emp_id` varchar(20) DEFAULT NULL COMMENT '操作员工编号',
  `cmr_create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '操作时间',
  `cmr_technical_emp_id` varchar(20) DEFAULT NULL COMMENT '技术负责人',
  `cmr_reason` varchar(200) DEFAULT NULL COMMENT '操作原因',
  `cmr_dispatch_emp_id` varchar(20) DEFAULT NULL COMMENT '调度人',
  `cmr_service_number` varchar(100) DEFAULT NULL COMMENT '服务单号-仅完成时用',
  `cmr_solution` varchar(200) DEFAULT NULL COMMENT '解决方案-仅完成时用',
  `cmr_remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `cmr_ext` varchar(10) DEFAULT NULL COMMENT '扩展字段 不同类型对应含义 4 - Y/N 是否已经修改',
  `cmr_dispatch_id` int(11) DEFAULT NULL COMMENT '调度id',
  `cmr_cu_id` int(11) DEFAULT NULL COMMENT '客户id',
  PRIMARY KEY (`cmr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COMMENT='案件变动记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_modify_record`
--

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `cu_id` int(11) NOT NULL AUTO_INCREMENT,
  `cu_number` varchar(50) NOT NULL COMMENT '客户编号',
  `cu_name` varchar(100) NOT NULL COMMENT '客户名称',
  `cu_simple_name` varchar(50) DEFAULT NULL COMMENT '客户简称',
  `cu_py_name` text COMMENT '拼音名称',
  `cu_simple_py_name` varchar(100) DEFAULT NULL COMMENT '拼音简称',
  `cu_phone` varchar(20) DEFAULT NULL COMMENT '电话',
  `cu_address` varchar(100) DEFAULT NULL COMMENT '地址',
  `cu_contact` varchar(50) DEFAULT NULL COMMENT '联系人',
  `cu_contact_phone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `cu_fax` varchar(50) DEFAULT NULL COMMENT '传真',
  `cu_zip_code` varchar(20) DEFAULT NULL COMMENT '邮政编码',
  `cu_url` varchar(200) DEFAULT NULL COMMENT '网址',
  `cu_email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `cu_principal` varchar(50) DEFAULT NULL COMMENT '负责人',
  `cu_principal_phone` varchar(50) DEFAULT NULL COMMENT '负责人电话',
  `cu_source` longtext COMMENT '来源',
  `cu_state` varchar(20) DEFAULT '0' COMMENT '状态.   0.正常   1 删除1',
  `cu_is_vip` int(11) DEFAULT NULL COMMENT '是否vip   1:vip    0 非',
  `cu_contract_begin_time` datetime DEFAULT NULL COMMENT '合同开始时间',
  `cu_contract_end_time` datetime DEFAULT NULL COMMENT '合同结束时间',
  `cu_market_emp_id` varchar(20) DEFAULT NULL COMMENT '销售负责人',
  `cu_add_emp_number` varchar(20) DEFAULT NULL COMMENT '创建人编号',
  `cu_add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `cu_up_emp_number` varchar(20) DEFAULT NULL COMMENT '更新人编号',
  `cu_up_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `cu_remark` longtext COMMENT 'remark',
  PRIMARY KEY (`cu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1469 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--


--
-- Table structure for table `customer_address`
--

DROP TABLE IF EXISTS `customer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_address` (
  `ca_id` int(11) NOT NULL AUTO_INCREMENT,
  `ca_cu_id` int(11) DEFAULT NULL COMMENT '客户id',
  `ca_address` text COMMENT '地址',
  `ca_add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `ca_map` text,
  `ca_map_description` text COMMENT '地图描述',
  PRIMARY KEY (`ca_id`)
) ENGINE=InnoDB AUTO_INCREMENT=777 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_address`
--


--
-- Table structure for table `customer_contact`
--

DROP TABLE IF EXISTS `customer_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_contact` (
  `cc_id` int(11) NOT NULL,
  `cc_cu_id` int(11) DEFAULT NULL,
  `cc_contact` varchar(50) DEFAULT NULL,
  `cc_phone` varchar(100) DEFAULT NULL,
  `cc_add_time` datetime DEFAULT NULL,
  PRIMARY KEY (`cc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_contact`
--


--
-- Table structure for table `customer_progress_record`
--

DROP TABLE IF EXISTS `customer_progress_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_progress_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `cu_id` int(11) NOT NULL COMMENT '案件id',
  `content` text COMMENT '跟踪日志',
  `progress_date` datetime NOT NULL COMMENT '跟踪日期',
  `create_date` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  `create_emp_id` varchar(20) DEFAULT NULL COMMENT '创建人id',
  `type` varchar(50) DEFAULT NULL COMMENT '跟踪类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='客户跟踪记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_progress_record`
--

--
-- Table structure for table `new_case`
--

DROP TABLE IF EXISTS `new_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `new_case` (
  `nc_id` int(11) NOT NULL AUTO_INCREMENT,
  `nc_number` varchar(20) DEFAULT NULL COMMENT '案件编号',
  `nc_cu_id` int(11) NOT NULL COMMENT '客户id',
  `nc_cu_number` varchar(50) DEFAULT NULL COMMENT '客户编号',
  `nc_cu_name` varchar(100) DEFAULT NULL COMMENT '客户名称',
  `nc_address` varchar(100) DEFAULT NULL COMMENT '客户地址',
  `nc_contact_person` varchar(50) DEFAULT NULL COMMENT '联系人',
  `nc_contact_phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `nc_task_time` datetime DEFAULT NULL COMMENT '任务时间',
  `nc_case_type` varchar(20) DEFAULT NULL COMMENT '案件类型',
  `nc_case_state` varchar(20) DEFAULT NULL COMMENT '案件状态 ''0''''未调度'',''1''''外勤退回'',''2''''调度退回'',''3''''已调度'',''4''''已删除'',''5''''已接受'',''6''''已注销'',''7''''已完成'',''8''''客户撤案'',''9''''转单案件'',''10'' ''已转单'',''11''''客户撤案’, 12 转咨询',
  `nc_default_state` varchar(20) DEFAULT NULL COMMENT '默认状态',
  `nc_machine_config` text COMMENT '设备配置',
  `nc_is_review` int(11) DEFAULT NULL COMMENT '是否评价',
  `nc_is_many_task` int(11) DEFAULT NULL COMMENT '是否多人任务',
  `nc_add_emp_id` varchar(20) DEFAULT NULL COMMENT '创建人编号',
  `nc_add_emp_name` varchar(20) DEFAULT NULL COMMENT '创建人名称',
  `nc_add_time` datetime DEFAULT NULL COMMENT '创建时间',
  `nc_up_emp_id` varchar(20) DEFAULT NULL COMMENT '更新人id',
  `nc_up_emp_name` varchar(20) DEFAULT NULL COMMENT '更新人名称',
  `nc_up_time` datetime DEFAULT NULL COMMENT '更新时间',
  `nc_remark` longtext COMMENT '更新备注',
  `nc_open_number` varchar(20) DEFAULT NULL,
  `nc_open_name` varchar(20) DEFAULT NULL,
  `nc_open_time` datetime DEFAULT NULL,
  `nc_type` tinyint(4) DEFAULT NULL COMMENT '报案类别  1 IT报案   2 工程报案   9 其他报案',
  `nc_is_transfer` tinyint(4) DEFAULT '0' COMMENT '是否转单   1 是   0 否',
  PRIMARY KEY (`nc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11429 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_case`
--


--
-- Table structure for table `qrtz_blob_triggers`
--

DROP TABLE IF EXISTS `qrtz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `SCHED_NAME` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_blob_triggers`
--

LOCK TABLES `qrtz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_calendars`
--

DROP TABLE IF EXISTS `qrtz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` blob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_calendars`
--

LOCK TABLES `qrtz_calendars` WRITE;
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_cron_triggers`
--

DROP TABLE IF EXISTS `qrtz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(120) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_cron_triggers`
--

LOCK TABLES `qrtz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_fired_triggers`
--

DROP TABLE IF EXISTS `qrtz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_fired_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(13) NOT NULL,
  `SCHED_TIME` bigint(13) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` varchar(1) DEFAULT NULL,
  `REQUESTS_RECOVERY` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IDX_QRTZ_FT_TRIG_INST_NAME` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IDX_QRTZ_FT_INST_JOB_REQ_RCVRY` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_FT_J_G` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_FT_T_G` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_FT_TG` (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_fired_triggers`
--

LOCK TABLES `qrtz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_job_details`
--

DROP TABLE IF EXISTS `qrtz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_job_details` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` varchar(1) NOT NULL,
  `IS_NONCONCURRENT` varchar(1) NOT NULL,
  `IS_UPDATE_DATA` varchar(1) NOT NULL,
  `REQUESTS_RECOVERY` varchar(1) NOT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_J_REQ_RECOVERY` (`SCHED_NAME`,`REQUESTS_RECOVERY`),
  KEY `IDX_QRTZ_J_GRP` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_job_details`
--

LOCK TABLES `qrtz_job_details` WRITE;
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_locks`
--

DROP TABLE IF EXISTS `qrtz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_locks`
--

LOCK TABLES `qrtz_locks` WRITE;
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
INSERT INTO `qrtz_locks` VALUES ('PlatformScheduler','STATE_ACCESS'),('PlatformScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_paused_trigger_grps`
--

LOCK TABLES `qrtz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_scheduler_state`
--

DROP TABLE IF EXISTS `qrtz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(13) NOT NULL,
  `CHECKIN_INTERVAL` bigint(13) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_scheduler_state`
--

LOCK TABLES `qrtz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
INSERT INTO `qrtz_scheduler_state` VALUES ('PlatformScheduler','luojiandeMacBook-Pro.local1547989758304',1547989839907,15000);
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simple_triggers`
--

DROP TABLE IF EXISTS `qrtz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(7) NOT NULL,
  `REPEAT_INTERVAL` bigint(12) NOT NULL,
  `TIMES_TRIGGERED` bigint(10) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simple_triggers`
--

LOCK TABLES `qrtz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_simprop_triggers`
--

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_simprop_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` varchar(1) DEFAULT NULL,
  `BOOL_PROP_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`) REFERENCES `qrtz_triggers` (`SCHED_NAME`, `TRIGGER_NAME`, `TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_simprop_triggers`
--

LOCK TABLES `qrtz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qrtz_triggers`
--

DROP TABLE IF EXISTS `qrtz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qrtz_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(13) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(13) NOT NULL,
  `END_TIME` bigint(13) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` smallint(2) DEFAULT NULL,
  `JOB_DATA` blob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_J` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_JG` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IDX_QRTZ_T_C` (`SCHED_NAME`,`CALENDAR_NAME`),
  KEY `IDX_QRTZ_T_G` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IDX_QRTZ_T_STATE` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_STATE` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_N_G_STATE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NEXT_FIRE_TIME` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST` (`SCHED_NAME`,`TRIGGER_STATE`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IDX_QRTZ_T_NFT_ST_MISFIRE_GRP` (`SCHED_NAME`,`MISFIRE_INSTR`,`NEXT_FIRE_TIME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`) REFERENCES `qrtz_job_details` (`SCHED_NAME`, `JOB_NAME`, `JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qrtz_triggers`
--

LOCK TABLES `qrtz_triggers` WRITE;
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_job`
--

DROP TABLE IF EXISTS `schedule_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT 'cron表达式',
  `status` tinyint(4) DEFAULT NULL COMMENT '任务状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_job`
--

LOCK TABLES `schedule_job` WRITE;
/*!40000 ALTER TABLE `schedule_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedule_job_log`
--

DROP TABLE IF EXISTS `schedule_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedule_job_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志id',
  `job_id` bigint(20) NOT NULL COMMENT '任务id',
  `bean_name` varchar(200) DEFAULT NULL COMMENT 'spring bean名称',
  `method_name` varchar(100) DEFAULT NULL COMMENT '方法名',
  `params` varchar(2000) DEFAULT NULL COMMENT '参数',
  `status` tinyint(4) NOT NULL COMMENT '任务状态    0：成功    1：失败',
  `error` varchar(2000) DEFAULT NULL COMMENT '失败信息',
  `times` int(11) NOT NULL COMMENT '耗时(单位：毫秒)',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`log_id`),
  KEY `job_id` (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_job_log`
--

LOCK TABLES `schedule_job_log` WRITE;
/*!40000 ALTER TABLE `schedule_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedule_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seq_customer`
--

DROP TABLE IF EXISTS `seq_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seq_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` char(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniflag` (`flag`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seq_customer`
--

LOCK TABLES `seq_customer` WRITE;
/*!40000 ALTER TABLE `seq_customer` DISABLE KEYS */;
INSERT INTO `seq_customer` VALUES (142,'2');
/*!40000 ALTER TABLE `seq_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seq_newcase`
--

DROP TABLE IF EXISTS `seq_newcase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seq_newcase` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` char(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniflag` (`flag`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seq_newcase`
--

LOCK TABLES `seq_newcase` WRITE;
/*!40000 ALTER TABLE `seq_newcase` DISABLE KEYS */;
INSERT INTO `seq_newcase` VALUES (91,'2');
/*!40000 ALTER TABLE `seq_newcase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seq_staff`
--

DROP TABLE IF EXISTS `seq_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seq_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` char(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniflag` (`flag`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seq_staff`
--

LOCK TABLES `seq_staff` WRITE;
/*!40000 ALTER TABLE `seq_staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `seq_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequence` (
  `seq_name` varchar(50) NOT NULL COMMENT '序列名称',
  `current_val` int(11) NOT NULL DEFAULT '0' COMMENT '当前值',
  `increment_val` int(11) NOT NULL DEFAULT '1' COMMENT '步长（单次递增）',
  `prefix` varchar(50) DEFAULT '' COMMENT '前缀',
  PRIMARY KEY (`seq_name`),
  UNIQUE KEY `sequence_seq_name_IDX` (`seq_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence`
--

LOCK TABLES `sequence` WRITE;
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
INSERT INTO `sequence` VALUES ('createAccountID',103065,1,'SLJR'),('seq_id',24,1,'JP');
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) DEFAULT NULL COMMENT 'key',
  `value` varchar(2000) DEFAULT NULL COMMENT 'value',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态   0：隐藏   1：显示',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='系统配置信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'caseMsgRoles','25,28,29',1,'已报案通知对应的角色'),(2,'caseMsgLastTime','2018-12-02 17:12:00',1,'已报案跑批最后时间'),(3,'caseMsgTemplate','${ncAddEmpName}添加${ncCuName}一个报案，要求${ncTaskTime}上门，请知悉！',1,'已报案消息模板'),(4,'dispMsgRoles','25,24',1,'已调度通知的角色'),(5,'dispMsgLastTime','2018-12-02 17:12:00',1,'已调度跑批最后时间'),(6,'dispMsgTemplateKey','位于${cuAddress}的${cuSimpleName}，案件已调度，要求${ncTaskTime}上门处理，案件内容为${ncRemark}',1,'已调度模板'),(7,'delayDoCaseMsgRoles','8,25,24',1,'未处理案件消息通知的角色'),(8,'delayDoCaseMsgDays','1',0,'未处理案件超时1天提醒'),(9,'delayDoCaseMsgTemplate','${cuSimpleName}的案子上门时间${ncTaskTime}已经超过一天没有处理，请及时处理',1,'未处理案件提醒模板'),(10,'compMsgRoles','25,8,28',1,'已结案通知的角色'),(11,'compMsgLastTime','2018-12-02 17:12:00',1,'已结案消息最后获取时间'),(12,'compMsgTemplateKey','${cuSimpleName}已结案，结案内容为${ncRemark}',1,'已结案消息模板'),(13,'custLogMsgRoles','27,25',1,'客户15天内未跟踪消息通知的角色'),(14,'custLogMsgDays','15',1,'客户未跟踪超多天数'),(15,'custLogMsgTemplate','${cuSimpleName}已经超过${days}天没有跟踪，客户联系人${cuContact}电话为${cuContactPhone}，请及时跟踪！',1,'客户未跟踪模板'),(16,'contractExpirationRoles','25,8,26',1,'合同到期通知的角色'),(17,'contractExpirationMonths','1',0,'合同到期提前多少月提醒'),(18,'contractExpirationTemplate','${cuSimpleName}的合同即将到期，到期日期为${cuContractEndTime}，请注意跟踪！',1,'合同到期消息模板'),(24,'version','1.1.374',1,'发版的版本号'),(25,'systemName','客户资源管理服务系统CRMS',1,'系统名称-页面展示');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '上级部门ID，一级部门为0',
  `name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `del_flag` tinyint(4) DEFAULT '0' COMMENT '是否删除  -1：已删除  0：正常',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='部门管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (1,0,'总部',0,0),(2,1,'合肥分公司',1,0),(3,1,'上海分公司',2,0),(4,3,'技术部',0,0),(5,3,'销售部',1,0),(6,0,'测试',0,-1),(7,0,'ceshi',0,-1);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1698 DEFAULT CHARSET=utf8 COMMENT='系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--


--
-- Table structure for table `sys_macro`
--

DROP TABLE IF EXISTS `sys_macro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_macro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(255) DEFAULT NULL COMMENT '父级id',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `value` varchar(2000) DEFAULT NULL COMMENT '值',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态，0：隐藏   1：显示',
  `type` tinyint(20) DEFAULT NULL COMMENT '类型,0:目录，1:参数配置',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `gmt_create` date DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` date DEFAULT NULL COMMENT '修改时间',
  `template` varchar(100) DEFAULT NULL COMMENT '模版',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=gbk COMMENT='通用字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_macro`
--

LOCK TABLES `sys_macro` WRITE;
/*!40000 ALTER TABLE `sys_macro` DISABLE KEYS */;
INSERT INTO `sys_macro` VALUES (5,NULL,'单位','goodsUnit',1,0,NULL,NULL,'2017-08-30',NULL,NULL),(6,5,'个','个',1,1,NULL,NULL,'2017-08-30',NULL,NULL),(7,5,'只','只',1,1,2,NULL,'2017-10-06','2017-10-06',NULL),(8,NULL,'报案类型',NULL,1,0,NULL,NULL,'2018-10-07',NULL,NULL),(9,8,'网络故障',NULL,1,1,NULL,NULL,'2018-10-07','2018-10-07',NULL),(10,8,'硬件故障',NULL,1,1,NULL,NULL,'2018-10-07',NULL,NULL),(11,8,'软件故障',NULL,1,1,NULL,NULL,'2018-10-07',NULL,NULL),(13,8,'布线工程',NULL,1,1,NULL,NULL,'2018-10-07',NULL,NULL),(14,8,'监控工程',NULL,1,1,NULL,NULL,'2018-10-07',NULL,NULL),(15,8,'驻点服务',NULL,1,1,NULL,NULL,'2018-10-07',NULL,NULL),(16,8,'其他服务',NULL,1,1,NULL,NULL,'2018-10-07',NULL,NULL),(17,8,'常规维护',NULL,1,1,NULL,NULL,'2018-10-07',NULL,NULL),(18,8,'上门送货',NULL,1,1,NULL,NULL,'2018-10-07',NULL,NULL),(19,8,'打印机故障',NULL,1,1,NULL,NULL,'2018-10-07',NULL,NULL),(20,8,'软件故障+常规',NULL,1,1,NULL,NULL,'2018-10-07',NULL,NULL),(21,8,'硬件故障+常规',NULL,1,1,NULL,NULL,'2018-10-07',NULL,NULL),(22,8,'网络故障+常规',NULL,1,1,NULL,NULL,'2018-10-07','2018-11-03','网络故障模板'),(23,NULL,'客户来源',NULL,1,0,NULL,NULL,'2018-11-11',NULL,NULL),(24,23,'新建客户','',1,1,NULL,NULL,'2018-11-11','2018-11-11',NULL),(25,23,'百度推广','',1,1,NULL,NULL,'2018-11-11','2018-11-11',NULL),(26,NULL,'工程报案类型',NULL,1,0,NULL,NULL,'2018-11-13',NULL,NULL),(27,26,'布线工程',NULL,1,1,NULL,NULL,'2018-11-13','2018-11-25','工程-布线报案模版'),(28,26,'监控工程',NULL,1,1,NULL,NULL,'2018-11-13','2018-11-25','工程-监控报案模版'),(29,NULL,'IT报案类型',NULL,1,0,NULL,NULL,'2018-11-13',NULL,NULL),(30,29,'网络故障',NULL,1,1,NULL,NULL,'2018-11-13','2018-11-25','it-网络报案模版'),(31,29,'软件故障',NULL,1,1,NULL,NULL,'2018-11-13','2018-11-25','it-软件报案模版'),(32,29,'硬件故障',NULL,1,1,NULL,NULL,'2018-11-13','2018-11-25','it-硬件报案模版'),(33,NULL,'服务咨询','',1,0,NULL,NULL,'2018-12-21','2018-12-21',NULL),(34,33,'转咨询','转咨询',1,1,NULL,NULL,'2018-12-21',NULL,NULL),(35,NULL,'客户跟踪类型',NULL,1,0,NULL,NULL,'2018-12-28',NULL,NULL),(36,35,'上门跟踪',NULL,1,1,NULL,NULL,'2018-12-28',NULL,NULL),(37,35,'电话跟踪',NULL,1,1,NULL,NULL,'2018-12-28',NULL,NULL),(38,29,'上门送货',NULL,1,1,NULL,NULL,'2019-01-20',NULL,NULL),(39,26,'上门送货',NULL,1,1,NULL,NULL,'2019-01-20',NULL,NULL);
/*!40000 ALTER TABLE `sys_macro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=454 DEFAULT CHARSET=utf8 COMMENT='菜单管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,0,'系统管理',NULL,NULL,0,'fa fa-cog',6,0),(2,1,'管理员列表','sys/user.html',NULL,1,'fa fa-user',1,0),(3,1,'角色管理','sys/role.html',NULL,1,'fa fa-user-secret',2,0),(4,1,'菜单管理','sys/menu.html',NULL,1,'fa fa-folder-open',4,0),(5,31,'SQL监控','druid/sql.html',NULL,1,'fa fa-linux',9,0),(6,1,'定时任务','sys/schedule.html',NULL,1,'fa fa-tasks',5,0),(7,6,'查看',NULL,'sys:schedule:list,sys:schedule:info',2,NULL,0,0),(8,6,'新增',NULL,'sys:schedule:save',2,NULL,0,0),(9,6,'修改',NULL,'sys:schedule:update',2,NULL,0,0),(10,6,'删除',NULL,'sys:schedule:delete',2,NULL,0,0),(11,6,'暂停',NULL,'sys:schedule:pause',2,NULL,0,0),(12,6,'恢复',NULL,'sys:schedule:resume',2,NULL,0,0),(13,6,'立即执行',NULL,'sys:schedule:run',2,NULL,0,0),(14,6,'日志列表',NULL,'sys:schedule:log',2,NULL,0,0),(15,2,'查看',NULL,'sys:user:list,sys:user:info',2,NULL,0,0),(16,2,'新增',NULL,'sys:user:save,sys:role:select',2,NULL,0,0),(17,2,'修改',NULL,'sys:user:update,sys:role:select',2,NULL,0,0),(18,2,'删除',NULL,'sys:user:delete',2,NULL,0,0),(19,3,'查看',NULL,'sys:role:list,sys:role:info',2,NULL,0,0),(20,3,'新增',NULL,'sys:role:save,sys:menu:perms',2,NULL,0,0),(21,3,'修改',NULL,'sys:role:update,sys:menu:perms',2,NULL,0,0),(22,3,'删除',NULL,'sys:role:delete',2,NULL,0,0),(23,4,'查看',NULL,'sys:menu:list,sys:menu:info',2,NULL,0,0),(24,4,'新增',NULL,'sys:menu:save,sys:menu:select',2,NULL,0,0),(25,4,'修改',NULL,'sys:menu:update,sys:menu:select',2,NULL,0,0),(26,4,'删除',NULL,'sys:menu:delete',2,NULL,0,0),(27,1,'系统参数','sys/config.html','sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete',1,'fa fa-sun-o',7,0),(28,31,'代码生成器','sys/generator.html','sys:generator:list,sys:generator:code',1,'fa fa-rocket',10,0),(29,1,'系统日志','sys/log.html','sys:log:list',1,'fa fa-file-text-o',8,0),(30,1,'文件上传','sys/oss.html','sys:oss:all',1,'fa fa-file-image-o',6,0),(31,0,'开发工具',NULL,NULL,0,'fa fa-bug',8,0),(200,0,'报案中心',NULL,NULL,0,'fa fa-user-circle-o',1,0),(201,200,'工程报案','',NULL,0,'',1,0),(206,31,'iviewDemo','test/iviewDemo.html',NULL,1,'fa fa-etsy',0,0),(207,200,'IT服务报案','',NULL,0,'',0,0),(210,387,'修改',NULL,'userlevel:update',2,NULL,6,0),(211,387,'删除',NULL,'userlevel:delete',2,NULL,6,0),(222,0,'调度中心',NULL,NULL,0,'fa fa-shopping-cart',2,0),(233,243,'技术出勤统计','shop/ad.html',NULL,1,'fa fa-pencil',1,0),(234,233,'查看',NULL,'ad:list,ad:info',2,NULL,6,0),(235,233,'新增',NULL,'ad:save',2,NULL,6,0),(236,233,'修改',NULL,'ad:update',2,NULL,6,0),(237,233,'删除',NULL,'ad:delete',2,NULL,6,0),(238,243,'客户报修统计','shop/adposition.html',NULL,1,'fa fa-map-pin',0,0),(239,238,'查看',NULL,'adposition:list,adposition:info',2,NULL,6,0),(240,238,'新增',NULL,'adposition:save',2,NULL,6,0),(241,238,'修改',NULL,'adposition:update',2,NULL,6,0),(242,238,'删除',NULL,'adposition:delete',2,NULL,6,0),(243,0,'统计分析',NULL,NULL,0,'fa fa-hand-paper-o',5,0),(244,243,'调度统计','shop/coupon.html',NULL,1,'fa fa-cc-visa',2,0),(245,244,'查看',NULL,'coupon:list,coupon:info',2,NULL,6,0),(246,244,'新增',NULL,'coupon:save',2,NULL,6,0),(247,244,'修改',NULL,'coupon:update',2,NULL,6,0),(248,244,'删除',NULL,'coupon:delete',2,NULL,6,0),(249,200,'其它报案','yscrms/newcase_add.html?type=9',NULL,1,'',2,0),(250,249,'查看',NULL,'usercoupon:list,usercoupon:info',2,NULL,6,0),(251,249,'新增',NULL,'usercoupon:save',2,NULL,6,0),(252,249,'修改',NULL,'usercoupon:update',2,NULL,6,0),(253,249,'删除',NULL,'usercoupon:delete',2,NULL,6,0),(275,243,'服务咨询统计','shop/topiccategory.html',NULL,1,'fa fa-tint',4,0),(276,275,'查看',NULL,'topiccategory:list,topiccategory:info',2,NULL,6,0),(277,275,'新增',NULL,'topiccategory:save',2,NULL,6,0),(278,275,'修改',NULL,'topiccategory:update',2,NULL,6,0),(279,275,'删除',NULL,'topiccategory:delete',2,NULL,6,0),(289,357,'我的案件','','newcase:myCase',0,'fa fa-shopping-bag',1,0),(294,374,'客户管理','yscrms/customer.html','',1,'fa fa-sitemap',0,0),(302,1,'通用字典表','sys/macro.html',NULL,1,'fa fa-book',6,0),(303,302,'查看',NULL,'sys:macro:list,sys:macro:info',2,NULL,6,0),(304,302,'新增',NULL,'sys:macro:save',2,NULL,6,0),(305,302,'修改',NULL,'sys:macro:update',2,NULL,6,0),(306,302,'删除',NULL,'sys:macro:delete',2,NULL,6,0),(307,222,'未调度','yscrms/newcase_dispatch.html?opt=dispatch','casedispatch:list,casedispatch:info,casedispatch:save,casedispatch:update',1,'',1,0),(308,307,'调度/再次调度',NULL,'dispatch:dispatch',2,NULL,6,0),(309,307,'调度退回',NULL,'dispatch:back',2,NULL,6,0),(330,244,'发放',NULL,'coupon:publish',2,NULL,4,0),(352,357,'服务咨询','yscrms/technicianservice.html',NULL,1,'fa fa-deafness',2,0),(353,352,'查看',NULL,'technicianservice:list,technicianservice:info',2,NULL,6,0),(354,352,'新增',NULL,'technicianservice:save',2,NULL,6,0),(355,352,'修改',NULL,'technicianservice:update',2,NULL,6,0),(356,352,'删除',NULL,'technicianservice:delete',2,NULL,6,0),(357,0,'出勤中心',NULL,NULL,0,'fa fa-edit',3,0),(368,1,'部门管理','sys/dept.html',NULL,1,'fa fa-sitemap',3,0),(369,368,'查看',NULL,'sys:dept:list,sys:dept:info',2,NULL,0,0),(370,368,'新增',NULL,'sys:dept:save',2,NULL,0,0),(371,368,'修改',NULL,'sys:dept:update',2,NULL,0,0),(372,368,'删除',NULL,'sys:dept:delete',2,NULL,0,0),(373,368,'选择部门',NULL,'sys:dept:select',2,NULL,0,0),(374,0,'客户中心',NULL,NULL,0,'fa fa-first-order',4,0),(375,0,'消息中心',NULL,NULL,0,'fa fa-television',0,0),(376,375,'未读消息','sys/smslog.html','sys:smslog:list,sys:smslog:info',1,'fa fa-envelope-open',1,0),(377,1,'地区管理','sys/region.html',NULL,1,'fa fa-map-pin',8,0),(378,377,'删除',NULL,'sys:region:delete',2,NULL,0,0),(379,377,'修改','','sys:region:update',2,NULL,0,0),(380,377,'新增',NULL,'sys:region:save',2,NULL,0,0),(381,377,'查看',NULL,'sys:region:list,sys:region:info',2,NULL,0,0),(382,31,'swagger-ui.html','swagger-ui.html','',1,'fa fa-code',0,0),(383,375,'我的消息','sys/msg.html','sys:msg:list,sys:msg:info',1,NULL,0,0),(385,0,'个人中心',NULL,NULL,0,'fa fa-address-card',7,0),(386,207,'VIP报案','yscrms/newcase_add.html?type=1&vip=1',NULL,1,NULL,0,0),(387,207,'非VIP报案','yscrms/newcase_add.html?type=1&vip=0',NULL,1,NULL,0,0),(388,201,'VIP报案','yscrms/newcase_add.html?type=2&vip=1',NULL,1,NULL,0,0),(389,201,'非VIP报案','yscrms/newcase_add.html?type=2&vip=0',NULL,1,NULL,0,0),(390,386,'新增',NULL,'createanjian',2,NULL,0,0),(391,386,'修改',NULL,'edit',2,NULL,0,0),(392,386,'查看',NULL,'view',2,NULL,0,0),(393,386,'删除',NULL,'delete',2,NULL,0,0),(394,387,'新增',NULL,'create',2,NULL,0,0),(395,387,'查看',NULL,'view',2,NULL,0,0),(396,389,'新增',NULL,'create',2,NULL,0,0),(397,389,'查看',NULL,'view',2,NULL,0,0),(398,389,'修改',NULL,'update',2,NULL,0,0),(399,389,'删除',NULL,'delete',2,NULL,0,0),(414,222,'已调度','yscrms/newcase_dispatch.html?opt=dispatch&act=done','casedispatch:list,casedispatch:info,casedispatch:save,casedispatch:update',1,NULL,3,0),(415,414,'查询',NULL,'dispatch:query',2,NULL,0,0),(416,414,'取消调度',NULL,'dispatch:cancel',2,NULL,0,0),(417,200,'报案查询','yscrms/newcase.html?opt=query',NULL,1,NULL,3,0),(418,200,'案件管理','yscrms/newcase.html?opt=manage',NULL,1,NULL,4,0),(419,200,'注销案件','yscrms/newcase.html?opt=cancel',NULL,1,'grav',5,0),(420,222,'调度查询','yscrms/newcase_dispatch.html?opt=query','casedispatch:list,casedispatch:info',1,NULL,2,1),(421,374,'导入客户信息','yscrms/customer_import.html',NULL,1,NULL,1,0),(422,385,'我的信息','sys/user.html?tag=true','sys:user:info',1,NULL,0,0),(423,385,'我的签到','sys/sign.html','sys:sign:list,sys:sign:info',1,NULL,2,0),(424,385,'我的通讯录','sys/staff.html?tag=true','sys:staff:list',1,NULL,3,0),(425,357,'案件签到','sys/sign_case.html',NULL,1,'arrows',3,0),(426,294,'查看',NULL,'customer:list,customer:info',2,NULL,6,NULL),(427,294,'新增',NULL,'customer:save',2,NULL,6,NULL),(428,294,'修改',NULL,'customer:update',2,NULL,6,NULL),(429,294,'删除',NULL,'customer:delete',2,NULL,6,NULL),(430,418,'查看',NULL,'newcase:list,newcase:info',2,NULL,6,NULL),(431,418,'新增',NULL,'newcase:save',2,NULL,6,NULL),(432,418,'修改',NULL,'newcase:update',2,NULL,6,NULL),(433,418,'删除',NULL,'newcase:delete',2,NULL,6,NULL),(434,307,'查看',NULL,'dispatch:query',2,NULL,6,NULL),(435,307,'调度',NULL,'dispatch:dispatch',2,NULL,6,NULL),(436,307,'调度退回',NULL,'dispatch:back',2,NULL,6,NULL),(437,1,'员工管理','sys/staff.html',NULL,1,'fa fa-user-o',3,0),(438,437,'查看',NULL,'sys:staff:list,sys:staff:info',2,NULL,0,0),(439,437,'新增',NULL,'sys:staff:save,sys:staff:queryAll',2,NULL,0,0),(440,437,'修改',NULL,'sys:staff:update',2,NULL,0,0),(441,437,'删除',NULL,'sys:staff:delete',2,NULL,0,0),(442,420,'查询',NULL,'dispatch:query',2,NULL,0,0),(443,289,'未完成案件','yscrms/newcase_mine.html?opt=1',NULL,1,NULL,0,0),(444,289,'已完成案件','yscrms/newcase_mine.html?opt=2',NULL,1,NULL,1,0),(445,419,'再次上报',NULL,'newcase:report',2,NULL,6,NULL),(446,419,'查看',NULL,'newcase:list,newcase:info',2,NULL,6,NULL),(447,374,'客户跟踪记录','yscrms/customer_follow.html',NULL,1,NULL,3,0),(448,447,'查看',NULL,'customerprogressrecord:list,customerprogressrecord:info',2,NULL,6,NULL),(449,447,'新增',NULL,'customerprogressrecord:save',2,NULL,6,NULL),(450,447,'修改',NULL,'customerprogressrecord:update',2,NULL,6,NULL),(451,447,'删除',NULL,'customerprogressrecord:delete',2,NULL,6,NULL),(452,418,'注销',NULL,'newcase:cancel',2,NULL,6,NULL),(453,374,'VIP客户维护','yscrms/customer.html?vip=true',NULL,1,NULL,0,0);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oss`
--

DROP TABLE IF EXISTS `sys_oss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_oss` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` varchar(200) DEFAULT NULL COMMENT 'URL地址',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文件上传';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oss`
--

LOCK TABLES `sys_oss` WRITE;
/*!40000 ALTER TABLE `sys_oss` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_oss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_region`
--

DROP TABLE IF EXISTS `sys_region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_region` (
  `id` mediumint(32) NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(32) NOT NULL DEFAULT '0',
  `name` varchar(120) NOT NULL DEFAULT '',
  `type` tinyint(1) NOT NULL DEFAULT '2',
  `agency_id` int(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `agency_id` (`agency_id`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `region_type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_region`
--

LOCK TABLES `sys_region` WRITE;
/*!40000 ALTER TABLE `sys_region` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (5,'超级管理员','超级管理员',1,'2017-09-18 00:40:15',1),(6,'guest',NULL,1,'2018-09-03 12:52:31',1);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_dept` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与部门对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=960 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (40,6,200),(41,6,207),(43,6,201),(44,6,202),(45,6,249),(46,6,250),(48,6,265),(50,6,281),(52,6,284),(54,6,287),(56,6,213),(57,6,222),(59,6,224),(61,6,260),(62,6,307),(63,6,308),(65,6,298),(67,6,256),(69,6,316),(71,6,326),(73,6,332),(74,6,1),(75,6,3),(76,6,19),(77,6,368),(78,6,369),(79,6,4),(80,6,23),(81,6,6),(82,6,7),(908,5,375),(909,5,383),(910,5,376),(911,5,200),(912,5,207),(913,5,386),(914,5,390),(915,5,391),(916,5,392),(917,5,393),(918,5,387),(919,5,394),(920,5,395),(921,5,210),(922,5,211),(923,5,201),(924,5,388),(925,5,389),(926,5,396),(927,5,397),(928,5,398),(929,5,399),(930,5,249),(931,5,250),(932,5,251),(933,5,252),(934,5,253),(935,5,417),(936,5,418),(937,5,419),(938,5,222),(939,5,307),(940,5,308),(941,5,309),(942,5,414),(943,5,415),(944,5,416),(945,5,357),(946,5,289),(947,5,443),(948,5,444),(949,5,352),(950,5,353),(951,5,354),(952,5,355),(953,5,356),(954,5,425),(955,5,374),(956,5,294),(957,5,453),(958,5,421),(959,5,447);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_sign`
--

DROP TABLE IF EXISTS `sys_sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_sign` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `staff_id` varchar(50) DEFAULT NULL COMMENT '员工编号',
  `type` varchar(20) DEFAULT NULL COMMENT '类型 sign in 签到，sign 签退',
  `sign_time` datetime DEFAULT NULL COMMENT '考勤时间',
  `address` varchar(100) DEFAULT NULL COMMENT '考勤地点',
  `radius` int(11) DEFAULT NULL COMMENT '考勤半径',
  `nc_number` varchar(50) DEFAULT NULL COMMENT '关联案件编号',
  `case_time` varchar(100) DEFAULT NULL COMMENT '案件(要求)考勤时间',
  `longitude` decimal(10,6) DEFAULT NULL COMMENT '签到经度',
  `latitude` decimal(10,6) DEFAULT NULL COMMENT '签到纬度',
  `biz_type` tinyint(4) DEFAULT NULL COMMENT '签到类型 1 考勤签到   2 案件签到',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COMMENT='签到表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_sign`
--

LOCK TABLES `sys_sign` WRITE;
/*!40000 ALTER TABLE `sys_sign` DISABLE KEYS */;
INSERT INTO `sys_sign` VALUES (1,'传友','YS-0004','sign in','2018-11-30 23:13:15','上海市浦东新区唐丰路',NULL,'YS181130-00277',NULL,121.647903,31.201864,NULL),(2,'吴小雯','YS-0001','sign in','2018-11-30 23:22:05','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492264,31.277067,NULL),(3,'吴小雯','YS-0001','sign out','2018-11-30 23:27:10','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492294,31.277048,NULL),(4,'杜春生','YS-0005','sign in','2018-12-01 00:18:31','上海市闵行区沁春路',NULL,'YS181130-00283',NULL,121.371048,31.091822,NULL),(5,'吴小雯','YS-0001','sign in','2018-12-01 07:58:40','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492294,31.277052,NULL),(6,'马云','YS-0058','sign out','2018-12-01 17:01:19','上海市徐汇区乌鲁木齐路303号',NULL,NULL,NULL,121.447727,31.212949,NULL),(7,'马云','YS-0058','sign out','2018-12-01 17:01:34','上海市徐汇区乌鲁木齐路303号',NULL,NULL,NULL,121.447727,31.212949,NULL),(8,'吴小雯','YS-0001','sign in','2018-12-02 00:02:29','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492310,31.277050,NULL),(9,'吴小雯','YS-0001','sign out','2018-12-02 00:02:32','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492310,31.277050,NULL),(10,'传友','YS-0004','sign in','2018-12-02 10:03:28','北京市东城区正义路2号',NULL,'YS181201-00324',NULL,116.407170,39.904690,NULL),(11,'传友','YS-0004','sign in','2018-12-02 10:14:40','北京市东城区正义路2号',NULL,'YS181201-00324',NULL,116.407170,39.904690,NULL),(12,'传友','YS-0004','sign in','2018-12-02 10:15:42','北京市东城区正义路2号',NULL,'YS181201-00324',NULL,116.407170,39.904690,NULL),(13,'传友','YS-0004','sign in','2018-12-02 10:16:30','北京市东城区正义路2号',NULL,'YS181201-00324',NULL,116.407170,39.904690,NULL),(14,'吴小雯','YS-0001','sign in','2018-12-02 11:44:10','上海市虹口区大连西路94号',NULL,'YS181201-00337',NULL,121.492302,31.277040,NULL),(15,'吴小雯','YS-0001','sign out','2018-12-02 12:57:02','上海市虹口区大连西路94号',NULL,'YS181201-00326',NULL,121.492310,31.277050,NULL),(16,'吴小雯','YS-0001','sign out','2018-12-02 12:57:47','上海市虹口区大连西路94号',NULL,'YS181130-00279',NULL,121.492302,31.277052,NULL),(17,'吴小雯','YS-0001','sign out','2018-12-02 12:59:26','上海市虹口区大连西路94号',NULL,'YS181201-00337',NULL,121.492287,31.277048,NULL),(18,'吴小雯','YS-0001','sign in','2018-12-02 13:21:29','上海市虹口区大连西路94号',NULL,'YS181201-00339',NULL,121.492302,31.277048,NULL),(19,'吴小雯','YS-0001','sign in','2018-12-02 13:21:35','上海市虹口区大连西路94号',NULL,'YS181201-00339',NULL,121.492294,31.277048,NULL),(20,'吴小雯','YS-0001','sign in','2018-12-02 13:21:45','上海市虹口区大连西路94号',NULL,'YS181201-00320',NULL,121.492294,31.277050,NULL),(21,'吴小雯','YS-0001','sign out','2018-12-02 13:22:23','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492302,31.277048,NULL),(22,'吴小雯','YS-0001','sign out','2018-12-02 13:22:28','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492302,31.277048,NULL),(23,'吴小雯','YS-0001','sign out','2018-12-02 13:22:39','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492294,31.277048,NULL),(24,'吴小雯','YS-0001','sign out','2018-12-02 13:22:44','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492294,31.277048,NULL),(25,'吴小雯','YS-0001','sign out','2018-12-02 13:23:23','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492302,31.277048,NULL),(26,'吴小雯','YS-0001','sign out','2018-12-02 13:23:26','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492310,31.277050,NULL),(27,'吴小雯','YS-0001','sign out','2018-12-02 13:23:54','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492310,31.277052,NULL),(28,'吴小雯','YS-0001','sign out','2018-12-02 13:23:57','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492302,31.277054,NULL),(29,'吴小雯','YS-0001','sign in','2018-12-02 13:24:17','上海市虹口区大连西路94号',NULL,'YS181201-00320',NULL,121.492310,31.277050,NULL),(30,'吴小雯','YS-0001','sign out','2018-12-02 15:41:55','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492302,31.277054,NULL),(31,'吴小雯','YS-0001','sign out','2018-12-02 17:23:30','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492325,31.277039,NULL),(32,'吴小雯','YS-0001','sign out','2018-12-02 17:25:15','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492294,31.277048,NULL),(33,'吴小雯','YS-0001','sign out','2018-12-02 17:29:08','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492294,31.277063,NULL),(34,'吴小雯','YS-0001','sign in','2018-12-02 17:29:29','上海市虹口区大连西路94号',NULL,'YS181201-00322',NULL,121.492302,31.277048,NULL),(35,'吴小雯','YS-0001','sign in','2018-12-02 17:29:52','上海市虹口区大连西路94号',NULL,'YS181201-00339',NULL,121.492302,31.277048,NULL),(36,'吴小雯','YS-0001','sign in','2018-12-02 17:30:13','上海市虹口区大连西路94号',NULL,'YS181201-00339',NULL,121.492294,31.277048,NULL),(37,'吴小雯','1','sign in','2018-12-03 09:35:22','上海市黄浦区北无锡路64号',NULL,NULL,NULL,121.479721,31.239250,1),(38,'吴小雯','YS-0001','sign in','2018-12-03 09:36:19','上海市黄浦区北无锡路64号',NULL,'YS181201-00322',NULL,121.479721,31.239250,2),(39,'吴小雯','YS-0001','sign in','2018-12-03 09:36:34','上海市黄浦区北无锡路64号',NULL,'YS181201-00285',NULL,121.479721,31.239250,2),(40,'吴小雯','YS-0001','sign out','2018-12-03 09:37:07','上海市黄浦区北无锡路64号',NULL,'YS181201-00285',NULL,121.479721,31.239250,2),(41,'传友','1','sign out','2018-12-03 09:39:13','上海市松江区明南路',NULL,NULL,NULL,121.270943,31.044050,1),(42,'杜春生','YS-0005','sign out','2018-12-03 16:51:46','上海市青浦区崧盈路',NULL,'YS181201-00310',NULL,121.183098,31.159111,2),(43,'杜春生','YS-0005','sign out','2018-12-03 16:52:31','上海市青浦区崧盈路',NULL,'YS181201-00284',NULL,121.183060,31.159071,2),(44,'杜春生','YS-0005','sign out','2018-12-03 18:54:54','上海市青浦区崧盈路',NULL,'YS181130-00276',NULL,121.183090,31.159113,2),(45,'杜春生','YS-0005','sign out','2018-12-03 18:55:09','上海市青浦区崧盈路',NULL,'YS181130-00275',NULL,121.183136,31.159185,2),(46,'杜春生','YS-0005','sign in','2018-12-03 18:55:17','上海市青浦区崧盈路',NULL,'YS181130-00272',NULL,121.183090,31.159140,2),(47,'杜春生','YS-0005','sign in','2018-12-03 18:55:23','上海市青浦区崧盈路',NULL,'YS181130-00272',NULL,121.183090,31.159136,2),(48,'杜春生','YS-0005','sign in','2018-12-03 18:55:31','上海市青浦区崧盈路',NULL,'YS181130-00272',NULL,121.183090,31.159113,2),(49,'杜春生','YS-0005','sign out','2018-12-03 18:56:01','上海市青浦区崧盈路',NULL,'YS181130-00272',NULL,121.183090,31.159115,2),(50,'杜春生','1','sign out','2018-12-03 19:13:32','上海市青浦区崧盈路',NULL,NULL,NULL,121.183098,31.159151,1),(51,'杜春生','1','sign out','2018-12-03 19:13:35','上海市青浦区崧盈路',NULL,NULL,NULL,121.183098,31.159149,1),(52,'罗剑','YS-0003','sign in','2018-12-03 21:12:24','上海市浦东新区板泉路',NULL,'YS181202-00354',NULL,121.532349,31.164900,2),(53,'罗剑','YS-0003','sign in','2018-12-03 21:31:44','上海市浦东新区东书房路',NULL,'YS181202-00354',NULL,121.532654,31.164936,2),(54,'传友','1','sign in','2018-12-04 08:10:33','上海市松江区云清路',NULL,NULL,NULL,121.223808,31.056993,1),(55,'吴小雯','1','sign in','2018-12-04 08:27:24','上海市黄浦区北京东路541弄',NULL,NULL,NULL,121.479881,31.239315,1),(56,'吴小雯','YS-0001','sign out','2018-12-04 08:28:05','上海市黄浦区北京东路541弄',NULL,'YS181203-00359',NULL,121.479881,31.239315,2),(57,'吴小雯','1','sign out','2018-12-04 23:15:59','上海市虹口区大连西路180号',NULL,NULL,NULL,121.492256,31.277060,1),(58,'吴小雯','YS-0001','sign out','2018-12-04 23:16:18','上海市虹口区大连西路180号',NULL,'YS181201-00321',NULL,121.492256,31.277060,2),(59,'吴小雯','YS-0001','sign out','2018-12-04 23:16:40','上海市虹口区大连西路94号',NULL,'YS181202-00354',NULL,121.492302,31.277039,2),(60,'吴小雯','YS-0001','sign out','2018-12-04 23:17:09','上海市虹口区大连西路180号',NULL,'YS181201-00302',NULL,121.492256,31.277060,2),(61,'吴小雯','YS-0001','sign out','2018-12-04 23:17:24','上海市虹口区大连西路180号',NULL,'YS181201-00319',NULL,121.492256,31.277060,2),(62,'吴小雯','YS-0001','sign in','2018-12-04 23:17:33','上海市虹口区大连西路180号',NULL,'YS181201-00320',NULL,121.492249,31.277065,2),(63,'吴小雯','YS-0001','sign in','2018-12-04 23:17:38','上海市虹口区大连西路94号',NULL,'YS181201-00320',NULL,121.492302,31.277048,2),(64,'吴小雯','YS-0001','sign out','2018-12-04 23:17:55','上海市虹口区大连西路94号',NULL,'YS181201-00320',NULL,121.492310,31.277048,2),(65,'吴小雯','1','sign in','2018-12-05 07:58:16','上海市虹口区玉田路211号',NULL,NULL,NULL,121.496284,31.277346,1),(66,'吴小雯','1','sign out','2018-12-05 21:08:39','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492310,31.277048,1),(67,'吴小雯','YS-0001','sign in','2018-12-05 21:14:40','上海市虹口区大连西路94号',NULL,'YS181204-00365',NULL,121.492310,31.277048,2),(68,'吴小雯','YS-0001','sign out','2018-12-05 21:24:26','上海市虹口区大连西路94号',NULL,'YS181205-00367',NULL,121.492294,31.277048,2),(69,'张三','YS-0001','sign in','2018-12-11 22:54:06',NULL,NULL,'YS181204-00365',NULL,NULL,NULL,2),(70,'张三','YS-0001','sign in','2018-12-11 22:54:35',NULL,NULL,'YS181204-00365',NULL,NULL,NULL,2),(71,'张三','YS-0001','sign in','2018-12-11 22:55:18',NULL,NULL,'YS181204-00365',NULL,NULL,NULL,2),(111,'吴小雯','1','sign in','2018-12-03 09:35:22','上海市黄浦区北无锡路64号',NULL,NULL,NULL,121.479721,31.239250,1),(112,'传友','1','sign out','2018-12-03 09:39:13','上海市松江区明南路',NULL,NULL,NULL,121.270943,31.044050,1),(113,'杜春生','1','sign out','2018-12-03 19:13:32','上海市青浦区崧盈路',NULL,NULL,NULL,121.183098,31.159151,1),(114,'杜春生','1','sign out','2018-12-03 19:13:35','上海市青浦区崧盈路',NULL,NULL,NULL,121.183098,31.159149,1),(115,'传友','1','sign in','2018-12-04 08:10:33','上海市松江区云清路',NULL,NULL,NULL,121.223808,31.056993,1),(116,'吴小雯','YS-0001','sign in','2018-12-04 08:27:24','上海市黄浦区北京东路541弄',NULL,NULL,NULL,121.479881,31.239315,1),(117,'吴小雯','YS-0001','sign out','2018-12-04 23:15:59','上海市虹口区大连西路180号',NULL,NULL,NULL,121.492256,31.277060,1),(118,'吴小雯','YS-0001','sign in','2018-12-05 07:58:16','上海市虹口区玉田路211号',NULL,NULL,NULL,121.496284,31.277346,1),(119,'吴小雯','YS-0001','sign out','2018-12-05 21:08:39','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492310,31.277048,1),(120,'传友','YS-0004','sign in','2018-12-10 00:05:19','上海市黄浦区人民大道200号',NULL,NULL,NULL,121.473700,31.230370,1),(121,'卫林','YS-0002','sign out','2018-12-12 23:19:55','上海市徐汇区龙吴路997号',NULL,NULL,NULL,121.445709,31.146172,1);
/*!40000 ALTER TABLE `sys_sign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_sms_log`
--

DROP TABLE IF EXISTS `sys_sms_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_sms_log` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键',
  `user_id` bigint(20) DEFAULT NULL COMMENT '操作人',
  `content` text COLLATE utf8_unicode_ci COMMENT '必填参数。发送内容（1-500 个汉字）UTF-8编码',
  `mobile` text COLLATE utf8_unicode_ci COMMENT '必填参数。手机号码。多个以英文逗号隔开',
  `stime` datetime DEFAULT NULL COMMENT '可选参数。发送时间，填写时已填写的时间发送，不填时为当前时间发送',
  `sign` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '必填参数。用户签名',
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '必填参数。固定值 pt',
  `extno` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '可选参数。扩展码，用户定义扩展码，只能为数字',
  `send_status` int(11) DEFAULT NULL COMMENT '1成功 0失败',
  `send_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '发送编号',
  `invalid_num` int(11) DEFAULT NULL COMMENT '无效号码数',
  `success_num` int(11) DEFAULT NULL COMMENT '成功提交数',
  `black_num` int(11) DEFAULT NULL COMMENT '黑名单数',
  `return_msg` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '返回消息',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_sms_log`
--

LOCK TABLES `sys_sms_log` WRITE;
/*!40000 ALTER TABLE `sys_sms_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_sms_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_staff`
--

DROP TABLE IF EXISTS `sys_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_staff` (
  `staff_id` varchar(50) NOT NULL COMMENT '主键ID',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `address` varchar(100) DEFAULT NULL COMMENT '住址',
  `dpm_name` varchar(20) DEFAULT NULL COMMENT '部门',
  `posting_name` varchar(20) DEFAULT NULL COMMENT '职称',
  `work_phone` varchar(20) DEFAULT NULL COMMENT '办公电话',
  `mobile_phone` varchar(20) DEFAULT NULL COMMENT '移动电话',
  `edu` varchar(20) DEFAULT NULL COMMENT '学历',
  `picture` text COMMENT '照片',
  `on_board_time` datetime DEFAULT NULL COMMENT '入职日期',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `status` varchar(20) DEFAULT NULL COMMENT '员工状态',
  `create_time` datetime DEFAULT NULL COMMENT '添加时间',
  `remark` longtext COMMENT '备注',
  `job_level` varchar(20) DEFAULT NULL COMMENT '员工职级',
  `adm_level` varchar(50) DEFAULT NULL COMMENT '行政级别',
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_staff`
--

LOCK TABLES `sys_staff` WRITE;
/*!40000 ALTER TABLE `sys_staff` DISABLE KEYS */;
INSERT INTO `sys_staff` VALUES ('1','管理员','1','','技术部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('2','罗剑',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3','张三',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('YS-0003','罗剑','男','fa sf','技术部','部门经理','as fqr1r','asdf asdf','','',NULL,NULL,'1','2018-10-28 20:08:45',NULL,'','');
/*!40000 ALTER TABLE `sys_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(4) DEFAULT NULL COMMENT '状态  0：禁用   1：正常',
  `create_user_id` bigint(20) DEFAULT NULL COMMENT '创建者ID',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `staff_id` varchar(50) DEFAULT NULL COMMENT '员工编号',
  `open_id` varchar(50) DEFAULT NULL COMMENT '微信open_id',
  `wx_nickname` varchar(255) DEFAULT NULL COMMENT '微信昵称',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='系统用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'admin','059a00192592d5444bc0caad7203f98b506332e2cf7abb35d684ea9bf7c18f08','21313@qq1.com','12323213',1,1,'2016-11-11 11:11:11',1,'1',NULL,NULL),(2,'dcs','92925488b28ab12584ac8fcaa8a27a0f497b2c62940c8f4fbc8ef19ebc87c43e','dcs2@11211.com','2324',1,1,'2018-09-03 00:31:28',1,'YS-0003',NULL,NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (61,1,5),(62,2,5),(63,2,6);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_weixin_menu`
--

DROP TABLE IF EXISTS `sys_weixin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_weixin_menu` (
  `wx_menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `perms` varchar(20) DEFAULT '1' COMMENT '权限标识（0 没权限，1 有权限）',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `status` int(11) DEFAULT '0' COMMENT '状态（0 有效，1 无效）',
  PRIMARY KEY (`wx_menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='微信菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_weixin_menu`
--

LOCK TABLES `sys_weixin_menu` WRITE;
/*!40000 ALTER TABLE `sys_weixin_menu` DISABLE KEYS */;
INSERT INTO `sys_weixin_menu` VALUES (1,0,'报案中心','1',0,0),(2,1,'IT服务报案','1',1,0),(3,1,'工程报案','1',2,0),(4,1,'其它报案','1',3,0),(5,1,'案件管理','1',4,0),(6,0,'调度中心','1',0,0),(7,6,'任务调度','1',1,0),(8,0,'出勤中心','1',0,0),(9,8,'未完成案件','1',1,0),(10,8,'已完成案件','1',2,0),(11,8,'服务咨询','1',3,0),(12,0,'客户中心','1',0,0),(13,12,'客户跟踪','1',1,0),(14,12,'新增客户跟踪','1',2,1);
/*!40000 ALTER TABLE `sys_weixin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_weixin_role_menu`
--

DROP TABLE IF EXISTS `sys_weixin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_weixin_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '微信菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信角色与菜单对应关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_weixin_role_menu`
--

LOCK TABLES `sys_weixin_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_weixin_role_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_weixin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_token`
--

DROP TABLE IF EXISTS `tb_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_token` (
  `user_id` bigint(20) NOT NULL,
  `token` varchar(100) NOT NULL COMMENT 'token',
  `expire_time` datetime DEFAULT NULL COMMENT '过期时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `token` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户Token';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_token`
--

LOCK TABLES `tb_token` WRITE;
/*!40000 ALTER TABLE `tb_token` DISABLE KEYS */;
INSERT INTO `tb_token` VALUES (25,'r6vcexnhxk9mn70zzubfnc1bzf3owcxt','2018-09-17 04:30:55','2018-09-16 16:30:55'),(26,'qwqww0j703hx8oed0muvv47mjytw5ome','2018-09-16 11:09:18','2018-09-15 23:09:18'),(27,'pcvxuulk1ywtt51jhxn4vzcmzpzqzug5','2018-09-16 09:21:54','2018-09-15 21:21:54'),(28,'28pgl6xrt0b8blcj0bgobueendv28fs0','2018-09-06 10:53:34','2018-09-05 22:53:34'),(29,'a6hryak4eymth81cz1eukldniybyhehj','2018-09-16 01:59:35','2018-09-15 13:59:35'),(30,'ewogoco2987vxf1y4qbkv70oxj8w8d9y','2018-09-16 10:13:13','2018-09-15 22:13:13');
/*!40000 ALTER TABLE `tb_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_weixin_form_id`
--

DROP TABLE IF EXISTS `tb_weixin_form_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_weixin_form_id` (
  `form_id` varchar(50) NOT NULL COMMENT '微信表单id',
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `staff_id` varchar(50) NOT NULL COMMENT '员工id',
  `open_id` varchar(50) NOT NULL COMMENT '微信openid',
  `status` tinyint(4) DEFAULT '0' COMMENT '状态，0：未使用；1：已使用',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='微信发消息formid收集信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_weixin_form_id`
--

LOCK TABLES `tb_weixin_form_id` WRITE;
/*!40000 ALTER TABLE `tb_weixin_form_id` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_weixin_form_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `technician_service`
--

DROP TABLE IF EXISTS `technician_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `technician_service` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ts_cu_id` varchar(20) DEFAULT NULL COMMENT '客户id',
  `ts_emp_id` varchar(20) DEFAULT NULL COMMENT '员工id',
  `ts_technician_type` varchar(20) DEFAULT NULL COMMENT '类型',
  `ts_content` longtext COMMENT '咨询内容',
  `ts_solution` longtext COMMENT '解决方案',
  `ts_time` datetime DEFAULT NULL COMMENT '解决时间',
  `ts_add_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8062 DEFAULT CHARSET=utf8 COMMENT='服务咨询记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technician_service`
--
/*!40000 ALTER TABLE `technician_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ys-crms'
--
/*!50003 DROP FUNCTION IF EXISTS `currentVal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `currentVal`(v_seq_name VARCHAR(50)) RETURNS int(11)
begin
    declare value integer;
    set value = 0;
    select current_val into value  from sequence where seq_name = v_seq_name;
   return value;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `f_seq_customer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `f_seq_customer`() RETURNS int(11)
BEGIN
	REPLACE INTO `seq_customer`(flag) VALUES(2);
  	SELECT LAST_INSERT_ID() into @a;
	RETURN @a;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `f_seq_newcase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `f_seq_newcase`() RETURNS int(11)
BEGIN
	REPLACE INTO `seq_newcase`(flag) VALUES(2);
  	SELECT LAST_INSERT_ID() into @a;
	RETURN @a;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `nextVal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `nextVal`(v_seq_name VARCHAR(50)) RETURNS int(11)
begin
	declare value integer;
		set value = 0;
    update sequence set current_val = current_val + increment_val  where seq_name = v_seq_name;
    select current_val into value  from sequence where seq_name = v_seq_name;
    return value;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `nextValAddPrefix` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `nextValAddPrefix`(v_seq_name VARCHAR(50)) RETURNS varchar(30) CHARSET utf8mb4
begin
	declare prefix_name VARCHAR(255) DEFAULT '';
    	SET prefix_name = '';
		select prefix into prefix_name  from sequence where seq_name = v_seq_name;
    return CONCAT(prefix_name,nextVal(v_seq_name));
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-17 21:54:35
