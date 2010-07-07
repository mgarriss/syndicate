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
-- Table structure for table `eveUnits`
--

DROP TABLE IF EXISTS `eveUnits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eveUnits` (
  `unitID` tinyint(3) unsigned NOT NULL,
  `unitName` varchar(100) default NULL,
  `displayName` varchar(20) default NULL,
  `description` varchar(1000) default NULL,
  PRIMARY KEY  (`unitID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eveUnits`
--

LOCK TABLES `eveUnits` WRITE;
/*!40000 ALTER TABLE `eveUnits` DISABLE KEYS */;
INSERT INTO `eveUnits` VALUES (1,'Length','m','Meter');
INSERT INTO `eveUnits` VALUES (2,'Mass','kg','Kilogram');
INSERT INTO `eveUnits` VALUES (3,'Time','sec','Second');
INSERT INTO `eveUnits` VALUES (4,'Electric Current','A','Ampere');
INSERT INTO `eveUnits` VALUES (5,'Temperature','K','Kelvin');
INSERT INTO `eveUnits` VALUES (6,'Amount Of Substance','mol','Mole');
INSERT INTO `eveUnits` VALUES (7,'Luminous Intensity','cd','Candela');
INSERT INTO `eveUnits` VALUES (8,'Area','m2','Square meter');
INSERT INTO `eveUnits` VALUES (9,'Volume','m3','Cubic meter');
INSERT INTO `eveUnits` VALUES (10,'Speed','m/sec','Meter per second');
INSERT INTO `eveUnits` VALUES (11,'Acceleration','m/sec','Meter per second squared');
INSERT INTO `eveUnits` VALUES (12,'Wave Number','m-1','Reciprocal meter');
INSERT INTO `eveUnits` VALUES (13,'Mass Density','kg/m3','Kilogram per cubic meter');
INSERT INTO `eveUnits` VALUES (14,'Specific Volume','m3/kg','Cubic meter per kilogram');
INSERT INTO `eveUnits` VALUES (15,'Current Density','A/m2','Ampere per square meter');
INSERT INTO `eveUnits` VALUES (16,'Magnetic Field Strength','A/m','Ampere per meter');
INSERT INTO `eveUnits` VALUES (17,'Amount-Of-Substance Concentration','mol/m3','Mole per cubic meter');
INSERT INTO `eveUnits` VALUES (18,'Luminance','cd/m2','Candela per square meter');
INSERT INTO `eveUnits` VALUES (19,'Mass Fraction','kg/kg = 1','Kilogram per kilogram, which may be represented by the number 1');
INSERT INTO `eveUnits` VALUES (101,'Milliseconds','s','');
INSERT INTO `eveUnits` VALUES (102,'Millimeters','mm','');
INSERT INTO `eveUnits` VALUES (103,'MegaPascals','','');
INSERT INTO `eveUnits` VALUES (104,'Multiplier','x','Indicates that the unit is a multiplier.');
INSERT INTO `eveUnits` VALUES (105,'Percentage','%','');
INSERT INTO `eveUnits` VALUES (106,'Teraflops','tf','');
INSERT INTO `eveUnits` VALUES (107,'MegaWatts','MW','');
INSERT INTO `eveUnits` VALUES (108,'Inverse Absolute Percent','%','Used for resistance.\n0.0 = 100% 1.0 = 0%\n');
INSERT INTO `eveUnits` VALUES (109,'Modifier Percent','%','Used for multipliers displayed as %\n1.1 = +10%\n0.9 = -10%');
INSERT INTO `eveUnits` VALUES (111,'Inversed Modifier Percent','%','Used to modify damage resistance. Damage resistance bonus.\n0.1 = 90%\n0.9 = 10%');
INSERT INTO `eveUnits` VALUES (112,'Radians/Second','rad/sec','Rotation speed.');
INSERT INTO `eveUnits` VALUES (113,'Hitpoints','HP','');
INSERT INTO `eveUnits` VALUES (114,'capacitor units','GJ','Giga Joule');
INSERT INTO `eveUnits` VALUES (115,'groupID','groupID','');
INSERT INTO `eveUnits` VALUES (116,'typeID','typeID','');
INSERT INTO `eveUnits` VALUES (117,'Sizeclass','1=small 2=medium 3=l','');
INSERT INTO `eveUnits` VALUES (118,'Ore units','Ore units','');
INSERT INTO `eveUnits` VALUES (119,'attributeID','attributeID','');
INSERT INTO `eveUnits` VALUES (120,'attributePoints','points','');
INSERT INTO `eveUnits` VALUES (121,'realPercent','%','Used for real percentages, i.e. the number 5 is 5%');
INSERT INTO `eveUnits` VALUES (122,'Fitting slots','','');
INSERT INTO `eveUnits` VALUES (123,'trueTime','sec','Shows seconds directly');
INSERT INTO `eveUnits` VALUES (124,'Modifier Relative Percent','%','Used for relative percentages displayed as %');
INSERT INTO `eveUnits` VALUES (125,'Newton','N','');
INSERT INTO `eveUnits` VALUES (126,'Light Year','ly','');
INSERT INTO `eveUnits` VALUES (127,'Absolute Percent','%','0.0 = 0% 1.0 = 100%');
INSERT INTO `eveUnits` VALUES (128,'Drone bandwidth','Mbit/sec','Mega bits per second');
INSERT INTO `eveUnits` VALUES (129,'Hours','','Hours');
INSERT INTO `eveUnits` VALUES (133,'Money','ISK','ISK');
INSERT INTO `eveUnits` VALUES (134,'Logistical Capacity','m3/hour','Bandwidth for PI');
/*!40000 ALTER TABLE `eveUnits` ENABLE KEYS */;
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
