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
-- Table structure for table `invMetaGroups`
--

DROP TABLE IF EXISTS `invMetaGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invMetaGroups` (
  `metaGroupID` smallint(6) NOT NULL,
  `metaGroupName` varchar(100) default NULL,
  `description` varchar(1000) default NULL,
  `graphicID` smallint(6) default NULL,
  PRIMARY KEY  (`metaGroupID`),
  KEY `graphicID` (`graphicID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invMetaGroups`
--

LOCK TABLES `invMetaGroups` WRITE;
/*!40000 ALTER TABLE `invMetaGroups` DISABLE KEYS */;
INSERT INTO `invMetaGroups` VALUES (1,'Tech I','',NULL);
INSERT INTO `invMetaGroups` VALUES (2,'Tech II','',NULL);
INSERT INTO `invMetaGroups` VALUES (3,'Storyline','',NULL);
INSERT INTO `invMetaGroups` VALUES (4,'Faction','',NULL);
INSERT INTO `invMetaGroups` VALUES (5,'Officer','',NULL);
INSERT INTO `invMetaGroups` VALUES (6,'Deadspace','Modules found in deadspace.',NULL);
INSERT INTO `invMetaGroups` VALUES (7,'Frigates','',NULL);
INSERT INTO `invMetaGroups` VALUES (8,'Elite Frigates','',NULL);
INSERT INTO `invMetaGroups` VALUES (9,'Commander Frigates','',NULL);
INSERT INTO `invMetaGroups` VALUES (10,'Destroyer','',NULL);
INSERT INTO `invMetaGroups` VALUES (11,'Cruiser','',NULL);
INSERT INTO `invMetaGroups` VALUES (12,'Elite Cruiser','',NULL);
INSERT INTO `invMetaGroups` VALUES (13,'Commander Cruiser','',NULL);
INSERT INTO `invMetaGroups` VALUES (14,'Tech III','',NULL);
/*!40000 ALTER TABLE `invMetaGroups` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-05-26 22:35:09
