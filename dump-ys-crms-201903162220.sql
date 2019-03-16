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
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8 COMMENT='案件调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_dispatch`
--

LOCK TABLES `case_dispatch` WRITE;
/*!40000 ALTER TABLE `case_dispatch` DISABLE KEYS */;
INSERT INTO `case_dispatch` VALUES (1,12,'YS190102-00721','2019-01-02 23:14:40','YS-0005','杜春生','YS-0074','gu12310827','2019-01-03 08:00:00','','1',0,'YS-0074',NULL),(2,11,'YS190102-00720','2019-01-02 23:16:55','YS-0005','杜春生','YS-0056','陈杰','2019-01-03 08:00:00','','1',1,'YS-0056,YS-0005',NULL),(3,10,'YS190102-00719','2019-01-03 22:56:09','YS-0004','传友','YS-0004','传友','2019-01-04 10:15:00','处理意见','1',0,'YS-0004',NULL),(4,9,'YS190102-00718','2019-01-03 23:17:42','YS-0004','传友','YS-0004','传友','2019-01-04 08:00:00','处理建议','1',0,'YS-0004',NULL),(5,6,'YS190102-00715','2019-01-05 00:42:56','YS-0005','杜春生','YS-0005','杜春生','2019-01-05 08:00:00',NULL,'1',0,'YS-0005',NULL),(6,4,'YS190102-00713','2019-01-05 00:43:05','YS-0005','杜春生','YS-0005','杜春生','2019-01-05 08:00:00',NULL,'1',0,'YS-0005',NULL),(7,1,'YS190102-00710','2019-01-05 00:43:12','YS-0005','杜春生','YS-0005','杜春生','2019-01-05 08:00:00',NULL,'1',0,'YS-0005',NULL),(8,18,'YS190106-00727','2019-01-06 12:06:38','YS-0078','wwedy','YS-0005','杜春生','2019-01-06 14:00:00',NULL,'1',1,'YS-0005,YS-0004',NULL),(9,17,'YS190106-00726','2019-01-06 12:07:37','YS-0078','wwedy','YS-0005','杜春生','2019-01-06 14:00:00',NULL,'1',1,'YS-0005,YS-0004',NULL),(10,15,'YS190106-00724','2019-01-06 12:07:59','YS-0078','wwedy','YS-0078','wwedy','2019-01-06 14:00:00',NULL,'1',1,'YS-0078,YS-0072,YS-0074',NULL),(11,16,'YS190106-00725','2019-01-06 12:08:08','YS-0078','wwedy','YS-0078','wwedy','2019-01-06 14:00:00',NULL,'2',1,'YS-0078,YS-0005,YS-0004','2019-01-06 12:49:11'),(12,13,'YS190103-00722','2019-01-06 12:08:17','YS-0078','wwedy','YS-0078','wwedy','2019-01-06 14:15:00',NULL,'1',0,'YS-0078',NULL),(13,3,'YS190102-00712','2019-01-06 12:08:24','YS-0078','wwedy','YS-0078','wwedy','2019-01-06 14:15:00',NULL,'1',0,'YS-0078',NULL),(14,5,'YS190102-00714','2019-01-10 00:54:30','YS-0005','杜春生','YS-0005','杜春生','2019-01-10 08:00:00','','2',0,'YS-0005','2019-01-12 01:07:21'),(15,26,'YS190110-00735','2019-01-10 01:15:24','YS-0005','杜春生','YS-0074','gu12310827','2019-01-10 08:00:00','','1',0,'YS-0074',NULL),(16,27,'YS190110-00736','2019-01-10 01:16:45','YS-0005','杜春生','YS-0074','gu12310827','2019-01-10 08:00:00','','1',0,'YS-0074',NULL),(17,28,'YS190110-00737','2019-01-10 01:18:41','YS-0005','杜春生','YS-0074','gu12310827','2019-01-10 08:00:00','','1',0,'YS-0074',NULL),(18,29,'YS190110-00738','2019-01-10 01:21:17','YS-0005','杜春生','YS-0074','gu12310827','2019-01-10 08:00:00','','1',0,'YS-0074',NULL),(19,30,'YS190110-00739','2019-01-10 01:23:02','YS-0005','杜春生','YS-0074','gu12310827','2019-01-10 08:00:00','','2',0,'YS-0074','2019-01-10 09:12:34'),(20,31,'YS190110-00740','2019-01-10 01:26:07','YS-0005','杜春生','YS-0074','gu12310827','2019-01-10 08:00:00','','2',0,'YS-0074','2019-01-10 03:29:50'),(21,32,'YS190110-00741','2019-01-10 01:53:52','YS-0005','杜春生','YS-0074','gu12310827','2019-01-10 08:00:00','','2',0,'YS-0074','2019-01-10 01:54:08'),(22,32,'YS190110-00741','2019-01-10 01:54:25','YS-0005','杜春生','YS-0057','顾春华','2019-01-10 08:00:00','','2',0,'YS-0057','2019-01-10 03:27:36'),(23,33,'YS190110-00742','2019-01-10 03:27:52','YS-0005','杜春生','YS-0074','gu12310827','2019-01-10 08:00:00','','2',0,'YS-0074','2019-01-10 03:28:53'),(24,39,'YS190110-00748','2019-01-10 06:03:14','YS-0005','杜春生','YS-0078','wwedy','2019-01-10 08:00:00','','2',0,'YS-0078','2019-01-10 06:03:42'),(25,41,'YS190110-00750','2019-01-10 09:11:30','YS-0005','杜春生','YS-0074','gu12310827','2019-01-10 11:15:00','','2',0,'YS-0074','2019-01-10 09:12:15'),(26,33,'YS190110-00742','2019-01-12 01:45:25','YS-0005','杜春生','YS-0078','wwedy','2019-01-12 08:00:00',NULL,'2',1,'YS-0078,YS-0005','2019-01-15 21:27:03'),(27,37,'YS190110-00746','2019-01-12 01:52:10','YS-0005','杜春生','YS-0005','杜春生','2019-01-12 08:00:00',NULL,'2',1,'YS-0005,YS-0078,YS-0004','2019-01-15 11:00:02'),(28,34,'YS190110-00743','2019-01-12 01:52:29','YS-0005','杜春生','YS-0004','传友','2019-01-12 08:00:00',NULL,'1',1,'YS-0004,YS-0005',NULL),(29,43,'YS190112-00752','2019-01-12 06:25:54','YS-0005','杜春生','YS-0005','杜春生','2019-01-12 08:30:00','','1',0,'YS-0005',NULL),(30,42,'YS190110-00751','2019-01-12 07:11:42','YS-0078','wwedy','YS-0078','wwedy','2019-01-12 09:15:00','','2',1,'YS-0078,YS-0005','2019-01-15 11:08:50'),(31,31,'YS190110-00740','2019-01-12 07:25:35','YS-0005','杜春生','YS-0078','wwedy','2019-01-12 09:30:00',NULL,'1',0,'YS-0078',NULL),(32,47,'YS190115-00756','2019-01-16 09:14:30','YS-0004','传友','YS-0004','传友','2019-01-16 11:15:00','处理意见','1',0,'YS-0004',NULL),(33,48,'YS190119-00757','2019-01-20 17:17:12','YS-0005','杜春生','YS-0003','罗剑','2019-01-21 08:00:00','\n','1',0,'YS-0003',NULL),(34,49,'YS190121-00758','2019-01-21 21:52:56','YS-0078','wwedy','YS-0078','wwedy','2019-01-22 08:00:00','好好工作，天天向上','1',0,'YS-0078',NULL),(35,54,'YS190303-00763','2019-03-03 17:39:40','YS-0078','wwedy','YS-0005','杜春生','2019-03-04 08:00:00','','1',0,'YS-0005',NULL),(36,53,'YS190303-00762','2019-03-03 17:39:57','YS-0078','wwedy','YS-0005','杜春生','2019-03-04 08:00:00','','1',0,'YS-0005',NULL),(37,52,'YS190303-00761','2019-03-03 17:40:30','YS-0078','wwedy','YS-0078','wwedy','2019-03-04 08:00:00','','1',1,'YS-0078,YS-0005,YS-0004,YS-0003',NULL),(38,50,'YS190217-00759','2019-03-03 17:43:06','YS-0078','wwedy','YS-0078','wwedy','2019-03-04 08:00:00','','1',1,'YS-0078,YS-0004,YS-0005,YS-0003',NULL),(39,62,'YS190303-00771','2019-03-03 18:46:38','YS-0078','wwedy','YS-0078','wwedy','2019-03-04 08:00:00','','1',1,'YS-0078,YS-0004',NULL),(40,51,'YS190303-00760','2019-03-03 18:47:06','YS-0078','wwedy','YS-0078','wwedy','2019-03-04 08:00:00','','1',1,'YS-0078,YS-0005,YS-0003',NULL),(41,60,'YS190303-00769','2019-03-03 18:48:06','YS-0078','wwedy','YS-0078','wwedy','2019-03-04 08:00:00','','1',0,'YS-0078',NULL),(42,55,'YS190303-00764','2019-03-03 18:48:36','YS-0078','wwedy','YS-0078','wwedy','2019-03-04 08:00:00','','1',0,'YS-0078',NULL),(43,59,'YS190303-00768','2019-03-03 18:49:03','YS-0078','wwedy','YS-0078','wwedy','2019-03-04 08:00:00','','1',1,'YS-0078,YS-0005',NULL),(44,61,'YS190303-00770','2019-03-03 18:49:20','YS-0078','wwedy','YS-0078','wwedy','2019-03-04 08:00:00','','1',0,'YS-0078',NULL),(45,58,'YS190303-00767','2019-03-07 20:38:17','YS-0005','杜春生','YS-0078','wwedy','2019-03-08 08:00:00',NULL,'1',1,'YS-0078,YS-0005',NULL),(46,57,'YS190303-00766','2019-03-07 20:38:33','YS-0005','杜春生','YS-0005','杜春生','2019-03-08 08:00:00',NULL,'1',1,'YS-0005,YS-0004,YS-0003',NULL),(47,63,'YS190307-00772','2019-03-07 22:10:52','YS-0078','wwedy','YS-0078','wwedy','2019-03-08 08:00:00','','1',1,'YS-0078,YS-0005',NULL),(48,64,'YS190307-00773','2019-03-07 22:11:26','YS-0078','wwedy','YS-0078','wwedy','2019-03-08 08:00:00','','1',0,'YS-0078',NULL),(165,56,'YS190303-00765','2019-03-09 12:33:55','1','管理员','YS-0078','wwedy','2019-03-09 14:30:00','222','1',0,'YS-0078',NULL),(166,11429,'YS190309-00092','2019-03-09 12:38:33','1','管理员','YS-0078','wwedy','2019-03-09 14:00:00','1231231','1',1,'YS-0078,1',NULL);
/*!40000 ALTER TABLE `case_dispatch` ENABLE KEYS */;
UNLOCK TABLES;

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
  `cmr_is_msg` int(11) DEFAULT '0',
  `cmr_msg_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COMMENT='案件变动记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_modify_record`
--

