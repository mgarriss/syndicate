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
-- Table structure for table `chrRaces`
--

DROP TABLE IF EXISTS `chrRaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chrRaces` (
  `raceID` tinyint(3) unsigned NOT NULL,
  `raceName` varchar(100) default NULL,
  `description` varchar(1000) default NULL,
  `graphicID` smallint(6) default NULL,
  `shortDescription` varchar(500) default NULL,
  PRIMARY KEY  (`raceID`),
  KEY `graphicID` (`graphicID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chrRaces`
--

LOCK TABLES `chrRaces` WRITE;
/*!40000 ALTER TABLE `chrRaces` DISABLE KEYS */;
INSERT INTO `chrRaces` VALUES (1,'Caldari','Founded on the tenets of patriotism and hard work that carried its ancestors through hardships on an inhospitable homeworld, the Caldari State is today a corporate dictatorship, led by rulers who are determined to see it return to the meritocratic ideals of old. Ruthless and efficient in the boardroom as well as on the battlefield, the Caldari are living emblems of strength, persistence, and dignity.',1439,'The Caldari State is the epitome of civic duty and ruthless efficiency.');
INSERT INTO `chrRaces` VALUES (2,'Minmatar','Of the four major nation-states of New Eden, none has endured more turmoil than the Minmatar Republic. Once a thriving tribal civilization, the Minmatar were enslaved by the Amarr Empire for more than 700 years until a massive rebellion freed most, but not all, of those held in servitude. Modeling their recovery after the Federation\'s success, the Minmatar Republic was born. But despite rising to prominence on the world stage, more than one third of the present-day population remains enslaved. The Minmatar people today are resilient, ingenious, and hard-working. Many of them believe that democracy, though serving them well at first, will never restore what was taken from them so long ago. Instead, they long for a government truly reflective of their tribal culture, and remain deeply attached to their enslaved kindred. They will forever resent the Amarrians, and yearn for the days before their accursed ships ever reached their home skies.',1440,'Breaking free of Amarrian subjugation, the Minmatar Republic is a nation of resilient, ingenious, hard-working people who thrive in a tribal culture.');
INSERT INTO `chrRaces` VALUES (4,'Amarr','The Amarr Empire is the largest and oldest of the four empires. Ruled by a mighty God-Empress, this vast theocratic society is supported by a broad foundation of Minmatar slave labor. Amarrian citizens tend to be highly educated and fervent individuals, and as a culture adheres to the basic tenet that what others call slavery is in fact one step on a spiritual path towards fully embracing their faith. As a result, the Empire remains the most stable and militarily powerful nation-state in New Eden, despite several setbacks in recent history.',1442,'Amarr is the largest empire in New Eden, solely devoted to God, Emperor, and the spread of their faith.');
INSERT INTO `chrRaces` VALUES (8,'Gallente','Champions of liberty and fierce guardians of the human spirit, the Gallente Federation is the only true democracy in New Eden. Some of the most progressive leaders, scientists, and businessmen of the era have emerged from its diverse peoples. Pioneers of artificial intelligence, the Federation once relied almost entirely on drone fleets to defend its beliefs and borders. But the limitations of this technology and the lack of a human element—both in terms of a military strategy, and as a means of spreading influence— eventually reached a critical point. Today, Gallentean starships are manned by some of the bravest men and women of New Eden.',1441,'Championing freedom and liberty across the universe, the Gallente Federation is the only true democracy of New Eden.');
INSERT INTO `chrRaces` VALUES (16,'Jove','The most mysterious and elusive of all the universe\'s peoples, the Jovians number only a fraction of any of their neighbors, but their technological superiority makes them powerful beyond all proportion.',NULL,'');
INSERT INTO `chrRaces` VALUES (32,'Pirate','',NULL,'');
/*!40000 ALTER TABLE `chrRaces` ENABLE KEYS */;
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
