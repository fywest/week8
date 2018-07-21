-- MySQL dump 10.13  Distrib 5.7.20, for Win64 (x86_64)
--
-- Host: localhost    Database: simpledu
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
INSERT INTO `alembic_version` VALUES ('fc7f7d003725');
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chapter`
--

DROP TABLE IF EXISTS `chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chapter` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `video_url` varchar(256) DEFAULT NULL,
  `video_duration` varchar(24) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_chapter_name` (`name`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `chapter_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chapter`
--

LOCK TABLES `chapter` WRITE;
/*!40000 ALTER TABLE `chapter` DISABLE KEYS */;
INSERT INTO `chapter` VALUES ('2018-07-14 06:54:10','2018-07-15 08:48:50',1,'Trial answer tell.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','18:51',NULL),('2018-07-14 06:54:10','2018-07-15 08:48:50',2,'Question the interest federal price scene.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','14:49',NULL),('2018-07-14 06:54:10','2018-07-15 08:48:50',3,'Evidence mouth card father.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','30:27',NULL),('2018-07-14 06:54:10','2018-07-15 08:48:50',4,'Technology billion before very.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','21:15',NULL),('2018-07-14 06:54:10','2018-07-15 08:48:50',5,'Knowledge challenge ask successful several effect.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','19:24',NULL),('2018-07-14 06:54:10','2018-07-15 08:48:50',6,'Through population move kitchen benefit.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','25:45',NULL),('2018-07-14 06:54:10','2018-07-15 08:48:50',7,'Agreement employee federal yet production.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','25:24',NULL),('2018-07-14 06:54:10','2018-07-15 08:58:39',8,'Her cost concern attorney happen.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','19:45',NULL),('2018-07-14 06:54:10','2018-07-15 08:58:39',9,'Mr baby develop.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','16:22',NULL),('2018-07-14 06:54:10','2018-07-15 08:58:39',10,'Door finish camera few choose brother.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','21:24',NULL),('2018-07-14 06:54:10','2018-07-15 08:58:39',11,'Develop seat imagine want say score different.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','24:19',NULL),('2018-07-14 06:54:10','2018-07-15 08:58:39',12,'Night onto participant black speak population adult media.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','14:46',NULL),('2018-07-14 06:54:10','2018-07-14 06:54:10',13,'Himself party happy.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','12:30',3),('2018-07-14 06:54:10','2018-07-14 06:54:10',14,'Here lawyer trip rather.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','30:10',3),('2018-07-14 06:54:10','2018-07-14 06:54:10',15,'Next likely there say memory common travel.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','28:13',3),('2018-07-14 06:54:10','2018-07-14 06:54:10',16,'Still lay government boy century source.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','30:44',3),('2018-07-14 06:54:10','2018-07-14 06:54:10',17,'Tv allow mind treat name skin under hotel.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','30:56',3),('2018-07-14 06:54:10','2018-07-14 06:54:10',18,'Happy third do environmental teach box.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','26:49',3),('2018-07-14 06:54:10','2018-07-14 06:54:10',19,'Yourself past newspaper already choice begin pull hotel.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','16:28',4),('2018-07-14 06:54:10','2018-07-14 06:54:10',20,'Up important none court could somebody public.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','17:59',4),('2018-07-14 06:54:10','2018-07-14 06:54:10',21,'Book especially station degree.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','24:20',4),('2018-07-14 06:54:10','2018-07-14 06:54:10',22,'Voice appear stage position certain.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','24:43',4),('2018-07-14 06:54:10','2018-07-14 06:54:10',23,'Hair beat maybe study.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','20:25',4),('2018-07-14 06:54:10','2018-07-14 06:54:10',24,'Spend series top need.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','22:26',4),('2018-07-14 06:54:10','2018-07-14 06:54:10',25,'Performance paper customer my culture.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','10:37',5),('2018-07-14 06:54:10','2018-07-14 06:54:10',26,'Effort pretty country economic question form eight.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','20:35',5),('2018-07-14 06:54:10','2018-07-14 06:54:10',27,'Shoulder beyond career game employee.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','30:55',5),('2018-07-14 06:54:10','2018-07-14 06:54:10',28,'Response might report investment arm head.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','26:40',5),('2018-07-14 06:54:10','2018-07-14 06:54:10',29,'Student your number care still main amount.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','14:48',5),('2018-07-14 06:54:10','2018-07-14 06:54:10',30,'Month nothing like population seek say road.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','22:54',5),('2018-07-14 06:54:10','2018-07-14 06:54:10',31,'Statement traditional time reach should figure.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','18:36',5),('2018-07-14 06:54:10','2018-07-14 06:54:10',32,'Effect either four condition media trouble.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','28:50',5),('2018-07-14 06:54:10','2018-07-14 06:54:10',33,'Teach available how anything.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','29:12',5),('2018-07-14 06:54:10','2018-07-14 06:54:10',34,'Same debate phone quality.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','30:27',5),('2018-07-14 06:54:10','2018-07-14 06:54:10',35,'Firm simple medical security another listen another.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','23:58',6),('2018-07-14 06:54:10','2018-07-14 06:54:10',36,'No nearly man involve very.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','17:20',6),('2018-07-14 06:54:10','2018-07-14 06:54:10',37,'South example crime alone somebody.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','13:11',6),('2018-07-14 06:54:10','2018-07-14 06:54:10',38,'Certain begin natural mission anything source.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','16:34',6),('2018-07-14 06:54:10','2018-07-14 06:54:10',39,'Modern expert another little.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','10:14',6),('2018-07-14 06:54:10','2018-07-14 06:54:10',40,'Truth fear box think.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','19:55',6),('2018-07-14 06:54:10','2018-07-14 06:54:10',41,'Drug security situation human.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','23:13',6),('2018-07-14 06:54:10','2018-07-14 06:54:10',42,'Nice pretty effort thus present help.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','16:26',6),('2018-07-14 06:54:10','2018-07-14 06:54:10',43,'Experience indeed project event.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','29:53',6),('2018-07-14 06:54:10','2018-07-14 06:54:10',44,'Around pick especially major always south bring middle.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','23:44',7),('2018-07-14 06:54:10','2018-07-14 06:54:10',45,'Anyone result fear seek people source.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','15:42',7),('2018-07-14 06:54:10','2018-07-14 06:54:10',46,'Should measure likely view hospital entire.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','17:27',7),('2018-07-14 06:54:10','2018-07-14 06:54:10',47,'Really prepare activity idea school stand.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','30:37',7),('2018-07-14 06:54:10','2018-07-14 06:54:10',48,'Natural clear wide room middle possible politics parent.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','13:29',7),('2018-07-14 06:54:10','2018-07-14 06:54:10',49,'Learn throw hair or teacher challenge.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','29:14',7),('2018-07-14 06:54:10','2018-07-14 06:54:10',50,'Leg form Republican.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','22:50',7),('2018-07-14 06:54:10','2018-07-14 06:54:10',51,'Lose shoulder at situation.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','12:25',8),('2018-07-14 06:54:10','2018-07-14 06:54:10',52,'Window paper organization American.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','24:18',8),('2018-07-14 06:54:10','2018-07-14 06:54:10',53,'Its power bed wide develop support attorney.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','13:24',8),('2018-07-14 06:54:10','2018-07-14 06:54:10',54,'View must provide catch teach same natural.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','10:53',8),('2018-07-14 06:54:10','2018-07-14 06:54:10',55,'Rather wish how all relate perform color charge.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','12:20',8),('2018-07-14 06:54:10','2018-07-14 06:54:10',56,'Want economy however house various.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','29:51',8),('2018-07-14 06:54:10','2018-07-14 06:54:10',57,'Want purpose particular.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','19:31',8),('2018-07-14 06:54:10','2018-07-14 06:54:10',58,'Feeling expect audience too necessary although.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','24:31',8),('2018-07-14 06:54:10','2018-07-14 06:54:10',59,'Quality politics happy themselves although site natural agency.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','27:45',9),('2018-07-14 06:54:10','2018-07-14 06:54:10',60,'Small garden black as near.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','25:47',9),('2018-07-14 06:54:10','2018-07-14 06:54:10',61,'Degree soon deep other any debate act.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','22:41',9),('2018-07-14 06:54:10','2018-07-14 06:54:10',62,'Whole degree possible property result rest this.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','17:43',9),('2018-07-14 06:54:10','2018-07-14 06:54:10',63,'Throw page deep technology check.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','13:55',9),('2018-07-14 06:54:10','2018-07-14 06:54:10',64,'Believe fly opportunity save my.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','24:54',10),('2018-07-14 06:54:10','2018-07-14 06:54:10',65,'Business shake field speech place early weight.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','10:17',10),('2018-07-14 06:54:10','2018-07-14 06:54:10',66,'Decision similar yeah yard look.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','12:24',10),('2018-07-14 06:54:10','2018-07-14 06:54:10',67,'Bar per born art.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','15:52',10),('2018-07-14 06:54:10','2018-07-14 06:54:10',68,'Herself walk dog end join street experience.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','25:37',10),('2018-07-14 06:54:10','2018-07-14 06:54:10',69,'Be event care information American.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','22:46',10),('2018-07-14 06:54:10','2018-07-14 06:54:10',70,'In member join chance daughter.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','24:42',10),('2018-07-14 06:54:10','2018-07-14 06:54:10',71,'Seem finally lay inside.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','16:48',11),('2018-07-14 06:54:10','2018-07-14 06:54:10',72,'Institution bed president heavy stand.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','15:35',11),('2018-07-14 06:54:10','2018-07-14 06:54:10',73,'Open team scene onto.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','23:15',11),('2018-07-14 06:54:10','2018-07-14 06:54:10',74,'Page figure present political early food per those.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','28:19',11),('2018-07-14 06:54:10','2018-07-14 06:54:10',75,'According property particular break.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','22:32',11),('2018-07-14 06:54:10','2018-07-14 06:54:10',76,'Conference majority peace time.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','27:43',12),('2018-07-14 06:54:10','2018-07-14 06:54:10',77,'Lot everything tax evidence truth.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','12:22',12),('2018-07-14 06:54:10','2018-07-14 06:54:10',78,'Keep change memory husband something special.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','16:17',12),('2018-07-14 06:54:10','2018-07-14 06:54:10',79,'Tell step east we manager force peace whose.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','21:21',12),('2018-07-14 06:54:10','2018-07-14 06:54:10',80,'Within probably stage officer future provide take.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','15:14',12),('2018-07-14 06:54:10','2018-07-14 06:54:10',81,'Population camera yeah deal glass no.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','18:18',12),('2018-07-14 06:54:10','2018-07-14 06:54:10',82,'Similar home cup size.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','28:22',12),('2018-07-14 06:54:10','2018-07-14 06:54:10',83,'Form himself ability lot around fine.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','16:46',12),('2018-07-14 06:54:10','2018-07-14 06:54:10',84,'Break miss head gas.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','29:13',13),('2018-07-14 06:54:10','2018-07-14 06:54:10',85,'Tv about writer page wait wonder.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','17:52',13),('2018-07-14 06:54:10','2018-07-14 06:54:10',86,'Idea clear maybe air clearly when himself.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','11:38',13),('2018-07-14 06:54:10','2018-07-14 06:54:10',87,'Seek sister since nice future.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','14:49',13),('2018-07-14 06:54:10','2018-07-14 06:54:10',88,'Of church situation himself career.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','28:58',13),('2018-07-14 06:54:10','2018-07-14 06:54:10',89,'Science area base three a quickly.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','26:45',13),('2018-07-14 06:54:10','2018-07-14 06:54:10',90,'Record open recent entire medical organization week.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','10:40',13),('2018-07-14 06:54:10','2018-07-14 06:54:10',91,'Paper sort born plan lose hand.',NULL,'https://labfile.oss.aliyuncs.com/courses/923/week2_mp4/2-1-1-mac.mp4','16:44',13);
/*!40000 ALTER TABLE `chapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `image_url` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_course_name` (`name`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `course_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('2018-07-14 06:54:10','2018-07-14 06:54:10',3,'Python 数据分析入门与进阶',1,'在本训练营中，我们将学习怎么样使用 Python 进行数据分析。课程将从数据分析基础开始，一步步深入讲解。从 Python 的基础用法到数据分析的各种算法，并结合各种实例，讲解数据分析过程中的方方面面。','https://dn-simplecloud.shiyanlou.com/1500540246877.png'),('2018-07-14 06:54:10','2018-07-14 06:54:10',4,'kafka代码实战--让你全面学习Kafka',1,'本训练营目标是以Java代码实战的方式学习Kafka。包括Kafka的安装配置、Producer API的使用、Consumer API的使用以及与第三方框架(Flume、Spark Streaming)的集成开发。对在大数据项目中经常用到的Kafka关键知识点，进行全方位、源代码级别的学习，使学员深入理解Kafka的内部机制。','https://dn-simplecloud.shiyanlou.com/1501141776189.png'),('2018-07-14 06:54:10','2018-07-14 06:54:10',5,'通过代码审计学习Web安全',1,'本训练营将分为四个部分，第一部分介绍了代码审计思路以及几个比较基础的Web漏洞审计实例，比如Sql注入、XSS、CSRF。第二部份更进一步介绍了Web相关漏洞，比如文件类的Web漏洞。第三部分介绍一些比较深入的Web漏洞，比如会话认证漏洞。第四部则介绍了代码审计工具的使用以及对课程的总结。','https://dn-simplecloud.shiyanlou.com/1505193911140.png'),('2018-07-14 06:54:10','2018-07-14 06:54:10',6,'Vue.js实现富文本编辑器',1,'本训练营项目是使用Vue.js实现一个简易的富文本编辑器应用。通过本项目的实战学习，你将获得以下技能：Vue.js框架进阶学习，数据绑定操作，组件式开发。','https://dn-simplecloud.shiyanlou.com/1501207033286.png'),('2018-07-14 06:54:10','2018-07-14 06:54:10',7,'Python 实现轻量级 Web 框架',1,'本训练营目标是使用 Python 实现一个 Web 框架，涉及一个 Web 框架 的必备模块的设计到实现，包含 数据库模块，会话模块，异常处理模块，WSGI 模块，模版引擎模块，路由模块，视图模块，辅助模块。最后再使用实现的框架开发一个 Web 应用程序来加深对 Web 框架 的理解和使用 Web 框架的开发流程。','https://dn-simplecloud.shiyanlou.com/1500460827398.png'),('2018-07-14 06:54:10','2018-07-14 06:54:10',8,'Vue.js+Koa.js+MongoDB打造“什么值得买”网站',1,'本训练营使用 Vue.js+Koa.js+MongoDB 实现一个类似于“什么值得买”的网站。前端页面使用 Vue.js 实现，主要学习 Vue.js 技术栈的使用，主要使用 vue+vue-router+vuex 等技术。服务器端使用 Node.js 实现的一个 web 框架 Koa.js，主要学习基于 Koa.js 的 Web 开发。同时使用 MongoDB 做数据存储。实现的功能模块主要有：用户管理、商品分类管理、商品标签管理、商品管理等。','https://dn-simplecloud.shiyanlou.com/1500536107318.png'),('2018-07-14 06:54:10','2018-07-14 06:54:10',9,'React+Express+MongoDB 实现网易云音乐',1,'本训练营目标是使用 React 实现一个 网易云音乐，涉及一个 React 的完整项目设计到实现，包含 前端界面模块，Node模块，MongoDB模块，前端界面模块包含React组件开发，React-Router路由配置，Redux状态管理。通过一个涉及前端+后端的完整项目经历深入了解项目流程，同时锻炼对React全家桶的熟练度。','https://dn-simplecloud.shiyanlou.com/1500519319376.png'),('2018-07-14 06:54:10','2018-07-14 06:54:10',10,'动手实战学Docker',1,'14个实验带你体验Docker容器技术魅力，最快的上手教程，最新的技术领域，最多的动手实践。在线实验学习Docker，DockerFile，Compose，Swarm，Kubernate等技术。','https://dn-simplecloud.shiyanlou.com/course/1527225988288_【498】-【动手实战学Docke】.png'),('2018-07-14 06:54:10','2018-07-14 06:54:10',11,'Spark 大数据动手实验',1,'9个实验带你亲身体验Spark大数据分析的魅力，最快的上手教程，最新的技术领域，最多的动手实践。','https://dn-simplecloud.shiyanlou.com/course/1527225963000_【456】-【Spark大数据动手实验】(1).png'),('2018-07-14 06:54:10','2018-07-14 06:54:10',12,'由浅入深学网络',1,'使用GNS3仿真模拟工具由浅入深的学习网络技术，通过16个精心设计的实验内容，让你在动手实践的过程中逐步掌握交换与路由的 VLAN、STP、OSPF、DMVPN 等技术，最终让你能够独立实现一个中大型网络规划。','https://dn-simplecloud.shiyanlou.com/1477036012629.png'),('2018-07-14 06:54:10','2018-07-14 06:54:10',13,'【训练营】深度学习初探——入门DL主流框架',1,'本课程将通过8个实验，带领同学们入门TensorFlow、Theano、Keras 及 Caffe 几个主流的深度学习框架，通过项目实践使同学了解如何利用这些框架搭建自己的深度学习神经网络。课程将基于每个框架的官方文档，先带大家熟悉框架中基本的定义语法及常用函数（可看成 深度模型的小零件），并在每个实验内容的最后都会综合这些零件搭建一个简易的神经深度网络模型。十分适合具有一定python编程基础，对人工智能、深度学习感兴趣的同学。','https://dn-simplecloud.shiyanlou.com/1484966112805.png?imageView2/0/h/300');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live`
--

DROP TABLE IF EXISTS `live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_live_name` (`name`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `live_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live`
--

LOCK TABLES `live` WRITE;
/*!40000 ALTER TABLE `live` DISABLE KEYS */;
INSERT INTO `live` VALUES ('2018-07-21 09:09:24','2018-07-21 09:09:24',1,'shiyanloulivetest',3);
/*!40000 ALTER TABLE `live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role` smallint(6) DEFAULT NULL,
  `job` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_user_email` (`email`),
  UNIQUE KEY `ix_user_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('2018-07-14 06:54:10','2018-07-14 06:54:10',1,'Jack Lee','jacklee@example.com','pbkdf2:sha256:50000$QTR2WtmV$dbf3a3c005b991c9277f8cf3cd88f08c6454a361b1f43b1c3e3f78519b4738b3',30,'研发工程师'),('2018-07-15 01:43:22','2018-07-15 01:43:22',2,'fywest','fywest2109@hotmail.com','pbkdf2:sha256:50000$UMtE788n$06a795285467087125a92a498c8f97ccf721bedf8e77be5a4706dfdc872807b1',30,NULL),('2018-07-21 08:25:54','2018-07-21 08:25:54',3,'admin','admin@shiyanlou.com','pbkdf2:sha256:50000$l57XveBz$bb8c95c0e638bc788782b4e9c152238a0e633c70d556803800f0355de0d29a37',30,NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-21 12:39:55
