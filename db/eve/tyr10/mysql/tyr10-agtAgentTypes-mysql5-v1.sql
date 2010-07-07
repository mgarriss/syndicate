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
-- Table structure for table `agtAgentTypes`
--

DROP TABLE IF EXISTS `agtAgentTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agtAgentTypes` (
  `agentTypeID` tinyint(3) unsigned NOT NULL,
  `agentType` varchar(50) default NULL,
  PRIMARY KEY  (`agentTypeID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agtAgentTypes`
--

LOCK TABLES `agtAgentTypes` WRITE;
/*!40000 ALTER TABLE `agtAgentTypes` DISABLE KEYS */;
INSERT INTO `agtAgentTypes` VALUES (1,'NonAgent');
INSERT INTO `agtAgentTypes` VALUES (2,'BasicAgent');
INSERT INTO `agtAgentTypes` VALUES (3,'TutorialAgent');
INSERT INTO `agtAgentTypes` VALUES (4,'ResearchAgent');
INSERT INTO `agtAgentTypes` VALUES (5,'CONCORDAgent');
INSERT INTO `agtAgentTypes` VALUES (6,'GenericStorylineMissionAgent');
INSERT INTO `agtAgentTypes` VALUES (7,'StorylineMissionAgent');
INSERT INTO `agtAgentTypes` VALUES (8,'EventMissionAgent');
INSERT INTO `agtAgentTypes` VALUES (9,'FactionalWarfareAgent');
INSERT INTO `agtAgentTypes` VALUES (10,'EpicArcAgent');
/*!40000 ALTER TABLE `agtAgentTypes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2010-05-26 22:35:08
