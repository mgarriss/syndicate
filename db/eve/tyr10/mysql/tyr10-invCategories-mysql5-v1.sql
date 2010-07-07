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
-- Table structure for table `invCategories`
--

DROP TABLE IF EXISTS `invCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invCategories` (
  `categoryID` tinyint(3) unsigned NOT NULL,
  `categoryName` varchar(100) default NULL,
  `description` varchar(3000) default NULL,
  `graphicID` smallint(6) default NULL,
  `published` tinyint(1) default NULL,
  PRIMARY KEY  (`categoryID`),
  KEY `graphicID` (`graphicID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invCategories`
--

LOCK TABLES `invCategories` WRITE;
/*!40000 ALTER TABLE `invCategories` DISABLE KEYS */;
INSERT INTO `invCategories` VALUES (0,'#System','',NULL,0);
INSERT INTO `invCategories` VALUES (1,'Owner','',1,0);
INSERT INTO `invCategories` VALUES (2,'Celestial','',6,1);
INSERT INTO `invCategories` VALUES (3,'Station','',17,0);
INSERT INTO `invCategories` VALUES (4,'Material','',399,1);
INSERT INTO `invCategories` VALUES (5,'Accessories','',33,1);
INSERT INTO `invCategories` VALUES (6,'Ship','',38,1);
INSERT INTO `invCategories` VALUES (7,'Module','',67,1);
INSERT INTO `invCategories` VALUES (8,'Charge','',171,1);
INSERT INTO `invCategories` VALUES (9,'Blueprint','',194,1);
INSERT INTO `invCategories` VALUES (10,'Trading','',195,0);
INSERT INTO `invCategories` VALUES (11,'Entity','',NULL,0);
INSERT INTO `invCategories` VALUES (14,'Bonus','Character creation bonuses. Like innate skills but genetic rather than learned.',0,0);
INSERT INTO `invCategories` VALUES (16,'Skill','Where all the skills go under.',33,1);
INSERT INTO `invCategories` VALUES (17,'Commodity','',0,1);
INSERT INTO `invCategories` VALUES (18,'Drone','Player owned and controlled drones.',0,1);
INSERT INTO `invCategories` VALUES (20,'Implant','Implant',0,1);
INSERT INTO `invCategories` VALUES (22,'Deployable','',0,1);
INSERT INTO `invCategories` VALUES (23,'Structure','Player owned structure related objects',0,1);
INSERT INTO `invCategories` VALUES (24,'Reaction','',0,1);
INSERT INTO `invCategories` VALUES (25,'Asteroid','',NULL,1);
INSERT INTO `invCategories` VALUES (26,'Interiors','Station Interiors, such as rooms and promenades.',NULL,0);
INSERT INTO `invCategories` VALUES (27,'Placeables','Objects that can be fitted inside interiors for practical and decorative purposes',NULL,0);
INSERT INTO `invCategories` VALUES (29,'Abstract','Abstract grouping, global types and groups for the UI, such as Ranks, Ribbons and Medals.',NULL,0);
INSERT INTO `invCategories` VALUES (32,'Subsystem','Subsystems for tech 3 ships',NULL,1);
INSERT INTO `invCategories` VALUES (34,'Ancient Relics','',NULL,1);
INSERT INTO `invCategories` VALUES (35,'Decryptors','',NULL,1);
INSERT INTO `invCategories` VALUES (39,'Infrastructure Upgrades','',NULL,1);
INSERT INTO `invCategories` VALUES (40,'Sovereignty Structures','',NULL,1);
INSERT INTO `invCategories` VALUES (41,'Planetary Interaction','Stuff for planetary interaction',NULL,0);
INSERT INTO `invCategories` VALUES (42,'Planetary Resources','These are Items that can be extracted from a planet. ',NULL,1);
INSERT INTO `invCategories` VALUES (43,'Planetary Commodities','',NULL,1);
/*!40000 ALTER TABLE `invCategories` ENABLE KEYS */;
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