LOCK TABLES `case_modify_record` WRITE;
/*!40000 ALTER TABLE `case_modify_record` DISABLE KEYS */;
INSERT INTO `case_modify_record` VALUES (1,12,1,'YS-0005','2019-01-02 23:14:40','YS-0074',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,1,5,0,NULL),(2,11,1,'YS-0005','2019-01-02 23:16:55','YS-0056',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,2,5,0,NULL),(3,10,1,'YS-0004','2019-01-03 22:56:09','YS-0004',NULL,'YS-0004',NULL,NULL,'案件调度',NULL,3,3,0,NULL),(4,10,4,'YS-0004','2019-01-03 23:16:34',NULL,NULL,NULL,'1234175','1111','案件完成','N',3,3,0,NULL),(5,9,1,'YS-0004','2019-01-03 23:17:42','YS-0004',NULL,'YS-0004',NULL,NULL,'案件调度',NULL,4,2,0,NULL),(6,9,9,'YS-0004','2019-01-03 23:50:31',NULL,'原因111',NULL,'1234567','解决方案',NULL,'N',4,2,0,NULL),(7,6,1,'YS-0005','2019-01-05 00:42:56','YS-0005',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,5,1,0,NULL),(8,4,1,'YS-0005','2019-01-05 00:43:05','YS-0005',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,6,4,0,NULL),(9,1,1,'YS-0005','2019-01-05 00:43:12','YS-0005',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,7,2,0,NULL),(10,11,4,'YS-0005','2019-01-05 00:43:35','YS-0056',NULL,'YS-0005','3543554','5464654','案件完成','N',2,5,0,NULL),(11,18,1,'YS-0078','2019-01-06 12:06:38','YS-0005',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,8,5,0,NULL),(12,17,1,'YS-0078','2019-01-06 12:07:37','YS-0005',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,9,2,0,NULL),(13,15,1,'YS-0078','2019-01-06 12:07:59','YS-0078',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,10,2,0,NULL),(14,16,1,'YS-0078','2019-01-06 12:08:08','YS-0078',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,11,4,0,NULL),(15,13,1,'YS-0078','2019-01-06 12:08:17','YS-0078',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,12,2,0,NULL),(16,3,1,'YS-0078','2019-01-06 12:08:24','YS-0078',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,13,3,0,NULL),(17,15,4,'YS-0078','2019-01-06 12:48:31','YS-0078',NULL,'YS-0078','2019016','已解决','案件完成','N',10,2,0,NULL),(18,13,9,'YS-0078','2019-01-06 12:48:56','YS-0078','网络故障','YS-0078','2019017','已解决',NULL,'N',12,2,0,NULL),(19,16,10,'YS-0078','2019-01-06 12:49:11','YS-0078','转咨询','YS-0078',NULL,NULL,NULL,NULL,11,4,0,NULL),(20,21,7,'YS-0005','2019-01-09 00:36:59',NULL,NULL,NULL,NULL,NULL,'案件注销',NULL,NULL,NULL,0,NULL),(21,20,2,'YS-0005','2019-01-09 20:26:54',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(22,22,2,'YS-0005','2019-01-09 20:58:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(23,19,2,'YS-0005','2019-01-09 20:58:08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(24,14,2,'YS-0005','2019-01-09 20:58:11',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(25,8,2,'YS-0005','2019-01-09 20:58:12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(26,7,2,'YS-0005','2019-01-09 20:58:14',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(27,5,1,'YS-0005','2019-01-10 00:54:30','YS-0005',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,14,1,0,NULL),(28,2,2,'YS-0005','2019-01-10 01:01:26',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(29,24,2,'YS-0005','2019-01-10 01:03:44',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(30,23,2,'YS-0005','2019-01-10 01:08:37',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(31,25,2,'YS-0005','2019-01-10 01:11:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(32,26,1,'YS-0005','2019-01-10 01:15:24','YS-0074',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,15,2,0,NULL),(33,27,1,'YS-0005','2019-01-10 01:16:45','YS-0074',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,16,2,0,NULL),(34,28,1,'YS-0005','2019-01-10 01:18:41','YS-0074',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,17,2,0,NULL),(35,29,1,'YS-0005','2019-01-10 01:21:17','YS-0074',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,18,2,0,NULL),(36,30,1,'YS-0005','2019-01-10 01:23:02','YS-0074',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,19,2,0,NULL),(37,31,1,'YS-0005','2019-01-10 01:26:07','YS-0074',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,20,2,0,NULL),(38,32,1,'YS-0005','2019-01-10 01:53:52','YS-0074',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,21,2,0,NULL),(39,32,5,'YS-0005','2019-01-10 01:54:08','YS-0074','4','YS-0005',NULL,NULL,'取消调度',NULL,21,2,0,NULL),(40,32,1,'YS-0005','2019-01-10 01:54:25','YS-0057',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,22,2,0,NULL),(41,32,5,'YS-0005','2019-01-10 03:27:36','YS-0057','sa萨达','YS-0005',NULL,NULL,'取消调度',NULL,22,2,0,NULL),(42,33,1,'YS-0005','2019-01-10 03:27:52','YS-0074',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,23,2,0,NULL),(43,32,2,'YS-0005','2019-01-10 03:28:01',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(44,33,5,'YS-0005','2019-01-10 03:28:53','YS-0074','阿诗丹顿','YS-0005',NULL,NULL,'取消调度',NULL,23,2,0,NULL),(45,31,5,'YS-0005','2019-01-10 03:29:50','YS-0074','111','YS-0005',NULL,NULL,'取消调度',NULL,20,2,0,NULL),(46,36,7,'YS-0078','2019-01-10 04:13:24',NULL,NULL,NULL,NULL,NULL,'案件注销',NULL,NULL,NULL,0,NULL),(47,39,1,'YS-0005','2019-01-10 06:03:14','YS-0078',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,24,6,0,NULL),(48,38,2,'YS-0005','2019-01-10 06:03:23',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(49,39,6,'YS-0005','2019-01-10 06:03:42','YS-0078','是非得失','YS-0005',NULL,NULL,'客户撤案',NULL,24,6,0,NULL),(50,3,9,'YS-0078','2019-01-10 07:53:33',NULL,'Sndndjjdjd',NULL,'8181818','Kajzjsjdjd',NULL,'N',13,3,0,NULL),(51,41,1,'YS-0005','2019-01-10 09:11:30','YS-0074',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,25,2,0,NULL),(52,40,2,'YS-0005','2019-01-10 09:11:42',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(53,41,6,'YS-0005','2019-01-10 09:12:15','YS-0074','hhh','YS-0005',NULL,NULL,'客户撤案',NULL,25,2,0,NULL),(54,30,5,'YS-0005','2019-01-10 09:12:34','YS-0074','ｕｈｂｈ','YS-0005',NULL,NULL,'取消调度',NULL,19,2,0,NULL),(55,18,4,'YS-0005','2019-01-10 09:13:28',NULL,NULL,NULL,'2554285','ghjj','案件完成','N',8,5,0,NULL),(56,17,9,'YS-0005','2019-01-10 09:13:51',NULL,'vhik',NULL,'2555566','ggfyj',NULL,'N',9,2,0,NULL),(57,6,4,'YS-0005','2019-01-12 01:07:00',NULL,NULL,NULL,'2154827','数额的不咸不淡好','案件完成','N',5,1,0,NULL),(58,5,11,'YS-0005','2019-01-12 01:07:21',NULL,'还是上帝大好河山',NULL,NULL,NULL,NULL,NULL,14,1,0,NULL),(59,1,4,'YS-0005','2019-01-12 01:07:53',NULL,NULL,NULL,'1248646','说好说歹虎岛和夫','案件完成','N',7,2,0,NULL),(60,4,4,'YS-0005','2019-01-12 01:08:13',NULL,NULL,NULL,'4548544','甘肃省的回电话','案件完成','N',6,4,0,NULL),(61,35,2,'YS-0005','2019-01-12 01:43:38',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(62,33,1,'YS-0005','2019-01-12 01:45:25','YS-0078',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,26,2,0,NULL),(63,37,1,'YS-0005','2019-01-12 01:52:10','YS-0005',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,27,2,0,NULL),(64,34,1,'YS-0005','2019-01-12 01:52:29','YS-0004',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,28,2,0,NULL),(65,43,1,'YS-0005','2019-01-12 06:25:54','YS-0005',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,29,2,0,NULL),(66,42,1,'YS-0078','2019-01-12 07:11:42','YS-0078',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,30,2,0,NULL),(67,31,1,'YS-0005','2019-01-12 07:25:35','YS-0078',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,31,2,0,NULL),(68,43,9,'YS-0005','2019-01-15 10:50:02',NULL,'是个很熟的',NULL,'1254844','嗯啊高高瘦瘦的话',NULL,'N',29,2,0,NULL),(69,46,2,'YS-0005','2019-01-15 10:50:27',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(70,37,11,'YS-0005','2019-01-15 11:00:02',NULL,'故事都很简单',NULL,NULL,NULL,NULL,NULL,27,2,0,NULL),(71,45,2,'YS-0005','2019-01-15 11:07:51',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(72,44,2,'YS-0005','2019-01-15 11:07:57',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(73,37,2,'YS-0005','2019-01-15 11:08:04',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(74,30,2,'YS-0005','2019-01-15 11:08:16',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(75,5,2,'YS-0005','2019-01-15 11:08:22',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(76,42,11,'YS-0005','2019-01-15 11:08:50',NULL,'怪叔叔',NULL,NULL,NULL,NULL,NULL,30,2,0,NULL),(77,42,2,'YS-0005','2019-01-15 11:09:06',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(78,33,11,'YS-0005','2019-01-15 21:27:03','YS-0078','酔','YS-0005',NULL,NULL,NULL,NULL,26,2,0,NULL),(79,34,9,'YS-0005','2019-01-15 21:28:09','YS-0004','5435435','YS-0005','4545454','4353',NULL,'N',28,2,0,NULL),(80,33,2,'YS-0005','2019-01-15 21:36:02',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL),(81,47,1,'YS-0004','2019-01-16 09:14:30','YS-0004',NULL,'YS-0004',NULL,NULL,'案件调度',NULL,32,2,0,NULL),(82,48,1,'YS-0005','2019-01-20 17:17:12','YS-0003',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,33,2,0,NULL),(83,49,1,'YS-0078','2019-01-21 21:52:56','YS-0078',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,34,2,0,NULL),(84,54,1,'YS-0078','2019-03-03 17:39:40','YS-0005',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,35,5,0,NULL),(85,53,1,'YS-0078','2019-03-03 17:39:57','YS-0005',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,36,3,0,NULL),(86,52,1,'YS-0078','2019-03-03 17:40:30','YS-0078',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,37,4,0,NULL),(87,50,1,'YS-0078','2019-03-03 17:43:06','YS-0078',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,38,2,0,NULL),(88,52,4,'YS-0078','2019-03-03 17:43:43',NULL,NULL,NULL,'8481811','6666','案件完成','N',37,4,0,NULL),(89,50,4,'YS-0078','2019-03-03 17:44:08',NULL,NULL,NULL,'6636366','6666','案件完成','N',38,2,0,NULL),(90,62,1,'YS-0078','2019-03-03 18:46:38','YS-0078',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,39,2,0,NULL),(91,51,1,'YS-0078','2019-03-03 18:47:06','YS-0078',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,40,2,0,NULL),(92,60,1,'YS-0078','2019-03-03 18:48:06','YS-0078',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,41,4,0,NULL),(93,55,1,'YS-0078','2019-03-03 18:48:36','YS-0078',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,42,5,0,NULL),(94,59,1,'YS-0078','2019-03-03 18:49:03','YS-0078',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,43,2,0,NULL),(95,61,1,'YS-0078','2019-03-03 18:49:20','YS-0078',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,44,4,0,NULL),(96,61,4,'YS-0078','2019-03-03 19:07:51',NULL,NULL,NULL,'1515151','666666','案件完成','N',44,4,0,NULL),(97,60,4,'YS-0078','2019-03-03 19:08:39',NULL,NULL,NULL,'2019888','6666','案件完成','N',41,4,0,NULL),(98,55,4,'YS-0078','2019-03-03 19:24:38',NULL,NULL,NULL,'1515151','666666','案件完成','N',42,5,0,NULL),(99,58,1,'YS-0005','2019-03-07 20:38:17','YS-0078',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,45,4,0,NULL),(100,57,1,'YS-0005','2019-03-07 20:38:33','YS-0005',NULL,'YS-0005',NULL,NULL,'案件调度',NULL,46,2,0,NULL),(101,62,4,'YS-0078','2019-03-07 21:55:56',NULL,NULL,NULL,'2221111','88888','案件完成','N',39,2,0,NULL),(102,63,1,'YS-0078','2019-03-07 22:10:52','YS-0078',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,47,2,0,NULL),(103,64,1,'YS-0078','2019-03-07 22:11:26','YS-0078',NULL,'YS-0078',NULL,NULL,'案件调度',NULL,48,5,0,NULL),(104,63,4,'YS-0078','2019-03-07 22:12:00',NULL,NULL,NULL,'8484848','888888','案件完成','N',47,2,0,NULL),(105,64,4,'YS-0078','2019-03-07 22:20:49',NULL,NULL,NULL,'3946464','88888','案件完成','N',48,5,0,NULL),(111,56,1,'1','2019-03-09 12:33:55','YS-0078',NULL,'1',NULL,NULL,'案件调度',NULL,165,5,0,NULL),(112,11429,1,'1','2019-03-09 12:38:37','YS-0078',NULL,'1',NULL,NULL,'案件调度',NULL,166,4,0,NULL);
/*!40000 ALTER TABLE `case_modify_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `case_sign_statistics`
--

DROP TABLE IF EXISTS `case_sign_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `case_sign_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(200) DEFAULT NULL COMMENT '员工名称',
  `cu_name` varchar(50) DEFAULT NULL COMMENT '客户名称',
  `dep_name` varchar(50) DEFAULT NULL COMMENT '部门名称',
  `sign_in_time` datetime DEFAULT NULL COMMENT '签到时间',
  `sign_out_time` datetime DEFAULT NULL COMMENT '签退时间',
  `sign_in_location` varchar(255) DEFAULT NULL COMMENT '签到地点',
  `sign_out_location` varchar(255) DEFAULT NULL COMMENT '签退地点',
  `task_time` datetime DEFAULT NULL COMMENT '案件时间',
  `cu_address` varchar(255) DEFAULT NULL COMMENT '客户地址',
  `cost_time` int(11) DEFAULT NULL COMMENT '花费时间 （单位：秒）',
  `staff_id` varchar(50) DEFAULT NULL COMMENT '员工id',
  `nc_number` varchar(50) DEFAULT NULL COMMENT '案件编号',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime,
  PRIMARY KEY (`id`),
  UNIQUE KEY `case_sign_statistics_nc_number_IDX` (`nc_number`,`staff_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `case_sign_statistics`
--

LOCK TABLES `case_sign_statistics` WRITE;
/*!40000 ALTER TABLE `case_sign_statistics` DISABLE KEYS */;
INSERT INTO `case_sign_statistics` VALUES (143,'罗剑','安悦酒店管理公司(锦江之星叶家宅店)','技术部','2018-12-02 13:21:45','2018-12-04 23:17:55','上海市虹口区大连西路94号','上海市虹口区大连西路94号','2018-12-19 15:30:38','叶家宅路83号',208570,'YS-0078','YS190307-00772','2019-03-03 22:37:52','2019-03-03 22:37:51'),(144,'罗剑','上海明致宇海国际物流有限公司','技术部','2018-12-05 21:14:40',NULL,'上海市虹口区大连西路94号',NULL,'2018-12-21 10:44:01','上海市高阳路553号303室（4号线临平路下）',0,'YS-0001','YS181204-00365','2019-03-03 22:37:57','2019-03-03 22:37:58');
/*!40000 ALTER TABLE `case_sign_statistics` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'YS190102-1554','吃光破公司（上海）','吃光破公司','chiguangpogongsi(shanghai)','CGPGS(SH)','2313213','213213213213','123213','213213',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',0,NULL,NULL,'YS-0050','YS-0005','2019-01-02 21:23:13',NULL,'2019-01-02 21:23:13',NULL),(2,'YS190102-1555','wendy的客户1','wendy的客户1','wendydekehu1','WENDYDKH1','123456','wendy的客户1的地址1','wendy的客户1','13099999991',NULL,NULL,NULL,NULL,'wendy的客户1','13099999999',NULL,'0',1,'2019-01-02 00:00:00','2020-01-01 00:00:00','YS-0078','YS-0078','2019-01-02 21:28:00',NULL,'2019-01-02 21:28:00',NULL),(3,'YS190102-1556','wendy的客户2','wendy的客户2','wendydekehu2','WENDYDKH2','1235678','wendy的客户2的地址1','wendy的客户2','15099999999',NULL,NULL,NULL,NULL,'wendy的客户2','1678909865',NULL,'0',0,NULL,NULL,'YS-0078','YS-0078','2019-01-02 21:29:07',NULL,'2019-01-02 21:29:06','wendy的客户2'),(4,'YS190102-1557','wendy的客户3','wendy的客户3','wendydekehu3','WENDYDKH3','243545656','wendy的客户3的址址1（大234234）！？','wendy的客户3','2334546565',NULL,NULL,NULL,NULL,'wendy的客户3','1223345456',NULL,'0',0,NULL,NULL,'YS-0078','YS-0078','2019-01-02 21:30:12',NULL,'2019-01-02 21:30:12',NULL),(5,'YS190102-1558','wendy的客户4（上海）','wendy的客户4（上海）','wendydekehu4(shanghai)','WENDYDKH4(SH)','233434','wendy的客户4（上海）的地址1','3223','23454656',NULL,NULL,NULL,NULL,'wendy的客户4（上海）','234545665',NULL,'0',0,NULL,NULL,'YS-0078','YS-0005','2019-01-02 22:18:37',NULL,'2019-01-02 22:18:37','wendy的客户4（上海）'),(6,'YS190103-1559','上海妙知旅电子商务服务有限公司??','妙知旅','shanghaimiaozhilu:dianzishangwufuwuyouxiangongsi??','SHMZLDZSWFWYXGS??','32432','4324','324324','324324',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',0,NULL,NULL,'YS-0058','YS-0005','2019-01-03 23:09:48',NULL,'2019-01-03 23:09:47',NULL),(7,'YS190104-1560','法的规定','二二','fadeguiding','FDGD','324','324','324','324',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',0,NULL,NULL,'YS-0078','YS-0005','2019-01-04 23:41:49',NULL,'2019-01-04 23:41:47',NULL),(8,'YS190104-1561','二五','非官方的','erwu','EW','324','324','324','324234',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',0,NULL,NULL,'YS-0066','YS-0005','2019-01-04 23:42:23',NULL,'2019-01-04 23:42:21',NULL),(9,'YS190104-1562','法豆腐干豆腐干','法大大','fadoufugandoufugan','FDFGDFG','324234','32424','32424','324324',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',0,NULL,NULL,'YS-0050','YS-0005','2019-01-04 23:42:38',NULL,'2019-01-04 23:42:36',NULL),(10,'YS190104-1563','反对法 ','梵蒂冈梵蒂冈','fanduifa ','FDF ','32424','徐汇区漕溪北路331号中金国际广场A座,1001','324','324',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',0,NULL,NULL,'YS-0050','YS-0005','2019-01-04 23:42:54',NULL,'2019-01-04 23:42:52',NULL),(11,'YS190104-1564','梵蒂冈','发动反攻的','fandigang','FDG','32424','徐汇区漕溪北路331号中金国际广场A座,1001','324324','32424',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'0',0,NULL,NULL,'YS-0066','YS-0005','2019-01-04 23:43:10',NULL,'2019-01-04 23:43:08',NULL),(12,'YS190106-1565','上海vv1有限公司','vv1','shanghaivv1youxiangongsi','SHVV1YXGS','13089890909','上海市浦东新区申江路1号上海市浦东新区申江路','vv1n','13000009999',NULL,NULL,NULL,NULL,'刘天','13089890900',NULL,'0',1,'2018-10-01 00:00:00','2019-09-30 00:00:00','YS-0005','YS-0078','2019-01-06 14:27:07',NULL,NULL,'备备注1备注1备注1备注1备注1备注1备注1备注1备注1备注1备注1备注1备注1备注1备注1备注1备注1备注1备注1备注1'),(13,'YS190106-1566','上海vv2有限公司','vv2','shanghaivv2youxiangongsi','SHVV2YXGS','20202020','上海市浦东新区申江路2号','vv2w','13000009911',NULL,NULL,NULL,NULL,'张天','13089890911',NULL,'0',1,'2017-01-01 00:00:00','2020-12-31 00:00:00','YS-0005','YS-0078','2019-01-06 14:27:07',NULL,NULL,NULL),(14,'YS190106-1567','上海nvv公司','nvv','shanghainvvgongsi','SHNVVGS','30303030','上海市浦东新区申江路3号','nvv','13000009922',NULL,NULL,NULL,NULL,'王天','13089890902',NULL,'0',0,NULL,NULL,'YS-0005','YS-0078','2019-01-06 14:27:07',NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_address`
--

LOCK TABLES `customer_address` WRITE;
/*!40000 ALTER TABLE `customer_address` DISABLE KEYS */;
INSERT INTO `customer_address` VALUES (1,1,'213213213213','2019-01-02 21:23:14',NULL,NULL),(2,1,'213213213213','2019-01-02 21:23:14',NULL,NULL),(3,2,'wendy的客户1的地址1','2019-01-02 21:28:01',NULL,NULL),(4,3,'wendy的客户2的地址1','2019-01-02 21:29:07',NULL,NULL),(5,4,'wendy的客户3的址址1（大234234）！？','2019-01-02 21:30:12',NULL,NULL),(6,5,'wendy的客户4（上海）的地址1','2019-01-02 22:18:37',NULL,NULL),(7,6,'4324','2019-01-03 23:09:48',NULL,NULL),(8,7,'324','2019-01-04 23:41:50',NULL,NULL),(9,8,'324','2019-01-04 23:42:23',NULL,NULL),(10,9,'32424','2019-01-04 23:42:38',NULL,NULL),(11,10,'徐汇区漕溪北路331号中金国际广场A座,1001','2019-01-04 23:42:54',NULL,NULL),(12,11,'徐汇区漕溪北路331号中金国际广场A座,1001','2019-01-04 23:43:10',NULL,NULL);
/*!40000 ALTER TABLE `customer_address` ENABLE KEYS */;
UNLOCK TABLES;

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

LOCK TABLES `customer_contact` WRITE;
/*!40000 ALTER TABLE `customer_contact` DISABLE KEYS */;
INSERT INTO `customer_contact` VALUES (1,1,'123213','213213','2019-01-02 21:23:14'),(2,2,'wendy的客户1','13099999991','2019-01-02 21:28:01'),(3,3,'wendy的客户2','15099999999','2019-01-02 21:29:07'),(4,4,'wendy的客户3','2334546565','2019-01-02 21:30:12'),(5,5,'3223','23454656','2019-01-02 22:18:37'),(6,6,'324324','324324','2019-01-03 23:09:48'),(7,7,'324','324','2019-01-04 23:41:50'),(8,8,'324','324234','2019-01-04 23:42:23'),(9,9,'32424','324324','2019-01-04 23:42:38'),(10,10,'324','324','2019-01-04 23:42:54'),(11,11,'324324','','2019-01-04 23:43:11');
/*!40000 ALTER TABLE `customer_contact` ENABLE KEYS */;
UNLOCK TABLES;

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

LOCK TABLES `customer_progress_record` WRITE;
/*!40000 ALTER TABLE `customer_progress_record` DISABLE KEYS */;
INSERT INTO `customer_progress_record` VALUES (1,1371,'111222222','2018-11-11 12:12:09','2018-11-11 12:12:20','1',NULL),(2,1393,'1212312.  1111','2018-11-22 15:28:03','2018-11-22 15:28:10','1',NULL),(3,1392,'3232323','2018-12-21 23:11:37','2018-12-21 23:11:42','1',NULL),(4,805,'1212','2018-12-21 23:11:52','2018-12-21 23:11:56','1',NULL),(5,1391,'1111','2018-12-28 21:48:17','2018-12-28 21:48:25','1','上门跟踪'),(6,864,'哦破婆婆','2018-12-28 21:53:06','2018-12-28 21:53:23','1','上门跟踪'),(7,765,'o0o0o0o0o09999','2018-12-28 08:15:00','2018-12-28 21:56:08','1','电话跟踪'),(8,765,'2222111','2018-12-30 19:56:17','2018-12-30 19:56:23','1','电话跟踪'),(9,29,'122255552221111','2018-12-30 22:56:25','2018-12-30 22:57:59','1','电话跟踪'),(10,629,'拍拍拍拍拍拍','2018-12-30 23:03:18','2018-12-30 23:03:24','1','电话跟踪');
/*!40000 ALTER TABLE `customer_progress_record` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=11430 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_case`
--

LOCK TABLES `new_case` WRITE;
/*!40000 ALTER TABLE `new_case` DISABLE KEYS */;
INSERT INTO `new_case` VALUES (1,'YS190102-00710',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-03 08:00:00','网络故障','7',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-01-02 21:29:16',NULL,NULL,'2019-01-12 01:07:53','全部断网，网络慢，无线慢，电脑无法上网，电脑无法连接无线，更换或安装路由器，交换机，安装无线AP',NULL,NULL,NULL,1,0),(2,'YS190102-00711',3,'YS190102-1556','wendy的客户2','wendy的客户2的地址1','wendy的客户2','15099999999','2019-01-03 08:00:00','网络故障','2',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-01-02 21:29:22',NULL,NULL,NULL,'全部断网，网络慢，无线慢，电脑无法上网，电脑无法连接无线，更换或安装路由器，交换机，安装无线AP',NULL,NULL,NULL,1,0),(3,'YS190102-00712',3,'YS190102-1556','wendy的客户2','wendy的客户2的地址1','wendy的客户2','15099999999','2019-01-03 08:00:00','网络故障','7',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-01-02 21:30:32',NULL,NULL,'2019-01-10 07:53:33','全部断网，网络慢，无线慢，电脑无法上网，电脑无法连接无线，更换或安装路由器，交换机，安装无线AP',NULL,NULL,NULL,1,0),(4,'YS190102-00713',4,'YS190102-1557','wendy的客户3','wendy的客户3的址址1（大234234）！？','wendy的客户3','2334546565','2019-01-03 08:00:00','软件故障','7',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-01-02 21:30:38',NULL,NULL,'2019-01-12 01:08:13','电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(5,'YS190102-00714',1,'YS190102-1554','吃光破公司（上海）','213213213213','123213','213213','2019-01-03 08:00:00','硬件故障','2',NULL,NULL,NULL,NULL,'YS-0058','马云','2019-01-02 22:11:34',NULL,NULL,'2019-01-12 01:07:21','电脑无法开机，电脑蓝屏，黑屏，机器异响，电脑使用非常卡',NULL,NULL,NULL,9,0),(6,'YS190102-00715',1,'YS190102-1554','吃光破公司（上海）','213213213213','123213','213213','2019-01-03 08:00:00','监控工程','7',NULL,NULL,NULL,NULL,'YS-0058','马云','2019-01-02 22:11:55',NULL,NULL,'2019-01-12 01:07:00','监控点位多少个？何时要求完成？',NULL,NULL,NULL,2,0),(7,'YS190102-00716',1,'YS190102-1554','吃光破公司（上海）','213213213213','123213','213213','2019-01-03 08:00:00','网络故障','2',NULL,NULL,NULL,NULL,'YS-0058','马云','2019-01-02 22:12:30',NULL,NULL,NULL,'全部断网，网络慢，无线慢，电脑无法上网，电脑无法连接无线，更换或安装路由器，交换机，安装无线AP',NULL,NULL,NULL,1,0),(8,'YS190102-00717',1,'YS190102-1554','吃光破公司（上海）','213213213213','123213','213213','2019-01-03 08:00:00','软件故障','2',NULL,NULL,NULL,NULL,'YS-0058','马云','2019-01-02 22:14:41',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,9,0),(9,'YS190102-00718',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-03 08:00:00','软件故障','7',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-01-02 22:17:22',NULL,NULL,'2019-01-03 23:50:32','电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(10,'YS190102-00719',3,'YS190102-1556','wendy的客户2','wendy的客户2的地址1','wendy的客户2','15099999999','2019-01-03 08:00:00','软件故障','7',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-01-02 22:17:33',NULL,NULL,'2019-01-03 23:16:34','电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(11,'YS190102-00720',5,'YS190102-1558','wendy的客户4（上海）','wendy的客户4（上海）的地址1','3223','23454656','2019-01-03 08:00:00','布线工程','7',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-02 22:18:50',NULL,NULL,'2019-01-05 00:43:35','网络点位？个，电话点位？ 何时完成',NULL,NULL,NULL,2,0),(12,'YS190102-00721',5,'YS190102-1558','wendy的客户4（上海）','wendy的客户4（上海）的地址1','3223','23454656','2019-01-03 08:00:00','硬件故障','3',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-01-02 22:24:48',NULL,NULL,NULL,'电脑无法开机，电脑蓝屏，黑屏，机器异响，电脑使用非常卡',NULL,NULL,NULL,1,0),(13,'YS190103-00722',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-04 08:00:00','软件故障','7',NULL,NULL,NULL,NULL,'YS-0004','传友','2019-01-03 23:50:32',NULL,NULL,'2019-01-06 12:48:56','原因111',NULL,NULL,NULL,1,1),(14,'YS190105-00723',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-06 10:30:00','网络故障','2',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-05 00:28:44',NULL,NULL,NULL,'全部断网，网络慢，无线慢，电脑无法上网，电脑无法连接无线，更换或安装路由器，交换机，安装无线AP',NULL,NULL,NULL,1,0),(15,'YS190106-00724',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-06 14:00:00','布线工程','7',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-01-06 12:04:46',NULL,NULL,'2019-01-06 12:48:31','网络点位？个，电话点位？ 何时完成',NULL,NULL,NULL,2,0),(16,'YS190106-00725',4,'YS190102-1557','wendy的客户3','wendy的客户3的址址1（大234234）！？','wendy的客户3','2334546565','2019-01-06 14:00:00','监控工程','12',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-01-06 12:04:56',NULL,NULL,'2019-01-06 12:49:11','监控点位多少个？何时要求完成？',NULL,NULL,NULL,2,0),(17,'YS190106-00726',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-06 14:00:00','网络故障','7',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-01-06 12:05:05',NULL,NULL,'2019-01-10 09:13:51','全部断网，网络慢，无线慢，电脑无法上网，电脑无法连接无线，更换或安装路由器，交换机，安装无线AP',NULL,NULL,NULL,1,0),(18,'YS190106-00727',5,'YS190102-1558','wendy的客户4（上海）','wendy的客户4（上海）的地址1','3223','23454656','2019-01-06 14:00:00','网络故障','7',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-01-06 12:05:17',NULL,NULL,'2019-01-10 09:13:28','全部断网，网络慢，无线慢，电脑无法上网，电脑无法连接无线，更换或安装路由器，交换机，安装无线AP',NULL,NULL,NULL,1,0),(19,'YS190106-00728',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-06 14:45:00','软件故障','2',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-01-06 12:48:56',NULL,NULL,NULL,'网络故障',NULL,NULL,NULL,1,1),(20,'YS190109-00729',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-09 08:00:00','软件故障','2',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-09 00:36:38',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(21,'YS190109-00730',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-09 08:00:00','软件故障','6',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-09 00:36:40',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(22,'YS190109-00731',11,'YS190104-1564','梵蒂冈','徐汇区漕溪北路331号中金国际广场A座,1001','324324','32424','2019-01-09 08:15:00','软件故障','2',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-09 06:21:00',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(23,'YS190110-00732',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-10 08:00:00','软件故障','2',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-10 01:03:15',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(24,'YS190110-00733',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-10 08:00:00','软件故障','2',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-10 01:03:30',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(25,'YS190110-00734',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-10 08:00:00','软件故障','2',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-10 01:10:55',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(26,'YS190110-00735',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-10 08:00:00','软件故障','3',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-10 01:11:53',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(27,'YS190110-00736',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-10 08:00:00','网络故障','3',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-10 01:16:11',NULL,NULL,NULL,'全部断网，网络慢，无线慢，电脑无法上网，电脑无法连接无线，更换或安装路由器，交换机，安装无线AP',NULL,NULL,NULL,1,0),(28,'YS190110-00737',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-10 08:00:00','硬件故障','3',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-10 01:18:28',NULL,NULL,NULL,'电脑无法开机，电脑蓝屏，黑屏，机器异响，电脑使用非常卡',NULL,NULL,NULL,1,0),(29,'YS190110-00738',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-10 08:00:00','软件故障','3',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-10 01:20:52',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(30,'YS190110-00739',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-10 08:00:00','软件故障','2',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-10 01:22:47',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(31,'YS190110-00740',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-10 08:00:00','软件故障','3',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-10 01:25:55',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(32,'YS190110-00741',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-10 08:00:00','软件故障','2',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-10 01:53:38',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(33,'YS190110-00742',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-10 08:00:00','软件故障','2',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-10 02:08:52',NULL,NULL,'2019-01-15 21:27:03','电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(34,'YS190110-00743',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-10 08:00:00','软件故障','7',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-01-10 04:12:39',NULL,NULL,'2019-01-15 21:28:09','电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(35,'YS190110-00744',3,'YS190102-1556','wendy的客户2','wendy的客户2的地址1','wendy的客户2','15099999999','2019-01-10 08:00:00','监控工程','2',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-01-10 04:13:01',NULL,NULL,NULL,'监控点位多少个？何时要求完成？',NULL,NULL,NULL,2,0),(36,'YS190110-00745',3,'YS190102-1556','wendy的客户2','wendy的客户2的地址1','wendy的客户2','15099999999','2019-01-10 08:00:00','软件故障','6',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-01-10 04:13:15',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,9,0),(37,'YS190110-00746',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-11 10:00:00','软件故障,硬件故障','2',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-10 06:01:55',NULL,NULL,'2019-01-15 11:00:02','电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(38,'YS190110-00747',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-10 08:00:00','监控工程','2',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-10 06:02:14',NULL,NULL,NULL,'监控点位多少个？何时要求完成？',NULL,NULL,NULL,2,0),(39,'YS190110-00748',6,'YS190103-1559','上海妙知旅电子商务服务有限公司??','4324','324324','324324','2019-01-10 08:00:00','软件故障','8',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-10 06:02:31',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,9,0),(40,'YS190110-00749',3,'YS190102-1556','wendy的客户2','wendy的客户2的地址1','wendy的客户2','15099999999','2019-01-10 10:00:00','网络故障','2',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-01-10 07:53:33',NULL,NULL,NULL,'Sndndjjdjd',NULL,NULL,NULL,1,1),(41,'YS190110-00750',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-10 11:00:00','软件故障','8',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-10 09:07:24',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(42,'YS190110-00751',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-12 11:15:00','硬件故障','2',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-10 09:13:51',NULL,NULL,'2019-01-15 11:08:50','Hujjjjjjjj',NULL,NULL,NULL,1,1),(43,'YS190112-00752',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-12 08:30:00','网络故障','7',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-12 06:25:21',NULL,NULL,'2019-01-15 10:50:02','全部断网，网络慢，无线慢，电脑无法上网，电脑无法连接无线，更换或安装路由器，交换机，安装无线AP',NULL,NULL,NULL,1,0),(44,'YS190112-00753',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-12 09:30:00','软件故障','2',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-01-12 07:32:57',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(45,'YS190112-00754',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-13 08:00:00','网络故障','2',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-12 20:28:30',NULL,NULL,NULL,'全部断网，网络慢，无线慢，电脑无法上网，电脑无法连接无线，更换或安装路由器，交换机，安装无线AP',NULL,NULL,NULL,1,0),(46,'YS190115-00755',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-15 12:45:00','网络故障','2',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-15 10:50:03',NULL,NULL,NULL,'是个很熟的',NULL,NULL,NULL,1,1),(47,'YS190115-00756',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-16 08:00:00','软件故障','3',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-15 21:28:09',NULL,NULL,NULL,'5435435',NULL,NULL,NULL,1,1),(48,'YS190119-00757',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-20 08:00:00','软件故障','3',NULL,NULL,NULL,NULL,'YS-0005','杜春生','2019-01-19 19:57:33',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(49,'YS190121-00758',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-01-22 08:00:00','网络故障,硬件故障','3',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-01-21 21:52:09',NULL,NULL,NULL,'全部断网，网络慢，无线慢，电脑无法上网，电脑无法连接无线，更换或安装路由器，交换机，安装无线AP',NULL,NULL,NULL,1,0),(50,'YS190217-00759',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-02-18 08:00:00','网络故障,软件故障,硬件故障','7',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-02-17 19:18:57',NULL,NULL,'2019-03-03 17:44:08','全部断网，网络慢，无线慢，电脑无法上网，电脑无法连接无线，更换或安装路由器，交换机，安装无线AP',NULL,NULL,NULL,1,0),(51,'YS190303-00760',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-03-04 08:00:00','硬件故障','3',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-03-03 17:38:29',NULL,NULL,NULL,'电脑无法开机，电脑蓝屏，黑屏，机器异响，电脑使用非常卡',NULL,NULL,NULL,1,0),(52,'YS190303-00761',4,'YS190102-1557','wendy的客户3','wendy的客户3的址址1（大234234）！？','wendy的客户3','2334546565','2019-03-04 08:00:00','布线工程','7',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-03-03 17:38:44',NULL,NULL,'2019-03-03 17:43:43','网络点位？个，电话点位？ 何时完成',NULL,NULL,NULL,2,0),(53,'YS190303-00762',3,'YS190102-1556','wendy的客户2','wendy的客户2的地址1','wendy的客户2','15099999999','2019-03-04 08:00:00','软件故障','3',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-03-03 17:38:56',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(54,'YS190303-00763',5,'YS190102-1558','wendy的客户4（上海）','wendy的客户4（上海）的地址1','3223','23454656','2019-03-04 08:00:00','上门送货','3',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-03-03 17:39:16',NULL,NULL,NULL,'Sndnd',NULL,NULL,NULL,9,0),(55,'YS190303-00764',5,'YS190102-1558','wendy的客户4（上海）','wendy的客户4（上海）的地址1','3223','23454656','2019-03-04 08:00:00','布线工程','7',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-03-03 17:45:38',NULL,NULL,'2019-03-03 19:24:38','网络点位？个，电话点位？ 何时完成',NULL,NULL,NULL,2,0),(56,'YS190303-00765',5,'YS190102-1558','wendy的客户4（上海）','wendy的客户4（上海）的地址1','3223','23454656','2019-03-04 08:00:00','硬件故障','3',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-03-03 17:46:19',NULL,NULL,NULL,'电脑无法开机，电脑蓝屏，黑屏，机器异响，电脑使用非常卡',NULL,NULL,NULL,1,0),(57,'YS190303-00766',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-03-04 08:00:00','软件故障','3',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-03-03 18:44:54',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(58,'YS190303-00767',4,'YS190102-1557','wendy的客户3','wendy的客户3的址址1（大234234）！？','wendy的客户3','2334546565','2019-03-04 08:00:00','软件故障','3',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-03-03 18:45:13',NULL,NULL,NULL,'电脑无法进入系统，outlook无法使用，网页无法打开，office或系统没有几乎打印机无法打印，财务软件无法使用',NULL,NULL,NULL,1,0),(59,'YS190303-00768',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-03-04 08:00:00','布线工程','3',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-03-03 18:45:28',NULL,NULL,NULL,'网络点位？个，电话点位？ 何时完成',NULL,NULL,NULL,2,0),(60,'YS190303-00769',4,'YS190102-1557','wendy的客户3','wendy的客户3的址址1（大234234）！？','wendy的客户3','2334546565','2019-03-04 08:00:00','监控工程','7',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-03-03 18:45:44',NULL,NULL,'2019-03-03 19:08:39','监控点位多少个？何时要求完成？',NULL,NULL,NULL,2,0),(61,'YS190303-00770',4,'YS190102-1557','wendy的客户3','wendy的客户3的址址1（大234234）！？','wendy的客户3','2334546565','2019-03-04 08:00:00','监控工程','7',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-03-03 18:45:58',NULL,NULL,'2019-03-03 19:07:51','监控点位多少个？何时要求完成？',NULL,NULL,NULL,9,0),(62,'YS190303-00771',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-03-04 08:00:00','上门送货','7',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-03-03 18:46:19',NULL,NULL,'2019-03-07 21:55:56','其中之一',NULL,NULL,NULL,9,0),(63,'YS190307-00772',2,'YS190102-1555','wendy的客户1','wendy的客户1的地址1','wendy的客户1','13099999991','2019-03-08 08:00:00','网络故障,软件故障,硬件故障','7',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-03-07 22:10:31',NULL,NULL,'2019-03-07 22:12:00','全部断网，网络慢，无线慢，电脑无法上网，电脑无法连接无线，更换或安装路由器，交换机，安装无线AP',NULL,NULL,NULL,1,0),(64,'YS190307-00773',5,'YS190102-1558','wendy的客户4（上海）','wendy的客户4（上海）的地址1','3223','23454656','2019-03-08 08:00:00','硬件故障,上门送货','7',NULL,NULL,NULL,NULL,'YS-0078','wwedy','2019-03-07 22:11:12',NULL,NULL,'2019-03-07 22:20:49','电脑无法开机，电脑蓝屏，黑屏，机器异响，电脑使用非常卡',NULL,NULL,NULL,1,0),(11429,'YS190309-00092',4,'YS190102-1557','wendy的客户3','wendy的客户3的址址1（大234234）！？','wendy的客户3','2334546565','2019-03-09 14:00:00','软件故障','3',NULL,NULL,NULL,NULL,'1','管理员','2019-03-09 12:07:26',NULL,NULL,NULL,'it-软件报案模版',NULL,NULL,NULL,9,0);
/*!40000 ALTER TABLE `new_case` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `qrtz_cron_triggers` VALUES ('PlatformScheduler','TASK_1','DEFAULT','0 0/5 * * * ? ','Asia/Shanghai');
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
INSERT INTO `qrtz_job_details` VALUES ('PlatformScheduler','TASK_1','DEFAULT',NULL,'com.sykj.quartz.utils.ScheduleJob','0','0','0','0',_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0(com.sykj.quartz.entity.ScheduleJobEntity\0\0\0\0\0\0\0\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statust\0Ljava/lang/Integer;xpt\0\ZcaseSignStatisticsExecutorsr\0java.util.Datehj�KYt\0\0xpw\0\0i=?\�xt\00 0/5 * * * ? sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0executeppsr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0\0\0\0\0x\0');
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
INSERT INTO `qrtz_scheduler_state` VALUES ('PlatformScheduler','luojiandeMacBook-Pro.local1552147628003',1552147823583,15000);
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
INSERT INTO `qrtz_triggers` VALUES ('PlatformScheduler','TASK_1','DEFAULT','TASK_1','DEFAULT',NULL,1552148100000,1552147800000,5,'WAITING','CRON',1551508586000,0,NULL,2,_binary '�\�\0sr\0org.quartz.JobDataMap���迩�\�\0\0xr\0&org.quartz.utils.StringKeyDirtyFlagMap�\�\��\�](\0Z\0allowsTransientDataxr\0org.quartz.utils.DirtyFlagMap\�.�(v\n\�\0Z\0dirtyL\0mapt\0Ljava/util/Map;xpsr\0java.util.HashMap\��\�`\�\0F\0\nloadFactorI\0	thresholdxp?@\0\0\0\0\0w\0\0\0\0\0\0t\0\rJOB_PARAM_KEYsr\0(com.sykj.quartz.entity.ScheduleJobEntity\0\0\0\0\0\0\0\0L\0beanNamet\0Ljava/lang/String;L\0\ncreateTimet\0Ljava/util/Date;L\0cronExpressionq\0~\0	L\0jobIdt\0Ljava/lang/Long;L\0\nmethodNameq\0~\0	L\0paramsq\0~\0	L\0remarkq\0~\0	L\0statust\0Ljava/lang/Integer;xpt\0\ZcaseSignStatisticsExecutorsr\0java.util.Datehj�KYt\0\0xpw\0\0i=>xt\00 0/5 * * * ? sr\0java.lang.Long;�\�̏#\�\0J\0valuexr\0java.lang.Number����\��\0\0xp\0\0\0\0\0\0\0t\0executet\080psr\0java.lang.Integer⠤���8\0I\0valuexq\0~\0\0\0\0\0x\0');
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='定时任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_job`
--

LOCK TABLES `schedule_job` WRITE;
/*!40000 ALTER TABLE `schedule_job` DISABLE KEYS */;
INSERT INTO `schedule_job` VALUES (1,'caseSignStatisticsExecutor','execute','80','0 0/5 * * * ? ',0,NULL,'2019-03-02 14:36:26'),(2,'vipCustomerUpdateTask','run',NULL,'0 0/5 * * * ?',0,'vip过期检查','2019-03-16 21:48:43');
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
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8 COMMENT='定时任务日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedule_job_log`
--

LOCK TABLES `schedule_job_log` WRITE;
/*!40000 ALTER TABLE `schedule_job_log` DISABLE KEYS */;
INSERT INTO `schedule_job_log` VALUES (1,1,'caseSignStatisticsExecutor','execute',NULL,1,'java.util.concurrent.ExecutionException: com.sykj.common.utils.RRException: 执行定时任务失败',3,'2019-03-02 14:36:35'),(2,1,'caseSignStatisticsExecutor','execute',NULL,0,NULL,22,'2019-03-02 14:39:49'),(3,1,'caseSignStatisticsExecutor','execute',NULL,0,NULL,7,'2019-03-02 14:40:00'),(4,1,'caseSignStatisticsExecutor','execute','30',0,NULL,33445,'2019-03-02 14:47:48'),(5,1,'caseSignStatisticsExecutor','execute','30',0,NULL,30046,'2019-03-02 14:48:54'),(6,1,'caseSignStatisticsExecutor','execute','30',0,NULL,24,'2019-03-02 14:55:39'),(7,1,'caseSignStatisticsExecutor','execute','30',0,NULL,17386,'2019-03-02 14:55:29'),(8,1,'caseSignStatisticsExecutor','execute','30',0,NULL,2809,'2019-03-02 14:55:47'),(9,1,'caseSignStatisticsExecutor','execute','80',0,NULL,323692,'2019-03-02 14:56:11'),(10,1,'caseSignStatisticsExecutor','execute','80',0,NULL,238882,'2019-03-02 15:01:43'),(11,1,'caseSignStatisticsExecutor','execute','80',0,NULL,4188,'2019-03-02 15:07:57'),(12,1,'caseSignStatisticsExecutor','execute','80',0,NULL,51087,'2019-03-02 15:07:53'),(13,1,'caseSignStatisticsExecutor','execute','80',0,NULL,182275,'2019-03-02 15:13:38'),(14,1,'caseSignStatisticsExecutor','execute','80',0,NULL,26510,'2019-03-02 15:17:43'),(15,1,'caseSignStatisticsExecutor','execute','80',0,NULL,53593,'2019-03-02 15:20:00'),(16,1,'caseSignStatisticsExecutor','execute','80',0,NULL,866924,'2019-03-02 15:25:00'),(17,1,'caseSignStatisticsExecutor','execute','80',0,NULL,6511,'2019-03-02 15:55:00'),(18,1,'caseSignStatisticsExecutor','execute','80',0,NULL,95,'2019-03-02 16:00:00'),(19,1,'caseSignStatisticsExecutor','execute','80',0,NULL,25,'2019-03-02 16:05:00'),(20,1,'caseSignStatisticsExecutor','execute','80',0,NULL,26,'2019-03-02 16:10:00'),(21,1,'caseSignStatisticsExecutor','execute','80',0,NULL,41,'2019-03-02 16:14:02'),(22,1,'caseSignStatisticsExecutor','execute','80',0,NULL,73,'2019-03-02 16:15:00'),(23,1,'caseSignStatisticsExecutor','execute','80',0,NULL,37,'2019-03-02 16:25:00'),(24,1,'caseSignStatisticsExecutor','execute','80',0,NULL,74,'2019-03-02 16:30:00'),(25,1,'caseSignStatisticsExecutor','execute','80',0,NULL,30,'2019-03-02 16:33:25'),(26,1,'caseSignStatisticsExecutor','execute','80',0,NULL,69,'2019-03-02 16:34:31'),(27,1,'caseSignStatisticsExecutor','execute','80',0,NULL,21,'2019-03-02 16:35:00'),(28,1,'caseSignStatisticsExecutor','execute','80',0,NULL,78,'2019-03-02 16:45:00'),(29,1,'caseSignStatisticsExecutor','execute','80',0,NULL,26,'2019-03-02 16:50:00'),(30,1,'caseSignStatisticsExecutor','execute','80',0,NULL,23,'2019-03-02 16:55:00'),(31,1,'caseSignStatisticsExecutor','execute','80',0,NULL,22,'2019-03-02 17:00:00'),(32,1,'caseSignStatisticsExecutor','execute','80',0,NULL,70,'2019-03-02 17:15:00'),(33,1,'caseSignStatisticsExecutor','execute','80',0,NULL,102980,'2019-03-02 17:20:00'),(34,1,'caseSignStatisticsExecutor','execute','80',0,NULL,70,'2019-03-02 17:25:00'),(35,1,'caseSignStatisticsExecutor','execute','80',0,NULL,4035,'2019-03-02 17:30:00'),(36,1,'caseSignStatisticsExecutor','execute','80',0,NULL,21,'2019-03-02 17:35:00'),(37,1,'caseSignStatisticsExecutor','execute','80',0,NULL,63,'2019-03-02 17:40:00'),(38,1,'caseSignStatisticsExecutor','execute','80',0,NULL,67,'2019-03-02 17:45:00'),(39,1,'caseSignStatisticsExecutor','execute','80',0,NULL,20,'2019-03-02 17:50:00'),(40,1,'caseSignStatisticsExecutor','execute','80',0,NULL,68,'2019-03-02 17:55:00'),(41,1,'caseSignStatisticsExecutor','execute','80',0,NULL,84,'2019-03-02 18:00:00'),(42,1,'caseSignStatisticsExecutor','execute','80',0,NULL,21,'2019-03-02 18:05:00'),(43,1,'caseSignStatisticsExecutor','execute','80',0,NULL,17,'2019-03-02 18:10:00'),(44,1,'caseSignStatisticsExecutor','execute','80',0,NULL,72,'2019-03-02 18:15:00'),(45,1,'caseSignStatisticsExecutor','execute','80',0,NULL,18,'2019-03-02 18:20:00'),(46,1,'caseSignStatisticsExecutor','execute','80',0,NULL,21,'2019-03-02 18:25:00'),(47,1,'caseSignStatisticsExecutor','execute','80',0,NULL,17,'2019-03-02 18:30:00'),(48,1,'caseSignStatisticsExecutor','execute','80',0,NULL,76,'2019-03-02 18:35:00'),(49,1,'caseSignStatisticsExecutor','execute','80',0,NULL,22,'2019-03-02 18:40:00'),(50,1,'caseSignStatisticsExecutor','execute','80',0,NULL,21,'2019-03-02 18:50:00'),(51,1,'caseSignStatisticsExecutor','execute','80',0,NULL,18,'2019-03-02 18:55:00'),(52,1,'caseSignStatisticsExecutor','execute','80',0,NULL,15,'2019-03-02 19:00:00'),(53,1,'caseSignStatisticsExecutor','execute','80',0,NULL,16,'2019-03-02 19:05:00'),(54,1,'caseSignStatisticsExecutor','execute','80',0,NULL,15,'2019-03-02 19:10:00'),(55,1,'caseSignStatisticsExecutor','execute','80',0,NULL,22,'2019-03-02 19:55:00'),(56,1,'caseSignStatisticsExecutor','execute','80',0,NULL,17,'2019-03-02 20:00:00'),(57,1,'caseSignStatisticsExecutor','execute','80',0,NULL,15,'2019-03-02 20:05:00'),(58,1,'caseSignStatisticsExecutor','execute','80',0,NULL,15,'2019-03-02 20:10:00'),(59,1,'caseSignStatisticsExecutor','execute','80',0,NULL,20,'2019-03-02 20:15:00'),(60,1,'caseSignStatisticsExecutor','execute','80',0,NULL,18,'2019-03-02 20:20:00'),(61,1,'caseSignStatisticsExecutor','execute','80',0,NULL,16,'2019-03-02 20:25:00'),(62,1,'caseSignStatisticsExecutor','execute','80',0,NULL,4298,'2019-03-02 20:35:02'),(63,1,'caseSignStatisticsExecutor','execute','80',0,NULL,76,'2019-03-02 20:40:00'),(64,1,'caseSignStatisticsExecutor','execute','80',0,NULL,21,'2019-03-02 20:45:00'),(65,1,'caseSignStatisticsExecutor','execute','80',0,NULL,21,'2019-03-02 20:50:00'),(66,1,'caseSignStatisticsExecutor','execute','80',0,NULL,67,'2019-03-02 20:55:00'),(67,1,'caseSignStatisticsExecutor','execute','80',0,NULL,19,'2019-03-02 21:00:00'),(68,1,'caseSignStatisticsExecutor','execute','80',0,NULL,17,'2019-03-02 21:05:00'),(69,1,'caseSignStatisticsExecutor','execute','80',0,NULL,15,'2019-03-02 21:10:00'),(70,1,'caseSignStatisticsExecutor','execute','80',0,NULL,75,'2019-03-02 21:20:00'),(71,1,'caseSignStatisticsExecutor','execute','80',0,NULL,66,'2019-03-02 21:25:00'),(72,1,'caseSignStatisticsExecutor','execute','80',0,NULL,106,'2019-03-02 21:30:00'),(73,1,'caseSignStatisticsExecutor','execute','80',0,NULL,82,'2019-03-02 21:35:00'),(74,1,'caseSignStatisticsExecutor','execute','80',0,NULL,21,'2019-03-02 21:40:00'),(75,1,'caseSignStatisticsExecutor','execute','80',0,NULL,30,'2019-03-02 21:45:05'),(76,1,'caseSignStatisticsExecutor','execute','80',0,NULL,76,'2019-03-02 21:50:04'),(77,1,'caseSignStatisticsExecutor','execute','80',0,NULL,92,'2019-03-02 21:55:13'),(78,1,'caseSignStatisticsExecutor','execute','80',0,NULL,27,'2019-03-02 22:00:12'),(79,1,'caseSignStatisticsExecutor','execute','80',0,NULL,30,'2019-03-02 22:05:00'),(80,1,'caseSignStatisticsExecutor','execute','80',0,NULL,16,'2019-03-02 22:10:00'),(81,1,'caseSignStatisticsExecutor','execute','80',0,NULL,16,'2019-03-02 22:15:00'),(82,1,'caseSignStatisticsExecutor','execute','80',0,NULL,76,'2019-03-02 22:25:00'),(83,1,'caseSignStatisticsExecutor','execute','80',0,NULL,21,'2019-03-02 22:30:00'),(84,1,'caseSignStatisticsExecutor','execute','80',0,NULL,18,'2019-03-02 22:35:00'),(85,1,'caseSignStatisticsExecutor','execute','30',0,NULL,15,'2019-03-03 18:00:00'),(86,1,'caseSignStatisticsExecutor','execute','30',0,NULL,8,'2019-03-03 18:05:00'),(87,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 18:10:00'),(88,1,'caseSignStatisticsExecutor','execute','30',0,NULL,8,'2019-03-03 18:15:00'),(89,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 18:20:00'),(90,1,'caseSignStatisticsExecutor','execute','30',0,NULL,10,'2019-03-03 18:55:00'),(91,1,'caseSignStatisticsExecutor','execute','30',0,NULL,10,'2019-03-03 19:00:00'),(92,1,'caseSignStatisticsExecutor','execute','30',0,NULL,7,'2019-03-03 19:05:00'),(93,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 19:10:00'),(94,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 19:15:00'),(95,1,'caseSignStatisticsExecutor','execute','30',0,NULL,8,'2019-03-03 19:20:00'),(96,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 19:25:00'),(97,1,'caseSignStatisticsExecutor','execute','30',0,NULL,8,'2019-03-03 19:30:00'),(98,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 19:35:00'),(99,1,'caseSignStatisticsExecutor','execute','30',0,NULL,7,'2019-03-03 19:40:00'),(100,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 19:45:00'),(101,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 19:50:00'),(102,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 19:55:00'),(103,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 20:25:00'),(104,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 20:35:00'),(105,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 20:40:00'),(106,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 20:50:00'),(107,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 21:05:00'),(108,1,'caseSignStatisticsExecutor','execute','30',0,NULL,8,'2019-03-03 21:10:00'),(109,1,'caseSignStatisticsExecutor','execute','30',0,NULL,10,'2019-03-03 21:15:00'),(110,1,'caseSignStatisticsExecutor','execute','30',0,NULL,8,'2019-03-03 21:20:00'),(111,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 21:25:00'),(112,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 21:30:00'),(113,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 21:35:00'),(114,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 21:50:00'),(115,1,'caseSignStatisticsExecutor','execute','30',0,NULL,8,'2019-03-03 21:55:00'),(116,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 22:00:00'),(117,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 22:05:00'),(118,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 22:10:00'),(119,1,'caseSignStatisticsExecutor','execute','30',0,NULL,8,'2019-03-03 22:15:00'),(120,1,'caseSignStatisticsExecutor','execute','30',0,NULL,10,'2019-03-03 22:20:00'),(121,1,'caseSignStatisticsExecutor','execute','30',0,NULL,9,'2019-03-03 22:25:00'),(122,1,'caseSignStatisticsExecutor','execute','30',0,NULL,14,'2019-03-03 22:30:00'),(123,1,'caseSignStatisticsExecutor','execute','30',0,NULL,10,'2019-03-03 22:31:48'),(124,1,'caseSignStatisticsExecutor','execute','30',0,NULL,40522,'2019-03-03 22:32:16'),(125,1,'caseSignStatisticsExecutor','execute','80',0,NULL,11287,'2019-03-03 22:35:00'),(126,1,'caseSignStatisticsExecutor','execute','80',0,NULL,54457,'2019-03-03 22:37:03'),(127,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3060,'2019-03-03 22:40:00'),(128,1,'caseSignStatisticsExecutor','execute','80',0,NULL,79,'2019-03-08 22:35:00'),(129,1,'caseSignStatisticsExecutor','execute','80',0,NULL,20,'2019-03-08 22:40:00'),(130,1,'caseSignStatisticsExecutor','execute','80',0,NULL,19,'2019-03-08 22:45:00'),(131,1,'caseSignStatisticsExecutor','execute','80',0,NULL,19,'2019-03-08 22:50:00'),(132,1,'caseSignStatisticsExecutor','execute','80',0,NULL,16,'2019-03-08 22:55:00'),(133,1,'caseSignStatisticsExecutor','execute','80',0,NULL,23,'2019-03-08 23:20:00'),(134,1,'caseSignStatisticsExecutor','execute','80',0,NULL,15,'2019-03-08 23:25:00'),(135,1,'caseSignStatisticsExecutor','execute','80',0,NULL,2,'2019-03-08 23:30:00'),(136,1,'caseSignStatisticsExecutor','execute','80',0,NULL,2,'2019-03-08 23:35:00'),(137,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-08 23:40:00'),(138,1,'caseSignStatisticsExecutor','execute','80',0,NULL,10,'2019-03-08 23:50:00'),(139,1,'caseSignStatisticsExecutor','execute','80',0,NULL,8,'2019-03-08 23:55:00'),(140,1,'caseSignStatisticsExecutor','execute','80',0,NULL,10,'2019-03-09 11:25:00'),(141,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 11:30:00'),(142,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 11:35:00'),(143,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 11:55:00'),(144,1,'caseSignStatisticsExecutor','execute','80',0,NULL,9,'2019-03-09 12:00:00'),(145,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 12:05:00'),(146,1,'caseSignStatisticsExecutor','execute','80',0,NULL,9,'2019-03-09 12:15:00'),(147,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 12:20:05'),(148,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 12:25:00'),(149,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 12:30:00'),(150,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 12:35:00'),(151,1,'caseSignStatisticsExecutor','execute','80',0,NULL,2,'2019-03-09 12:40:00'),(152,1,'caseSignStatisticsExecutor','execute','80',0,NULL,8,'2019-03-09 12:45:00'),(153,1,'caseSignStatisticsExecutor','execute','80',0,NULL,8,'2019-03-09 12:50:00'),(154,1,'caseSignStatisticsExecutor','execute','80',0,NULL,4,'2019-03-09 13:25:00'),(155,1,'caseSignStatisticsExecutor','execute','80',0,NULL,4,'2019-03-09 13:30:00'),(156,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 13:35:00'),(157,1,'caseSignStatisticsExecutor','execute','80',0,NULL,4,'2019-03-09 13:40:00'),(158,1,'caseSignStatisticsExecutor','execute','80',0,NULL,2,'2019-03-09 13:45:00'),(159,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 13:50:00'),(160,1,'caseSignStatisticsExecutor','execute','80',0,NULL,4,'2019-03-09 15:25:00'),(161,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 15:30:00'),(162,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 15:35:00'),(163,1,'caseSignStatisticsExecutor','execute','80',0,NULL,2,'2019-03-09 15:40:00'),(164,1,'caseSignStatisticsExecutor','execute','80',0,NULL,2,'2019-03-09 15:45:00'),(165,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 15:50:00'),(166,1,'caseSignStatisticsExecutor','execute','80',0,NULL,9,'2019-03-09 17:05:00'),(167,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 17:10:00'),(168,1,'caseSignStatisticsExecutor','execute','80',0,NULL,2,'2019-03-09 17:15:00'),(169,1,'caseSignStatisticsExecutor','execute','80',0,NULL,8,'2019-03-09 17:20:00'),(170,1,'caseSignStatisticsExecutor','execute','80',0,NULL,10,'2019-03-09 17:25:00'),(171,1,'caseSignStatisticsExecutor','execute','80',0,NULL,9,'2019-03-09 17:35:00'),(172,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 17:40:00'),(173,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 17:45:00'),(174,1,'caseSignStatisticsExecutor','execute','80',0,NULL,9,'2019-03-09 17:50:00'),(175,1,'caseSignStatisticsExecutor','execute','80',0,NULL,10,'2019-03-09 18:00:00'),(176,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 18:05:00'),(177,1,'caseSignStatisticsExecutor','execute','80',0,NULL,8,'2019-03-09 18:15:00'),(178,1,'caseSignStatisticsExecutor','execute','80',0,NULL,10,'2019-03-09 18:25:00'),(179,1,'caseSignStatisticsExecutor','execute','80',0,NULL,8,'2019-03-09 18:30:00'),(180,1,'caseSignStatisticsExecutor','execute','80',0,NULL,8,'2019-03-09 18:35:00'),(181,1,'caseSignStatisticsExecutor','execute','80',0,NULL,8,'2019-03-09 18:40:00'),(182,1,'caseSignStatisticsExecutor','execute','80',0,NULL,4,'2019-03-09 18:45:00'),(183,1,'caseSignStatisticsExecutor','execute','80',0,NULL,2,'2019-03-09 18:50:00'),(184,1,'caseSignStatisticsExecutor','execute','80',0,NULL,10,'2019-03-09 18:59:20'),(185,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 19:00:00'),(186,1,'caseSignStatisticsExecutor','execute','80',0,NULL,4,'2019-03-09 19:05:00'),(187,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 19:10:00'),(188,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 19:15:00'),(189,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 19:20:00'),(190,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 19:30:00'),(191,1,'caseSignStatisticsExecutor','execute','80',0,NULL,2,'2019-03-09 19:35:00'),(192,1,'caseSignStatisticsExecutor','execute','80',0,NULL,2,'2019-03-09 19:40:00'),(193,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 19:45:00'),(194,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 19:50:00'),(195,1,'caseSignStatisticsExecutor','execute','80',0,NULL,4,'2019-03-09 20:30:00'),(196,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 20:35:00'),(197,1,'caseSignStatisticsExecutor','execute','80',0,NULL,2,'2019-03-09 20:40:00'),(198,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 20:45:00'),(199,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 20:50:00'),(200,1,'caseSignStatisticsExecutor','execute','80',0,NULL,4,'2019-03-09 20:55:00'),(201,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 21:40:00'),(202,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 21:45:00'),(203,1,'caseSignStatisticsExecutor','execute','80',0,NULL,2,'2019-03-09 21:50:00'),(204,1,'caseSignStatisticsExecutor','execute','80',0,NULL,2,'2019-03-09 21:55:00'),(205,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 22:00:00'),(206,1,'caseSignStatisticsExecutor','execute','80',0,NULL,10,'2019-03-09 22:10:00'),(207,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 22:15:00'),(208,1,'caseSignStatisticsExecutor','execute','80',0,NULL,8,'2019-03-09 22:20:00'),(209,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 22:25:00'),(210,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 22:30:00'),(211,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 22:35:00'),(212,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 22:40:00'),(213,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 22:45:00'),(214,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 22:50:00'),(215,1,'caseSignStatisticsExecutor','execute','80',0,NULL,2,'2019-03-09 22:55:00'),(216,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 23:00:00'),(217,1,'caseSignStatisticsExecutor','execute','80',0,NULL,2,'2019-03-09 23:05:00'),(218,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 23:15:00'),(219,1,'caseSignStatisticsExecutor','execute','80',0,NULL,2,'2019-03-09 23:20:00'),(220,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 23:25:00'),(221,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 23:30:00'),(222,1,'caseSignStatisticsExecutor','execute','80',0,NULL,3,'2019-03-09 23:35:00'),(223,1,'caseSignStatisticsExecutor','execute','80',0,NULL,9,'2019-03-09 23:45:00'),(224,1,'caseSignStatisticsExecutor','execute','80',0,NULL,9,'2019-03-09 23:50:00'),(225,1,'caseSignStatisticsExecutor','execute','80',0,NULL,9,'2019-03-10 00:00:00'),(226,1,'caseSignStatisticsExecutor','execute','80',0,NULL,8,'2019-03-10 00:10:00'),(227,2,'vipCustomerUpdateTask','run',NULL,0,NULL,19,'2019-03-16 21:48:50'),(228,2,'vipCustomerUpdateTask','run',NULL,0,NULL,8,'2019-03-16 21:49:07'),(229,2,'vipCustomerUpdateTask','run',NULL,0,NULL,2442,'2019-03-16 21:50:00'),(230,1,'caseSignStatisticsExecutor','execute','80',1,'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'caseSignStatisticsExecutor\' available',3,'2019-03-16 21:50:00'),(231,2,'vipCustomerUpdateTask','run',NULL,0,NULL,12368,'2019-03-16 21:50:09'),(232,1,'caseSignStatisticsExecutor','execute','80',1,'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'caseSignStatisticsExecutor\' available',1,'2019-03-16 21:50:32'),(233,1,'caseSignStatisticsExecutor','execute','80',1,'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'caseSignStatisticsExecutor\' available',1,'2019-03-16 21:55:00'),(234,2,'vipCustomerUpdateTask','run',NULL,0,NULL,22239,'2019-03-16 21:55:00'),(235,1,'caseSignStatisticsExecutor','execute','80',1,'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'caseSignStatisticsExecutor\' available',4,'2019-03-16 22:00:00'),(236,2,'vipCustomerUpdateTask','run',NULL,0,NULL,16,'2019-03-16 22:00:00'),(237,1,'caseSignStatisticsExecutor','execute','80',1,'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'caseSignStatisticsExecutor\' available',1,'2019-03-16 22:05:00'),(238,2,'vipCustomerUpdateTask','run',NULL,0,NULL,8,'2019-03-16 22:05:00'),(239,1,'caseSignStatisticsExecutor','execute','80',1,'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'caseSignStatisticsExecutor\' available',3,'2019-03-16 22:10:00'),(240,2,'vipCustomerUpdateTask','run',NULL,0,NULL,23,'2019-03-16 22:10:00'),(241,1,'caseSignStatisticsExecutor','execute','80',1,'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'caseSignStatisticsExecutor\' available',0,'2019-03-16 22:15:00'),(242,2,'vipCustomerUpdateTask','run',NULL,0,NULL,4,'2019-03-16 22:15:00'),(243,1,'caseSignStatisticsExecutor','execute','80',1,'org.springframework.beans.factory.NoSuchBeanDefinitionException: No bean named \'caseSignStatisticsExecutor\' available',0,'2019-03-16 22:20:00'),(244,2,'vipCustomerUpdateTask','run',NULL,0,NULL,4,'2019-03-16 22:20:00');
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
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seq_newcase`
--

LOCK TABLES `seq_newcase` WRITE;
/*!40000 ALTER TABLE `seq_newcase` DISABLE KEYS */;
INSERT INTO `seq_newcase` VALUES (92,'2');
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
INSERT INTO `sys_config` VALUES (1,'caseMsgRoles','25,28,29',1,'已报案通知对应的角色'),(2,'caseMsgLastTime','2018-12-02 17:12:00',1,'已报案跑批最后时间'),(3,'caseMsgTemplate','${ncAddEmpName}添加${ncCuName}一个报案，要求${ncTaskTime}上门，请知悉！',1,'已报案消息模板'),(4,'dispMsgRoles','25,24',1,'已调度通知的角色'),(5,'dispMsgLastTime','2018-12-02 17:12:00',1,'已调度跑批最后时间'),(6,'dispMsgTemplateKey','位于${cuAddress}的${cuSimpleName}，案件已调度，要求${ncTaskTime}上门处理，案件内容为${ncRemark}',1,'已调度模板'),(7,'delayDoCaseMsgRoles','8,25,24',1,'未处理案件消息通知的角色'),(8,'delayDoCaseMsgDays','1',0,'未处理案件超时1天提醒'),(9,'delayDoCaseMsgTemplate','${cuSimpleName}的案子上门时间${ncTaskTime}已经超过一天没有处理，请及时处理',1,'未处理案件提醒模板'),(10,'compMsgRoles','25,8,28',1,'已结案通知的角色'),(11,'compMsgLastTime','2018-12-02 17:12:00',1,'已结案消息最后获取时间'),(12,'compMsgTemplateKey','${cuSimpleName}已结案，结案内容为${ncRemark}',1,'已结案消息模板'),(13,'custLogMsgRoles','27,25',1,'客户15天内未跟踪消息通知的角色'),(14,'custLogMsgDays','15',1,'客户未跟踪超多天数'),(15,'custLogMsgTemplate','${cuSimpleName}已经超过${days}天没有跟踪，客户联系人${cuContact}电话为${cuContactPhone}，请及时跟踪！',1,'客户未跟踪模板'),(16,'contractExpirationRoles','25,8,26',1,'合同到期通知的角色'),(17,'contractExpirationMonths','1',0,'合同到期提前多少月提醒'),(18,'contractExpirationTemplate','${cuSimpleName}的合同即将到期，到期日期为${cuContractEndTime}，请注意跟踪！',1,'合同到期消息模板'),(24,'version','1.1.487',1,'发版的版本号'),(25,'systemName','客户资源管理服务系统CRMS',1,'系统名称-页面展示');
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
) ENGINE=InnoDB AUTO_INCREMENT=1756 DEFAULT CHARSET=utf8 COMMENT='系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES (894,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-08-26 16:46:48'),(895,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-08-26 19:43:11'),(896,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 20:06:11'),(897,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 20:27:27'),(898,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 20:27:36'),(899,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 20:27:42'),(900,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 20:27:49'),(901,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 20:28:06'),(902,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 20:29:36'),(903,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 20:29:38'),(904,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.7','2018-08-26 20:33:04'),(905,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.7','2018-08-26 20:33:07'),(906,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.7','2018-08-26 20:33:11'),(907,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 20:34:49'),(908,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 20:34:50'),(909,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 20:34:55'),(910,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 20:35:14'),(911,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 20:43:07'),(912,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 20:43:09'),(913,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 20:43:10'),(914,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 20:43:10'),(915,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-08-26 20:56:48'),(916,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:00:16'),(917,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:00:47'),(918,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:00:49'),(919,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:00:50'),(920,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:00:51'),(921,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:00:51'),(922,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:00:51'),(923,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:00:51'),(924,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:00:51'),(925,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:00:56'),(926,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:08:05'),(927,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:09:05'),(928,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:15:39'),(929,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:18:00'),(930,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:23:43'),(931,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:24:21'),(932,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:28:31'),(933,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-08-26 21:32:18'),(934,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:44:34'),(935,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:44:38'),(936,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:47:36'),(937,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:49:17'),(938,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:49:21'),(939,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 21:53:40'),(940,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-08-26 22:23:01'),(941,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 22:23:50'),(942,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-08-26 22:24:49'),(943,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 22:26:23'),(944,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 22:26:24'),(945,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 22:28:41'),(946,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 22:31:22'),(947,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 22:33:05'),(948,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 22:34:55'),(949,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-26 22:39:04'),(950,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.7','2018-08-26 22:41:19'),(951,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','223.104.210.83','2018-08-26 23:12:56'),(952,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-27 08:51:33'),(953,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-27 11:30:08'),(954,'admin','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-27 11:32:25'),(955,'admin','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-27 11:33:27'),(956,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-27 16:25:51'),(957,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.4','2018-08-27 22:05:25'),(958,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.4','2018-08-27 22:26:58'),(959,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-28 11:12:09'),(960,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-28 18:28:18'),(961,'admin','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-28 18:28:23'),(962,'admin','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-28 18:28:36'),(963,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.4','2018-08-28 21:28:36'),(964,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-08-28 21:43:54'),(965,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.4','2018-08-28 22:43:06'),(966,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.9','2018-08-28 22:45:32'),(967,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.4','2018-08-28 23:04:40'),(968,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.4','2018-08-28 23:12:37'),(969,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.4','2018-08-28 23:27:17'),(970,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.4','2018-08-28 23:31:11'),(971,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','223.104.210.160','2018-08-28 23:34:21'),(972,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-29 08:45:20'),(973,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-29 12:37:23'),(974,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-29 14:29:40'),(975,'admin','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-29 14:41:13'),(976,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-29 15:18:27'),(977,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-29 16:45:04'),(978,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-29 18:33:29'),(979,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-29 19:50:04'),(980,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.13','2018-08-29 21:49:10'),(981,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.9','2018-08-29 22:16:38'),(982,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.13','2018-08-29 23:43:57'),(983,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-30 19:25:45'),(984,'admin','修改菜单','com.platform.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-tint\",\"leaf\":false,\"menuId\":275,\"name\":\"专题分类\",\"orderNum\":4,\"parentId\":243,\"parentName\":\"推广管理\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"shop/topiccategory.html\"}','101.95.136.14','2018-08-30 20:35:04'),(985,'admin','修改菜单','com.platform.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-ticket\",\"leaf\":false,\"menuId\":270,\"name\":\"专题管理\",\"orderNum\":5,\"parentId\":243,\"parentName\":\"推广管理\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"shop/topic.html\"}','101.95.136.14','2018-08-30 20:35:16'),(986,'admin','修改菜单','com.platform.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-road\",\"leaf\":false,\"menuId\":307,\"name\":\"渠道管理\",\"orderNum\":2,\"parentId\":222,\"parentName\":\"商城配置\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"shop/channel.html\"}','101.95.136.14','2018-08-30 20:40:27'),(987,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-31 10:12:45'),(988,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-31 13:02:58'),(989,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-31 15:12:41'),(990,'admin','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-31 15:35:58'),(991,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-31 18:48:08'),(992,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-08-31 19:03:59'),(993,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','192.168.1.8','2018-09-01 16:22:24'),(994,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-01 19:08:28'),(995,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-01 19:22:47'),(996,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-01 21:09:14'),(997,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-09-01 21:17:54'),(998,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-01 21:20:03'),(999,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-01 21:20:34'),(1000,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-09-01 21:22:51'),(1001,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-02 10:33:28'),(1002,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-02 11:35:14'),(1003,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-02 11:51:01'),(1004,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-02 12:06:22'),(1005,'\"admin\"','登录','com.platform.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-02 12:47:12'),(1006,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-02 20:46:17'),(1007,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-09-02 21:31:27'),(1008,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-02 23:07:24'),(1009,'admin','保存定时任务','com.sykj.quartz.controller.ScheduleJobController.save()','{\"beanName\":\"testTask\",\"cronExpression\":\"0 0/30 * * * ?\",\"methodName\":\"test\",\"params\":\"platform\",\"remark\":\"有参数测试\"}','0:0:0:0:0:0:0:1','2018-09-02 23:09:03'),(1010,'admin','保存定时任务','com.sykj.quartz.controller.ScheduleJobController.save()','{\"beanName\":\"testTask\",\"cronExpression\":\"0 0/30 * * * ?\",\"methodName\":\"test\",\"params\":\"platform\",\"remark\":\"有参数测试\"}','0:0:0:0:0:0:0:1','2018-09-02 23:20:48'),(1011,'admin','删除定时任务','com.sykj.quartz.controller.ScheduleJobController.delete()','[1]','0:0:0:0:0:0:0:1','2018-09-02 23:22:39'),(1012,'admin','删除定时任务','com.sykj.quartz.controller.ScheduleJobController.delete()','[1]','0:0:0:0:0:0:0:1','2018-09-02 23:23:04'),(1013,'admin','删除定时任务','com.sykj.quartz.controller.ScheduleJobController.delete()','[1,2]','0:0:0:0:0:0:0:1','2018-09-02 23:23:09'),(1014,'admin','删除定时任务','com.sykj.quartz.controller.ScheduleJobController.delete()','[1,2]','0:0:0:0:0:0:0:1','2018-09-02 23:23:36'),(1015,'admin','删除定时任务','com.sykj.quartz.controller.ScheduleJobController.delete()','[1]','0:0:0:0:0:0:0:1','2018-09-02 23:23:43'),(1016,'admin','删除定时任务','com.sykj.quartz.controller.ScheduleJobController.delete()','[1]','0:0:0:0:0:0:0:1','2018-09-02 23:24:04'),(1017,'admin','删除定时任务','com.sykj.quartz.controller.ScheduleJobController.delete()','[1]','0:0:0:0:0:0:0:1','2018-09-02 23:24:32'),(1018,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-weixin\",\"leaf\":false,\"menuId\":312,\"name\":\"微信公众号\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":1,\"type\":0}','0:0:0:0:0:0:0:1','2018-09-02 23:42:52'),(1019,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-02 23:43:10'),(1020,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-truck\",\"leaf\":false,\"menuId\":313,\"name\":\"进销存\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":1,\"type\":0}','0:0:0:0:0:0:0:1','2018-09-02 23:43:28'),(1021,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-leanpub\",\"leaf\":false,\"menuId\":366,\"name\":\"CMS模块\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":1,\"type\":0}','0:0:0:0:0:0:0:1','2018-09-02 23:43:37'),(1022,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-03 00:15:18'),(1023,'admin','修改密码','com.sykj.common.controller.SysUserController.password()','\"1q2w3e4r\"','0:0:0:0:0:0:0:1','2018-09-03 00:26:52'),(1024,'admin','修改密码','com.sykj.common.controller.SysUserController.password()','\"1q2w3e4r\"','0:0:0:0:0:0:0:1','2018-09-03 00:29:18'),(1025,'admin','修改密码','com.sykj.common.controller.SysUserController.password()','\"1q2w3e4r\"','0:0:0:0:0:0:0:1','2018-09-03 00:29:22'),(1026,'admin','保存用户','com.sykj.common.controller.SysUserController.save()','{\"deptId\":1,\"deptName\":\"总部\",\"email\":\"dcs2@11211.com\",\"mobile\":\"2324\",\"roleIdList\":[5],\"status\":1,\"username\":\"dcs\"}','0:0:0:0:0:0:0:1','2018-09-03 00:31:28'),(1027,'\"dcs\"','登录','com.sykj.common.controller.SysLoginController.login()','\"dcs\"','0:0:0:0:0:0:0:1','2018-09-03 00:32:36'),(1028,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-03 00:32:45'),(1029,'admin','修改密码','com.sykj.common.controller.SysUserController.password()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-03 00:32:58'),(1030,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-03 00:33:11'),(1031,'admin','修改用户','com.sykj.common.controller.SysUserController.update()','{\"createTime\":1478833871000,\"createUserId\":1,\"deptId\":1,\"deptName\":\"总部\",\"email\":\"21313@qq1.com\",\"mobile\":\"12323213\",\"roleIdList\":[5],\"status\":1,\"userId\":1,\"username\":\"admin\"}','0:0:0:0:0:0:0:1','2018-09-03 00:33:40'),(1032,'\"dcs\"','登录','com.sykj.common.controller.SysLoginController.login()','\"dcs\"','0:0:0:0:0:0:0:1','2018-09-03 00:35:21'),(1033,'\"dcs\"','登录','com.sykj.common.controller.SysLoginController.login()','\"dcs\"','0:0:0:0:0:0:0:1','2018-09-03 00:35:29'),(1034,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-03 00:36:08'),(1035,'\"dcs\"','登录','com.sykj.common.controller.SysLoginController.login()','\"dcs\"','0:0:0:0:0:0:0:1','2018-09-03 00:40:21'),(1036,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-03 00:40:36'),(1037,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-03 00:40:46'),(1038,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-09-03 00:44:38'),(1039,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-09-03 00:44:45'),(1040,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-09-03 00:46:33'),(1041,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-09-03 00:46:46'),(1042,'\"Admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"Admin\"','117.136.8.68','2018-09-03 00:54:19'),(1043,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-03 08:57:09'),(1044,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-03 08:58:11'),(1045,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-03 08:58:23'),(1046,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-03 09:09:08'),(1047,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-03 09:11:59'),(1048,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-03 09:22:11'),(1049,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-03 09:33:41'),(1050,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-03 12:11:59'),(1051,'\"dcs\"','登录','com.sykj.common.controller.SysLoginController.login()','\"dcs\"','101.95.136.14','2018-09-03 12:48:56'),(1052,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-03 12:50:13'),(1053,'admin','保存角色','com.sykj.common.controller.SysRoleController.save()','{\"deptId\":1,\"deptIdList\":[],\"deptName\":\"总部\",\"menuIdList\":[200,207,208,201,202,249,250,264,265,280,281,283,284,286,287,212,213,222,223,224,259,260,307,308,297,298,254,256,315,316,325,326,331,332,357,289,290,352,353],\"roleName\":\"guest\"}','101.95.136.14','2018-09-03 12:52:31'),(1054,'admin','修改用户','com.sykj.common.controller.SysUserController.update()','{\"createTime\":1535905888000,\"createUserId\":1,\"deptId\":1,\"deptName\":\"总部\",\"email\":\"dcs2@11211.com\",\"mobile\":\"2324\",\"roleIdList\":[5,6],\"status\":1,\"userId\":2,\"username\":\"dcs\"}','101.95.136.14','2018-09-03 12:53:02'),(1055,'\"dcs\"','登录','com.sykj.common.controller.SysLoginController.login()','\"dcs\"','101.95.136.14','2018-09-03 12:53:18'),(1056,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-03 12:54:49'),(1057,'admin','修改角色','com.sykj.common.controller.SysRoleController.update()','{\"createTime\":1535950351000,\"createUserId\":1,\"deptId\":1,\"deptIdList\":[],\"deptName\":\"总部\",\"menuIdList\":[200,207,208,201,202,249,250,264,265,280,281,283,284,286,287,212,213,222,223,224,259,260,307,308,297,298,254,256,315,316,325,326,331,332,1,3,19,368,369,4,23,6,7],\"roleId\":6,\"roleName\":\"guest\"}','101.95.136.14','2018-09-03 12:56:30'),(1058,'\"dcs\"','登录','com.sykj.common.controller.SysLoginController.login()','\"dcs\"','101.95.136.14','2018-09-03 12:56:44'),(1059,'\"dcs\"','登录','com.sykj.common.controller.SysLoginController.login()','\"dcs\"','202.101.0.2','2018-09-03 12:59:26'),(1060,'\"dcs\"','登录','com.sykj.common.controller.SysLoginController.login()','\"dcs\"','112.65.145.122','2018-09-03 12:59:46'),(1061,'\"dcs\"','登录','com.sykj.common.controller.SysLoginController.login()','\"dcs\"','112.65.145.122','2018-09-03 13:00:15'),(1062,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-03 13:03:08'),(1063,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.81.105.99','2018-09-03 13:07:28'),(1064,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-03 13:41:25'),(1065,'\"dcs\"','登录','com.sykj.common.controller.SysLoginController.login()','\"dcs\"','101.95.136.14','2018-09-03 17:11:50'),(1066,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.7','2018-09-03 22:37:23'),(1067,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.7','2018-09-03 22:37:27'),(1068,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.7','2018-09-03 22:37:29'),(1069,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.7','2018-09-03 22:37:30'),(1070,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-04 09:06:16'),(1071,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.4','2018-09-05 23:15:14'),(1072,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-06 09:19:13'),(1073,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-09 23:12:28'),(1074,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-09-09 23:12:33'),(1075,'\"dcs\"','登录','com.sykj.common.controller.SysLoginController.login()','\"dcs\"','127.0.0.1','2018-09-09 23:18:24'),(1076,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-10 09:06:19'),(1077,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-10 09:06:25'),(1078,'\"dcs\"','登录','com.sykj.common.controller.SysLoginController.login()','\"dcs\"','101.95.136.14','2018-09-10 10:12:35'),(1079,'\"dcs\"','登录','com.sykj.common.controller.SysLoginController.login()','\"dcs\"','101.95.136.14','2018-09-10 10:12:41'),(1080,'\"dcs\"','登录','com.sykj.common.controller.SysLoginController.login()','\"dcs\"','101.95.136.14','2018-09-10 10:12:48'),(1081,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-10 19:38:16'),(1082,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-09-10 21:46:18'),(1083,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-09-12 20:22:00'),(1084,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-12 20:42:42'),(1085,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-12 20:44:21'),(1086,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.80.213.177','2018-09-12 21:05:30'),(1087,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.80.213.177','2018-09-12 21:05:38'),(1088,'\"是的\"','登录','com.sykj.common.controller.SysLoginController.login()','\"是的\"','101.95.136.14','2018-09-12 22:04:06'),(1089,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-09-12 23:34:21'),(1090,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-13 12:36:01'),(1091,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-09-13 22:53:48'),(1092,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-09-13 22:53:49'),(1093,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-14 10:23:57'),(1094,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-14 12:54:31'),(1095,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-09-15 19:11:25'),(1096,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-09-15 19:11:25'),(1097,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-09-15 19:11:27'),(1098,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-09-15 19:11:29'),(1099,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-09-15 19:11:35'),(1100,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.101','2018-09-15 19:11:42'),(1101,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.14','2018-09-15 21:14:58'),(1102,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.14','2018-09-15 22:56:25'),(1103,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.14','2018-09-16 21:17:43'),(1104,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.7','2018-09-16 22:53:08'),(1105,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.7','2018-09-16 22:59:10'),(1106,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.14','2018-09-17 00:03:55'),(1107,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-17 12:51:29'),(1108,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-17 12:55:17'),(1109,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-17 22:42:56'),(1110,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-18 10:51:04'),(1111,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-21 14:54:44'),(1112,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-21 14:54:45'),(1113,'\"user01\"','登录','com.sykj.common.controller.SysLoginController.login()','\"user01\"','114.86.235.151','2018-09-21 21:36:02'),(1114,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','114.86.235.151','2018-09-21 21:41:35'),(1115,'\"user01\"','登录','com.sykj.common.controller.SysLoginController.login()','\"user01\"','114.86.235.151','2018-09-21 21:44:06'),(1116,'\"user01\"','登录','com.sykj.common.controller.SysLoginController.login()','\"user01\"','114.86.235.151','2018-09-21 21:44:31'),(1117,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','114.86.235.151','2018-09-21 21:44:46'),(1118,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"user01\"','114.86.235.151','2018-09-21 21:47:42'),(1119,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.8','2018-09-22 23:10:08'),(1120,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.12','2018-09-23 10:22:40'),(1121,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.12','2018-09-23 17:56:03'),(1122,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.12','2018-09-23 23:29:55'),(1123,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-09-25 00:38:44'),(1124,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-09-25 00:54:43'),(1125,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-09-25 01:00:32'),(1126,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-25 14:55:58'),(1127,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','61.170.87.236','2018-09-25 15:04:49'),(1128,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','61.170.87.236','2018-09-25 15:04:51'),(1129,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','61.170.87.236','2018-09-25 15:04:57'),(1130,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','61.170.87.236','2018-09-25 15:05:44'),(1131,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-25 15:27:46'),(1132,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"asd\",\"orderNum\":0,\"parentId\":376,\"parentName\":\"短信配置\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"sadsad\"}','101.95.136.14','2018-09-25 15:28:23'),(1133,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"sadasd\",\"leaf\":false,\"name\":\"asd\",\"orderNum\":0,\"parentId\":376,\"parentName\":\"短信配置\",\"selected\":false,\"status\":0,\"type\":0,\"url\":\"sadsad\"}','101.95.136.14','2018-09-25 15:28:35'),(1134,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"asdasd\",\"orderNum\":0,\"parentId\":375,\"parentName\":\"短信平台\",\"selected\":false,\"status\":0,\"type\":0}','101.95.136.14','2018-09-25 15:29:57'),(1135,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"asdasd\",\"orderNum\":0,\"parentId\":383,\"parentName\":\"asdasd\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"sadsad\"}','101.95.136.14','2018-09-25 15:30:17'),(1136,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-25 16:47:26'),(1137,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-25 16:47:32'),(1138,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-25 16:47:37'),(1139,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[312]','101.95.136.14','2018-09-25 16:49:34'),(1140,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[313]','101.95.136.14','2018-09-25 16:49:50'),(1141,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[366]','101.95.136.14','2018-09-25 16:49:58'),(1142,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-25 19:12:31'),(1143,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-user-circle-o\",\"leaf\":false,\"menuId\":200,\"name\":\"报案中心\",\"orderNum\":1,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','101.95.136.14','2018-09-25 19:20:45'),(1144,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-shopping-cart\",\"leaf\":false,\"menuId\":222,\"name\":\"调度中心\",\"orderNum\":2,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','101.95.136.14','2018-09-25 19:21:11'),(1145,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-edit\",\"leaf\":false,\"menuId\":357,\"name\":\"出勤中心\",\"orderNum\":3,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','101.95.136.14','2018-09-25 19:21:27'),(1146,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-first-order\",\"leaf\":false,\"menuId\":374,\"name\":\"客户中心\",\"orderNum\":4,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','101.95.136.14','2018-09-25 19:21:44'),(1147,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-hand-paper-o\",\"leaf\":false,\"menuId\":243,\"name\":\"统计分析\",\"orderNum\":5,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','101.95.136.14','2018-09-25 19:22:43'),(1148,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-television\",\"leaf\":false,\"menuId\":375,\"name\":\"消息中心\",\"orderNum\":9,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','101.95.136.14','2018-09-25 19:23:27'),(1149,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-bug\",\"leaf\":false,\"menuId\":31,\"name\":\"个人中心\",\"orderNum\":11,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','101.95.136.14','2018-09-25 19:24:03'),(1150,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[314]','101.95.136.14','2018-09-25 19:24:10'),(1151,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-television\",\"leaf\":false,\"menuId\":375,\"name\":\"消息中心\",\"orderNum\":0,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','101.95.136.14','2018-09-25 19:24:44'),(1152,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-cog\",\"leaf\":false,\"menuId\":1,\"name\":\"系统管理\",\"orderNum\":6,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','101.95.136.14','2018-09-25 19:25:00'),(1153,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-bug\",\"leaf\":false,\"menuId\":31,\"name\":\"个人中心\",\"orderNum\":7,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','101.95.136.14','2018-09-25 19:25:10'),(1154,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-25 19:25:29'),(1155,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"开发工具\",\"orderNum\":7,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','101.95.136.14','2018-09-25 19:27:18'),(1156,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":385,\"name\":\"开发工具\",\"orderNum\":8,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','101.95.136.14','2018-09-25 19:27:30'),(1157,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-bug\",\"leaf\":false,\"menuId\":31,\"name\":\"开发工具\",\"orderNum\":7,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','101.95.136.14','2018-09-25 19:28:48'),(1158,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":385,\"name\":\"个人中心\",\"orderNum\":8,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','101.95.136.14','2018-09-25 19:29:04'),(1159,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":385,\"name\":\"个人中心\",\"orderNum\":7,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','101.95.136.14','2018-09-25 19:29:12'),(1160,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-bug\",\"leaf\":false,\"menuId\":31,\"name\":\"开发工具\",\"orderNum\":8,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','101.95.136.14','2018-09-25 19:29:22'),(1161,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-25 20:53:57'),(1162,'admin','新增配置','com.sykj.sys.controller.SysConfigController.save()','{\"key\":\"as\",\"remark\":\"as\",\"value\":\"as\"}','101.95.136.14','2018-09-25 20:54:12'),(1163,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','58.222.50.125','2018-09-25 20:59:43'),(1164,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"\",\"leaf\":false,\"menuId\":201,\"name\":\"工程报案\",\"orderNum\":1,\"parentId\":200,\"parentName\":\"报案中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"gongcheng/baoxiu.html\"}','180.97.206.33','2018-09-25 21:21:32'),(1165,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"\",\"leaf\":false,\"menuId\":207,\"name\":\"服务报案\",\"orderNum\":0,\"parentId\":200,\"parentName\":\"报案中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"baoan/fuwubaoan.html\"}','180.97.206.33','2018-09-25 21:22:45'),(1166,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"\",\"leaf\":false,\"menuId\":201,\"name\":\"工程报案\",\"orderNum\":1,\"parentId\":200,\"parentName\":\"报案中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"baoan/gongchengbaoan.html\"}','180.97.206.33','2018-09-25 21:23:17'),(1167,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"\",\"leaf\":false,\"menuId\":249,\"name\":\"其它报案\",\"orderNum\":2,\"parentId\":200,\"parentName\":\"报案中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"baoan/common.html\"}','180.97.206.33','2018-09-25 21:24:05'),(1168,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-star\",\"leaf\":false,\"menuId\":264,\"name\":\"会员收藏\",\"orderNum\":3,\"parentId\":200,\"parentName\":\"报案中心\",\"selected\":false,\"status\":1,\"type\":1,\"url\":\"shop/collect.html\"}','180.97.206.33','2018-09-25 21:24:28'),(1169,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-history\",\"leaf\":false,\"menuId\":280,\"name\":\"会员足迹\",\"orderNum\":6,\"parentId\":200,\"parentName\":\"报案中心\",\"selected\":false,\"status\":1,\"type\":1,\"url\":\"shop/footprint.html\"}','180.97.206.33','2018-09-25 21:24:55'),(1170,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[264]','180.97.206.33','2018-09-25 21:25:11'),(1171,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[280]','180.97.206.33','2018-09-25 21:25:25'),(1172,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[283]','180.97.206.33','2018-09-25 21:25:59'),(1173,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[286]','180.97.206.33','2018-09-25 21:26:15'),(1174,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[212]','180.97.206.33','2018-09-25 21:26:28'),(1175,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"VIP报案\",\"orderNum\":0,\"parentId\":207,\"parentName\":\"服务报案\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"baoan\\\\gongchengbaoan\\\\vip.html\"}','180.97.206.37','2018-09-25 21:30:28'),(1176,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"\",\"leaf\":false,\"menuId\":207,\"name\":\"服务报案\",\"orderNum\":0,\"parentId\":200,\"parentName\":\"报案中心\",\"selected\":false,\"status\":0,\"type\":0,\"url\":\"baoan/fuwubaoan.html\"}','180.97.206.37','2018-09-25 21:32:04'),(1177,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"\",\"leaf\":false,\"menuId\":201,\"name\":\"工程报案\",\"orderNum\":1,\"parentId\":200,\"parentName\":\"报案中心\",\"selected\":false,\"status\":0,\"type\":0,\"url\":\"baoan/gongchengbaoan.html\"}','58.222.50.126','2018-09-25 21:33:58'),(1178,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"\",\"leaf\":false,\"menuId\":249,\"name\":\"其它报案\",\"orderNum\":2,\"parentId\":200,\"parentName\":\"报案中心\",\"selected\":false,\"status\":0,\"type\":0,\"url\":\"baoan/common.html\"}','58.222.50.126','2018-09-25 21:34:13'),(1179,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"VIP报案\",\"orderNum\":0,\"parentId\":207,\"parentName\":\"服务报案\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"baoan\\\\vipbaoan.html\"}','58.222.50.126','2018-09-25 21:34:57'),(1180,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"非VIP报案\",\"orderNum\":0,\"parentId\":207,\"parentName\":\"服务报案\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"baoan/nonvipbaoan.html\"}','58.222.50.126','2018-09-25 21:36:32'),(1181,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"VIP报案\",\"orderNum\":0,\"parentId\":201,\"parentName\":\"工程报案\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"gongcheng/vipbaoan.html\"}','58.222.50.126','2018-09-25 21:37:37'),(1182,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"非VIP报案\",\"orderNum\":0,\"parentId\":201,\"parentName\":\"工程报案\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"gongcheng/nonvipbaoan.html\"}','58.222.50.126','2018-09-25 21:38:10'),(1183,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"新建报案\",\"orderNum\":0,\"parentId\":386,\"parentName\":\"VIP报案\",\"perms\":\"createanjian\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.33','2018-09-25 21:39:48'),(1184,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"修改\",\"orderNum\":0,\"parentId\":386,\"parentName\":\"VIP报案\",\"perms\":\"edit\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.33','2018-09-25 21:45:42'),(1185,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":390,\"name\":\"新建\",\"orderNum\":0,\"parentId\":386,\"parentName\":\"VIP报案\",\"perms\":\"createanjian\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.33','2018-09-25 21:46:12'),(1186,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"查看\",\"orderNum\":0,\"parentId\":386,\"parentName\":\"VIP报案\",\"perms\":\"view\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.33','2018-09-25 21:47:02'),(1187,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"删除\",\"orderNum\":0,\"parentId\":386,\"parentName\":\"VIP报案\",\"perms\":\"delete\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.33','2018-09-25 21:47:42'),(1188,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','180.97.206.37','2018-09-25 21:53:32'),(1189,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"新增\",\"orderNum\":0,\"parentId\":387,\"parentName\":\"非VIP报案\",\"perms\":\"create\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 21:54:44'),(1190,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"查看\",\"orderNum\":0,\"parentId\":387,\"parentName\":\"非VIP报案\",\"perms\":\"view\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 21:55:13'),(1191,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":210,\"name\":\"修改\",\"orderNum\":6,\"parentId\":387,\"parentName\":\"非VIP报案\",\"perms\":\"userlevel:update\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 21:56:24'),(1192,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":211,\"name\":\"删除\",\"orderNum\":6,\"parentId\":387,\"parentName\":\"非VIP报案\",\"perms\":\"userlevel:delete\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 21:56:50'),(1193,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[208]','180.97.206.37','2018-09-25 21:57:13'),(1194,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[209]','180.97.206.37','2018-09-25 21:57:29'),(1195,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":202,\"name\":\"查看\",\"orderNum\":0,\"parentId\":388,\"parentName\":\"VIP报案\",\"perms\":\"user:list,user:info\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 21:58:01'),(1196,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":203,\"name\":\"新增\",\"orderNum\":0,\"parentId\":388,\"parentName\":\"VIP报案\",\"perms\":\"user:save\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 21:58:42'),(1197,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":204,\"name\":\"修改\",\"orderNum\":0,\"parentId\":388,\"parentName\":\"VIP报案\",\"perms\":\"user:update\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 21:59:09'),(1198,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":205,\"name\":\"删除\",\"orderNum\":0,\"parentId\":388,\"parentName\":\"VIP报案\",\"perms\":\"user:delete\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 21:59:41'),(1199,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"新增\",\"orderNum\":0,\"parentId\":389,\"parentName\":\"非VIP报案\",\"perms\":\"create\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:01:58'),(1200,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":390,\"name\":\"新增\",\"orderNum\":0,\"parentId\":386,\"parentName\":\"VIP报案\",\"perms\":\"createanjian\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:02:19'),(1201,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"查看\",\"orderNum\":0,\"parentId\":389,\"parentName\":\"非VIP报案\",\"perms\":\"view\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:02:58'),(1202,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"修改\",\"orderNum\":0,\"parentId\":389,\"parentName\":\"非VIP报案\",\"perms\":\"update\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:03:22'),(1203,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"删除\",\"orderNum\":0,\"parentId\":389,\"parentName\":\"非VIP报案\",\"perms\":\"delete\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:03:47'),(1204,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"\",\"leaf\":false,\"menuId\":223,\"name\":\"服务报案\",\"orderNum\":0,\"parentId\":222,\"parentName\":\"调度中心\",\"selected\":false,\"status\":0,\"type\":0,\"url\":\"shop/attributecategory.html\"}','180.97.206.37','2018-09-25 22:04:54'),(1205,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"\",\"leaf\":false,\"menuId\":259,\"name\":\"服务报案\",\"orderNum\":1,\"parentId\":222,\"parentName\":\"调度中心\",\"selected\":false,\"status\":0,\"type\":0,\"url\":\"shop/specification.html\"}','180.97.206.37','2018-09-25 22:05:32'),(1206,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"\",\"leaf\":false,\"menuId\":307,\"name\":\"其它报案\",\"orderNum\":2,\"parentId\":222,\"parentName\":\"调度中心\",\"selected\":false,\"status\":0,\"type\":0,\"url\":\"shop/channel.html\"}','180.97.206.37','2018-09-25 22:05:55'),(1207,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[297]','180.97.206.37','2018-09-25 22:06:12'),(1208,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[254]','180.97.206.37','2018-09-25 22:06:28'),(1209,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[315]','180.97.206.37','2018-09-25 22:06:40'),(1210,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[325]','180.97.206.37','2018-09-25 22:06:52'),(1211,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[331]','180.97.206.37','2018-09-25 22:07:04'),(1212,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"VIP报案\",\"orderNum\":0,\"parentId\":223,\"parentName\":\"服务报案\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"vip.html\"}','180.97.206.37','2018-09-25 22:07:36'),(1213,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"非VIP报案\",\"orderNum\":0,\"parentId\":223,\"parentName\":\"服务报案\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"nonvip.html\"}','180.97.206.37','2018-09-25 22:08:04'),(1214,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"\",\"leaf\":false,\"menuId\":259,\"name\":\"工程报案\",\"orderNum\":1,\"parentId\":222,\"parentName\":\"调度中心\",\"selected\":false,\"status\":0,\"type\":0,\"url\":\"shop/specification.html\"}','180.97.206.37','2018-09-25 22:08:26'),(1215,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"VIP报案\",\"orderNum\":0,\"parentId\":259,\"parentName\":\"工程报案\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"vip.html\"}','180.97.206.37','2018-09-25 22:09:27'),(1216,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"非VIP报案\",\"orderNum\":0,\"parentId\":259,\"parentName\":\"工程报案\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"nonvip.html\"}','180.97.206.37','2018-09-25 22:09:55'),(1217,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"VIP报案\",\"orderNum\":0,\"parentId\":307,\"parentName\":\"其它报案\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"vip.html\"}','180.97.206.37','2018-09-25 22:10:28'),(1218,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"非VIP报案\",\"orderNum\":0,\"parentId\":307,\"parentName\":\"其它报案\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"novip.html\"}','180.97.206.37','2018-09-25 22:11:03'),(1219,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[404]','180.97.206.37','2018-09-25 22:11:41'),(1220,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[405]','180.97.206.37','2018-09-25 22:11:54'),(1221,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":309,\"name\":\"调度\",\"orderNum\":6,\"parentId\":307,\"parentName\":\"其它报案\",\"perms\":\"channel:save\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:12:25'),(1222,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":309,\"name\":\"调度\",\"orderNum\":6,\"parentId\":307,\"parentName\":\"其它报案\",\"perms\":\"channel:save\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:12:33'),(1223,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"\",\"leaf\":false,\"menuId\":307,\"name\":\"其它报案\",\"orderNum\":2,\"parentId\":222,\"parentName\":\"调度中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"shop/channel.html\"}','180.97.206.37','2018-09-25 22:13:00'),(1224,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":309,\"name\":\"调度\",\"orderNum\":6,\"parentId\":307,\"parentName\":\"其它报案\",\"perms\":\"channel:save\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:14:04'),(1225,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":310,\"name\":\"调度退回\",\"orderNum\":6,\"parentId\":307,\"parentName\":\"其它报案\",\"perms\":\"channel:update\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:14:26'),(1226,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":311,\"name\":\"注销\",\"orderNum\":6,\"parentId\":307,\"parentName\":\"其它报案\",\"perms\":\"channel:delete\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:15:17'),(1227,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"查看\",\"orderNum\":0,\"parentId\":402,\"parentName\":\"VIP报案\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:15:44'),(1228,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"查看\",\"orderNum\":0,\"parentId\":400,\"parentName\":\"VIP报案\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:16:03'),(1229,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"调度\",\"orderNum\":0,\"parentId\":400,\"parentName\":\"VIP报案\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:16:23'),(1230,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"调度退回\",\"orderNum\":0,\"parentId\":400,\"parentName\":\"VIP报案\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:16:43'),(1231,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"注销\",\"orderNum\":0,\"parentId\":400,\"parentName\":\"VIP报案\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:17:11'),(1232,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"查看\",\"orderNum\":0,\"parentId\":401,\"parentName\":\"非VIP报案\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:17:44'),(1233,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":225,\"name\":\"新增\",\"orderNum\":6,\"parentId\":401,\"parentName\":\"非VIP报案\",\"perms\":\"attributecategory:save\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:18:16'),(1234,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":225,\"name\":\"调度\",\"orderNum\":6,\"parentId\":401,\"parentName\":\"非VIP报案\",\"perms\":\"attributecategory:save\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:18:38'),(1235,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":224,\"name\":\"调度退回\",\"orderNum\":6,\"parentId\":401,\"parentName\":\"非VIP报案\",\"perms\":\"attributecategory:list,attributecategory:info\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:19:11'),(1236,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":226,\"name\":\"注销\",\"orderNum\":6,\"parentId\":401,\"parentName\":\"非VIP报案\",\"perms\":\"attributecategory:update\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:20:03'),(1237,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":227,\"name\":\"调度\",\"orderNum\":6,\"parentId\":402,\"parentName\":\"VIP报案\",\"perms\":\"attributecategory:delete\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:20:35'),(1238,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"调度退回\",\"orderNum\":0,\"parentId\":402,\"parentName\":\"VIP报案\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:21:05'),(1239,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"注销\",\"orderNum\":0,\"parentId\":402,\"parentName\":\"VIP报案\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.37','2018-09-25 22:21:26'),(1240,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":260,\"name\":\"查看\",\"orderNum\":6,\"parentId\":403,\"parentName\":\"非VIP报案\",\"perms\":\"specification:list,specification:info\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.33','2018-09-25 22:23:56'),(1241,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":261,\"name\":\"调度\",\"orderNum\":6,\"parentId\":403,\"parentName\":\"非VIP报案\",\"perms\":\"specification:save\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.33','2018-09-25 22:24:23'),(1242,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":262,\"name\":\"调度退回\",\"orderNum\":6,\"parentId\":403,\"parentName\":\"非VIP报案\",\"perms\":\"specification:update\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.33','2018-09-25 22:24:58'),(1243,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":263,\"name\":\"注销\",\"orderNum\":6,\"parentId\":403,\"parentName\":\"非VIP报案\",\"perms\":\"specification:delete\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.33','2018-09-25 22:25:23'),(1244,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.8','2018-09-25 22:32:23'),(1245,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[400]','180.97.206.33','2018-09-25 23:00:04'),(1246,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[223]','180.97.206.33','2018-09-25 23:00:21'),(1247,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[259]','180.97.206.33','2018-09-25 23:00:34'),(1248,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":308,\"name\":\"查看\",\"orderNum\":6,\"parentId\":222,\"parentName\":\"调度中心\",\"perms\":\"channel:list,channel:info\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.33','2018-09-25 23:00:56'),(1249,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"\",\"leaf\":false,\"menuId\":307,\"name\":\"任务调度\",\"orderNum\":2,\"parentId\":222,\"parentName\":\"调度中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"shop/channel.html\"}','180.97.206.33','2018-09-25 23:01:27'),(1250,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"调度管理\",\"orderNum\":0,\"parentId\":222,\"parentName\":\"调度中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"taskassignment\"}','180.97.206.33','2018-09-25 23:02:42'),(1251,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"\",\"leaf\":false,\"menuId\":207,\"name\":\"IT服务报案\",\"orderNum\":0,\"parentId\":200,\"parentName\":\"报案中心\",\"selected\":false,\"status\":0,\"type\":0,\"url\":\"baoan/fuwubaoan.html\"}','180.97.206.33','2018-09-25 23:03:14'),(1252,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[311]','180.97.206.33','2018-09-25 23:05:09'),(1253,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"查询\",\"orderNum\":0,\"parentId\":414,\"parentName\":\"调度管理\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.33','2018-09-25 23:05:34'),(1254,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"取消调度\",\"orderNum\":0,\"parentId\":414,\"parentName\":\"调度管理\",\"selected\":false,\"status\":0,\"type\":2}','180.97.206.33','2018-09-25 23:05:54'),(1255,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"报案查询\",\"orderNum\":0,\"parentId\":200,\"parentName\":\"报案中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"1\"}','192.168.1.8','2018-09-25 23:22:11'),(1256,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.8','2018-09-25 23:23:39'),(1257,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":417,\"name\":\"报案查询\",\"orderNum\":3,\"parentId\":200,\"parentName\":\"报案中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"1\"}','192.168.1.8','2018-09-25 23:24:03'),(1258,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"案件管理\",\"orderNum\":4,\"parentId\":200,\"parentName\":\"报案中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"1\"}','192.168.1.8','2018-09-25 23:24:35'),(1259,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"grav\",\"leaf\":false,\"name\":\"注销案件\",\"orderNum\":5,\"parentId\":200,\"parentName\":\"报案中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"1\"}','192.168.1.8','2018-09-25 23:25:50'),(1260,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"\",\"leaf\":false,\"menuId\":307,\"name\":\"任务调度\",\"orderNum\":1,\"parentId\":222,\"parentName\":\"调度中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"shop/channel.html\"}','192.168.1.8','2018-09-25 23:57:57'),(1261,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":414,\"name\":\"调度管理\",\"orderNum\":3,\"parentId\":222,\"parentName\":\"调度中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"taskassignment\"}','192.168.1.8','2018-09-25 23:58:19'),(1262,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"调度查询\",\"orderNum\":2,\"parentId\":222,\"parentName\":\"调度中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"1\"}','192.168.1.8','2018-09-25 23:58:36'),(1263,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"\",\"leaf\":false,\"menuId\":249,\"name\":\"其它报案\",\"orderNum\":2,\"parentId\":200,\"parentName\":\"报案中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"baoan/common.html\"}','192.168.1.8','2018-09-25 23:59:07'),(1264,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-shopping-bag\",\"leaf\":false,\"menuId\":289,\"name\":\"我的案件\",\"orderNum\":1,\"parentId\":357,\"parentName\":\"出勤中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"shop/goods.html\"}','192.168.1.8','2018-09-26 00:02:52'),(1265,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-deafness\",\"leaf\":false,\"menuId\":352,\"name\":\"服务咨询\",\"orderNum\":2,\"parentId\":357,\"parentName\":\"出勤中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"shop/goodsspecification.html\"}','192.168.1.8','2018-09-26 00:03:16'),(1266,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[342]','192.168.1.8','2018-09-26 00:03:29'),(1267,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[336]','192.168.1.8','2018-09-26 00:03:41'),(1268,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[358]','192.168.1.8','2018-09-26 00:03:50'),(1269,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[384]','192.168.1.8','2018-09-26 00:04:27'),(1270,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"menuId\":383,\"name\":\"我的消息\",\"orderNum\":0,\"parentId\":375,\"parentName\":\"消息中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"1\"}','192.168.1.8','2018-09-26 00:04:50'),(1271,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-envelope-open\",\"leaf\":false,\"menuId\":376,\"name\":\"我的出勤\",\"orderNum\":1,\"parentId\":375,\"parentName\":\"消息中心\",\"perms\":\"sys:smslog:list,sys:smslog:info\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"sys/smslog.html\"}','192.168.1.8','2018-09-26 00:05:13'),(1272,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-envelope-open\",\"leaf\":false,\"menuId\":376,\"name\":\"未读消息\",\"orderNum\":1,\"parentId\":375,\"parentName\":\"消息中心\",\"perms\":\"sys:smslog:list,sys:smslog:info\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"sys/smslog.html\"}','192.168.1.8','2018-09-26 00:08:11'),(1273,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-sitemap\",\"leaf\":false,\"menuId\":294,\"name\":\"客户管理\",\"orderNum\":6,\"parentId\":374,\"parentName\":\"客户中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"shop/order.html\"}','192.168.1.8','2018-09-26 00:09:33'),(1274,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"导入客户信息\",\"orderNum\":1,\"parentId\":374,\"parentName\":\"客户中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"1\"}','192.168.1.8','2018-09-26 00:09:59'),(1275,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-sitemap\",\"leaf\":false,\"menuId\":294,\"name\":\"客户管理\",\"orderNum\":0,\"parentId\":374,\"parentName\":\"客户中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"shop/order.html\"}','192.168.1.8','2018-09-26 00:10:16'),(1276,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-map-pin\",\"leaf\":false,\"menuId\":238,\"name\":\"客户报修统计\",\"orderNum\":0,\"parentId\":243,\"parentName\":\"统计分析\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"shop/adposition.html\"}','192.168.1.8','2018-09-26 00:11:28'),(1277,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-pencil\",\"leaf\":false,\"menuId\":233,\"name\":\"技术出勤统计\",\"orderNum\":1,\"parentId\":243,\"parentName\":\"统计分析\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"shop/ad.html\"}','192.168.1.8','2018-09-26 00:11:47'),(1278,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-cc-visa\",\"leaf\":false,\"menuId\":244,\"name\":\"调度统计\",\"orderNum\":2,\"parentId\":243,\"parentName\":\"统计分析\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"shop/coupon.html\"}','192.168.1.8','2018-09-26 00:12:03'),(1279,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-tint\",\"leaf\":false,\"menuId\":275,\"name\":\"服务咨询统计\",\"orderNum\":4,\"parentId\":243,\"parentName\":\"统计分析\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"shop/topiccategory.html\"}','192.168.1.8','2018-09-26 00:12:24'),(1280,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[270]','192.168.1.8','2018-09-26 00:12:36'),(1281,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"我的信息\",\"orderNum\":0,\"parentId\":385,\"parentName\":\"个人中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"1\"}','192.168.1.8','2018-09-26 00:13:27'),(1282,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.8','2018-09-26 00:14:25'),(1283,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"我的签到\",\"orderNum\":2,\"parentId\":385,\"parentName\":\"个人中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"1\"}','192.168.1.8','2018-09-26 00:14:54'),(1284,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"我的通讯录\",\"orderNum\":3,\"parentId\":385,\"parentName\":\"个人中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"1\"}','192.168.1.8','2018-09-26 00:15:20'),(1285,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"name\":\"我的案件签到\",\"orderNum\":3,\"parentId\":357,\"parentName\":\"出勤中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"1\"}','192.168.1.8','2018-09-26 00:17:16'),(1286,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"chartarrowsarrows\",\"leaf\":false,\"menuId\":425,\"name\":\"我的案件签到\",\"orderNum\":3,\"parentId\":357,\"parentName\":\"出勤中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"1\"}','192.168.1.8','2018-09-26 00:18:17'),(1287,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"arrows\",\"leaf\":false,\"menuId\":425,\"name\":\"我的案件签到\",\"orderNum\":3,\"parentId\":357,\"parentName\":\"出勤中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"1\"}','192.168.1.8','2018-09-26 00:18:31'),(1288,'admin','删除菜单','com.sykj.common.controller.SysMenuController.delete()','[341]','192.168.1.8','2018-09-26 00:23:10'),(1289,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"bank\",\"leaf\":false,\"menuId\":385,\"name\":\"个人中心\",\"orderNum\":7,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','192.168.1.8','2018-09-26 00:27:30'),(1290,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-id-card-o\",\"leaf\":false,\"menuId\":385,\"name\":\"个人中心\",\"orderNum\":7,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','192.168.1.8','2018-09-26 00:28:43'),(1291,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-address-card\",\"leaf\":false,\"menuId\":385,\"name\":\"个人中心\",\"orderNum\":7,\"parentId\":0,\"parentName\":\"一级菜单\",\"selected\":false,\"status\":0,\"type\":0}','192.168.1.8','2018-09-26 00:29:41'),(1292,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','192.168.1.8','2018-09-26 00:30:05'),(1293,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-26 00:38:48'),(1294,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-26 05:01:00'),(1295,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-26 11:56:07'),(1296,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-26 12:38:15'),(1297,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','101.95.136.14','2018-09-26 13:43:25'),(1298,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','180.97.206.37','2018-09-26 13:44:13'),(1299,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-01 15:50:40'),(1300,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-01 16:03:15'),(1301,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-01 18:37:13'),(1302,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-01 18:51:35'),(1303,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-01 20:54:07'),(1304,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-02 21:33:06'),(1305,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-02 22:31:46'),(1306,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-03 10:31:22'),(1307,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-03 11:24:20'),(1308,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-03 11:24:25'),(1309,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-03 13:18:52'),(1310,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-03 13:18:57'),(1311,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-03 14:26:27'),(1312,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-03 15:26:47'),(1313,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-03 17:06:14'),(1314,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-03 21:21:06'),(1315,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-04 10:53:05'),(1316,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-04 11:50:33'),(1317,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-04 12:57:34'),(1318,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-04 16:22:14'),(1319,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-04 16:37:04'),(1320,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-04 17:46:40'),(1321,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-04 19:01:59'),(1322,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-05 10:15:52'),(1323,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-05 13:43:53'),(1324,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-05 14:33:32'),(1325,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-05 16:25:31'),(1326,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-05 16:32:37'),(1327,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-05 16:49:56'),(1328,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-06 09:08:47'),(1329,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-06 11:17:37'),(1330,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-06 15:44:41'),(1331,'admin','修改角色','com.sykj.common.controller.SysRoleController.update()','{\"createTime\":1505666415000,\"createUserId\":1,\"deptId\":1,\"deptIdList\":[1,2,3,4,5],\"deptName\":\"总部\",\"menuIdList\":[375,383,376,200,207,386,390,391,392,393,387,394,395,210,211,201,388,202,203,204,205,389,396,397,398,399,249,250,251,252,253,417,418,430,431,432,433,419,222,307,308,309,310,434,435,436,420,414,415,416,357,289,290,291,292,293,352,353,354,355,356,425,374,294,426,427,428,429,421,243,238,239,240,241,242,233,234,235,236,237,244,330,245,246,247,248,275,276,277,278,279,1,2,15,16,17,18,3,19,20,21,22,368,369,370,371,372,373,4,23,24,25,26,6,7,8,9,10,11,12,13,14,30,302,303,304,305,306,27,29,377,378,379,380,381,385,422,423,424,31,382,206,5,28],\"remark\":\"超级管理员\",\"roleId\":5,\"roleName\":\"超级管理员\"}','0:0:0:0:0:0:0:1','2018-10-06 16:10:12'),(1332,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-06 16:10:30'),(1333,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-06 16:23:24'),(1334,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-06 19:43:59'),(1335,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-06 20:50:11'),(1336,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-06 20:54:15'),(1337,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-06 20:54:21'),(1338,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-07 09:14:04'),(1339,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-07 10:53:41'),(1340,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-07 11:44:37'),(1341,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-07 15:01:06'),(1342,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-07 16:05:29'),(1343,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-07 20:56:57'),(1344,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-07 20:57:00'),(1345,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-07 20:57:05'),(1346,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-07 21:47:44'),(1347,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-09 20:54:13'),(1348,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-09 22:21:57'),(1349,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-09 23:15:13'),(1350,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-10 20:49:35'),(1351,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-10 21:17:32'),(1352,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-10 21:24:51'),(1353,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-13 20:41:14'),(1354,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-13 21:52:41'),(1355,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-14 09:35:55'),(1356,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-14 16:35:12'),(1357,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-14 19:04:49'),(1358,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-14 20:19:14'),(1359,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-14 20:22:04'),(1360,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-14 20:24:11'),(1361,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-14 21:01:01'),(1362,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-14 21:06:43'),(1363,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-18 22:19:24'),(1364,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-18 22:19:29'),(1365,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-20 14:50:27'),(1366,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-20 14:57:54'),(1367,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-20 15:27:02'),(1368,'admin','修改角色','com.sykj.common.controller.SysRoleController.update()','{\"createTime\":1505666415000,\"createUserId\":1,\"deptId\":1,\"deptIdList\":[],\"deptName\":\"总部\",\"menuIdList\":[375,383,376,200,207,386,390,391,392,393,387,394,395,210,211,201,388,202,203,204,205,389,396,397,398,399,249,250,251,252,253,417,418,430,431,432,433,419,222,307,308,309,434,435,436,420,442,414,415,416,357,289,290,291,292,293,352,353,354,355,356,425,374,294,426,427,428,429,421,243,238,239,240,241,242,233,234,235,236,237,244,330,245,246,247,248,275,276,277,278,279],\"remark\":\"超级管理员\",\"roleId\":5,\"roleName\":\"超级管理员\"}','0:0:0:0:0:0:0:1','2018-10-20 15:28:18'),(1369,'admin','修改角色','com.sykj.common.controller.SysRoleController.update()','{\"createTime\":1505666415000,\"createUserId\":1,\"deptId\":1,\"deptIdList\":[],\"deptName\":\"总部\",\"menuIdList\":[375,383,376,200,207,386,390,391,392,393,387,394,395,210,211,201,388,202,203,204,205,389,396,397,398,399,249,250,251,252,253,417,418,430,431,432,433,419,222,307,308,309,434,435,436,420,442,414,415,416,357,289,290,291,292,293,352,353,354,355,356,425,374,294,426,427,428,429,421,243,238,239,240,241,242,233,234,235,236,237,244,330,245,246,247,248,275,276,277,278,279],\"remark\":\"超级管理员\",\"roleId\":5,\"roleName\":\"超级管理员\"}','0:0:0:0:0:0:0:1','2018-10-20 15:58:07'),(1370,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-20 15:58:16'),(1371,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-20 17:23:43'),(1372,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-20 21:49:13'),(1373,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-20 22:00:58'),(1374,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-20 23:14:51'),(1375,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-21 21:11:49'),(1376,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-21 22:04:31'),(1377,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-21 23:40:06'),(1378,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-21 23:40:10'),(1379,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-21 23:44:38'),(1380,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-21 23:53:14'),(1381,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-22 21:35:59'),(1382,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-22 22:35:42'),(1383,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-23 20:42:50'),(1384,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-23 21:45:53'),(1385,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-26 21:11:17'),(1386,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-26 21:15:03'),(1387,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-26 21:15:09'),(1388,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-26 22:19:35'),(1389,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-27 13:42:32'),(1390,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-27 14:34:59'),(1391,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-27 14:36:17'),(1392,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-27 14:36:22'),(1393,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-27 15:47:03'),(1394,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 11:05:20'),(1395,'admin','修改角色','com.sykj.common.controller.SysRoleController.update()','{\"createTime\":1505666415000,\"createUserId\":1,\"deptId\":1,\"deptIdList\":[],\"deptName\":\"总部\",\"menuIdList\":[375,383,376,200,207,386,390,391,392,393,387,394,395,210,211,201,388,202,203,204,205,389,396,397,398,399,249,250,251,252,253,417,418,430,431,432,433,419,222,307,308,309,434,435,436,420,442,414,415,416,357,289,443,444,352,353,354,355,356,374,294,426,427,428,429,421],\"remark\":\"超级管理员\",\"roleId\":5,\"roleName\":\"超级管理员\"}','0:0:0:0:0:0:0:1','2018-10-28 11:09:52'),(1396,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 11:10:08'),(1397,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 11:12:28'),(1398,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 11:17:21'),(1399,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 12:51:58'),(1400,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 12:52:03'),(1401,'admin','修改角色','com.sykj.common.controller.SysRoleController.update()','{\"createTime\":1505666415000,\"createUserId\":1,\"deptId\":1,\"deptIdList\":[],\"deptName\":\"总部\",\"menuIdList\":[375,383,376,200,207,386,390,391,392,393,387,394,395,210,211,201,388,202,203,204,205,389,396,397,398,399,249,250,251,252,253,417,418,430,431,432,433,419,445,446,222,307,308,309,434,435,436,420,442,414,415,416,357,289,443,444,352,353,354,355,356,374,294,426,427,428,429,421],\"remark\":\"超级管理员\",\"roleId\":5,\"roleName\":\"超级管理员\"}','0:0:0:0:0:0:0:1','2018-10-28 13:15:48'),(1402,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 13:15:59'),(1403,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 13:30:48'),(1404,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 14:34:14'),(1405,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 15:40:56'),(1406,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 15:41:03'),(1407,'admin','修改角色','com.sykj.common.controller.SysRoleController.update()','{\"createTime\":1505666415000,\"createUserId\":1,\"deptId\":1,\"deptIdList\":[],\"deptName\":\"总部\",\"menuIdList\":[375,383,376,200,207,386,390,391,392,393,387,394,395,210,211,201,388,202,203,204,205,389,396,397,398,399,249,250,251,252,253,417,418,430,431,432,433,419,445,446,222,307,308,309,434,435,436,420,442,414,415,416,357,289,443,444,352,353,354,355,356,374,294,426,427,428,429,421,447,448,449,450,451,243,238,239,240,241,242,233,234,235,236,237,244,330,245,246,247,248,275,276,277,278,279,1,2,15,16,17,18,3,19,20,21,22,368,369,370,371,372,373,437,438,439,440,441,4,23,24,25,26,6,7,8,9,10,11,12,13,14,30,302,303,304,305,306,27,29,377,378,379,380,381],\"remark\":\"超级管理员\",\"roleId\":5,\"roleName\":\"超级管理员\"}','0:0:0:0:0:0:0:1','2018-10-28 16:07:39'),(1408,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 16:08:16'),(1409,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 16:57:07'),(1410,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 17:10:12'),(1411,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 17:17:21'),(1412,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 17:17:27'),(1413,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 17:18:22'),(1414,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 20:13:27'),(1415,'admin','修改角色','com.sykj.common.controller.SysRoleController.update()','{\"createTime\":1505666415000,\"createUserId\":1,\"deptId\":1,\"deptIdList\":[],\"deptName\":\"总部\",\"menuIdList\":[375,383,376,200,207,386,390,391,392,393,387,394,395,210,211,201,388,202,203,204,205,389,396,397,398,399,249,250,251,252,253,417,418,430,431,432,433,452,419,445,446,222,307,308,309,434,435,436,420,442,414,415,416,357,289,443,444,352,353,354,355,356,374,294,426,427,428,429,421,447,448,449,450,451,243,238,239,240,241,242,233,234,235,236,237,244,330,245,246,247,248,275,276,277,278,279,1,2,15,16,17,18,3,19,20,21,22,368,369,370,371,372,373,437,438,439,440,441,4,23,24,25,26,6,7,8,9,10,11,12,13,14,30,302,303,304,305,306,27,29,377,378,379,380,381],\"remark\":\"超级管理员\",\"roleId\":5,\"roleName\":\"超级管理员\"}','0:0:0:0:0:0:0:1','2018-10-28 20:25:33'),(1416,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-28 20:27:13'),(1417,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-29 20:50:09'),(1418,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-29 21:40:52'),(1419,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-29 21:55:57'),(1420,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-29 22:04:02'),(1421,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-10-30 21:56:32'),(1422,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-01 22:20:22'),(1423,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-01 23:20:44'),(1424,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-02 21:06:24'),(1425,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-02 23:09:04'),(1426,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-03 14:03:40'),(1427,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-03 21:09:50'),(1428,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-03 22:50:19'),(1429,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-04 10:30:39'),(1430,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-04 12:52:07'),(1431,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-04 12:52:12'),(1432,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-04 12:53:52'),(1433,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-04 14:42:27'),(1434,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-04 18:33:14'),(1435,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-06 20:16:55'),(1436,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-06 21:22:25'),(1437,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-06 22:18:22'),(1438,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-06 22:24:31'),(1439,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-07 21:17:03'),(1440,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-07 22:38:13'),(1441,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-07 22:54:05'),(1442,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-08 19:14:21'),(1443,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-08 21:14:04'),(1444,'admin','修改字典','com.sykj.sys.controller.SysMacroController.update()','{\"gmtCreate\":1538841600000,\"id\":12,\"name\":\"电话故障\",\"parentId\":8,\"status\":0,\"type\":1}','0:0:0:0:0:0:0:1','2018-11-08 21:40:10'),(1445,'admin','删除字典','com.sykj.sys.controller.SysMacroController.delete()','[12]','0:0:0:0:0:0:0:1','2018-11-08 21:41:09'),(1446,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-08 21:46:26'),(1447,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-08 22:42:10'),(1448,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-10 15:11:33'),(1449,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-10 16:06:21'),(1450,'\"tomcat\"','登录','com.sykj.common.controller.SysLoginController.login()','\"tomcat\"','0:0:0:0:0:0:0:1','2018-11-10 21:41:55'),(1451,'\"tomcat\"','登录','com.sykj.common.controller.SysLoginController.login()','\"tomcat\"','0:0:0:0:0:0:0:1','2018-11-10 21:42:00'),(1452,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-10 21:42:09'),(1453,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-10 22:51:09'),(1454,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-11 12:11:31'),(1455,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-11 12:12:01'),(1456,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-11 12:59:33'),(1457,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-11 14:24:05'),(1458,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-11 14:31:43'),(1459,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-11 15:26:07'),(1460,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-11 16:47:08'),(1461,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-11 17:04:20'),(1462,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-11 17:04:46'),(1463,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-11 17:14:21'),(1464,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-11 17:20:26'),(1465,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-11 17:26:23'),(1466,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-11 17:46:17'),(1467,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-11 19:44:10'),(1468,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-11 19:44:44'),(1469,'admin','新增字典','com.sykj.sys.controller.SysMacroController.save()','{\"name\":\"客户来源\",\"status\":1,\"type\":0}','0:0:0:0:0:0:0:1','2018-11-11 20:59:35'),(1470,'admin','新增字典','com.sykj.sys.controller.SysMacroController.save()','{\"name\":\"新建客户\",\"parentId\":23,\"status\":1,\"type\":1,\"value\":\"新建客户\"}','0:0:0:0:0:0:0:1','2018-11-11 21:00:04'),(1471,'admin','新增字典','com.sykj.sys.controller.SysMacroController.save()','{\"name\":\"百度推广\",\"parentId\":23,\"status\":1,\"type\":1,\"value\":\"百度推广\"}','0:0:0:0:0:0:0:1','2018-11-11 21:00:22'),(1472,'admin','修改字典','com.sykj.sys.controller.SysMacroController.update()','{\"gmtCreate\":1541865600000,\"id\":25,\"name\":\"百度推广\",\"parentId\":23,\"status\":1,\"type\":1,\"value\":\"\"}','0:0:0:0:0:0:0:1','2018-11-11 21:00:44'),(1473,'admin','修改字典','com.sykj.sys.controller.SysMacroController.update()','{\"gmtCreate\":1541865600000,\"id\":24,\"name\":\"新建客户\",\"parentId\":23,\"status\":1,\"type\":1,\"value\":\"\"}','0:0:0:0:0:0:0:1','2018-11-11 21:00:52'),(1474,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-12 20:34:56'),(1475,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-12 21:12:10'),(1476,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-13 20:35:50'),(1477,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-13 20:35:56'),(1478,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-13 20:39:50'),(1479,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-13 20:39:54'),(1480,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-13 21:28:57'),(1481,'admin','新增字典','com.sykj.sys.controller.SysMacroController.save()','{\"name\":\"工程报案类型\",\"status\":1,\"type\":0}','0:0:0:0:0:0:0:1','2018-11-13 21:51:48'),(1482,'admin','新增字典','com.sykj.sys.controller.SysMacroController.save()','{\"name\":\"布线工程\",\"parentId\":26,\"status\":1,\"type\":1}','0:0:0:0:0:0:0:1','2018-11-13 21:54:54'),(1483,'admin','新增字典','com.sykj.sys.controller.SysMacroController.save()','{\"name\":\"监控工程\",\"parentId\":26,\"status\":1,\"type\":1}','0:0:0:0:0:0:0:1','2018-11-13 21:55:10'),(1484,'admin','新增字典','com.sykj.sys.controller.SysMacroController.save()','{\"name\":\"IT报案类型\",\"status\":1,\"type\":0}','0:0:0:0:0:0:0:1','2018-11-13 21:55:32'),(1485,'admin','新增字典','com.sykj.sys.controller.SysMacroController.save()','{\"name\":\"网络故障\",\"status\":1,\"type\":0}','0:0:0:0:0:0:0:1','2018-11-13 21:55:55'),(1486,'admin','修改字典','com.sykj.sys.controller.SysMacroController.update()','{\"gmtCreate\":1542038400000,\"id\":30,\"name\":\"网络故障\",\"parentId\":29,\"status\":1,\"type\":1}','0:0:0:0:0:0:0:1','2018-11-13 21:56:06'),(1487,'admin','新增字典','com.sykj.sys.controller.SysMacroController.save()','{\"name\":\"软件故障\",\"parentId\":29,\"status\":1,\"type\":1}','0:0:0:0:0:0:0:1','2018-11-13 21:56:20'),(1488,'admin','新增字典','com.sykj.sys.controller.SysMacroController.save()','{\"name\":\"硬件故障\",\"status\":1,\"type\":0}','0:0:0:0:0:0:0:1','2018-11-13 21:56:30'),(1489,'admin','修改字典','com.sykj.sys.controller.SysMacroController.update()','{\"gmtCreate\":1542038400000,\"id\":32,\"name\":\"硬件故障\",\"parentId\":29,\"status\":1,\"type\":1}','0:0:0:0:0:0:0:1','2018-11-13 21:56:38'),(1490,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-13 22:13:51'),(1491,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-13 23:28:27'),(1492,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-15 09:45:12'),(1493,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-15 20:55:13'),(1494,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-15 22:19:52'),(1495,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-15 22:27:30'),(1496,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-15 22:45:00'),(1497,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-15 22:49:50'),(1498,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-16 19:09:21'),(1499,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-16 21:16:56'),(1500,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-17 11:04:47'),(1501,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 11:47:06'),(1502,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 11:57:20'),(1503,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 11:58:58'),(1504,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 12:22:57'),(1505,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 12:42:53'),(1506,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 13:27:28'),(1507,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 13:32:01'),(1508,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 13:34:25'),(1509,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 13:43:45'),(1510,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 14:14:18'),(1511,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 14:21:17'),(1512,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 17:26:44'),(1513,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 17:26:48'),(1514,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"level\":0,\"name\":\"VIP客户维护\",\"orderNum\":0,\"parentId\":374,\"parentName\":\"客户中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"yscrms/customer.html?vip=1\"}','0:0:0:0:0:0:0:1','2018-11-18 17:59:14'),(1515,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 17:59:58'),(1516,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 18:00:03'),(1517,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 18:01:36'),(1518,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 18:01:41'),(1519,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"level\":0,\"menuId\":453,\"name\":\"VIP客户维护\",\"orderNum\":0,\"parentId\":374,\"parentName\":\"客户中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"yscrms/customer.html?vip=true\"}','0:0:0:0:0:0:0:1','2018-11-18 18:02:38'),(1520,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 20:03:51'),(1521,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-18 20:03:56'),(1522,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"level\":0,\"menuId\":420,\"name\":\"调度查询\",\"orderNum\":2,\"parentId\":222,\"parentName\":\"调度中心\",\"perms\":\"casedispatch:list,casedispatch:info\",\"selected\":false,\"status\":1,\"type\":1,\"url\":\"yscrms/newcase_dispatch.html?opt=query\"}','0:0:0:0:0:0:0:1','2018-11-18 20:09:15'),(1523,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"\",\"leaf\":false,\"level\":0,\"menuId\":307,\"name\":\"未调度\",\"orderNum\":1,\"parentId\":222,\"parentName\":\"调度中心\",\"perms\":\"casedispatch:list,casedispatch:info,casedispatch:save,casedispatch:update\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"yscrms/newcase_dispatch.html?opt=dispatch\"}','0:0:0:0:0:0:0:1','2018-11-18 20:09:42'),(1524,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"level\":0,\"menuId\":414,\"name\":\"已调度\",\"orderNum\":3,\"parentId\":222,\"parentName\":\"调度中心\",\"perms\":\"casedispatch:list,casedispatch:info,casedispatch:save,casedispatch:update\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"yscrms/newcase_dispatch.html?opt=dispatch&act=done\"}','0:0:0:0:0:0:0:1','2018-11-18 20:10:40'),(1525,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-11-20 21:03:24'),(1526,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-20 21:46:27'),(1527,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-20 22:34:04'),(1528,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-20 22:42:01'),(1529,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-21 22:43:07'),(1530,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-22 15:27:49'),(1531,'admin','新增配置','com.sykj.sys.controller.SysConfigController.save()','{\"key\":\"customerProgress\",\"remark\":\"客户跟踪-有所有权限的角色\",\"value\":\"技术经理\"}','0:0:0:0:0:0:0:1','2018-11-22 15:40:52'),(1532,'admin','新增配置','com.sykj.sys.controller.SysConfigController.save()','{\"key\":\"customerManage\",\"remark\":\"客户管理-有所有数据权限的角色\",\"value\":\"销售经理\"}','0:0:0:0:0:0:0:1','2018-11-22 15:42:05'),(1533,'admin','修改配置','com.sykj.sys.controller.SysConfigController.update()','{\"id\":5,\"key\":\"customerProgress\",\"remark\":\"客户跟踪-有所有权限的角色\",\"value\":\"技术经理,销售主管\"}','0:0:0:0:0:0:0:1','2018-11-22 15:48:25'),(1534,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-22 16:29:55'),(1535,'admin','修改配置','com.sykj.sys.controller.SysConfigController.update()','{\"id\":5,\"key\":\"customerProgress\",\"remark\":\"客户跟踪-有所有权限的角色\",\"value\":\"9,6\"}','0:0:0:0:0:0:0:1','2018-11-22 16:39:43'),(1536,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-24 20:38:07'),(1537,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-24 21:19:25'),(1538,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-25 14:13:56'),(1539,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-25 16:20:56'),(1540,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-25 17:50:29'),(1541,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-25 18:55:01'),(1542,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-25 19:47:35'),(1543,'admin','修改字典','com.sykj.sys.controller.SysMacroController.update()','{\"gmtCreate\":1542038400000,\"id\":31,\"name\":\"软件故障\",\"parentId\":29,\"status\":1,\"template\":\"it-软件报案模版\",\"type\":1}','0:0:0:0:0:0:0:1','2018-11-25 20:41:41'),(1544,'admin','修改字典','com.sykj.sys.controller.SysMacroController.update()','{\"gmtCreate\":1542038400000,\"gmtModified\":1542038400000,\"id\":32,\"name\":\"硬件故障\",\"parentId\":29,\"status\":1,\"template\":\"it-硬件报案模版\",\"type\":1}','0:0:0:0:0:0:0:1','2018-11-25 20:42:34'),(1545,'admin','修改字典','com.sykj.sys.controller.SysMacroController.update()','{\"gmtCreate\":1542038400000,\"gmtModified\":1542038400000,\"id\":30,\"name\":\"网络故障\",\"parentId\":29,\"status\":1,\"template\":\"it-网络报案模版\",\"type\":1}','0:0:0:0:0:0:0:1','2018-11-25 20:42:47'),(1546,'admin','修改字典','com.sykj.sys.controller.SysMacroController.update()','{\"gmtCreate\":1542038400000,\"id\":28,\"name\":\"监控工程\",\"parentId\":26,\"status\":1,\"template\":\"工程-监控报案模版\",\"type\":1}','0:0:0:0:0:0:0:1','2018-11-25 20:43:03'),(1547,'admin','修改字典','com.sykj.sys.controller.SysMacroController.update()','{\"gmtCreate\":1542038400000,\"id\":27,\"name\":\"布线工程\",\"parentId\":26,\"status\":1,\"template\":\"工程-布线报案模版\",\"type\":1}','0:0:0:0:0:0:0:1','2018-11-25 20:43:25'),(1548,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-25 21:55:11'),(1549,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-25 21:55:16'),(1550,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-11-26 20:34:19'),(1551,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-11-26 23:26:13'),(1552,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-27 22:02:13'),(1553,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-27 22:51:35'),(1554,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-28 21:21:36'),(1555,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-29 21:13:38'),(1556,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-29 21:45:56'),(1557,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-29 21:52:05'),(1558,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-29 21:59:01'),(1559,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-29 22:01:56'),(1560,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-30 20:57:35'),(1561,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-30 20:57:40'),(1562,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-30 22:36:10'),(1563,'admin','修改角色','com.sykj.common.controller.SysRoleController.update()','{\"createTime\":1505666415000,\"createUserId\":1,\"deptId\":1,\"deptIdList\":[],\"deptName\":\"总部\",\"menuIdList\":[375,383,376,200,207,386,390,391,392,393,387,394,395,210,211,201,388,222,307,308,309,414,415,416],\"remark\":\"超级管理员\",\"roleId\":5,\"roleName\":\"超级管理员\"}','0:0:0:0:0:0:0:1','2018-11-30 22:48:37'),(1564,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-30 22:48:52'),(1565,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-30 23:20:48'),(1566,'admin','修改角色','com.sykj.common.controller.SysRoleController.update()','{\"createTime\":1505666415000,\"createUserId\":1,\"deptId\":1,\"deptIdList\":[],\"deptName\":\"总部\",\"menuIdList\":[375,383,376,200,207,386,390,391,392,393,387,394,395,210,211,201,388,389,396,397,398,399,249,250,251,252,253,417,418,419,222,307,308,309,414,415,416,357,289,443,444,352,353,354,355,356,425,374,294,453,421,447],\"remark\":\"超级管理员\",\"roleId\":5,\"roleName\":\"超级管理员\"}','0:0:0:0:0:0:0:1','2018-11-30 23:22:00'),(1567,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-11-30 23:22:17'),(1568,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-01 15:48:45'),(1569,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"level\":0,\"menuId\":308,\"name\":\"调度/再次调度\",\"orderNum\":6,\"parentId\":307,\"parentName\":\"未调度\",\"perms\":\"dispatch:dispatch\",\"selected\":false,\"status\":0,\"type\":2}','0:0:0:0:0:0:0:1','2018-12-01 16:40:52'),(1570,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"level\":0,\"menuId\":309,\"name\":\"调度退回\",\"orderNum\":6,\"parentId\":307,\"parentName\":\"未调度\",\"perms\":\"dispatch:back\",\"selected\":false,\"status\":0,\"type\":2}','0:0:0:0:0:0:0:1','2018-12-01 16:41:48'),(1571,'admin','修改角色','com.sykj.common.controller.SysRoleController.update()','{\"createTime\":1505666415000,\"createUserId\":1,\"deptId\":1,\"deptIdList\":[],\"deptName\":\"总部\",\"menuIdList\":[375,383,376,200,207,386,390,391,392,393,387,394,395,210,211,201,388,389,396,397,398,399,249,250,251,252,253,417,418,419,222,307,308,309,414,415,416,357,289,443,444,352,353,354,355,356,425,374,294,453,421,447],\"remark\":\"超级管理员\",\"roleId\":5,\"roleName\":\"超级管理员\"}','0:0:0:0:0:0:0:1','2018-12-01 16:42:22'),(1572,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-01 16:42:31'),(1573,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-01 16:48:17'),(1574,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-01 16:50:26'),(1575,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-01 17:04:31'),(1576,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-02 17:11:57'),(1577,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-02 17:33:59'),(1578,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-02 18:27:06'),(1579,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-02 18:27:11'),(1580,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-02 18:33:23'),(1581,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-02 19:12:29'),(1582,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-02 19:13:18'),(1583,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-02 19:16:52'),(1584,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-02 19:16:56'),(1585,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-02 19:29:01'),(1586,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-02 20:12:00'),(1587,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-02 20:31:08'),(1588,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-02 20:37:28'),(1589,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-02 20:44:04'),(1590,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-05 21:32:35'),(1591,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-05 22:15:55'),(1592,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"arrows\",\"leaf\":false,\"level\":0,\"menuId\":425,\"name\":\"案件签到\",\"orderNum\":3,\"parentId\":357,\"parentName\":\"出勤中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"sys/sign_case.html\"}','0:0:0:0:0:0:0:1','2018-12-05 22:17:09'),(1593,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-05 22:34:06'),(1594,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-06 22:02:59'),(1595,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 16:38:44'),(1596,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 16:41:06'),(1597,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 16:47:16'),(1598,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 16:52:46'),(1599,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 16:57:31'),(1600,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 17:05:06'),(1601,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 17:08:04'),(1602,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 17:10:32'),(1603,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 17:13:31'),(1604,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 17:23:29'),(1605,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 17:23:34'),(1606,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 17:26:17'),(1607,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 17:27:20'),(1608,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 17:29:53'),(1609,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 17:31:15'),(1610,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 17:37:15'),(1611,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 17:49:15'),(1612,'admin','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 18:07:12'),(1613,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 20:00:29'),(1614,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 20:02:07'),(1615,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 21:09:18'),(1616,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 21:09:56'),(1617,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 21:59:38'),(1618,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 22:33:51'),(1619,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 22:37:05'),(1620,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-08 23:09:22'),(1621,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-09 15:44:37'),(1622,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-09 16:30:37'),(1623,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-09 17:02:57'),(1624,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"leaf\":false,\"level\":0,\"menuId\":421,\"name\":\"导入客户信息\",\"orderNum\":1,\"parentId\":374,\"parentName\":\"客户中心\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"yscrms/customer_import.html\"}','0:0:0:0:0:0:0:1','2018-12-09 17:04:07'),(1625,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-09 18:40:01'),(1626,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-09 20:11:20'),(1627,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-09 21:11:38'),(1628,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-09 22:02:25'),(1629,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-12-10 21:41:08'),(1630,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-10 21:50:26'),(1631,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-10 22:43:16'),(1632,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-10 22:57:59'),(1633,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-11 22:07:22'),(1634,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-11 23:06:22'),(1635,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-12 21:36:13'),(1636,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-12 22:17:00'),(1637,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-13 22:39:47'),(1638,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-12-16 16:23:09'),(1639,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-12-16 16:27:57'),(1640,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-16 16:32:31'),(1641,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-16 16:34:48'),(1642,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-16 16:35:33'),(1643,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-16 16:36:15'),(1644,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-16 16:39:24'),(1645,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-16 16:39:30'),(1646,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-16 16:56:19'),(1647,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-16 20:32:47'),(1648,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-16 20:53:54'),(1649,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-16 22:31:03'),(1650,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-16 22:45:59'),(1651,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-17 21:58:05'),(1652,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-18 22:13:16'),(1653,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-18 22:23:35'),(1654,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-19 22:52:14'),(1655,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-20 21:59:25'),(1656,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-20 22:18:09'),(1657,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','127.0.0.1','2018-12-21 21:20:29'),(1658,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-21 21:21:06'),(1659,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-21 21:25:02'),(1660,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-21 22:17:46'),(1661,'admin','新增字典','com.sykj.sys.controller.SysMacroController.save()','{\"name\":\"咨询类型\",\"status\":1,\"type\":0,\"value\":\"转咨询\"}','0:0:0:0:0:0:0:1','2018-12-21 22:52:34'),(1662,'admin','新增字典','com.sykj.sys.controller.SysMacroController.save()','{\"name\":\"转咨询\",\"parentId\":33,\"status\":1,\"type\":1,\"value\":\"转咨询\"}','0:0:0:0:0:0:0:1','2018-12-21 22:53:09'),(1663,'admin','修改字典','com.sykj.sys.controller.SysMacroController.update()','{\"gmtCreate\":1545321600000,\"id\":33,\"name\":\"服务咨询\",\"status\":1,\"type\":0,\"value\":\"\"}','0:0:0:0:0:0:0:1','2018-12-21 22:54:59'),(1664,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-21 23:10:08'),(1665,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-22 22:01:24'),(1666,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-22 22:14:38'),(1667,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-22 22:59:36'),(1668,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-22 23:03:30'),(1669,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-22 23:21:19'),(1670,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-23 14:43:11'),(1671,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-23 15:07:14'),(1672,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-23 15:16:16'),(1673,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-23 15:19:01'),(1674,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-23 15:19:22'),(1675,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-27 22:09:39'),(1676,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-28 21:25:43'),(1677,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-28 21:25:48'),(1678,'admin','新增字典','com.sykj.sys.controller.SysMacroController.save()','{\"name\":\"客户跟踪类型\",\"status\":1,\"type\":0}','0:0:0:0:0:0:0:1','2018-12-28 21:37:27'),(1679,'admin','新增字典','com.sykj.sys.controller.SysMacroController.save()','{\"name\":\"上门跟踪\",\"parentId\":35,\"status\":1,\"type\":1}','0:0:0:0:0:0:0:1','2018-12-28 21:37:51'),(1680,'admin','新增字典','com.sykj.sys.controller.SysMacroController.save()','{\"name\":\"电话跟踪\",\"parentId\":35,\"status\":1,\"type\":1}','0:0:0:0:0:0:0:1','2018-12-28 21:38:04'),(1681,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-30 11:49:28'),(1682,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-30 11:49:36'),(1683,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-30 12:28:26'),(1684,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-30 12:35:37'),(1685,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-30 12:44:36'),(1686,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-30 19:37:31'),(1687,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2018-12-30 22:18:28'),(1688,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-01-03 22:00:58'),(1689,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-01-20 20:23:07'),(1690,'admin','新增字典','com.sykj.sys.controller.SysMacroController.save()','{\"name\":\"上门送货\",\"parentId\":29,\"status\":1,\"type\":1}','0:0:0:0:0:0:0:1','2019-01-20 20:23:53'),(1691,'admin','新增字典','com.sykj.sys.controller.SysMacroController.save()','{\"name\":\"上门送货\",\"parentId\":26,\"status\":1,\"type\":1}','0:0:0:0:0:0:0:1','2019-01-20 20:24:16'),(1692,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-01-20 20:25:09'),(1693,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-01-20 20:25:47'),(1694,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-01-20 20:38:37'),(1695,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-01-20 20:43:40'),(1696,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-01-20 20:53:08'),(1697,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-01-20 20:54:39'),(1698,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-02-27 22:32:25'),(1699,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-02-27 22:32:28'),(1700,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-02-27 22:32:32'),(1701,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-01 22:42:47'),(1702,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-02 14:29:25'),(1703,'admin','保存定时任务','com.sykj.quartz.controller.ScheduleJobController.save()','{\"beanName\":\"caseSignStatisticsExecutor\",\"cronExpression\":\"0 0/5 * * * ? \",\"methodName\":\"execute\"}','0:0:0:0:0:0:0:1','2019-03-02 14:36:26'),(1704,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-02 14:36:35'),(1705,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-02 14:39:46'),(1706,'admin','修改定时任务','com.sykj.quartz.controller.ScheduleJobController.update()','{\"beanName\":\"caseSignStatisticsExecutor\",\"createTime\":1551508586000,\"cronExpression\":\"0 0/5 * * * ? \",\"jobId\":1,\"methodName\":\"execute\",\"params\":\"30\",\"status\":0}','0:0:0:0:0:0:0:1','2019-03-02 14:42:35'),(1707,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-02 14:47:48'),(1708,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-02 14:48:54'),(1709,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-02 14:52:53'),(1710,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-02 14:54:13'),(1711,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-02 14:55:08'),(1712,'admin','修改定时任务','com.sykj.quartz.controller.ScheduleJobController.update()','{\"beanName\":\"caseSignStatisticsExecutor\",\"createTime\":1551508586000,\"cronExpression\":\"0 0/5 * * * ? \",\"jobId\":1,\"methodName\":\"execute\",\"params\":\"80\",\"status\":0}','0:0:0:0:0:0:0:1','2019-03-02 14:56:07'),(1713,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-02 14:56:11'),(1714,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-02 15:01:43'),(1715,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-02 15:07:35'),(1716,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-02 15:07:48'),(1717,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-02 15:13:23'),(1718,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-02 15:17:22'),(1719,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-02 15:49:59'),(1720,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-02 15:50:04'),(1721,'admin','保存菜单','com.sykj.common.controller.SysMenuController.save()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"id-card-o\",\"leaf\":false,\"level\":0,\"name\":\"案件签到统计\",\"orderNum\":0,\"parentId\":243,\"parentName\":\"统计分析\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"yscrms/casesignstatistics.html\"}','0:0:0:0:0:0:0:1','2019-03-02 15:54:02'),(1722,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-02 16:14:02'),(1723,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-02 16:33:24'),(1724,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-02 16:34:31'),(1725,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-02 17:17:40'),(1726,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-02 17:39:51'),(1727,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-02 17:56:22'),(1728,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-02 18:02:05'),(1729,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-02 18:51:57'),(1730,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-02 20:30:27'),(1731,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-02 21:15:10'),(1732,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-02 22:25:30'),(1733,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-03 17:55:38'),(1734,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-03 17:56:23'),(1735,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-03 21:47:43'),(1736,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-03 22:29:20'),(1737,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-03 22:31:48'),(1738,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-03 22:32:16'),(1739,'admin','修改定时任务','com.sykj.quartz.controller.ScheduleJobController.update()','{\"beanName\":\"caseSignStatisticsExecutor\",\"createTime\":1551508586000,\"cronExpression\":\"0 0/5 * * * ? \",\"jobId\":1,\"methodName\":\"execute\",\"params\":\"80\",\"status\":0}','0:0:0:0:0:0:0:1','2019-03-03 22:33:05'),(1740,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-03 22:37:03'),(1741,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-08 22:34:32'),(1742,'admin','修改菜单','com.sykj.common.controller.SysMenuController.update()','{\"checked\":false,\"disableCheckbox\":false,\"disabled\":false,\"expand\":false,\"icon\":\"fa fa-pencil\",\"leaf\":false,\"level\":0,\"menuId\":233,\"name\":\"技术出勤统计\",\"orderNum\":1,\"parentId\":243,\"parentName\":\"统计分析\",\"selected\":false,\"status\":0,\"type\":1,\"url\":\"yscrms/tech.html\"}','0:0:0:0:0:0:0:1','2019-03-08 22:37:05'),(1743,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-08 22:37:20'),(1744,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-08 23:37:38'),(1745,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-09 11:23:20'),(1746,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-09 11:23:25'),(1747,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-09 11:58:06'),(1748,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-09 12:11:37'),(1749,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-09 12:37:19'),(1750,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-09 17:03:52'),(1751,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-09 17:34:16'),(1752,'admin','立即执行任务','com.sykj.quartz.controller.ScheduleJobController.run()','[1]','0:0:0:0:0:0:0:1','2019-03-09 18:59:20'),(1753,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-09 22:08:28'),(1754,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-09 23:42:50'),(1755,'\"admin\"','登录','com.sykj.common.controller.SysLoginController.login()','\"admin\"','0:0:0:0:0:0:0:1','2019-03-09 23:47:34');
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=455 DEFAULT CHARSET=utf8 COMMENT='菜单管理';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,0,'系统管理',NULL,NULL,0,'fa fa-cog',6,0),(2,1,'管理员列表','sys/user.html',NULL,1,'fa fa-user',1,0),(3,1,'角色管理','sys/role.html',NULL,1,'fa fa-user-secret',2,0),(4,1,'菜单管理','sys/menu.html',NULL,1,'fa fa-folder-open',4,0),(5,31,'SQL监控','druid/sql.html',NULL,1,'fa fa-linux',9,0),(6,1,'定时任务','sys/schedule.html',NULL,1,'fa fa-tasks',5,0),(7,6,'查看',NULL,'sys:schedule:list,sys:schedule:info',2,NULL,0,0),(8,6,'新增',NULL,'sys:schedule:save',2,NULL,0,0),(9,6,'修改',NULL,'sys:schedule:update',2,NULL,0,0),(10,6,'删除',NULL,'sys:schedule:delete',2,NULL,0,0),(11,6,'暂停',NULL,'sys:schedule:pause',2,NULL,0,0),(12,6,'恢复',NULL,'sys:schedule:resume',2,NULL,0,0),(13,6,'立即执行',NULL,'sys:schedule:run',2,NULL,0,0),(14,6,'日志列表',NULL,'sys:schedule:log',2,NULL,0,0),(15,2,'查看',NULL,'sys:user:list,sys:user:info',2,NULL,0,0),(16,2,'新增',NULL,'sys:user:save,sys:role:select',2,NULL,0,0),(17,2,'修改',NULL,'sys:user:update,sys:role:select',2,NULL,0,0),(18,2,'删除',NULL,'sys:user:delete',2,NULL,0,0),(19,3,'查看',NULL,'sys:role:list,sys:role:info',2,NULL,0,0),(20,3,'新增',NULL,'sys:role:save,sys:menu:perms',2,NULL,0,0),(21,3,'修改',NULL,'sys:role:update,sys:menu:perms',2,NULL,0,0),(22,3,'删除',NULL,'sys:role:delete',2,NULL,0,0),(23,4,'查看',NULL,'sys:menu:list,sys:menu:info',2,NULL,0,0),(24,4,'新增',NULL,'sys:menu:save,sys:menu:select',2,NULL,0,0),(25,4,'修改',NULL,'sys:menu:update,sys:menu:select',2,NULL,0,0),(26,4,'删除',NULL,'sys:menu:delete',2,NULL,0,0),(27,1,'系统参数','sys/config.html','sys:config:list,sys:config:info,sys:config:save,sys:config:update,sys:config:delete',1,'fa fa-sun-o',7,0),(28,31,'代码生成器','sys/generator.html','sys:generator:list,sys:generator:code',1,'fa fa-rocket',10,0),(29,1,'系统日志','sys/log.html','sys:log:list',1,'fa fa-file-text-o',8,0),(30,1,'文件上传','sys/oss.html','sys:oss:all',1,'fa fa-file-image-o',6,0),(31,0,'开发工具',NULL,NULL,0,'fa fa-bug',8,0),(200,0,'报案中心',NULL,NULL,0,'fa fa-user-circle-o',1,0),(201,200,'工程报案','',NULL,0,'',1,0),(206,31,'iviewDemo','test/iviewDemo.html',NULL,1,'fa fa-etsy',0,0),(207,200,'IT服务报案','',NULL,0,'',0,0),(210,387,'修改',NULL,'userlevel:update',2,NULL,6,0),(211,387,'删除',NULL,'userlevel:delete',2,NULL,6,0),(222,0,'调度中心',NULL,NULL,0,'fa fa-shopping-cart',2,0),(233,243,'技术出勤统计','yscrms/tech.html',NULL,1,'fa fa-pencil',1,0),(234,233,'查看',NULL,'ad:list,ad:info',2,NULL,6,0),(235,233,'新增',NULL,'ad:save',2,NULL,6,0),(236,233,'修改',NULL,'ad:update',2,NULL,6,0),(237,233,'删除',NULL,'ad:delete',2,NULL,6,0),(238,243,'客户报修统计','shop/adposition.html',NULL,1,'fa fa-map-pin',0,0),(239,238,'查看',NULL,'adposition:list,adposition:info',2,NULL,6,0),(240,238,'新增',NULL,'adposition:save',2,NULL,6,0),(241,238,'修改',NULL,'adposition:update',2,NULL,6,0),(242,238,'删除',NULL,'adposition:delete',2,NULL,6,0),(243,0,'统计分析',NULL,NULL,0,'fa fa-hand-paper-o',5,0),(244,243,'调度统计','shop/coupon.html',NULL,1,'fa fa-cc-visa',2,0),(245,244,'查看',NULL,'coupon:list,coupon:info',2,NULL,6,0),(246,244,'新增',NULL,'coupon:save',2,NULL,6,0),(247,244,'修改',NULL,'coupon:update',2,NULL,6,0),(248,244,'删除',NULL,'coupon:delete',2,NULL,6,0),(249,200,'其它报案','yscrms/newcase_add.html?type=9',NULL,1,'',2,0),(250,249,'查看',NULL,'usercoupon:list,usercoupon:info',2,NULL,6,0),(251,249,'新增',NULL,'usercoupon:save',2,NULL,6,0),(252,249,'修改',NULL,'usercoupon:update',2,NULL,6,0),(253,249,'删除',NULL,'usercoupon:delete',2,NULL,6,0),(275,243,'服务咨询统计','shop/topiccategory.html',NULL,1,'fa fa-tint',4,0),(276,275,'查看',NULL,'topiccategory:list,topiccategory:info',2,NULL,6,0),(277,275,'新增',NULL,'topiccategory:save',2,NULL,6,0),(278,275,'修改',NULL,'topiccategory:update',2,NULL,6,0),(279,275,'删除',NULL,'topiccategory:delete',2,NULL,6,0),(289,357,'我的案件','','newcase:myCase',0,'fa fa-shopping-bag',1,0),(294,374,'客户管理','yscrms/customer.html','',1,'fa fa-sitemap',0,0),(302,1,'通用字典表','sys/macro.html',NULL,1,'fa fa-book',6,0),(303,302,'查看',NULL,'sys:macro:list,sys:macro:info',2,NULL,6,0),(304,302,'新增',NULL,'sys:macro:save',2,NULL,6,0),(305,302,'修改',NULL,'sys:macro:update',2,NULL,6,0),(306,302,'删除',NULL,'sys:macro:delete',2,NULL,6,0),(307,222,'未调度','yscrms/newcase_dispatch.html?opt=dispatch','casedispatch:list,casedispatch:info,casedispatch:save,casedispatch:update',1,'',1,0),(308,307,'调度/再次调度',NULL,'dispatch:dispatch',2,NULL,6,0),(309,307,'调度退回',NULL,'dispatch:back',2,NULL,6,0),(330,244,'发放',NULL,'coupon:publish',2,NULL,4,0),(352,357,'服务咨询','yscrms/technicianservice.html',NULL,1,'fa fa-deafness',2,0),(353,352,'查看',NULL,'technicianservice:list,technicianservice:info',2,NULL,6,0),(354,352,'新增',NULL,'technicianservice:save',2,NULL,6,0),(355,352,'修改',NULL,'technicianservice:update',2,NULL,6,0),(356,352,'删除',NULL,'technicianservice:delete',2,NULL,6,0),(357,0,'出勤中心',NULL,NULL,0,'fa fa-edit',3,0),(368,1,'部门管理','sys/dept.html',NULL,1,'fa fa-sitemap',3,0),(369,368,'查看',NULL,'sys:dept:list,sys:dept:info',2,NULL,0,0),(370,368,'新增',NULL,'sys:dept:save',2,NULL,0,0),(371,368,'修改',NULL,'sys:dept:update',2,NULL,0,0),(372,368,'删除',NULL,'sys:dept:delete',2,NULL,0,0),(373,368,'选择部门',NULL,'sys:dept:select',2,NULL,0,0),(374,0,'客户中心',NULL,NULL,0,'fa fa-first-order',4,0),(375,0,'消息中心',NULL,NULL,0,'fa fa-television',0,0),(376,375,'未读消息','sys/smslog.html','sys:smslog:list,sys:smslog:info',1,'fa fa-envelope-open',1,0),(377,1,'地区管理','sys/region.html',NULL,1,'fa fa-map-pin',8,0),(378,377,'删除',NULL,'sys:region:delete',2,NULL,0,0),(379,377,'修改','','sys:region:update',2,NULL,0,0),(380,377,'新增',NULL,'sys:region:save',2,NULL,0,0),(381,377,'查看',NULL,'sys:region:list,sys:region:info',2,NULL,0,0),(382,31,'swagger-ui.html','swagger-ui.html','',1,'fa fa-code',0,0),(383,375,'我的消息','sys/msg.html','sys:msg:list,sys:msg:info',1,NULL,0,0),(385,0,'个人中心',NULL,NULL,0,'fa fa-address-card',7,0),(386,207,'VIP报案','yscrms/newcase_add.html?type=1&vip=1',NULL,1,NULL,0,0),(387,207,'非VIP报案','yscrms/newcase_add.html?type=1&vip=0',NULL,1,NULL,0,0),(388,201,'VIP报案','yscrms/newcase_add.html?type=2&vip=1',NULL,1,NULL,0,0),(389,201,'非VIP报案','yscrms/newcase_add.html?type=2&vip=0',NULL,1,NULL,0,0),(390,386,'新增',NULL,'createanjian',2,NULL,0,0),(391,386,'修改',NULL,'edit',2,NULL,0,0),(392,386,'查看',NULL,'view',2,NULL,0,0),(393,386,'删除',NULL,'delete',2,NULL,0,0),(394,387,'新增',NULL,'create',2,NULL,0,0),(395,387,'查看',NULL,'view',2,NULL,0,0),(396,389,'新增',NULL,'create',2,NULL,0,0),(397,389,'查看',NULL,'view',2,NULL,0,0),(398,389,'修改',NULL,'update',2,NULL,0,0),(399,389,'删除',NULL,'delete',2,NULL,0,0),(414,222,'已调度','yscrms/newcase_dispatch.html?opt=dispatch&act=done','casedispatch:list,casedispatch:info,casedispatch:save,casedispatch:update',1,NULL,3,0),(415,414,'查询',NULL,'dispatch:query',2,NULL,0,0),(416,414,'取消调度',NULL,'dispatch:cancel',2,NULL,0,0),(417,200,'报案查询','yscrms/newcase.html?opt=query',NULL,1,NULL,3,0),(418,200,'案件管理','yscrms/newcase.html?opt=manage',NULL,1,NULL,4,0),(419,200,'注销案件','yscrms/newcase.html?opt=cancel',NULL,1,'grav',5,0),(420,222,'调度查询','yscrms/newcase_dispatch.html?opt=query','casedispatch:list,casedispatch:info',1,NULL,2,1),(421,374,'导入客户信息','yscrms/customer_import.html',NULL,1,NULL,1,0),(422,385,'我的信息','sys/user.html?tag=true','sys:user:info',1,NULL,0,0),(423,385,'我的签到','sys/sign.html','sys:sign:list,sys:sign:info',1,NULL,2,0),(424,385,'我的通讯录','sys/staff.html?tag=true','sys:staff:list',1,NULL,3,0),(425,357,'案件签到','sys/sign_case.html',NULL,1,'arrows',3,0),(426,294,'查看',NULL,'customer:list,customer:info',2,NULL,6,NULL),(427,294,'新增',NULL,'customer:save',2,NULL,6,NULL),(428,294,'修改',NULL,'customer:update',2,NULL,6,NULL),(429,294,'删除',NULL,'customer:delete',2,NULL,6,NULL),(430,418,'查看',NULL,'newcase:list,newcase:info',2,NULL,6,NULL),(431,418,'新增',NULL,'newcase:save',2,NULL,6,NULL),(432,418,'修改',NULL,'newcase:update',2,NULL,6,NULL),(433,418,'删除',NULL,'newcase:delete',2,NULL,6,NULL),(434,307,'查看',NULL,'dispatch:query',2,NULL,6,NULL),(435,307,'调度',NULL,'dispatch:dispatch',2,NULL,6,NULL),(436,307,'调度退回',NULL,'dispatch:back',2,NULL,6,NULL),(437,1,'员工管理','sys/staff.html',NULL,1,'fa fa-user-o',3,0),(438,437,'查看',NULL,'sys:staff:list,sys:staff:info',2,NULL,0,0),(439,437,'新增',NULL,'sys:staff:save,sys:staff:queryAll',2,NULL,0,0),(440,437,'修改',NULL,'sys:staff:update',2,NULL,0,0),(441,437,'删除',NULL,'sys:staff:delete',2,NULL,0,0),(442,420,'查询',NULL,'dispatch:query',2,NULL,0,0),(443,289,'未完成案件','yscrms/newcase_mine.html?opt=1',NULL,1,NULL,0,0),(444,289,'已完成案件','yscrms/newcase_mine.html?opt=2',NULL,1,NULL,1,0),(445,419,'再次上报',NULL,'newcase:report',2,NULL,6,NULL),(446,419,'查看',NULL,'newcase:list,newcase:info',2,NULL,6,NULL),(447,374,'客户跟踪记录','yscrms/customer_follow.html',NULL,1,NULL,3,0),(448,447,'查看',NULL,'customerprogressrecord:list,customerprogressrecord:info',2,NULL,6,NULL),(449,447,'新增',NULL,'customerprogressrecord:save',2,NULL,6,NULL),(450,447,'修改',NULL,'customerprogressrecord:update',2,NULL,6,NULL),(451,447,'删除',NULL,'customerprogressrecord:delete',2,NULL,6,NULL),(452,418,'注销',NULL,'newcase:cancel',2,NULL,6,NULL),(453,374,'VIP客户维护','yscrms/customer.html?vip=true',NULL,1,NULL,0,0),(454,243,'案件签到统计','yscrms/casesignstatistics.html',NULL,1,'id-card-o',0,0);
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
INSERT INTO `sys_sign` VALUES (1,'传友','YS-0004','sign in','2018-11-30 23:13:15','上海市浦东新区唐丰路',NULL,'YS181130-00277',NULL,121.647903,31.201864,NULL),(2,'吴小雯','YS-0001','sign in','2018-11-30 23:22:05','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492264,31.277067,NULL),(3,'吴小雯','YS-0001','sign out','2018-11-30 23:27:10','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492294,31.277048,NULL),(4,'杜春生','YS-0005','sign in','2018-12-01 00:18:31','上海市闵行区沁春路',NULL,'YS181130-00283',NULL,121.371048,31.091822,NULL),(5,'吴小雯','YS-0001','sign in','2018-12-01 07:58:40','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492294,31.277052,NULL),(6,'马云','YS-0058','sign out','2018-12-01 17:01:19','上海市徐汇区乌鲁木齐路303号',NULL,NULL,NULL,121.447727,31.212949,NULL),(7,'马云','YS-0058','sign out','2018-12-01 17:01:34','上海市徐汇区乌鲁木齐路303号',NULL,NULL,NULL,121.447727,31.212949,NULL),(8,'吴小雯','YS-0001','sign in','2018-12-02 00:02:29','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492310,31.277050,NULL),(9,'吴小雯','YS-0001','sign out','2018-12-02 00:02:32','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492310,31.277050,NULL),(10,'传友','YS-0004','sign in','2018-12-02 10:03:28','北京市东城区正义路2号',NULL,'YS181201-00324',NULL,116.407170,39.904690,NULL),(11,'传友','YS-0004','sign in','2018-12-02 10:14:40','北京市东城区正义路2号',NULL,'YS181201-00324',NULL,116.407170,39.904690,NULL),(12,'传友','YS-0004','sign in','2018-12-02 10:15:42','北京市东城区正义路2号',NULL,'YS181201-00324',NULL,116.407170,39.904690,NULL),(13,'传友','YS-0004','sign in','2018-12-02 10:16:30','北京市东城区正义路2号',NULL,'YS181201-00324',NULL,116.407170,39.904690,NULL),(14,'吴小雯','YS-0001','sign in','2018-12-02 11:44:10','上海市虹口区大连西路94号',NULL,'YS181201-00337',NULL,121.492302,31.277040,NULL),(15,'吴小雯','YS-0001','sign out','2018-12-02 12:57:02','上海市虹口区大连西路94号',NULL,'YS181201-00326',NULL,121.492310,31.277050,NULL),(16,'吴小雯','YS-0001','sign out','2018-12-02 12:57:47','上海市虹口区大连西路94号',NULL,'YS181130-00279',NULL,121.492302,31.277052,NULL),(17,'吴小雯','YS-0001','sign out','2018-12-02 12:59:26','上海市虹口区大连西路94号',NULL,'YS181201-00337',NULL,121.492287,31.277048,NULL),(18,'吴小雯','YS-0001','sign in','2018-12-02 13:21:29','上海市虹口区大连西路94号',NULL,'YS181201-00339',NULL,121.492302,31.277048,NULL),(19,'吴小雯','YS-0001','sign in','2018-12-02 13:21:35','上海市虹口区大连西路94号',NULL,'YS181201-00339',NULL,121.492294,31.277048,NULL),(20,'吴小雯','YS-0001','sign in','2018-12-02 13:21:45','上海市虹口区大连西路94号',NULL,'YS181201-00320',NULL,121.492294,31.277050,NULL),(21,'吴小雯','YS-0001','sign out','2018-12-02 13:22:23','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492302,31.277048,NULL),(22,'吴小雯','YS-0001','sign out','2018-12-02 13:22:28','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492302,31.277048,NULL),(23,'吴小雯','YS-0001','sign out','2018-12-02 13:22:39','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492294,31.277048,NULL),(24,'吴小雯','YS-0001','sign out','2018-12-02 13:22:44','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492294,31.277048,NULL),(25,'吴小雯','YS-0001','sign out','2018-12-02 13:23:23','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492302,31.277048,NULL),(26,'吴小雯','YS-0001','sign out','2018-12-02 13:23:26','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492310,31.277050,NULL),(27,'吴小雯','YS-0001','sign out','2018-12-02 13:23:54','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492310,31.277052,NULL),(28,'吴小雯','YS-0001','sign out','2018-12-02 13:23:57','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492302,31.277054,NULL),(29,'吴小雯','YS-0001','sign in','2018-12-02 13:24:17','上海市虹口区大连西路94号',NULL,'YS181201-00320',NULL,121.492310,31.277050,NULL),(30,'吴小雯','YS-0001','sign out','2018-12-02 15:41:55','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492302,31.277054,NULL),(31,'吴小雯','YS-0001','sign out','2018-12-02 17:23:30','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492325,31.277039,NULL),(32,'吴小雯','YS-0001','sign out','2018-12-02 17:25:15','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492294,31.277048,NULL),(33,'吴小雯','YS-0001','sign out','2018-12-02 17:29:08','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492294,31.277063,NULL),(34,'吴小雯','YS-0001','sign in','2018-12-02 17:29:29','上海市虹口区大连西路94号',NULL,'YS181201-00322',NULL,121.492302,31.277048,NULL),(35,'吴小雯','YS-0001','sign in','2018-12-02 17:29:52','上海市虹口区大连西路94号',NULL,'YS181201-00339',NULL,121.492302,31.277048,NULL),(36,'吴小雯','YS-0001','sign in','2018-12-02 17:30:13','上海市虹口区大连西路94号',NULL,'YS181201-00339',NULL,121.492294,31.277048,NULL),(37,'吴小雯','1','sign in','2018-12-03 09:35:22','上海市黄浦区北无锡路64号',NULL,NULL,NULL,121.479721,31.239250,1),(38,'吴小雯','YS-0001','sign in','2018-12-03 09:36:19','上海市黄浦区北无锡路64号',NULL,'YS181201-00322',NULL,121.479721,31.239250,2),(39,'吴小雯','YS-0001','sign in','2018-12-03 09:36:34','上海市黄浦区北无锡路64号',NULL,'YS181201-00285',NULL,121.479721,31.239250,2),(40,'吴小雯','YS-0001','sign out','2018-12-03 09:37:07','上海市黄浦区北无锡路64号',NULL,'YS181201-00285',NULL,121.479721,31.239250,2),(41,'传友','1','sign out','2018-12-03 09:39:13','上海市松江区明南路',NULL,NULL,NULL,121.270943,31.044050,1),(42,'杜春生','YS-0005','sign out','2018-12-03 16:51:46','上海市青浦区崧盈路',NULL,'YS181201-00310',NULL,121.183098,31.159111,2),(43,'杜春生','YS-0005','sign out','2018-12-03 16:52:31','上海市青浦区崧盈路',NULL,'YS181201-00284',NULL,121.183060,31.159071,2),(44,'杜春生','YS-0005','sign out','2018-12-03 18:54:54','上海市青浦区崧盈路',NULL,'YS181130-00276',NULL,121.183090,31.159113,2),(45,'杜春生','YS-0005','sign out','2018-12-03 18:55:09','上海市青浦区崧盈路',NULL,'YS181130-00275',NULL,121.183136,31.159185,2),(46,'杜春生','YS-0005','sign in','2018-12-03 18:55:17','上海市青浦区崧盈路',NULL,'YS181130-00272',NULL,121.183090,31.159140,2),(47,'杜春生','YS-0005','sign in','2018-12-03 18:55:23','上海市青浦区崧盈路',NULL,'YS181130-00272',NULL,121.183090,31.159136,2),(48,'杜春生','YS-0005','sign in','2018-12-03 18:55:31','上海市青浦区崧盈路',NULL,'YS181130-00272',NULL,121.183090,31.159113,2),(49,'杜春生','YS-0001','sign out','2018-12-03 18:56:01','上海市青浦区崧盈路',NULL,'YS181130-00272',NULL,121.183090,31.159115,2),(50,'杜春生','1','sign out','2018-12-03 19:13:32','上海市青浦区崧盈路',NULL,NULL,NULL,121.183098,31.159151,1),(51,'杜春生','1','sign out','2018-12-03 19:13:35','上海市青浦区崧盈路',NULL,NULL,NULL,121.183098,31.159149,1),(52,'罗剑','YS-0003','sign in','2018-12-03 21:12:24','上海市浦东新区板泉路',NULL,'YS181202-00354',NULL,121.532349,31.164900,2),(53,'罗剑','YS-0003','sign in','2018-12-03 21:31:44','上海市浦东新区东书房路',NULL,'YS181202-00354',NULL,121.532654,31.164936,2),(54,'传友','1','sign in','2018-12-04 08:10:33','上海市松江区云清路',NULL,NULL,NULL,121.223808,31.056993,1),(55,'吴小雯','1','sign in','2018-12-04 08:27:24','上海市黄浦区北京东路541弄',NULL,NULL,NULL,121.479881,31.239315,1),(56,'吴小雯','YS-0001','sign out','2018-12-04 08:28:05','上海市黄浦区北京东路541弄',NULL,'YS181203-00359',NULL,121.479881,31.239315,2),(57,'吴小雯','1','sign out','2018-12-04 23:15:59','上海市虹口区大连西路180号',NULL,NULL,NULL,121.492256,31.277060,1),(58,'吴小雯','YS-0001','sign out','2018-12-04 23:16:18','上海市虹口区大连西路180号',NULL,'YS181201-00321',NULL,121.492256,31.277060,2),(59,'吴小雯','YS-0001','sign out','2018-12-04 23:16:40','上海市虹口区大连西路94号',NULL,'YS181202-00354',NULL,121.492302,31.277039,2),(60,'吴小雯','YS-0001','sign out','2018-12-04 23:17:09','上海市虹口区大连西路180号',NULL,'YS181201-00302',NULL,121.492256,31.277060,2),(61,'吴小雯','YS-0001','sign out','2018-12-04 23:17:24','上海市虹口区大连西路180号',NULL,'YS181201-00319',NULL,121.492256,31.277060,2),(62,'吴小雯','YS-0001','sign in','2018-12-04 23:17:33','上海市虹口区大连西路180号',NULL,'YS181201-00320',NULL,121.492249,31.277065,2),(63,'吴小雯','YS-0001','sign in','2018-12-04 23:17:38','上海市虹口区大连西路94号',NULL,'YS181201-00320',NULL,121.492302,31.277048,2),(64,'吴小雯','YS-0001','sign out','2018-12-04 23:17:55','上海市虹口区大连西路94号',NULL,'YS181201-00320',NULL,121.492310,31.277048,2),(65,'吴小雯','1','sign in','2018-12-05 07:58:16','上海市虹口区玉田路211号',NULL,NULL,NULL,121.496284,31.277346,1),(66,'吴小雯','1','sign out','2018-12-05 21:08:39','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492310,31.277048,1),(67,'吴小雯','YS-0001','sign in','2018-12-05 21:14:40','上海市虹口区大连西路94号',NULL,'YS181204-00365',NULL,121.492310,31.277048,2),(68,'吴小雯','YS-0001','sign out','2018-12-05 21:24:26','上海市虹口区大连西路94号',NULL,'YS181205-00367',NULL,121.492294,31.277048,2),(69,'张三','YS-0001','sign in','2018-12-11 22:54:06',NULL,NULL,'YS181204-00365',NULL,NULL,NULL,2),(70,'张三','YS-0001','sign in','2018-12-11 22:54:35',NULL,NULL,'YS181204-00365',NULL,NULL,NULL,2),(71,'张三','YS-0001','sign in','2018-12-11 22:55:18',NULL,NULL,'YS181204-00365',NULL,NULL,NULL,2),(111,'吴小雯','1','sign in','2018-12-03 09:35:22','上海市黄浦区北无锡路64号',NULL,NULL,NULL,121.479721,31.239250,1),(112,'传友','1','sign out','2018-12-03 09:39:13','上海市松江区明南路',NULL,NULL,NULL,121.270943,31.044050,1),(113,'杜春生','1','sign out','2018-12-03 19:13:32','上海市青浦区崧盈路',NULL,NULL,NULL,121.183098,31.159151,1),(114,'杜春生','1','sign out','2018-12-03 19:13:35','上海市青浦区崧盈路',NULL,NULL,NULL,121.183098,31.159149,1),(115,'传友','1','sign in','2018-12-04 08:10:33','上海市松江区云清路',NULL,NULL,NULL,121.223808,31.056993,1),(116,'吴小雯','YS-0001','sign in','2018-12-04 08:27:24','上海市黄浦区北京东路541弄',NULL,NULL,NULL,121.479881,31.239315,1),(117,'吴小雯','YS-0001','sign out','2018-12-04 23:15:59','上海市虹口区大连西路180号',NULL,NULL,NULL,121.492256,31.277060,1),(118,'吴小雯','YS-0001','sign in','2018-12-05 07:58:16','上海市虹口区玉田路211号',NULL,NULL,NULL,121.496284,31.277346,1),(119,'吴小雯','YS-0001','sign out','2018-12-05 21:08:39','上海市虹口区大连西路94号',NULL,NULL,NULL,121.492310,31.277048,1),(120,'传友','YS-0004','sign in','2018-12-10 00:05:19','上海市黄浦区人民大道200号',NULL,NULL,NULL,121.473700,31.230370,1),(121,'卫林','YS-0002','sign out','2018-12-12 23:19:55','上海市徐汇区龙吴路997号',NULL,NULL,NULL,121.445709,31.146172,1);
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
INSERT INTO `sys_staff` VALUES ('1','管理员','1','','技术部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,NULL,NULL),('2','罗剑',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('3','张三',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('YS-0001','罗剑','男','fa sf','技术部','部门经理','as fqr1r','asdf asdf','','',NULL,NULL,'1','2018-10-28 20:08:45',NULL,'',''),('YS-0002','卫林','男','上海浦东','销售二部','部门经理','23234567','12345678906','本科以上','YS-0002.jpg',NULL,NULL,'1','2018-12-28 13:12:18',NULL,'B','1'),('YS-0003','罗剑','男','fa sf','技术部','部门经理','as fqr1r','asdf asdf','','',NULL,NULL,'1','2018-10-28 20:08:45',NULL,'',''),('YS-0004','传友','男','测试','技术部','技术工程师',NULL,'10086','','YS-0004.jpg',NULL,NULL,'1','2018-12-09 23:05:28',NULL,'',''),('YS-0005','杜春生','男','上海浦东','技术部','网站管理员','21331','13801857475','本科','YS-0005.jpg','2018-11-13 00:00:00','jarek@99sykj.com','1','2018-12-10 23:06:59','无','A','1'),('YS-0006','胡歌','男','上海市徐汇区','研发部','技术工程师','021-85258122','13651199390','本科以上','/statics/pic/20181110/3b87e950352ac65c0c2f6ebffcf2b21192138ad7.jpg','2017-01-05 00:00:00','123456@126.com','1','2018-11-10 10:10:15','1996年，14岁的胡歌便成为上海教育电视台的小主持人，2005年毕业于上海戏剧学院表演系，同年在仙侠剧《仙剑奇侠传》中塑造了“李逍遥”一角，并演唱该剧插曲《六月的雨》《逍遥叹》。','A','2'),('YS-0010','王学圻','男','北京市东城区夏普路583号','运营部','销售工程师','010-88268923','13572527071','本科','/statics/pic/20181110/7e3e6709c93d70cf40ecdfeafcdcd100bba12bc6.jpg','2014-11-04 00:00:00','1233@126.com','1','2018-11-10 12:07:16','学圻1946年出生在北京。1963年来到长春7311部队当兵，返城后当过工人。\n早期剧照\n早期剧照(11张)\n八一厂导演王苹的一部《我们都是八路军》把他带上电影之路，随后考入空政话剧团。在话剧《九·一三》中扮演一个80岁的捡破烂儿的老头使他走出了配角，之后主演了话剧《远云和近云》、《凯旋在子夜》、《十五的月亮》等。','B','1'),('YS-0011','11','男','瓦房店市','运营部','网站管理员','123213','10086','本科以上','','2018-11-08 00:00:00','jarek@99sykj.com','1','2018-11-10 15:58:21',NULL,'C','1'),('YS-0050','吴双','男','到定时','销售一部','客户经理','233213','10086','本科以上','','2018-11-01 00:00:00',NULL,'1','2018-12-27 22:13:10',NULL,'C','1'),('YS-0052','乔布斯','男','美国纽约','销售二部','技术工程师','3434343','3434343','本科以上','YS-0005.jpg','2018-11-16 00:00:00','3432432','1','2018-12-27 22:13:24','423432432','B','2'),('YS-0053','俞宏南','男','上海市徐汇区漕宝路','管理部','部门经理',NULL,'13201809800','','',NULL,NULL,'1','2018-11-16 22:30:32',NULL,'',''),('YS-0054','曹金明','男','上海市漕宝路','销售一部','部门经理',NULL,'13541293333','','',NULL,NULL,'1','2018-12-28 00:16:15',NULL,'',''),('YS-0055','姚颖攀','男','沪闵路2242弄76号101','销售部','销售工程师',NULL,'18771844488','','',NULL,NULL,'1','2018-11-16 22:35:27',NULL,'',''),('YS-0056','陈杰','男','徐汇区平福路园南三村17号402室','技术部','技术工程师',NULL,'15014311111','','',NULL,NULL,'1','2018-11-16 22:36:47',NULL,'',''),('YS-0057','顾春华','男','宝山区长江路406弄74号301室','工程部','技术工程师','','13997700000','','',NULL,NULL,'1','2018-11-16 22:38:56',NULL,'',''),('YS-0058','马云','男','萨达','销售一部','销售工程师','阿萨德','123213213','','YS-0058.jpg',NULL,NULL,'1','2019-01-02 21:15:16',NULL,'',''),('YS-0060','xxxxx','男','xxxx','研发部','技术工程师','xx','xx','','/statics/pic/20181125/1c68689e5ab74a6db277481552ea5601.jpg',NULL,NULL,'1','2018-11-22 22:46:18',NULL,'B','1'),('YS-0061','汪峰','男','鲍家街42号','产品部','客户经理','021-88255288','15821084912','本科以上','YS-0005.jpg','2018-10-31 00:00:00','0121@126.com','1','2018-11-25 22:38:36','这里是备注','B','1'),('YS-0062','张雨生','男','在那遥远的地方','综合部','技术工程师','021-03332','15821084912','本科以上','YS-0062.jpg','2018-11-08 00:00:00','334@126.com','1','2018-12-09 23:04:53','https://minip.51wangjia.com:1443/yscrms-web','C','2'),('YS-0063','鲁迅','男','在哪里呢','管理部','客户经理','021-0022','15821084912','本科以上','/statics/pic/20181125/78310a55b319ebc42fba1f338a26cffc1f17165d.jpg','2018-08-28 00:00:00','0122@126.com','1','2018-11-25 23:44:12','鲁迅（1881年9月25日－1936年10月19日），原名周樟寿，后改名周树人，字豫山，后改豫才，“鲁迅”是他1918年发表《狂人日记》时所用的笔名，也是他影响最为广泛的笔名，浙江绍兴人。著名文学家、思想家，五四新文化运动的重要参与者，中国现代文学的奠基人。毛泽东曾评价：“鲁迅的方向，就是中华民族新文化的方向。”\n鲁迅一生在文学创作、文学批评、思想研究、文学史研究、翻译、美术理论引进、基础科学介绍和古籍校勘与研究等多个领域具有重大贡献。他对于五四运动以后的中国社会思想文化发展具有重大影响，蜚声世界文坛，尤其在韩国、日本思想文化领域有极其重要的地位和影响，被誉为“二十世纪东亚文化地图上占最大领土的作家”。 [7-9]\n','A','2'),('YS-0064','技术主管','女','测试地址','研发部','技术主管',NULL,'13500000009','本科','',NULL,NULL,'1','2018-11-29 22:56:25',NULL,'C','2'),('YS-0065','VIP管理','男','撒旦','总部','网站管理员','324324','324324','','/statics/pic/20181202/是双数.png',NULL,NULL,'1','2018-12-01 11:10:35',NULL,'',''),('YS-0066','测试部门','女','一二三','销售部','技术工程师',NULL,'123456777','','',NULL,NULL,'1','2018-12-02 17:07:41',NULL,'',''),('YS-0071','离职','男','离职','管理部','客户经理','43535','435435','','',NULL,NULL,'0','2018-12-09 22:04:52',NULL,'',''),('YS-0072','xueyu990124','男','测试帐号地址','技术部','技术工程师',NULL,'13000000011','','',NULL,NULL,'1','2018-12-10 11:34:07',NULL,'',''),('YS-0073','jaychen1979','男','测试帐号地址','技术部','技术工程师',NULL,'13000000012','','',NULL,NULL,'1','2018-12-10 11:35:28',NULL,'',''),('YS-0074','gu12310827','男','测试帐号地址','技术部','技术工程师',NULL,'13000000013','','',NULL,NULL,'1','2018-12-10 11:36:50',NULL,'',''),('YS-0075','yao805815806','男','测试帐号地址','销售部','销售工程师',NULL,'13000000014','','',NULL,NULL,'1','2018-12-10 11:37:29',NULL,'',''),('YS-0078','wwedy','女','上海','技术部','技术工程师',NULL,'1344555555','','',NULL,NULL,'1','2019-01-06 12:07:16',NULL,'',''),('YS-0079','相勉于道','男','萨达','总部','客户经理','123','1232133','本科','',NULL,NULL,'1','2018-12-14 18:01:40',NULL,'',''),('YS-0080','rule chen','男','问问','总部','技术主管',NULL,'234324','','',NULL,NULL,'1','2018-12-14 18:02:39',NULL,'',''),('YS-0081','hy','男','hy','总部','部门经理',NULL,'24342','本科','',NULL,NULL,'1','2018-12-14 18:03:43',NULL,'',''),('YS-0082','杨聪','男','杨聪','总部','技术主管',NULL,'32424','','',NULL,NULL,'1','2018-12-14 18:04:41',NULL,'',''),('YS-0083','张斌','男','张斌','总部','客户经理',NULL,'24234','','',NULL,NULL,'1','2018-12-14 18:05:40',NULL,'',''),('YS-0084','caixia','男','caixia','总部','客户经理',NULL,'234','','',NULL,NULL,'1','2018-12-14 18:06:29',NULL,'','');
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
-- Table structure for table `tb_third_bind`
--

DROP TABLE IF EXISTS `tb_third_bind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_third_bind` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `bind_id` varchar(50) NOT NULL COMMENT '第三方绑定id',
  `type` int(5) DEFAULT '0' COMMENT '类型，1：微信',
  `last_login_time` timestamp NULL DEFAULT NULL COMMENT '上次登录时间',
  `last_login_ip` varchar(15) DEFAULT NULL COMMENT '上次登录ip',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态，0：已解绑；1：已绑定',
  `wx_nickname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '微信昵称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='第三方账号绑定关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_third_bind`
--

LOCK TABLES `tb_third_bind` WRITE;
/*!40000 ALTER TABLE `tb_third_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_third_bind` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8063 DEFAULT CHARSET=utf8 COMMENT='服务咨询记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `technician_service`
--

LOCK TABLES `technician_service` WRITE;
/*!40000 ALTER TABLE `technician_service` DISABLE KEYS */;
INSERT INTO `technician_service` VALUES (9,'29','1','电话咨询','test','test','2011-04-16 15:27:37','2011-04-16 15:27:49'),(10,'854','33','远程服务','磁带机周备份/\r\n瞿时吉电脑的MSN不能用，报税软件下载页面打不开，打电话到客服，告知是网站问题/\r\n设置程洁的手机邮箱，己开通/','完成','2011-05-20 00:00:00','2011-06-08 09:09:29'),(11,'707','33','驻点服务','无线网很慢，检测有人在下载，己告知后禁止大流量下载/\r\n吴雨生的电脑不能开机，硬盘坏，己报修DELL，转移硬盘数据/\r\n他库的条码机不能登陆，重启服务/\r\n3From刘晶俞俭的手机设置PUSHMAIL/\r\n李岩的电脑无线网络不能用域控制器断开，重新加域，安装无线驱动/\r\n新增了四个手机邮箱用户，发传真给移动/\r\n徐小丽离职，邮件转给邵秀丽，发OIT','完成','2011-05-23 00:00:00','2011-06-08 09:10:49'),(12,'707','33','驻点服务','C335-DELL-V13电脑移交给李美容，鼠标一个/\r\n吴雨生的电脑硬盘更换，转移数据到新电脑，系统备份。/\r\n王丹的手机邮件绑定，开通激活/','完成','2011-05-24 00:00:00','2011-06-08 09:11:42'),(13,'707','33','驻点服务','钱晓伟的电脑打印机安装，邮箱不能收邮件，为网络延迟引起/\r\n陈英的无线网络连不上，在DHCP服务器上修复IP地址解决/\r\n磁带机备分/','完成','2011-05-25 00:00:00','2011-06-08 09:12:41'),(14,'707','33','驻点服务','朱伟伟的换到徐小丽的位置上，电脑资料整理理，帐号权限更换/\r\n新到四台电脑，安装软件，新电脑送过来时，己感染病毒，系统全面杀毒。','完成','2011-05-26 00:00:00','2011-06-08 09:15:28'),(15,'707','33','驻点服务','冷经理的电脑设置拨号上网，回家使用/\r\n杨秀的电脑安装IPHONE 4的软件/\r\n做公司代理商年会的准备工作，/\r\n瞿时吉的新电脑安装软件，配置工作环境/\r\n胡斌的手机设手机设置OUTLOOK POP3方式收邮件/\r\n钟平的电脑添加HP2015打印机/','完成','2011-06-02 00:00:00','2011-06-08 09:17:19'),(16,'707','33','驻点服务','去酒店布置展馆，调试设备','完成','2011-06-03 00:00:00','2011-06-08 09:18:16'),(17,'707','33','驻点服务','去酒店布置展馆，调试设备','完成','2011-06-04 00:00:00','2011-06-08 09:18:52'),(18,'707','33','驻点服务','代理商年会，加班','完成','2011-06-05 00:00:00','2011-06-08 09:19:26'),(19,'707','33','驻点服务','新电脑C414移交给熊喻/\r\n新电脑C416移交给吴雨生，转移他的资料100G文件/\r\n手机邮箱无法下载附件，打电话给移动/\r\n朱伟伟职位变动，台式电脑更换，资料转移，共享文件夹的权限配置/\r\n吴雨生的手机邮箱设置/\r\n熊喻的旧电脑归还/','完成','2011-06-07 00:00:00','2011-06-08 09:20:12'),(20,'684','26','驻点服务','市场部查看监控录相。\r\n工程部一台电脑安装CAD，PPT等软件。','已解决。','2011-06-01 12:51:29','2011-06-08 12:51:28');
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

-- Dump completed on 2019-03-16 22:20:50
