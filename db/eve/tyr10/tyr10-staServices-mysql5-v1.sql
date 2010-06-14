-- MySQL dump 10.11
--
-- Host: localhost    Database: mssql
-- ------------------------------------------------------
-- Server version	5.0.84

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
-- Table structure for table `staServices`
--

DROP TABLE IF EXISTS `staServices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staServices` (
  `serviceID` int(11) NOT NULL,
  `serviceName` varchar(100) default NULL,
  `description` varchar(1000) default NULL,
  PRIMARY KEY  (`serviceID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staServices`
--

LOCK TABLES `staServices` WRITE;
/*!40000 ALTER TABLE `staServices` DISABLE KEYS */;
INSERT INTO `staServices` VALUES (1,'Bounty Missions','');
INSERT INTO `staServices` VALUES (2,'Assassination Missions','');
INSERT INTO `staServices` VALUES (4,'Courier Missions','');
INSERT INTO `staServices` VALUES (8,'Interbus','');
INSERT INTO `staServices` VALUES (16,'Reprocessing Plant','');
INSERT INTO `staServices` VALUES (32,'Refinery','');
INSERT INTO `staServices` VALUES (64,'Market','');
INSERT INTO `staServices` VALUES (128,'Black Market','');
INSERT INTO `staServices` VALUES (256,'Stock Exchange','');
INSERT INTO `staServices` VALUES (512,'Cloning','');
INSERT INTO `staServices` VALUES (1024,'Surgery','');
INSERT INTO `staServices` VALUES (2048,'DNA Therapy','');
INSERT INTO `staServices` VALUES (4096,'Repair Facilities','');
INSERT INTO `staServices` VALUES (8192,'Factory','');
INSERT INTO `staServices` VALUES (16384,'Laboratory','');
INSERT INTO `staServices` VALUES (32768,'Gambling','');
INSERT INTO `staServices` VALUES (65536,'Fitting','');
INSERT INTO `staServices` VALUES (131072,'Paintshop','');
INSERT INTO `staServices` VALUES (262144,'News','');
INSERT INTO `staServices` VALUES (524288,'Storage','');
INSERT INTO `staServices` VALUES (1048576,'Insurance','Used to buy insurance for ships.');
INSERT INTO `staServices` VALUES (2097152,'Docking','');
INSERT INTO `staServices` VALUES (4194304,'Office Rental','');
INSERT INTO `staServices` VALUES (8388608,'Jump Clone Facility','');
INSERT INTO `staServices` VALUES (16777216,'Loyalty Point Store','');
INSERT INTO `staServices` VALUES (33554432,'Navy Offices','');
/*!40000 ALTER TABLE `staServices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-05-26 22:35:22
