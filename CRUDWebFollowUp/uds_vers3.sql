USE uds_test;
-- MySQL dump 10.13  Distrib 5.5.37, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: uds_ver3
-- ------------------------------------------------------
-- Server version	5.5.37-0ubuntu0.13.10.1

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
-- Table structure for table `AvirerInitialHeader`
--

DROP TABLE IF EXISTS `AvirerInitialHeader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AvirerInitialHeader` (
  `header` int(11) NOT NULL AUTO_INCREMENT,
  `packet` text,
  `formid` text,
  `formver` int(11) DEFAULT NULL,
  `adcid` int(11) DEFAULT NULL,
  `ptid` text,
  `visitmo` int(11) DEFAULT NULL,
  `visitday` int(11) DEFAULT NULL,
  `visityr` int(11) DEFAULT NULL,
  `visitnum` int(11) DEFAULT NULL,
  `initials` text,
  PRIMARY KEY (`header`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AvirerInitialHeader`
--

LOCK TABLES `AvirerInitialHeader` WRITE;
/*!40000 ALTER TABLE `AvirerInitialHeader` DISABLE KEYS */;
/*!40000 ALTER TABLE `AvirerInitialHeader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FollowupA1`
--

DROP TABLE IF EXISTS `FollowupA1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FollowupA1` (
  `a1` int(11) NOT NULL AUTO_INCREMENT,
  `birthmo` int(11) DEFAULT NULL,
  `birthyr` int(11) DEFAULT NULL,
  `maristat` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `livsitua` int(11) DEFAULT NULL,
  `independ` int(11) DEFAULT NULL,
  `residenc` int(11) DEFAULT NULL,
  `zip` text,
  `header_fk_followupa1` int(11) DEFAULT NULL,
  PRIMARY KEY (`a1`),
  KEY `header_idx` (`header_fk_followupa1`),
  CONSTRAINT `header_fk_followupa1` FOREIGN KEY (`header_fk_followupa1`) REFERENCES `Header` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FollowupA1`
--

LOCK TABLES `FollowupA1` WRITE;
/*!40000 ALTER TABLE `FollowupA1` DISABLE KEYS */;
INSERT INTO `FollowupA1` VALUES (1,9,1994,4,1,4,3,3,'555',NULL),(2,45,1948,1,1,2,1,2,'850',NULL),(3,3,1948,1,1,2,1,2,'850',NULL),(4,12,1980,6,0,9,9,1,'858',NULL),(5,1,1976,1,1,1,2,1,'2',NULL),(6,10,1988,1,0,2,3,3,'',NULL),(7,10,1988,1,0,2,3,3,'',NULL),(8,9,1998,2,0,4,1,2,'',NULL),(9,9,1990,1,1,2,1,1,'',NULL),(10,9,1980,1,0,3,4,9,'',NULL),(11,1,1999,1,1,2,4,1,'',NULL),(12,1,1988,1,1,1,3,3,'',NULL),(13,9,1999,2,0,3,3,3,'',NULL),(14,9,1999,2,0,3,3,3,'',NULL),(15,9,1999,1,0,1,2,1,'',NULL),(16,1,1988,1,1,3,2,3,'',NULL),(17,1,1988,1,1,3,2,3,'',NULL),(18,9,1999,5,1,3,1,2,'',NULL),(19,9,1999,0,1,1,2,1,'123',NULL),(20,9,1988,0,0,2,1,1,'123',NULL),(21,9,1999,1,0,1,1,1,'888',NULL),(22,9,1999,1,0,1,1,1,'888',NULL),(23,5,1905,5,0,5,4,4,'',NULL);
/*!40000 ALTER TABLE `FollowupA1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FollowupA2`
--

DROP TABLE IF EXISTS `FollowupA2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FollowupA2` (
  `a2` int(11) NOT NULL AUTO_INCREMENT,
  `inbirmo` int(11) NOT NULL,
  `ineduc` int(11) NOT NULL,
  `inbiryr` int(11) NOT NULL,
  `insex` int(11) NOT NULL,
  `newinf` int(11) NOT NULL,
  `inhisp` int(11) NOT NULL,
  `inhispor` int(11) NOT NULL,
  `inhispox` text NOT NULL,
  `inrace` int(11) NOT NULL,
  `inracex` text NOT NULL,
  `inrasec` int(11) NOT NULL,
  `inrasecx` text NOT NULL,
  `inrater` int(11) NOT NULL,
  `inraterx` text NOT NULL,
  `inrelto` int(11) NOT NULL,
  `inknown` int(11) NOT NULL,
  `inlivwth` int(11) NOT NULL,
  `invisits` int(11) NOT NULL,
  `incalls` int(11) NOT NULL,
  `inrely` int(11) NOT NULL,
  `header_fk_followupa2` int(11) NOT NULL,
  PRIMARY KEY (`a2`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FollowupA2`
--

LOCK TABLES `FollowupA2` WRITE;
/*!40000 ALTER TABLE `FollowupA2` DISABLE KEYS */;
INSERT INTO `FollowupA2` VALUES (1,1,0,0,0,0,0,0,'',0,'',0,'0',0,'',0,0,0,0,0,0,0),(2,1,2,0,0,0,0,0,'',0,'',0,'0',0,'',0,0,0,0,0,0,0),(3,1,2,0,0,0,0,0,'',0,'',0,'0',0,'',0,0,0,0,0,0,0),(4,1,2,1,1,1,1,1,'1',0,'',0,'0',0,'',0,0,0,0,0,0,0),(5,1,1,1,1,1,1,1,'1',1,'1',1,'1',1,'1',2,1,3,1,2,1,2),(6,99,12,9999,1,1,0,5,'',5,'',2,'',50,'de',1,0,2,5,4,1,0),(7,99,0,9999,1,0,1,6,'',4,'',1,'',3,'',1,999,1,1,2,1,0),(8,99,18,9999,2,1,1,2,'',50,'',2,'',1,'',2,33,2,2,2,0,0),(9,99,0,9999,1,0,0,3,'',1,'',4,'',1,'',1,0,2,1,4,1,0),(10,10,18,1998,1,1,1,2,'null',3,'null',2,'null',2,'null',2,80,1,2,4,1,0);
/*!40000 ALTER TABLE `FollowupA2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FollowupA3`
--

DROP TABLE IF EXISTS `FollowupA3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FollowupA3` (
  `a3` int(11) NOT NULL AUTO_INCREMENT,
  `nwinfmut` int(11) DEFAULT NULL,
  `fadmut` int(11) DEFAULT NULL,
  `fadmutx` text,
  `fadmuso` int(11) DEFAULT NULL,
  `fadmusox` text,
  `fftdmut` int(11) DEFAULT NULL,
  `fftdmutx` text,
  `fftdmuso` int(11) DEFAULT NULL,
  `fftdmusx` text,
  `fothmut` int(11) DEFAULT NULL,
  `fothmutx` text,
  `fothmuso` int(11) DEFAULT NULL,
  `fothmusx` text,
  `nwinfpar` int(11) DEFAULT NULL,
  `mommob` int(11) DEFAULT NULL,
  `momyob` int(11) DEFAULT NULL,
  `momdage` int(11) DEFAULT NULL,
  `momneur` int(11) DEFAULT NULL,
  `momprdx` int(11) DEFAULT NULL,
  `mommoe` int(11) DEFAULT NULL,
  `momageo` int(11) DEFAULT NULL,
  `dadmob` int(11) DEFAULT NULL,
  `dadyob` int(11) DEFAULT NULL,
  `daddage` int(11) DEFAULT NULL,
  `dadneur` int(11) DEFAULT NULL,
  `dadprdx` int(11) DEFAULT NULL,
  `dadmoe` int(11) DEFAULT NULL,
  `dadageo` int(11) DEFAULT NULL,
  `sibs` int(11) DEFAULT NULL,
  `nwinfsib` int(11) DEFAULT NULL,
  `sib1mob` int(11) DEFAULT NULL,
  `sib1yob` int(11) DEFAULT NULL,
  `sib1agd` int(11) DEFAULT NULL,
  `sib1neu` int(11) DEFAULT NULL,
  `sib1pdx` int(11) DEFAULT NULL,
  `sib1moe` int(11) DEFAULT NULL,
  `sib1ago` int(11) DEFAULT NULL,
  `sib2mob` int(11) DEFAULT NULL,
  `sib2yob` int(11) DEFAULT NULL,
  `sib2agd` int(11) DEFAULT NULL,
  `sib2neu` int(11) DEFAULT NULL,
  `sib2pdx` int(11) DEFAULT NULL,
  `sib2moe` int(11) DEFAULT NULL,
  `sib2ago` int(11) DEFAULT NULL,
  `sib3mob` int(11) DEFAULT NULL,
  `sib3yob` int(11) DEFAULT NULL,
  `sib3agd` int(11) DEFAULT NULL,
  `sib3neu` int(11) DEFAULT NULL,
  `sib3pdx` int(11) DEFAULT NULL,
  `sib3moe` int(11) DEFAULT NULL,
  `sib3ago` int(11) DEFAULT NULL,
  `sib4mob` int(11) DEFAULT NULL,
  `sib4yob` int(11) DEFAULT NULL,
  `sib4agd` int(11) DEFAULT NULL,
  `sib4neu` int(11) DEFAULT NULL,
  `sib4pdx` int(11) DEFAULT NULL,
  `sib4moe` int(11) DEFAULT NULL,
  `sib4ago` int(11) DEFAULT NULL,
  `sib5mob` int(11) DEFAULT NULL,
  `sib5yob` int(11) DEFAULT NULL,
  `sib5agd` int(11) DEFAULT NULL,
  `sib5neu` int(11) DEFAULT NULL,
  `sib5pdx` int(11) DEFAULT NULL,
  `sib5moe` int(11) DEFAULT NULL,
  `sib5ago` int(11) DEFAULT NULL,
  `sib6mob` int(11) DEFAULT NULL,
  `sib6yob` int(11) DEFAULT NULL,
  `sib6agd` int(11) DEFAULT NULL,
  `sib6neu` int(11) DEFAULT NULL,
  `sib6pdx` int(11) DEFAULT NULL,
  `sib6moe` int(11) DEFAULT NULL,
  `sib6ago` int(11) DEFAULT NULL,
  `sib7mob` int(11) DEFAULT NULL,
  `sib7yob` int(11) DEFAULT NULL,
  `sib7agd` int(11) DEFAULT NULL,
  `sib7neu` int(11) DEFAULT NULL,
  `sib7pdx` int(11) DEFAULT NULL,
  `sib7moe` int(11) DEFAULT NULL,
  `sib7ago` int(11) DEFAULT NULL,
  `sib8mob` int(11) DEFAULT NULL,
  `sib8yob` int(11) DEFAULT NULL,
  `sib8agd` int(11) DEFAULT NULL,
  `sib8neu` int(11) DEFAULT NULL,
  `sib8pdx` int(11) DEFAULT NULL,
  `sib8moe` int(11) DEFAULT NULL,
  `sib8ago` int(11) DEFAULT NULL,
  `sib9mob` int(11) DEFAULT NULL,
  `sib9yob` int(11) DEFAULT NULL,
  `sib9agd` int(11) DEFAULT NULL,
  `sib9neu` int(11) DEFAULT NULL,
  `sib9pdx` int(11) DEFAULT NULL,
  `sib9moe` int(11) DEFAULT NULL,
  `sib9ago` int(11) DEFAULT NULL,
  `sib10mob` int(11) DEFAULT NULL,
  `sib10yob` int(11) DEFAULT NULL,
  `sib10agd` int(11) DEFAULT NULL,
  `sib10neu` int(11) DEFAULT NULL,
  `sib10pdx` int(11) DEFAULT NULL,
  `sib10moe` int(11) DEFAULT NULL,
  `sib10ago` int(11) DEFAULT NULL,
  `sib11mob` int(11) DEFAULT NULL,
  `sib11yob` int(11) DEFAULT NULL,
  `sib11agd` int(11) DEFAULT NULL,
  `sib11neu` int(11) DEFAULT NULL,
  `sib11pdx` int(11) DEFAULT NULL,
  `sib11moe` int(11) DEFAULT NULL,
  `sib11ago` int(11) DEFAULT NULL,
  `sib12mob` int(11) DEFAULT NULL,
  `sib12yob` int(11) DEFAULT NULL,
  `sib12agd` int(11) DEFAULT NULL,
  `sib12neu` int(11) DEFAULT NULL,
  `sib12pdx` int(11) DEFAULT NULL,
  `sib12moe` int(11) DEFAULT NULL,
  `sib12ago` int(11) DEFAULT NULL,
  `sib13mob` int(11) DEFAULT NULL,
  `sib13yob` int(11) DEFAULT NULL,
  `sib13agd` int(11) DEFAULT NULL,
  `sib13neu` int(11) DEFAULT NULL,
  `sib13pdx` int(11) DEFAULT NULL,
  `sib13moe` int(11) DEFAULT NULL,
  `sib13ago` int(11) DEFAULT NULL,
  `sib14mob` int(11) DEFAULT NULL,
  `sib14yob` int(11) DEFAULT NULL,
  `sib14agd` int(11) DEFAULT NULL,
  `sib14neu` int(11) DEFAULT NULL,
  `sib14pdx` int(11) DEFAULT NULL,
  `sib14moe` int(11) DEFAULT NULL,
  `sib14ago` int(11) DEFAULT NULL,
  `sib15mob` int(11) DEFAULT NULL,
  `sib15yob` int(11) DEFAULT NULL,
  `sib15agd` int(11) DEFAULT NULL,
  `sib15neu` int(11) DEFAULT NULL,
  `sib15pdx` int(11) DEFAULT NULL,
  `sib15moe` int(11) DEFAULT NULL,
  `sib15ago` int(11) DEFAULT NULL,
  `sib16mob` int(11) DEFAULT NULL,
  `sib16yob` int(11) DEFAULT NULL,
  `sib16agd` int(11) DEFAULT NULL,
  `sib16neu` int(11) DEFAULT NULL,
  `sib16pdx` int(11) DEFAULT NULL,
  `sib16moe` int(11) DEFAULT NULL,
  `sib16ago` int(11) DEFAULT NULL,
  `sib17mob` int(11) DEFAULT NULL,
  `sib17yob` int(11) DEFAULT NULL,
  `sib17agd` int(11) DEFAULT NULL,
  `sib17neu` int(11) DEFAULT NULL,
  `sib17pdx` int(11) DEFAULT NULL,
  `sib17moe` int(11) DEFAULT NULL,
  `sib17ago` int(11) DEFAULT NULL,
  `sib18mob` int(11) DEFAULT NULL,
  `sib18yob` int(11) DEFAULT NULL,
  `sib18agd` int(11) DEFAULT NULL,
  `sib18neu` int(11) DEFAULT NULL,
  `sib18pdx` int(11) DEFAULT NULL,
  `sib18moe` int(11) DEFAULT NULL,
  `sib18ago` int(11) DEFAULT NULL,
  `sib19mob` int(11) DEFAULT NULL,
  `sib19yob` int(11) DEFAULT NULL,
  `sib19agd` int(11) DEFAULT NULL,
  `sib19neu` int(11) DEFAULT NULL,
  `sib19pdx` int(11) DEFAULT NULL,
  `sib19moe` int(11) DEFAULT NULL,
  `sib19ago` int(11) DEFAULT NULL,
  `sib20mob` int(11) DEFAULT NULL,
  `sib20yob` int(11) DEFAULT NULL,
  `sib20agd` int(11) DEFAULT NULL,
  `sib20neu` int(11) DEFAULT NULL,
  `sib20pdx` int(11) DEFAULT NULL,
  `sib20moe` int(11) DEFAULT NULL,
  `sib20ago` int(11) DEFAULT NULL,
  `kids` int(11) DEFAULT NULL,
  `nwinfkid` int(11) DEFAULT NULL,
  `kid1mob` int(11) DEFAULT NULL,
  `kid1yob` int(11) DEFAULT NULL,
  `kid1agd` int(11) DEFAULT NULL,
  `kid1neu` int(11) DEFAULT NULL,
  `kid1pdx` int(11) DEFAULT NULL,
  `kid1moe` int(11) DEFAULT NULL,
  `kid1ago` int(11) DEFAULT NULL,
  `kid2mob` int(11) DEFAULT NULL,
  `kid2yob` int(11) DEFAULT NULL,
  `kid2agd` int(11) DEFAULT NULL,
  `kid2neu` int(11) DEFAULT NULL,
  `kid2pdx` int(11) DEFAULT NULL,
  `kid2moe` int(11) DEFAULT NULL,
  `kid2ago` int(11) DEFAULT NULL,
  `kid3mob` int(11) DEFAULT NULL,
  `kid3yob` int(11) DEFAULT NULL,
  `kid3agd` int(11) DEFAULT NULL,
  `kid3neu` int(11) DEFAULT NULL,
  `kid3pdx` int(11) DEFAULT NULL,
  `kid3moe` int(11) DEFAULT NULL,
  `kid3ago` int(11) DEFAULT NULL,
  `kid4mob` int(11) DEFAULT NULL,
  `kid4yob` int(11) DEFAULT NULL,
  `kid4agd` int(11) DEFAULT NULL,
  `kid4neu` int(11) DEFAULT NULL,
  `kid4pdx` int(11) DEFAULT NULL,
  `kid4moe` int(11) DEFAULT NULL,
  `kid4ago` int(11) DEFAULT NULL,
  `kid5mob` int(11) DEFAULT NULL,
  `kid5yob` int(11) DEFAULT NULL,
  `kid5agd` int(11) DEFAULT NULL,
  `kid5neu` int(11) DEFAULT NULL,
  `kid5pdx` int(11) DEFAULT NULL,
  `kid5moe` int(11) DEFAULT NULL,
  `kid5ago` int(11) DEFAULT NULL,
  `kid6mob` int(11) DEFAULT NULL,
  `kid6yob` int(11) DEFAULT NULL,
  `kid6agd` int(11) DEFAULT NULL,
  `kid6neu` int(11) DEFAULT NULL,
  `kid6pdx` int(11) DEFAULT NULL,
  `kid6moe` int(11) DEFAULT NULL,
  `kid6ago` int(11) DEFAULT NULL,
  `kid7mob` int(11) DEFAULT NULL,
  `kid7yob` int(11) DEFAULT NULL,
  `kid7agd` int(11) DEFAULT NULL,
  `kid7neu` int(11) DEFAULT NULL,
  `kid7pdx` int(11) DEFAULT NULL,
  `kid7moe` int(11) DEFAULT NULL,
  `kid7ago` int(11) DEFAULT NULL,
  `kid8mob` int(11) DEFAULT NULL,
  `kid8yob` int(11) DEFAULT NULL,
  `kid8agd` int(11) DEFAULT NULL,
  `kid8neu` int(11) DEFAULT NULL,
  `kid8pdx` int(11) DEFAULT NULL,
  `kid8moe` int(11) DEFAULT NULL,
  `kid8ago` int(11) DEFAULT NULL,
  `kid9mob` int(11) DEFAULT NULL,
  `kid9yob` int(11) DEFAULT NULL,
  `kid9agd` int(11) DEFAULT NULL,
  `kid9neu` int(11) DEFAULT NULL,
  `kid9pdx` int(11) DEFAULT NULL,
  `kid9moe` int(11) DEFAULT NULL,
  `kid9ago` int(11) DEFAULT NULL,
  `kid10mob` int(11) DEFAULT NULL,
  `kid10yob` int(11) DEFAULT NULL,
  `kid10agd` int(11) DEFAULT NULL,
  `kid10neu` int(11) DEFAULT NULL,
  `kid10pdx` int(11) DEFAULT NULL,
  `kid10moe` int(11) DEFAULT NULL,
  `kid10ago` int(11) DEFAULT NULL,
  `kid11mob` int(11) DEFAULT NULL,
  `kid11yob` int(11) DEFAULT NULL,
  `kid11agd` int(11) DEFAULT NULL,
  `kid11neu` int(11) DEFAULT NULL,
  `kid11pdx` int(11) DEFAULT NULL,
  `kid11moe` int(11) DEFAULT NULL,
  `kid11ago` int(11) DEFAULT NULL,
  `kid12mob` int(11) DEFAULT NULL,
  `kid12yob` int(11) DEFAULT NULL,
  `kid12agd` int(11) DEFAULT NULL,
  `kid12neu` int(11) DEFAULT NULL,
  `kid12pdx` int(11) DEFAULT NULL,
  `kid12moe` int(11) DEFAULT NULL,
  `kid12ago` int(11) DEFAULT NULL,
  `kid13mob` int(11) DEFAULT NULL,
  `kid13yob` int(11) DEFAULT NULL,
  `kid13agd` int(11) DEFAULT NULL,
  `kid13neu` int(11) DEFAULT NULL,
  `kid13pdx` int(11) DEFAULT NULL,
  `kid13moe` int(11) DEFAULT NULL,
  `kid13ago` int(11) DEFAULT NULL,
  `kid14mob` int(11) DEFAULT NULL,
  `kid14yob` int(11) DEFAULT NULL,
  `kid14agd` int(11) DEFAULT NULL,
  `kid14neu` int(11) DEFAULT NULL,
  `kid14pdx` int(11) DEFAULT NULL,
  `kid14moe` int(11) DEFAULT NULL,
  `kid14ago` int(11) DEFAULT NULL,
  `kid15mob` int(11) DEFAULT NULL,
  `kid15yob` int(11) DEFAULT NULL,
  `kid15agd` int(11) DEFAULT NULL,
  `kid15neu` int(11) DEFAULT NULL,
  `kid15pdx` int(11) DEFAULT NULL,
  `kid15moe` int(11) DEFAULT NULL,
  `kid15ago` int(11) DEFAULT NULL,
  `header_fk_followupa3` int(11) DEFAULT NULL,
  PRIMARY KEY (`a3`),
  KEY `header_idx` (`header_fk_followupa3`),
  CONSTRAINT `header_fk_followupa3` FOREIGN KEY (`header_fk_followupa3`) REFERENCES `Header` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FollowupA3`
--

LOCK TABLES `FollowupA3` WRITE;
/*!40000 ALTER TABLE `FollowupA3` DISABLE KEYS */;
INSERT INTO `FollowupA3` VALUES (26,1,1,'',2,'',1,'',2,'',8,'',2,'',1,99,9999,999,99,9,9,9,99,999,999,9,9,9,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),(27,1,1,'',2,'',1,'',2,'',8,'',1,'',1,99,9999,9,9,9,9,999,99,9999,9,9,9,9,999,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),(28,1,1,'',2,'',2,'',2,'',9,'',2,'',1,10,1000,999,9,8,8,8,19,2222,88,8,8,8,8,0,1,2,2010,1,1,1,1,999,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,4,4444,1,1,1,1,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),(29,1,1,'',2,'',2,'',2,'',8,'',2,'',1,99,9999,999,99,9,9,999,99,999,999,99,9,9,999,0,1,9,9999,9,9,9,9,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,1,9,1999,9,9,9,9,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL);
/*!40000 ALTER TABLE `FollowupA3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FollowupA4`
--

DROP TABLE IF EXISTS `FollowupA4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FollowupA4` (
  `a4` int(11) NOT NULL AUTO_INCREMENT,
  `d03428` int(11) NOT NULL,
  `d00749` int(11) NOT NULL,
  `d03849` int(11) NOT NULL,
  `d00023` int(11) NOT NULL,
  `d00168` int(11) NOT NULL,
  `d00689` int(11) NOT NULL,
  `d00004` int(11) NOT NULL,
  `d04105` int(11) NOT NULL,
  `d00730` int(11) NOT NULL,
  `d00181` int(11) NOT NULL,
  `d03689` int(11) NOT NULL,
  `d03473` int(11) NOT NULL,
  `d03847` int(11) NOT NULL,
  `d04380` int(11) NOT NULL,
  `d03827` int(11) NOT NULL,
  `d04332` int(11) NOT NULL,
  `d00197` int(11) NOT NULL,
  `d04258` int(11) NOT NULL,
  `d00541` int(11) NOT NULL,
  `d00413` int(11) NOT NULL,
  `d00210` int(11) NOT NULL,
  `d00045` int(11) NOT NULL,
  `d04099` int(11) NOT NULL,
  `d05355` int(11) NOT NULL,
  `d00013` int(11) NOT NULL,
  `d03128` int(11) NOT NULL,
  `d04812` int(11) NOT NULL,
  `d04749` int(11) NOT NULL,
  `d00537` int(11) NOT NULL,
  `d04824` int(11) NOT NULL,
  `d03824` int(11) NOT NULL,
  `d04040` int(11) NOT NULL,
  `d00563` int(11) NOT NULL,
  `d00236` int(11) NOT NULL,
  `d01296` int(11) NOT NULL,
  `d04283` int(11) NOT NULL,
  `d04611` int(11) NOT NULL,
  `d00070` int(11) NOT NULL,
  `d03182` int(11) NOT NULL,
  `d04750` int(11) NOT NULL,
  `d00246` int(11) NOT NULL,
  `d00253` int(11) NOT NULL,
  `d03052` int(11) NOT NULL,
  `d04017` int(11) NOT NULL,
  `d00278` int(11) NOT NULL,
  `d00732` int(11) NOT NULL,
  `d00149` int(11) NOT NULL,
  `d03821` int(11) NOT NULL,
  `d00280` int(11) NOT NULL,
  `d04532` int(11) NOT NULL,
  `d04899` int(11) NOT NULL,
  `d03807` int(11) NOT NULL,
  `d00134` int(11) NOT NULL,
  `d04025` int(11) NOT NULL,
  `d04289` int(11) NOT NULL,
  `d00019` int(11) NOT NULL,
  `curmed` int(11) NOT NULL,
  `dspec1` text NOT NULL,
  `dspec2` text NOT NULL,
  `dspec3` text NOT NULL,
  `dspec4` text NOT NULL,
  `dspec5` text NOT NULL,
  `dspec6` text NOT NULL,
  `dspec7` text NOT NULL,
  `dspec8` text NOT NULL,
  `dspec9` text NOT NULL,
  `dspec10` text NOT NULL,
  `dd1` int(11) NOT NULL,
  `dd2` int(11) NOT NULL,
  `dd3` int(11) NOT NULL,
  `dd4` int(11) NOT NULL,
  `dd5` int(11) NOT NULL,
  `dd6` int(11) NOT NULL,
  `dd7` int(11) NOT NULL,
  `dd8` int(11) NOT NULL,
  `dd9` int(11) NOT NULL,
  `dd10` int(11) NOT NULL,
  `d00015` int(11) NOT NULL,
  `d03050` int(11) NOT NULL,
  `d04058` int(11) NOT NULL,
  `d03140` int(11) NOT NULL,
  `d03145` int(11) NOT NULL,
  `d05350` int(11) NOT NULL,
  `d01018` int(11) NOT NULL,
  `d00412` int(11) NOT NULL,
  `d04523` int(11) NOT NULL,
  `d00405` int(11) NOT NULL,
  `d00021` int(11) NOT NULL,
  `d04537` int(11) NOT NULL,
  `d04851` int(11) NOT NULL,
  `d00880` int(11) NOT NULL,
  `d00746` int(11) NOT NULL,
  `d04121` int(11) NOT NULL,
  `d00386` int(11) NOT NULL,
  `d03826` int(11) NOT NULL,
  `d00395` int(11) NOT NULL,
  `d04113` int(11) NOT NULL,
  `d03181` int(11) NOT NULL,
  `d00022` int(11) NOT NULL,
  `d00910` int(11) NOT NULL,
  `d00049` int(11) NOT NULL,
  `d00426` int(11) NOT NULL,
  `d00170` int(11) NOT NULL,
  `d00425` int(11) NOT NULL,
  `d03137` int(11) NOT NULL,
  `d04420` int(11) NOT NULL,
  `d01021` int(11) NOT NULL,
  `d00241` int(11) NOT NULL,
  `d04418` int(11) NOT NULL,
  `d00051` int(11) NOT NULL,
  `d00314` int(11) NOT NULL,
  `d00321` int(11) NOT NULL,
  `d00497` int(11) NOT NULL,
  `d00325` int(11) NOT NULL,
  `d00328` int(11) NOT NULL,
  `d04514` int(11) NOT NULL,
  `d03157` int(11) NOT NULL,
  `d00345` int(11) NOT NULL,
  `d00348` int(11) NOT NULL,
  `d04220` int(11) NOT NULL,
  `d03129` int(11) NOT NULL,
  PRIMARY KEY (`a4`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FollowupA4`
--

LOCK TABLES `FollowupA4` WRITE;
/*!40000 ALTER TABLE `FollowupA4` DISABLE KEYS */;
INSERT INTO `FollowupA4` VALUES (1,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'e','e','e','e','e','e','e','e','e','e',1,1,1,1,1,1,1,1,1,1,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(2,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,'','','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0),(3,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,'','','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0),(4,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,1);
/*!40000 ALTER TABLE `FollowupA4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FollowupB1`
--

DROP TABLE IF EXISTS `FollowupB1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FollowupB1` (
  `b1` int(11) NOT NULL AUTO_INCREMENT,
  `height` float DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `bpsys` int(11) DEFAULT NULL,
  `bpdias` int(11) DEFAULT NULL,
  `hrate` int(11) DEFAULT NULL,
  `vision` int(11) DEFAULT NULL,
  `viscorr` int(11) DEFAULT NULL,
  `viswcorr` int(11) DEFAULT NULL,
  `hearing` int(11) DEFAULT NULL,
  `hearaid` int(11) DEFAULT NULL,
  `hearwaid` int(11) DEFAULT NULL,
  `header_fk_followupb1` int(11) DEFAULT NULL,
  PRIMARY KEY (`b1`),
  KEY `header_idx` (`header_fk_followupb1`),
  CONSTRAINT `header_fk_followupb1` FOREIGN KEY (`header_fk_followupb1`) REFERENCES `Header` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FollowupB1`
--

LOCK TABLES `FollowupB1` WRITE;
/*!40000 ALTER TABLE `FollowupB1` DISABLE KEYS */;
INSERT INTO `FollowupB1` VALUES (1,0,150,120,80,78,1,9,9,1,NULL,1,NULL),(2,0,71,300,20,300,1,1,1,1,NULL,1,NULL),(3,0,90,120,90,80,1,0,0,1,NULL,0,NULL),(4,0,100,120,70,70,1,0,0,1,NULL,0,NULL),(5,0,888,888,888,888,0,1,9,1,NULL,1,NULL);
/*!40000 ALTER TABLE `FollowupB1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FollowupB4`
--

DROP TABLE IF EXISTS `FollowupB4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FollowupB4` (
  `b4` int(11) NOT NULL AUTO_INCREMENT,
  `memory` float DEFAULT NULL,
  `orient` float DEFAULT NULL,
  `judgment` float DEFAULT NULL,
  `commun` float DEFAULT NULL,
  `homehobb` float DEFAULT NULL,
  `perscare` float DEFAULT NULL,
  `cdrsum` float DEFAULT NULL,
  `cdrglob` float DEFAULT NULL,
  `comport` float DEFAULT NULL,
  `cdrlang` float DEFAULT NULL,
  `header_fk_followupb4` int(11) DEFAULT NULL,
  PRIMARY KEY (`b4`),
  KEY `header_idx` (`header_fk_followupb4`),
  CONSTRAINT `header_fk_followupb4` FOREIGN KEY (`header_fk_followupb4`) REFERENCES `Header` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FollowupB4`
--

LOCK TABLES `FollowupB4` WRITE;
/*!40000 ALTER TABLE `FollowupB4` DISABLE KEYS */;
INSERT INTO `FollowupB4` VALUES (1,1,1,1,4,1,1,1,1,2,2,NULL);
/*!40000 ALTER TABLE `FollowupB4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FollowupB5`
--

DROP TABLE IF EXISTS `FollowupB5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FollowupB5` (
  `b5` int(11) NOT NULL AUTO_INCREMENT,
  `npiqinf` int(11) DEFAULT NULL,
  `npiqinfx` text,
  `del` int(11) DEFAULT NULL,
  `delsev` int(11) DEFAULT NULL,
  `hall` int(11) DEFAULT NULL,
  `hallsev` int(11) DEFAULT NULL,
  `agit` int(11) DEFAULT NULL,
  `agitsev` int(11) DEFAULT NULL,
  `depd` int(11) DEFAULT NULL,
  `depdsev` int(11) DEFAULT NULL,
  `anx` int(11) DEFAULT NULL,
  `anxsev` int(11) DEFAULT NULL,
  `elat` int(11) DEFAULT NULL,
  `elatsev` int(11) DEFAULT NULL,
  `apa` int(11) DEFAULT NULL,
  `apasev` int(11) DEFAULT NULL,
  `disn` int(11) DEFAULT NULL,
  `disnsev` int(11) DEFAULT NULL,
  `irr` int(11) DEFAULT NULL,
  `irrsev` int(11) DEFAULT NULL,
  `mot` int(11) DEFAULT NULL,
  `motsev` int(11) DEFAULT NULL,
  `nite` int(11) DEFAULT NULL,
  `nitesev` int(11) DEFAULT NULL,
  `app` int(11) DEFAULT NULL,
  `appsev` int(11) DEFAULT NULL,
  `header_fk_followupb5` int(11) DEFAULT NULL,
  PRIMARY KEY (`b5`),
  KEY `header_idx` (`header_fk_followupb5`),
  CONSTRAINT `header_fk_followupb5` FOREIGN KEY (`header_fk_followupb5`) REFERENCES `Header` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FollowupB5`
--

LOCK TABLES `FollowupB5` WRITE;
/*!40000 ALTER TABLE `FollowupB5` DISABLE KEYS */;
INSERT INTO `FollowupB5` VALUES (1,2,NULL,0,1,0,1,0,1,0,1,0,2,0,2,0,2,0,2,0,2,0,2,0,2,0,2,NULL),(2,1,NULL,1,9,1,9,1,9,1,9,1,3,1,3,0,3,0,3,9,9,9,9,9,3,0,9,NULL),(3,3,NULL,1,9,0,9,0,9,1,3,1,2,1,3,0,1,0,3,9,2,0,9,1,9,0,3,NULL),(4,1,NULL,1,3,1,3,1,3,1,3,1,9,1,9,1,3,1,3,0,9,0,3,1,9,1,9,NULL),(5,1,NULL,0,3,1,2,0,2,9,2,1,1,0,2,9,3,1,9,0,1,9,2,1,3,0,9,NULL),(6,1,NULL,1,1,0,2,9,3,9,9,1,1,0,2,9,3,1,9,0,1,9,2,1,3,0,9,NULL);
/*!40000 ALTER TABLE `FollowupB5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FollowupB6`
--

DROP TABLE IF EXISTS `FollowupB6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FollowupB6` (
  `b6` int(11) NOT NULL AUTO_INCREMENT,
  `nogds` int(11) DEFAULT NULL,
  `satis` int(11) DEFAULT NULL,
  `dropact` int(11) DEFAULT NULL,
  `empty` int(11) DEFAULT NULL,
  `bored` int(11) DEFAULT NULL,
  `spirits` int(11) DEFAULT NULL,
  `afraid` int(11) DEFAULT NULL,
  `happy` int(11) DEFAULT NULL,
  `helpless` int(11) DEFAULT NULL,
  `stayhome` int(11) DEFAULT NULL,
  `memprob` int(11) DEFAULT NULL,
  `wondrful` int(11) DEFAULT NULL,
  `wrthless` int(11) DEFAULT NULL,
  `energy` int(11) DEFAULT NULL,
  `hopeless` int(11) DEFAULT NULL,
  `better` int(11) DEFAULT NULL,
  `gds` int(11) DEFAULT NULL,
  `header_fk_followupb6` int(11) DEFAULT NULL,
  PRIMARY KEY (`b6`),
  KEY `header_idx` (`header_fk_followupb6`),
  CONSTRAINT `header_fk_followupb6` FOREIGN KEY (`header_fk_followupb6`) REFERENCES `Header` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FollowupB6`
--

LOCK TABLES `FollowupB6` WRITE;
/*!40000 ALTER TABLE `FollowupB6` DISABLE KEYS */;
INSERT INTO `FollowupB6` VALUES (1,0,1,0,0,1,9,NULL,0,1,9,1,0,1,1,0,0,15,NULL),(2,0,0,1,9,0,1,NULL,0,1,9,0,1,9,0,1,9,1,NULL),(3,0,0,1,9,0,1,NULL,0,1,9,0,1,9,0,1,9,1,NULL);
/*!40000 ALTER TABLE `FollowupB6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FollowupB7`
--

DROP TABLE IF EXISTS `FollowupB7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FollowupB7` (
  `b7` int(11) NOT NULL AUTO_INCREMENT,
  `bills` int(11) DEFAULT NULL,
  `taxes` int(11) DEFAULT NULL,
  `shopping` int(11) DEFAULT NULL,
  `games` int(11) DEFAULT NULL,
  `stove` int(11) DEFAULT NULL,
  `mealprep` int(11) DEFAULT NULL,
  `events` int(11) DEFAULT NULL,
  `payattn` int(11) DEFAULT NULL,
  `remdates` int(11) DEFAULT NULL,
  `travel` int(11) DEFAULT NULL,
  `header_fk_followupb7` int(11) DEFAULT NULL,
  PRIMARY KEY (`b7`),
  KEY `header_idx` (`header_fk_followupb7`),
  CONSTRAINT `header_fk_followupb7` FOREIGN KEY (`header_fk_followupb7`) REFERENCES `Header` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FollowupB7`
--

LOCK TABLES `FollowupB7` WRITE;
/*!40000 ALTER TABLE `FollowupB7` DISABLE KEYS */;
INSERT INTO `FollowupB7` VALUES (1,0,0,0,1,1,1,0,0,1,1,NULL),(2,1,1,1,1,1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `FollowupB7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FollowupB8`
--

DROP TABLE IF EXISTS `FollowupB8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FollowupB8` (
  `b8` int(11) NOT NULL AUTO_INCREMENT,
  `normexam` int(11) DEFAULT NULL,
  `parksign` int(11) DEFAULT NULL,
  `resttrl` int(11) DEFAULT NULL,
  `resttrr` int(11) DEFAULT NULL,
  `slowingl` int(11) DEFAULT NULL,
  `slowingr` int(11) DEFAULT NULL,
  `rigidl` int(11) DEFAULT NULL,
  `rigidr` int(11) DEFAULT NULL,
  `brady` int(11) DEFAULT NULL,
  `parkgait` int(11) DEFAULT NULL,
  `postinst` int(11) DEFAULT NULL,
  `cvdsigns` int(11) DEFAULT NULL,
  `cortdef` int(11) DEFAULT NULL,
  `sivdfind` int(11) DEFAULT NULL,
  `cvdmotl` int(11) DEFAULT NULL,
  `cvdmotr` int(11) DEFAULT NULL,
  `cortvisl` int(11) DEFAULT NULL,
  `cortvisr` int(11) DEFAULT NULL,
  `somatl` int(11) DEFAULT NULL,
  `somatr` int(11) DEFAULT NULL,
  `postcort` int(11) DEFAULT NULL,
  `pspcbs` int(11) DEFAULT NULL,
  `eyepsp` int(11) DEFAULT NULL,
  `dyspsp` int(11) DEFAULT NULL,
  `axialpsp` int(11) DEFAULT NULL,
  `gaitpsp` int(11) DEFAULT NULL,
  `apraxsp` int(11) DEFAULT NULL,
  `apraxl` int(11) DEFAULT NULL,
  `apraxr` int(11) DEFAULT NULL,
  `cortsenl` int(11) DEFAULT NULL,
  `cortsenr` int(11) DEFAULT NULL,
  `ataxl` int(11) DEFAULT NULL,
  `ataxr` int(11) DEFAULT NULL,
  `alienlml` int(11) DEFAULT NULL,
  `alienlmr` int(11) DEFAULT NULL,
  `dystonl` int(11) DEFAULT NULL,
  `dystonr` int(11) DEFAULT NULL,
  `myocllt` int(11) DEFAULT NULL,
  `myoclrt` int(11) DEFAULT NULL,
  `alsfind` int(11) DEFAULT NULL,
  `gaitnph` int(11) DEFAULT NULL,
  `othneur` int(11) DEFAULT NULL,
  `othneurx` text,
  `header_fk_followupb8` int(11) DEFAULT NULL,
  PRIMARY KEY (`b8`),
  KEY `header_idx` (`header_fk_followupb8`),
  CONSTRAINT `header_fk_followupb8` FOREIGN KEY (`header_fk_followupb8`) REFERENCES `Header` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FollowupB8`
--

LOCK TABLES `FollowupB8` WRITE;
/*!40000 ALTER TABLE `FollowupB8` DISABLE KEYS */;
INSERT INTO `FollowupB8` VALUES (1,1,1,1,1,8,8,NULL,1,0,0,0,1,1,8,1,1,1,1,1,1,1,1,8,1,8,1,8,8,1,8,1,8,1,8,1,8,1,8,1,0,0,0,'Hello',NULL),(2,0,1,1,1,8,1,NULL,1,0,0,0,1,1,8,1,8,1,8,1,8,1,1,1,1,1,1,1,8,1,8,1,8,1,8,1,8,1,8,1,1,0,1,'yhy',NULL),(3,0,1,1,8,8,8,NULL,1,0,0,0,0,1,8,1,1,8,8,1,1,1,1,1,1,1,1,1,1,8,1,8,1,8,1,8,1,8,1,8,0,0,0,'fr',NULL);
/*!40000 ALTER TABLE `FollowupB8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FollowupB9`
--

DROP TABLE IF EXISTS `FollowupB9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FollowupB9` (
  `b9` int(11) NOT NULL AUTO_INCREMENT,
  `decsub` int(11) DEFAULT NULL,
  `decin` int(11) DEFAULT NULL,
  `decclcog` int(11) DEFAULT NULL,
  `cogmem` int(11) DEFAULT NULL,
  `cogori` int(11) DEFAULT NULL,
  `cogjudg` int(11) DEFAULT NULL,
  `coglang` int(11) DEFAULT NULL,
  `cogvis` int(11) DEFAULT NULL,
  `cogattn` int(11) DEFAULT NULL,
  `cogfluc` int(11) DEFAULT NULL,
  `cogflago` int(11) DEFAULT NULL,
  `cogothr` int(11) DEFAULT NULL,
  `cogothrx` text,
  `cogfpred` int(11) DEFAULT NULL,
  `cogfprex` text,
  `cogmode` int(11) DEFAULT NULL,
  `cogmodex` text,
  `decage` int(11) DEFAULT NULL,
  `decclbe` int(11) DEFAULT NULL,
  `beapathy` int(11) DEFAULT NULL,
  `bedep` int(11) DEFAULT NULL,
  `bevhall` int(11) DEFAULT NULL,
  `bevwell` int(11) DEFAULT NULL,
  `bevhago` int(11) DEFAULT NULL,
  `beahall` int(11) DEFAULT NULL,
  `bedel` int(11) DEFAULT NULL,
  `bedisin` int(11) DEFAULT NULL,
  `beirrit` int(11) DEFAULT NULL,
  `beagit` int(11) DEFAULT NULL,
  `beperch` int(11) DEFAULT NULL,
  `berem` int(11) DEFAULT NULL,
  `beremago` int(11) DEFAULT NULL,
  `beanx` int(11) DEFAULT NULL,
  `beothr` int(11) DEFAULT NULL,
  `beothrx` text,
  `befpred` int(11) DEFAULT NULL,
  `befpredx` text,
  `bemode` int(11) DEFAULT NULL,
  `bemodex` text,
  `beage` int(11) DEFAULT NULL,
  `decclmot` int(11) DEFAULT NULL,
  `mogait` int(11) DEFAULT NULL,
  `mofalls` int(11) DEFAULT NULL,
  `motrem` int(11) DEFAULT NULL,
  `moslow` int(11) DEFAULT NULL,
  `mofrst` int(11) DEFAULT NULL,
  `momode` int(11) DEFAULT NULL,
  `momodex` text,
  `momopark` int(11) DEFAULT NULL,
  `parkage` int(11) DEFAULT NULL,
  `momoals` int(11) DEFAULT NULL,
  `alsage` int(11) DEFAULT NULL,
  `moage` int(11) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `frstchg` int(11) DEFAULT NULL,
  `lbdeval` int(11) DEFAULT NULL,
  `ftldeval` int(11) DEFAULT NULL,
  `header_fk_followupb9` int(11) DEFAULT NULL,
  PRIMARY KEY (`b9`),
  KEY `header_idx` (`header_fk_followupb9`),
  CONSTRAINT `header_fk_followupb9` FOREIGN KEY (`header_fk_followupb9`) REFERENCES `Header` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FollowupB9`
--

LOCK TABLES `FollowupB9` WRITE;
/*!40000 ALTER TABLE `FollowupB9` DISABLE KEYS */;
INSERT INTO `FollowupB9` VALUES (1,0,0,0,0,0,0,0,0,0,0,0,0,'',0,'',0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,'',1,'',0,0,0,0,0,0,0,1,'',1,0,1,0,0,1,0,0,0,NULL);
/*!40000 ALTER TABLE `FollowupB9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FollowupC1`
--

DROP TABLE IF EXISTS `FollowupC1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FollowupC1` (
  `c1` int(11) NOT NULL AUTO_INCREMENT,
  `mmsecomp` int(11) DEFAULT NULL,
  `mmsereas` int(11) DEFAULT NULL,
  `mmseloc` int(11) DEFAULT NULL,
  `mmselan` int(11) DEFAULT NULL,
  `mmselanx` text,
  `mmsevis` int(11) DEFAULT NULL,
  `mmsehear` int(11) DEFAULT NULL,
  `mmseorda` int(11) DEFAULT NULL,
  `mmseorlo` int(11) DEFAULT NULL,
  `pentagon` int(11) DEFAULT NULL,
  `mmse` int(11) DEFAULT NULL,
  `npsycloc` int(11) DEFAULT NULL,
  `npsylan` int(11) DEFAULT NULL,
  `npsylanx` text,
  `logimo` int(11) DEFAULT NULL,
  `logiday` int(11) DEFAULT NULL,
  `logiyr` int(11) DEFAULT NULL,
  `logiprev` int(11) DEFAULT NULL,
  `logimem` int(11) DEFAULT NULL,
  `udsbentc` int(11) DEFAULT NULL,
  `digif` int(11) DEFAULT NULL,
  `digiflen` int(11) DEFAULT NULL,
  `digib` int(11) DEFAULT NULL,
  `digiblen` int(11) DEFAULT NULL,
  `animals` int(11) DEFAULT NULL,
  `veg` int(11) DEFAULT NULL,
  `traila` int(11) DEFAULT NULL,
  `trailarr` int(11) DEFAULT NULL,
  `trailali` int(11) DEFAULT NULL,
  `trailb` int(11) DEFAULT NULL,
  `trailbrr` int(11) DEFAULT NULL,
  `trailbli` int(11) DEFAULT NULL,
  `memunits` int(11) DEFAULT NULL,
  `memtime` int(11) DEFAULT NULL,
  `udsbentd` int(11) DEFAULT NULL,
  `udsbenrs` int(11) DEFAULT NULL,
  `boston` int(11) DEFAULT NULL,
  `udsverfc` int(11) DEFAULT NULL,
  `udsverfn` int(11) DEFAULT NULL,
  `udsvernf` int(11) DEFAULT NULL,
  `udsverlc` int(11) DEFAULT NULL,
  `udsverlr` int(11) DEFAULT NULL,
  `udsverln` int(11) DEFAULT NULL,
  `udsvertn` int(11) DEFAULT NULL,
  `udsverte` int(11) DEFAULT NULL,
  `udsverti` int(11) DEFAULT NULL,
  `cogstat` int(11) DEFAULT NULL,
  `header_fk_followupc1` int(11) DEFAULT NULL,
  PRIMARY KEY (`c1`),
  KEY `header_idx` (`header_fk_followupc1`),
  CONSTRAINT `header_fk_followupc1` FOREIGN KEY (`header_fk_followupc1`) REFERENCES `Header` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FollowupC1`
--

LOCK TABLES `FollowupC1` WRITE;
/*!40000 ALTER TABLE `FollowupC1` DISABLE KEYS */;
INSERT INTO `FollowupC1` VALUES (1,1,0,2,2,NULL,1,1,5,4,1,25,2,3,NULL,11,NULL,0,20,20,0,0,40,40,70,70,70,50,12,20,250,20,20,20,80,10,2,20,20,10,10,20,0,10,10,20,20,3,NULL),(2,0,0,1,2,NULL,1,1,4,4,1,1,3,2,NULL,9,NULL,0,2,2,2,0,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,2,2,2,2,2,0,2,2,2,2,4,NULL);
/*!40000 ALTER TABLE `FollowupC1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FollowupC2`
--

DROP TABLE IF EXISTS `FollowupC2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FollowupC2` (
  `c2` int(11) NOT NULL AUTO_INCREMENT,
  `mocacomp` int(11) DEFAULT NULL,
  `mocareas` int(11) DEFAULT NULL,
  `mocaloc` int(11) DEFAULT NULL,
  `mocalan` int(11) DEFAULT NULL,
  `mocalanx` text,
  `mocavis` int(11) DEFAULT NULL,
  `mocahear` int(11) DEFAULT NULL,
  `mocatots` int(11) DEFAULT NULL,
  `mocatrai` int(11) DEFAULT NULL,
  `mocacube` int(11) DEFAULT NULL,
  `mocacloc` int(11) DEFAULT NULL,
  `mocaclon` int(11) DEFAULT NULL,
  `mocacloh` int(11) DEFAULT NULL,
  `mocanami` int(11) DEFAULT NULL,
  `mocaregi` int(11) DEFAULT NULL,
  `mocadigi` int(11) DEFAULT NULL,
  `mocalett` int(11) DEFAULT NULL,
  `mocaser7` int(11) DEFAULT NULL,
  `mocarepe` int(11) DEFAULT NULL,
  `mocaflue` int(11) DEFAULT NULL,
  `mocaabst` int(11) DEFAULT NULL,
  `mocarecn` int(11) DEFAULT NULL,
  `mocarecc` int(11) DEFAULT NULL,
  `mocarecr` int(11) DEFAULT NULL,
  `mocaordt` int(11) DEFAULT NULL,
  `mocaormo` int(11) DEFAULT NULL,
  `mocaoryr` int(11) DEFAULT NULL,
  `mocaordy` int(11) DEFAULT NULL,
  `mocaorpl` int(11) DEFAULT NULL,
  `mocaorct` int(11) DEFAULT NULL,
  `npsycloc` int(11) DEFAULT NULL,
  `npsylan` int(11) DEFAULT NULL,
  `npsylanx` text,
  `craftvrs` int(11) DEFAULT NULL,
  `crafturs` int(11) DEFAULT NULL,
  `udsbentc` int(11) DEFAULT NULL,
  `digforct` int(11) DEFAULT NULL,
  `digforsl` int(11) DEFAULT NULL,
  `digbacct` int(11) DEFAULT NULL,
  `digbacls` int(11) DEFAULT NULL,
  `animals` int(11) DEFAULT NULL,
  `veg` int(11) DEFAULT NULL,
  `traila` int(11) DEFAULT NULL,
  `trailarr` int(11) DEFAULT NULL,
  `trailali` int(11) DEFAULT NULL,
  `trailb` int(11) DEFAULT NULL,
  `trailbrr` int(11) DEFAULT NULL,
  `trailbli` int(11) DEFAULT NULL,
  `craftdvr` int(11) DEFAULT NULL,
  `craftdre` int(11) DEFAULT NULL,
  `craftdti` int(11) DEFAULT NULL,
  `craftcue` int(11) DEFAULT NULL,
  `udsbentd` int(11) DEFAULT NULL,
  `udsbenrs` int(11) DEFAULT NULL,
  `minttots` int(11) DEFAULT NULL,
  `minttotw` int(11) DEFAULT NULL,
  `mintscng` int(11) DEFAULT NULL,
  `mintscnc` int(11) DEFAULT NULL,
  `mintpcng` int(11) DEFAULT NULL,
  `mintpcnc` int(11) DEFAULT NULL,
  `udsverfc` int(11) DEFAULT NULL,
  `udsverfn` int(11) DEFAULT NULL,
  `udsvernf` int(11) DEFAULT NULL,
  `udsverlc` int(11) DEFAULT NULL,
  `udsverlr` int(11) DEFAULT NULL,
  `udsverln` int(11) DEFAULT NULL,
  `udsvertn` int(11) DEFAULT NULL,
  `udsverte` int(11) DEFAULT NULL,
  `udsverti` int(11) DEFAULT NULL,
  `cogstat` int(11) DEFAULT NULL,
  `header_fk_followupc2` int(11) DEFAULT NULL,
  PRIMARY KEY (`c2`),
  KEY `header_idx` (`header_fk_followupc2`),
  CONSTRAINT `header_fk_followupc2` FOREIGN KEY (`header_fk_followupc2`) REFERENCES `Header` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FollowupC2`
--

LOCK TABLES `FollowupC2` WRITE;
/*!40000 ALTER TABLE `FollowupC2` DISABLE KEYS */;
INSERT INTO `FollowupC2` VALUES (1,1,0,2,2,NULL,1,1,10,1,1,1,1,1,1,8,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,2,2,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,15,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,NULL),(2,0,0,1,1,NULL,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,1,2,NULL,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,NULL);
/*!40000 ALTER TABLE `FollowupC2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FollowupD1`
--

DROP TABLE IF EXISTS `FollowupD1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FollowupD1` (
  `d1` int(11) NOT NULL AUTO_INCREMENT,
  `dxmethod` int(11) DEFAULT NULL,
  `normcog` int(11) DEFAULT NULL,
  `demented` int(11) DEFAULT NULL,
  `amndem` int(11) DEFAULT NULL,
  `pca` int(11) DEFAULT NULL,
  `ppasyn` int(11) DEFAULT NULL,
  `ppasynt` int(11) DEFAULT NULL,
  `ftdsyn` int(11) DEFAULT NULL,
  `lbdsyn` int(11) DEFAULT NULL,
  `namndem` int(11) DEFAULT NULL,
  `mciamem` int(11) DEFAULT NULL,
  `mciaplus` int(11) DEFAULT NULL,
  `mciaplan` int(11) DEFAULT NULL,
  `mciapatt` int(11) DEFAULT NULL,
  `mciapex` int(11) DEFAULT NULL,
  `mciapvis` int(11) DEFAULT NULL,
  `mcinon1` int(11) DEFAULT NULL,
  `mcin1lan` int(11) DEFAULT NULL,
  `mcin1att` int(11) DEFAULT NULL,
  `mcin1ex` int(11) DEFAULT NULL,
  `mcin1vis` int(11) DEFAULT NULL,
  `mcinon2` int(11) DEFAULT NULL,
  `mcin2lan` int(11) DEFAULT NULL,
  `mcin2att` int(11) DEFAULT NULL,
  `mcin2ex` int(11) DEFAULT NULL,
  `mcin2vis` int(11) DEFAULT NULL,
  `impnomci` int(11) DEFAULT NULL,
  `amylpet` int(11) DEFAULT NULL,
  `amylcsf` int(11) DEFAULT NULL,
  `fdgad` int(11) DEFAULT NULL,
  `hippatr` int(11) DEFAULT NULL,
  `taupetad` int(11) DEFAULT NULL,
  `csftau` int(11) DEFAULT NULL,
  `fdgftld` int(11) DEFAULT NULL,
  `tpetftld` int(11) DEFAULT NULL,
  `mrftld` int(11) DEFAULT NULL,
  `datscan` int(11) DEFAULT NULL,
  `othbiom` int(11) DEFAULT NULL,
  `othbiomx` text,
  `imaglinf` int(11) DEFAULT NULL,
  `imaglac` int(11) DEFAULT NULL,
  `imagmach` int(11) DEFAULT NULL,
  `imagmich` int(11) DEFAULT NULL,
  `imagmwwh` int(11) DEFAULT NULL,
  `imagewmh` int(11) DEFAULT NULL,
  `admut` int(11) DEFAULT NULL,
  `ftldmut` int(11) DEFAULT NULL,
  `othmut` int(11) DEFAULT NULL,
  `othmutx` text,
  `alzdis` int(11) DEFAULT NULL,
  `alzdisif` int(11) DEFAULT NULL,
  `lbdis` int(11) DEFAULT NULL,
  `lbdif` int(11) DEFAULT NULL,
  `park` int(11) DEFAULT NULL,
  `msa` int(11) DEFAULT NULL,
  `msaif` int(11) DEFAULT NULL,
  `psp` int(11) DEFAULT NULL,
  `pspif` int(11) DEFAULT NULL,
  `cort` int(11) DEFAULT NULL,
  `cortif` int(11) DEFAULT NULL,
  `ftldmo` int(11) DEFAULT NULL,
  `ftldmoif` int(11) DEFAULT NULL,
  `ftldnos` int(11) DEFAULT NULL,
  `ftldnoif` int(11) DEFAULT NULL,
  `ftldsubt` int(11) DEFAULT NULL,
  `ftldsubx` text,
  `cvd` int(11) DEFAULT NULL,
  `cvdif` int(11) DEFAULT NULL,
  `prevstk` int(11) DEFAULT NULL,
  `strokdec` int(11) DEFAULT NULL,
  `stkimag` int(11) DEFAULT NULL,
  `infnetw` int(11) DEFAULT NULL,
  `infwmh` int(11) DEFAULT NULL,
  `esstrem` int(11) DEFAULT NULL,
  `esstreif` int(11) DEFAULT NULL,
  `downs` int(11) DEFAULT NULL,
  `downsif` int(11) DEFAULT NULL,
  `hunt` int(11) DEFAULT NULL,
  `huntif` int(11) DEFAULT NULL,
  `prion` int(11) DEFAULT NULL,
  `prionif` int(11) DEFAULT NULL,
  `brninj` int(11) DEFAULT NULL,
  `brninjif` int(11) DEFAULT NULL,
  `brnincte` int(11) DEFAULT NULL,
  `hyceph` int(11) DEFAULT NULL,
  `hycephif` int(11) DEFAULT NULL,
  `epilep` int(11) DEFAULT NULL,
  `epilepif` int(11) DEFAULT NULL,
  `neop` int(11) DEFAULT NULL,
  `neopif` int(11) DEFAULT NULL,
  `neopstat` int(11) DEFAULT NULL,
  `hiv` int(11) DEFAULT NULL,
  `hivif` int(11) DEFAULT NULL,
  `othcog` int(11) DEFAULT NULL,
  `othcogif` int(11) DEFAULT NULL,
  `othcogx` text,
  `dep` int(11) DEFAULT NULL,
  `depif` int(11) DEFAULT NULL,
  `deptreat` int(11) DEFAULT NULL,
  `bipoldx` int(11) DEFAULT NULL,
  `bipoldif` int(11) DEFAULT NULL,
  `schizop` int(11) DEFAULT NULL,
  `schizoif` int(11) DEFAULT NULL,
  `anxiet` int(11) DEFAULT NULL,
  `anxietif` int(11) DEFAULT NULL,
  `delir` int(11) DEFAULT NULL,
  `delirif` int(11) DEFAULT NULL,
  `ptsddx` int(11) DEFAULT NULL,
  `ptsddxif` int(11) DEFAULT NULL,
  `othpsy` int(11) DEFAULT NULL,
  `othpsyif` int(11) DEFAULT NULL,
  `othpsyx` text,
  `alcdem` int(11) DEFAULT NULL,
  `alcdemif` int(11) DEFAULT NULL,
  `alcabuse` int(11) DEFAULT NULL,
  `impsub` int(11) DEFAULT NULL,
  `impsubif` int(11) DEFAULT NULL,
  `dysill` int(11) DEFAULT NULL,
  `dysillif` int(11) DEFAULT NULL,
  `meds` int(11) DEFAULT NULL,
  `medsif` int(11) DEFAULT NULL,
  `header_fk_followupd1` int(11) DEFAULT NULL,
  PRIMARY KEY (`d1`),
  KEY `header_idx` (`header_fk_followupd1`),
  CONSTRAINT `header_fk_followupd1` FOREIGN KEY (`header_fk_followupd1`) REFERENCES `Header` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FollowupD1`
--

LOCK TABLES `FollowupD1` WRITE;
/*!40000 ALTER TABLE `FollowupD1` DISABLE KEYS */;
INSERT INTO `FollowupD1` VALUES (1,2,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,1,1,0,0,1,0,1,1,'Hello',1,1,0,0,0,0,9,9,9,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,1,2,0,0,0,0,NULL),(2,2,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,0,0,1,1,'Hello',1,0,0,0,0,0,9,9,9,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0,NULL),(3,2,1,0,1,1,1,2,1,1,1,1,1,0,0,1,1,1,0,1,0,1,1,0,0,0,0,1,0,1,1,8,1,0,1,1,8,1,1,'rfr',0,0,1,8,0,0,9,9,1,'zefdrf',1,1,0,2,1,1,1,1,3,1,2,1,2,1,2,1,'',1,0,0,0,0,1,9,1,0,0,1,0,2,0,3,0,1,0,1,0,0,0,0,1,2,0,0,1,0,NULL,1,0,1,0,0,1,0,0,1,0,1,0,3,0,1,NULL,0,0,0,1,0,1,0,1,0,NULL),(4,1,1,0,1,1,1,0,1,1,1,1,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,'de',0,0,0,0,0,0,9,9,1,'',1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,2,'',1,0,0,0,0,1,9,0,1,0,1,0,1,0,1,1,0,9,1,0,1,0,1,0,2,1,0,1,0,NULL,1,0,0,0,0,0,2,0,0,0,3,1,0,0,1,NULL,0,0,1,1,0,1,0,1,0,NULL);
/*!40000 ALTER TABLE `FollowupD1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FollowupD2`
--

DROP TABLE IF EXISTS `FollowupD2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FollowupD2` (
  `d2` int(11) NOT NULL AUTO_INCREMENT,
  `cancer` int(11) DEFAULT NULL,
  `cancsite` int(11) DEFAULT NULL,
  `diabet` int(11) DEFAULT NULL,
  `myoinf` int(11) DEFAULT NULL,
  `conghrt` int(11) DEFAULT NULL,
  `afibrill` int(11) DEFAULT NULL,
  `hypert` int(11) DEFAULT NULL,
  `angina` int(11) DEFAULT NULL,
  `hypchol` int(11) DEFAULT NULL,
  `vb12def` int(11) DEFAULT NULL,
  `thydis` int(11) DEFAULT NULL,
  `arth` int(11) DEFAULT NULL,
  `artype` int(11) DEFAULT NULL,
  `artypex` text,
  `artupex` int(11) DEFAULT NULL,
  `artloex` int(11) DEFAULT NULL,
  `artspin` int(11) DEFAULT NULL,
  `artunkn` int(11) DEFAULT NULL,
  `urineinc` int(11) DEFAULT NULL,
  `bowlic` int(11) DEFAULT NULL,
  `sleepap` int(11) DEFAULT NULL,
  `remdis` int(11) DEFAULT NULL,
  `hyposom` int(11) DEFAULT NULL,
  `sleepoth` int(11) DEFAULT NULL,
  `sleeptx` int(11) DEFAULT NULL,
  `angiocp` int(11) DEFAULT NULL,
  `angiopci` int(11) DEFAULT NULL,
  `pacemake` int(11) DEFAULT NULL,
  `hvalve` int(11) DEFAULT NULL,
  `antienc` int(11) DEFAULT NULL,
  `antiencx` text,
  `othcond` int(11) DEFAULT NULL,
  `othcondx` text,
  `header_fk_followupd2` int(11) DEFAULT NULL,
  PRIMARY KEY (`d2`),
  KEY `header_idx` (`header_fk_followupd2`),
  CONSTRAINT `header_fk_followupd2` FOREIGN KEY (`header_fk_followupd2`) REFERENCES `Header` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FollowupD2`
--

LOCK TABLES `FollowupD2` WRITE;
/*!40000 ALTER TABLE `FollowupD2` DISABLE KEYS */;
INSERT INTO `FollowupD2` VALUES (1,1,0,1,0,0,0,0,0,0,0,0,0,0,'de',1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'',0,'',NULL);
/*!40000 ALTER TABLE `FollowupD2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FollowupZ1`
--

DROP TABLE IF EXISTS `FollowupZ1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FollowupZ1` (
  `z1` int(11) NOT NULL AUTO_INCREMENT,
  `a2sub` int(11) DEFAULT NULL,
  `a2not` int(11) DEFAULT NULL,
  `a2comm` text,
  `a3sub` int(11) DEFAULT NULL,
  `a3not` int(11) DEFAULT NULL,
  `a3comm` text,
  `a4sub` int(11) DEFAULT NULL,
  `a4not` int(11) DEFAULT NULL,
  `a4comm` text,
  `b1sub` int(11) DEFAULT NULL,
  `b1not` int(11) DEFAULT NULL,
  `b1comm` text,
  `b5sub` int(11) DEFAULT NULL,
  `b5not` int(11) DEFAULT NULL,
  `b5comm` text,
  `b6sub` int(11) DEFAULT NULL,
  `b6not` int(11) DEFAULT NULL,
  `B6Comm` text,
  `b7sub` int(11) DEFAULT NULL,
  `b7not` int(11) DEFAULT NULL,
  `b7comm` text,
  `header_fk_followupz1` int(11) DEFAULT NULL,
  PRIMARY KEY (`z1`),
  KEY `header_idx` (`header_fk_followupz1`),
  CONSTRAINT `header_fk_followupz1` FOREIGN KEY (`header_fk_followupz1`) REFERENCES `Header` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FollowupZ1`
--

LOCK TABLES `FollowupZ1` WRITE;
/*!40000 ALTER TABLE `FollowupZ1` DISABLE KEYS */;
INSERT INTO `FollowupZ1` VALUES (1,0,0,'',1,96,'',0,98,'',1,0,'',0,95,'',1,96,'',1,97,'',NULL),(2,1,0,'toto est beau',0,96,'titi aussi',1,98,'et tutu pas vu',0,0,'',1,95,'plouf',0,96,'paf',0,97,'pif',NULL);
/*!40000 ALTER TABLE `FollowupZ1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Header`
--

DROP TABLE IF EXISTS `Header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Header` (
  `header` int(11) NOT NULL AUTO_INCREMENT,
  `packet` text,
  `formid` text,
  `formver` int(11) DEFAULT NULL,
  `adcid` int(11) DEFAULT NULL,
  `ptid` text,
  `visitmo` int(11) DEFAULT NULL,
  `visitday` int(11) DEFAULT NULL,
  `visityr` int(11) DEFAULT NULL,
  `visitnum` int(11) DEFAULT NULL,
  `initials` text,
  `detailsid` int(11) NOT NULL,
  PRIMARY KEY (`header`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Header`
--

LOCK TABLES `Header` WRITE;
/*!40000 ALTER TABLE `Header` DISABLE KEYS */;
INSERT INTO `Header` VALUES (1,NULL,NULL,NULL,33,NULL,9,9,1999,NULL,'ED',17),(2,'F','A2',3,33,'12',9,9,1999,1,'ZS',18),(4,'F','A2',3,33,'12',1,1,2010,2,'ED',8),(5,'F','A2',3,33,'1',1,2,1988,2,'3',9),(6,'F','A1',3,33,'0',0,0,0,0,'null',19),(7,'F','A1',3,33,'0',0,0,0,0,'null',20),(8,'F','A1',3,33,'0',0,0,0,0,'null',21),(9,'F','A1',3,33,'0',0,0,0,0,'null',22),(10,'F','A2',3,33,'66',1,2,1899,1,'DW',10),(11,'F','A1',3,33,'133',5,5,2005,3,'ZA',23),(22,'F','A3',3,33,'1234',1,1,1200,1,'EE',26),(23,'F','A3',3,33,'36',1,1,1111,1,'11',27),(24,'F','A3',3,33,'233',1,1,1110,1,'EE',28),(25,'F','A3',3,33,'445',1,3,3321,1,'EE',29);
/*!40000 ALTER TABLE `Header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InitialA1`
--

DROP TABLE IF EXISTS `InitialA1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InitialA1` (
  `a1` int(11) NOT NULL AUTO_INCREMENT,
  `reason` int(11) DEFAULT NULL,
  `refersc` int(11) DEFAULT NULL,
  `learned` int(11) DEFAULT NULL,
  `prestat` int(11) DEFAULT NULL,
  `prespart` int(11) DEFAULT NULL,
  `sourcenw` int(11) DEFAULT NULL,
  `birthmo` int(11) DEFAULT NULL,
  `birthyr` int(11) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `hispanic` int(11) DEFAULT NULL,
  `hispor` int(11) DEFAULT NULL,
  `hisporx` text,
  `race` int(11) DEFAULT NULL,
  `racex` text,
  `racesec` int(11) DEFAULT NULL,
  `racesecx` text,
  `raceter` int(11) DEFAULT NULL,
  `raceterx` text,
  `primlang` int(11) DEFAULT NULL,
  `primlanx` text,
  `educ` int(11) DEFAULT NULL,
  `maristat` int(11) DEFAULT NULL,
  `livsitua` int(11) DEFAULT NULL,
  `independ` int(11) DEFAULT NULL,
  `residenc` int(11) DEFAULT NULL,
  `zip` text,
  `handed` int(11) DEFAULT NULL,
  `header_fk_initiala1` int(11) DEFAULT NULL,
  PRIMARY KEY (`a1`),
  KEY `header_idx` (`header_fk_initiala1`),
  CONSTRAINT `header_fk_initiala1` FOREIGN KEY (`header_fk_initiala1`) REFERENCES `AvirerInitialHeader` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InitialA1`
--

LOCK TABLES `InitialA1` WRITE;
/*!40000 ALTER TABLE `InitialA1` DISABLE KEYS */;
INSERT INTO `InitialA1` VALUES (1,1,1,1,1,1,1,0,0,0,0,1,'',1,'',1,'',1,'',1,'',0,1,1,1,NULL,'az',1,NULL);
/*!40000 ALTER TABLE `InitialA1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InitialA2`
--

DROP TABLE IF EXISTS `InitialA2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InitialA2` (
  `a2` int(11) NOT NULL AUTO_INCREMENT,
  `inbirmo` int(11) DEFAULT NULL,
  `inbiryr` int(11) DEFAULT NULL,
  `insex` int(11) DEFAULT NULL,
  `inhisp` int(11) DEFAULT NULL,
  `inhispor` int(11) DEFAULT NULL,
  `inhispox` text,
  `inrace` int(11) DEFAULT NULL,
  `inracex` text,
  `inrasec` int(11) DEFAULT NULL,
  `inrasecx` text,
  `inrater` int(11) DEFAULT NULL,
  `inraterx` text,
  `ineduc` int(11) DEFAULT NULL,
  `inrelto` int(11) DEFAULT NULL,
  `inknown` int(11) DEFAULT NULL,
  `inlivwth` int(11) DEFAULT NULL,
  `invisits` int(11) DEFAULT NULL,
  `incalls` int(11) DEFAULT NULL,
  `inrely` int(11) DEFAULT NULL,
  `header_fk_initiala2` int(11) DEFAULT NULL,
  PRIMARY KEY (`a2`),
  KEY `header_idx` (`header_fk_initiala2`),
  CONSTRAINT `header_fk_initiala2` FOREIGN KEY (`header_fk_initiala2`) REFERENCES `AvirerInitialHeader` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InitialA2`
--

LOCK TABLES `InitialA2` WRITE;
/*!40000 ALTER TABLE `InitialA2` DISABLE KEYS */;
INSERT INTO `InitialA2` VALUES (1,12,2010,2,1,4,'',4,'',3,'',4,'',20,4,10,1,3,3,0,NULL),(2,99,9999,1,0,5,'',3,'',2,'',2,'',0,1,999,2,1,1,1,NULL),(3,99,9999,1,0,5,'',3,'',2,'',2,'',0,1,999,2,1,1,1,NULL),(4,99,9999,1,9,6,'',3,'',2,'',3,'',0,1,999,2,6,6,0,NULL),(5,0,0,1,1,1,'',3,'',1,'',1,'',0,1,0,1,5,6,0,NULL),(6,0,0,1,0,2,'',1,'',1,'',2,'',0,1,0,2,1,5,0,NULL),(7,9,9999,2,1,5,'',4,'',3,'',2,'',0,1,999,2,4,5,0,NULL),(8,0,0,1,0,1,'',1,'',1,'',1,'',0,1,0,1,1,1,0,NULL);
/*!40000 ALTER TABLE `InitialA2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InitialA3`
--

DROP TABLE IF EXISTS `InitialA3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InitialA3` (
  `a3` int(11) NOT NULL AUTO_INCREMENT,
  `afffamm` int(11) DEFAULT NULL,
  `fadmut` int(11) DEFAULT NULL,
  `fadmutx` text,
  `fadmuso` int(11) DEFAULT NULL,
  `fadmusox` text,
  `fftdmut` int(11) DEFAULT NULL,
  `fftdmutx` text,
  `fftdmuso` int(11) DEFAULT NULL,
  `fftdmusx` text,
  `fothmut` int(11) DEFAULT NULL,
  `fothmutx` text,
  `fothmuso` int(11) DEFAULT NULL,
  `fothmusx` text,
  `mommob` int(11) DEFAULT NULL,
  `momyob` int(11) DEFAULT NULL,
  `momdage` int(11) DEFAULT NULL,
  `momneur` int(11) DEFAULT NULL,
  `momprdx` int(11) DEFAULT NULL,
  `mommoe` int(11) DEFAULT NULL,
  `momageo` int(11) DEFAULT NULL,
  `dadmob` int(11) DEFAULT NULL,
  `dadyob` int(11) DEFAULT NULL,
  `daddage` int(11) DEFAULT NULL,
  `dadneur` int(11) DEFAULT NULL,
  `dadprdx` int(11) DEFAULT NULL,
  `dadmoe` int(11) DEFAULT NULL,
  `dadageo` int(11) DEFAULT NULL,
  `sibs` int(11) DEFAULT NULL,
  `nwinfsib` int(11) DEFAULT NULL,
  `sib1mob` int(11) DEFAULT NULL,
  `sib1yob` int(11) DEFAULT NULL,
  `sib1agd` int(11) DEFAULT NULL,
  `sib1neu` int(11) DEFAULT NULL,
  `sib1pdx` int(11) DEFAULT NULL,
  `sib1moe` int(11) DEFAULT NULL,
  `sib1ago` int(11) DEFAULT NULL,
  `sib2mob` int(11) DEFAULT NULL,
  `sib2yob` int(11) DEFAULT NULL,
  `sib2agd` int(11) DEFAULT NULL,
  `sib2neu` int(11) DEFAULT NULL,
  `sib2pdx` int(11) DEFAULT NULL,
  `sib2moe` int(11) DEFAULT NULL,
  `sib2ago` int(11) DEFAULT NULL,
  `sib3mob` int(11) DEFAULT NULL,
  `sib3yob` int(11) DEFAULT NULL,
  `sib3agd` int(11) DEFAULT NULL,
  `sib3neu` int(11) DEFAULT NULL,
  `sib3pdx` int(11) DEFAULT NULL,
  `sib3moe` int(11) DEFAULT NULL,
  `sib3ago` int(11) DEFAULT NULL,
  `sib4mob` int(11) DEFAULT NULL,
  `sib4yob` int(11) DEFAULT NULL,
  `sib4agd` int(11) DEFAULT NULL,
  `sib4neu` int(11) DEFAULT NULL,
  `sib4pdx` int(11) DEFAULT NULL,
  `sib4moe` int(11) DEFAULT NULL,
  `sib4ago` int(11) DEFAULT NULL,
  `sib5mob` int(11) DEFAULT NULL,
  `sib5yob` int(11) DEFAULT NULL,
  `sib5agd` int(11) DEFAULT NULL,
  `sib5neu` int(11) DEFAULT NULL,
  `sib5pdx` int(11) DEFAULT NULL,
  `sib5moe` int(11) DEFAULT NULL,
  `sib5ago` int(11) DEFAULT NULL,
  `sib6mob` int(11) DEFAULT NULL,
  `sib6yob` int(11) DEFAULT NULL,
  `sib6agd` int(11) DEFAULT NULL,
  `sib6neu` int(11) DEFAULT NULL,
  `sib6pdx` int(11) DEFAULT NULL,
  `sib6moe` int(11) DEFAULT NULL,
  `sib6ago` int(11) DEFAULT NULL,
  `sib7mob` int(11) DEFAULT NULL,
  `sib7yob` int(11) DEFAULT NULL,
  `sib7agd` int(11) DEFAULT NULL,
  `sib7neu` int(11) DEFAULT NULL,
  `sib7pdx` int(11) DEFAULT NULL,
  `sib7moe` int(11) DEFAULT NULL,
  `sib7ago` int(11) DEFAULT NULL,
  `sib8mob` int(11) DEFAULT NULL,
  `sib8yob` int(11) DEFAULT NULL,
  `sib8agd` int(11) DEFAULT NULL,
  `sib8neu` int(11) DEFAULT NULL,
  `sib8pdx` int(11) DEFAULT NULL,
  `sib8moe` int(11) DEFAULT NULL,
  `sib8ago` int(11) DEFAULT NULL,
  `sib9mob` int(11) DEFAULT NULL,
  `sib9yob` int(11) DEFAULT NULL,
  `sib9agd` int(11) DEFAULT NULL,
  `sib9neu` int(11) DEFAULT NULL,
  `sib9pdx` int(11) DEFAULT NULL,
  `sib9moe` int(11) DEFAULT NULL,
  `sib9ago` int(11) DEFAULT NULL,
  `sib10mob` int(11) DEFAULT NULL,
  `sib10yob` int(11) DEFAULT NULL,
  `sib10agd` int(11) DEFAULT NULL,
  `sib10neu` int(11) DEFAULT NULL,
  `sib10pdx` int(11) DEFAULT NULL,
  `sib10moe` int(11) DEFAULT NULL,
  `sib10ago` int(11) DEFAULT NULL,
  `sib11mob` int(11) DEFAULT NULL,
  `sib11yob` int(11) DEFAULT NULL,
  `sib11agd` int(11) DEFAULT NULL,
  `sib11neu` int(11) DEFAULT NULL,
  `sib11pdx` int(11) DEFAULT NULL,
  `sib11moe` int(11) DEFAULT NULL,
  `sib11ago` int(11) DEFAULT NULL,
  `sib12mob` int(11) DEFAULT NULL,
  `sib12yob` int(11) DEFAULT NULL,
  `sib12agd` int(11) DEFAULT NULL,
  `sib12neu` int(11) DEFAULT NULL,
  `sib12pdx` int(11) DEFAULT NULL,
  `sib12moe` int(11) DEFAULT NULL,
  `sib12ago` int(11) DEFAULT NULL,
  `sib13mob` int(11) DEFAULT NULL,
  `sib13yob` int(11) DEFAULT NULL,
  `sib13agd` int(11) DEFAULT NULL,
  `sib13neu` int(11) DEFAULT NULL,
  `sib13pdx` int(11) DEFAULT NULL,
  `sib13moe` int(11) DEFAULT NULL,
  `sib13ago` int(11) DEFAULT NULL,
  `sib14mob` int(11) DEFAULT NULL,
  `sib14yob` int(11) DEFAULT NULL,
  `sib14agd` int(11) DEFAULT NULL,
  `sib14neu` int(11) DEFAULT NULL,
  `sib14pdx` int(11) DEFAULT NULL,
  `sib14moe` int(11) DEFAULT NULL,
  `sib14ago` int(11) DEFAULT NULL,
  `sib15mob` int(11) DEFAULT NULL,
  `sib15yob` int(11) DEFAULT NULL,
  `sib15agd` int(11) DEFAULT NULL,
  `sib15neu` int(11) DEFAULT NULL,
  `sib15pdx` int(11) DEFAULT NULL,
  `sib15moe` int(11) DEFAULT NULL,
  `sib15ago` int(11) DEFAULT NULL,
  `sib16mob` int(11) DEFAULT NULL,
  `sib16yob` int(11) DEFAULT NULL,
  `sib16agd` int(11) DEFAULT NULL,
  `sib16neu` int(11) DEFAULT NULL,
  `sib16pdx` int(11) DEFAULT NULL,
  `sib16moe` int(11) DEFAULT NULL,
  `sib16ago` int(11) DEFAULT NULL,
  `sib17mob` int(11) DEFAULT NULL,
  `sib17yob` int(11) DEFAULT NULL,
  `sib17agd` int(11) DEFAULT NULL,
  `sib17neu` int(11) DEFAULT NULL,
  `sib17pdx` int(11) DEFAULT NULL,
  `sib17moe` int(11) DEFAULT NULL,
  `sib17ago` int(11) DEFAULT NULL,
  `sib18mob` int(11) DEFAULT NULL,
  `sib18yob` int(11) DEFAULT NULL,
  `sib18agd` int(11) DEFAULT NULL,
  `sib18neu` int(11) DEFAULT NULL,
  `sib18pdx` int(11) DEFAULT NULL,
  `sib18moe` int(11) DEFAULT NULL,
  `sib18ago` int(11) DEFAULT NULL,
  `sib19mob` int(11) DEFAULT NULL,
  `sib19yob` int(11) DEFAULT NULL,
  `sib19agd` int(11) DEFAULT NULL,
  `sib19neu` int(11) DEFAULT NULL,
  `sib19pdx` int(11) DEFAULT NULL,
  `sib19moe` int(11) DEFAULT NULL,
  `sib19ago` int(11) DEFAULT NULL,
  `sib20mob` int(11) DEFAULT NULL,
  `sib20yob` int(11) DEFAULT NULL,
  `sib20agd` int(11) DEFAULT NULL,
  `sib20neu` int(11) DEFAULT NULL,
  `sib20pdx` int(11) DEFAULT NULL,
  `sib20moe` int(11) DEFAULT NULL,
  `sib20ago` int(11) DEFAULT NULL,
  `kids` int(11) DEFAULT NULL,
  `nwinfkid` int(11) DEFAULT NULL,
  `kid1mob` int(11) DEFAULT NULL,
  `kid1yob` int(11) DEFAULT NULL,
  `kid1agd` int(11) DEFAULT NULL,
  `kid1neu` int(11) DEFAULT NULL,
  `kid1pdx` int(11) DEFAULT NULL,
  `kid1moe` int(11) DEFAULT NULL,
  `kid1ago` int(11) DEFAULT NULL,
  `kid2mob` int(11) DEFAULT NULL,
  `kid2yob` int(11) DEFAULT NULL,
  `kid2agd` int(11) DEFAULT NULL,
  `kid2neu` int(11) DEFAULT NULL,
  `kid2pdx` int(11) DEFAULT NULL,
  `kid2moe` int(11) DEFAULT NULL,
  `kid2ago` int(11) DEFAULT NULL,
  `kid3mob` int(11) DEFAULT NULL,
  `kid3yob` int(11) DEFAULT NULL,
  `kid3agd` int(11) DEFAULT NULL,
  `kid3neu` int(11) DEFAULT NULL,
  `kid3pdx` int(11) DEFAULT NULL,
  `kid3moe` int(11) DEFAULT NULL,
  `kid3ago` int(11) DEFAULT NULL,
  `kid4mob` int(11) DEFAULT NULL,
  `kid4yob` int(11) DEFAULT NULL,
  `kid4agd` int(11) DEFAULT NULL,
  `kid4neu` int(11) DEFAULT NULL,
  `kid4pdx` int(11) DEFAULT NULL,
  `kid4moe` int(11) DEFAULT NULL,
  `kid4ago` int(11) DEFAULT NULL,
  `kid5mob` int(11) DEFAULT NULL,
  `kid5yob` int(11) DEFAULT NULL,
  `kid5agd` int(11) DEFAULT NULL,
  `kid5neu` int(11) DEFAULT NULL,
  `kid5pdx` int(11) DEFAULT NULL,
  `kid5moe` int(11) DEFAULT NULL,
  `kid5ago` int(11) DEFAULT NULL,
  `kid6mob` int(11) DEFAULT NULL,
  `kid6yob` int(11) DEFAULT NULL,
  `kid6agd` int(11) DEFAULT NULL,
  `kid6neu` int(11) DEFAULT NULL,
  `kid6pdx` int(11) DEFAULT NULL,
  `kid6moe` int(11) DEFAULT NULL,
  `kid6ago` int(11) DEFAULT NULL,
  `kid7mob` int(11) DEFAULT NULL,
  `kid7yob` int(11) DEFAULT NULL,
  `kid7agd` int(11) DEFAULT NULL,
  `kid7neu` int(11) DEFAULT NULL,
  `kid7pdx` int(11) DEFAULT NULL,
  `kid7moe` int(11) DEFAULT NULL,
  `kid7ago` int(11) DEFAULT NULL,
  `kid8mob` int(11) DEFAULT NULL,
  `kid8yob` int(11) DEFAULT NULL,
  `kid8agd` int(11) DEFAULT NULL,
  `kid8neu` int(11) DEFAULT NULL,
  `kid8pdx` int(11) DEFAULT NULL,
  `kid8moe` int(11) DEFAULT NULL,
  `kid8ago` int(11) DEFAULT NULL,
  `kid9mob` int(11) DEFAULT NULL,
  `kid9yob` int(11) DEFAULT NULL,
  `kid9agd` int(11) DEFAULT NULL,
  `kid9neu` int(11) DEFAULT NULL,
  `kid9pdx` int(11) DEFAULT NULL,
  `kid9moe` int(11) DEFAULT NULL,
  `kid9ago` int(11) DEFAULT NULL,
  `kid10mob` int(11) DEFAULT NULL,
  `kid10yob` int(11) DEFAULT NULL,
  `kid10agd` int(11) DEFAULT NULL,
  `kid10neu` int(11) DEFAULT NULL,
  `kid10pdx` int(11) DEFAULT NULL,
  `kid10moe` int(11) DEFAULT NULL,
  `kid10ago` int(11) DEFAULT NULL,
  `kid11mob` int(11) DEFAULT NULL,
  `kid11yob` int(11) DEFAULT NULL,
  `kid11agd` int(11) DEFAULT NULL,
  `kid11neu` int(11) DEFAULT NULL,
  `kid11pdx` int(11) DEFAULT NULL,
  `kid11moe` int(11) DEFAULT NULL,
  `kid11ago` int(11) DEFAULT NULL,
  `kid12mob` int(11) DEFAULT NULL,
  `kid12yob` int(11) DEFAULT NULL,
  `kid12agd` int(11) DEFAULT NULL,
  `kid12neu` int(11) DEFAULT NULL,
  `kid12pdx` int(11) DEFAULT NULL,
  `kid12moe` int(11) DEFAULT NULL,
  `kid12ago` int(11) DEFAULT NULL,
  `kid13mob` int(11) DEFAULT NULL,
  `kid13yob` int(11) DEFAULT NULL,
  `kid13agd` int(11) DEFAULT NULL,
  `kid13neu` int(11) DEFAULT NULL,
  `kid13pdx` int(11) DEFAULT NULL,
  `kid13moe` int(11) DEFAULT NULL,
  `kid13ago` int(11) DEFAULT NULL,
  `kid14mob` int(11) DEFAULT NULL,
  `kid14yob` int(11) DEFAULT NULL,
  `kid14agd` int(11) DEFAULT NULL,
  `kid14neu` int(11) DEFAULT NULL,
  `kid14pdx` int(11) DEFAULT NULL,
  `kid14moe` int(11) DEFAULT NULL,
  `kid14ago` int(11) DEFAULT NULL,
  `kid15mob` int(11) DEFAULT NULL,
  `kid15yob` int(11) DEFAULT NULL,
  `kid15agd` int(11) DEFAULT NULL,
  `kid15neu` int(11) DEFAULT NULL,
  `kid15pdx` int(11) DEFAULT NULL,
  `kid15moe` int(11) DEFAULT NULL,
  `kid15ago` int(11) DEFAULT NULL,
  `header_fk_initiala3` int(11) DEFAULT NULL,
  PRIMARY KEY (`a3`),
  KEY `header_idx` (`header_fk_initiala3`),
  CONSTRAINT `header_fk_initiala3` FOREIGN KEY (`header_fk_initiala3`) REFERENCES `AvirerInitialHeader` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InitialA3`
--

LOCK TABLES `InitialA3` WRITE;
/*!40000 ALTER TABLE `InitialA3` DISABLE KEYS */;
INSERT INTO `InitialA3` VALUES (1,1,1,'',2,'',2,'',1,'',8,'',3,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),(2,0,1,'',2,'',3,'',8,'',0,'',2,'',9,99,9,9,9,9,9,0,0,0,0,0,0,0,3,0,1,12,13,14,15,16,17,0,0,0,0,0,0,0,3,4,5,6,7,8,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL,0,3,3,3,3,3,3,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL);
/*!40000 ALTER TABLE `InitialA3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InitialA4`
--

DROP TABLE IF EXISTS `InitialA4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InitialA4` (
  `a4` int(11) NOT NULL AUTO_INCREMENT,
  `d03428` int(11) NOT NULL,
  `d00749` int(11) NOT NULL,
  `d03849` int(11) NOT NULL,
  `d00023` int(11) NOT NULL,
  `d00168` int(11) NOT NULL,
  `d00689` int(11) NOT NULL,
  `d00004` int(11) NOT NULL,
  `d04105` int(11) NOT NULL,
  `d00730` int(11) NOT NULL,
  `d00181` int(11) NOT NULL,
  `d03689` int(11) NOT NULL,
  `d03473` int(11) NOT NULL,
  `d03847` int(11) NOT NULL,
  `d04380` int(11) NOT NULL,
  `d03827` int(11) NOT NULL,
  `d04332` int(11) NOT NULL,
  `d00197` int(11) NOT NULL,
  `d04258` int(11) NOT NULL,
  `d00541` int(11) NOT NULL,
  `d00413` int(11) NOT NULL,
  `d00210` int(11) NOT NULL,
  `d00045` int(11) NOT NULL,
  `d04099` int(11) NOT NULL,
  `d05355` int(11) NOT NULL,
  `d00013` int(11) NOT NULL,
  `d03128` int(11) NOT NULL,
  `d04812` int(11) NOT NULL,
  `d04749` int(11) NOT NULL,
  `d00537` int(11) NOT NULL,
  `d04824` int(11) NOT NULL,
  `d03824` int(11) NOT NULL,
  `d04040` int(11) NOT NULL,
  `d00563` int(11) NOT NULL,
  `d00236` int(11) NOT NULL,
  `d01296` int(11) NOT NULL,
  `d04283` int(11) NOT NULL,
  `d04611` int(11) NOT NULL,
  `d00070` int(11) NOT NULL,
  `d03182` int(11) NOT NULL,
  `d04750` int(11) NOT NULL,
  `d00246` int(11) NOT NULL,
  `d00253` int(11) NOT NULL,
  `d03052` int(11) NOT NULL,
  `d04017` int(11) NOT NULL,
  `d00278` int(11) NOT NULL,
  `d00732` int(11) NOT NULL,
  `d00149` int(11) NOT NULL,
  `d03821` int(11) NOT NULL,
  `d00280` int(11) NOT NULL,
  `d04532` int(11) NOT NULL,
  `d04899` int(11) NOT NULL,
  `d03807` int(11) NOT NULL,
  `d00134` int(11) NOT NULL,
  `d04025` int(11) NOT NULL,
  `d04289` int(11) NOT NULL,
  `d00019` int(11) NOT NULL,
  `curmed` int(11) NOT NULL,
  `dspec1` text NOT NULL,
  `dspec2` text NOT NULL,
  `dspec3` text NOT NULL,
  `dspec4` text NOT NULL,
  `dspec5` text NOT NULL,
  `dspec6` text NOT NULL,
  `dspec7` text NOT NULL,
  `dspec8` text NOT NULL,
  `dspec9` text NOT NULL,
  `dspec10` text NOT NULL,
  `dd1` int(11) NOT NULL,
  `dd2` int(11) NOT NULL,
  `dd3` int(11) NOT NULL,
  `dd4` int(11) NOT NULL,
  `dd5` int(11) NOT NULL,
  `dd6` int(11) NOT NULL,
  `dd7` int(11) NOT NULL,
  `dd8` int(11) NOT NULL,
  `dd9` int(11) NOT NULL,
  `dd10` int(11) NOT NULL,
  `d00015` int(11) NOT NULL,
  `d03050` int(11) NOT NULL,
  `d04058` int(11) NOT NULL,
  `d03140` int(11) NOT NULL,
  `d03145` int(11) NOT NULL,
  `d05350` int(11) NOT NULL,
  `d01018` int(11) NOT NULL,
  `d00412` int(11) NOT NULL,
  `d04523` int(11) NOT NULL,
  `d00405` int(11) NOT NULL,
  `d00021` int(11) NOT NULL,
  `d04537` int(11) NOT NULL,
  `d04851` int(11) NOT NULL,
  `d00880` int(11) NOT NULL,
  `d00746` int(11) NOT NULL,
  `d04121` int(11) NOT NULL,
  `d00386` int(11) NOT NULL,
  `d03826` int(11) NOT NULL,
  `d00395` int(11) NOT NULL,
  `d04113` int(11) NOT NULL,
  `d03181` int(11) NOT NULL,
  `d00022` int(11) NOT NULL,
  `d00910` int(11) NOT NULL,
  `d00049` int(11) NOT NULL,
  `d00426` int(11) NOT NULL,
  `d00170` int(11) NOT NULL,
  `d00425` int(11) NOT NULL,
  `d03137` int(11) NOT NULL,
  `d04420` int(11) NOT NULL,
  `d01021` int(11) NOT NULL,
  `d00241` int(11) NOT NULL,
  `d04418` int(11) NOT NULL,
  `d00051` int(11) NOT NULL,
  `d00314` int(11) NOT NULL,
  `d00321` int(11) NOT NULL,
  `d00497` int(11) NOT NULL,
  `d00325` int(11) NOT NULL,
  `d00328` int(11) NOT NULL,
  `d04514` int(11) NOT NULL,
  `d03157` int(11) NOT NULL,
  `d00345` int(11) NOT NULL,
  `d00348` int(11) NOT NULL,
  `d04220` int(11) NOT NULL,
  `d03129` int(11) NOT NULL,
  PRIMARY KEY (`a4`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InitialA4`
--

LOCK TABLES `InitialA4` WRITE;
/*!40000 ALTER TABLE `InitialA4` DISABLE KEYS */;
INSERT INTO `InitialA4` VALUES (1,0,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'e','e','e','e','e','e','e','e','e','e',1,1,1,1,1,1,1,1,1,1,0,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0),(2,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,'','','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0),(3,0,1,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,'','','','','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `InitialA4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InitialA5`
--

DROP TABLE IF EXISTS `InitialA5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InitialA5` (
  `a5` int(11) NOT NULL AUTO_INCREMENT,
  `tobac30` int(11) DEFAULT NULL,
  `tobac100` int(11) DEFAULT NULL,
  `smokyrs` int(11) DEFAULT NULL,
  `packsper` int(11) DEFAULT NULL,
  `quitsmok` int(11) DEFAULT NULL,
  `alcoccas` int(11) DEFAULT NULL,
  `alcfreq` int(11) DEFAULT NULL,
  `cvhatt` int(11) DEFAULT NULL,
  `hattmult` int(11) DEFAULT NULL,
  `hattyear` int(11) DEFAULT NULL,
  `cvafib` int(11) DEFAULT NULL,
  `cvangio` int(11) DEFAULT NULL,
  `cvbypass` int(11) DEFAULT NULL,
  `cvpacdef` int(11) DEFAULT NULL,
  `cvchf` int(11) DEFAULT NULL,
  `cvangina` int(11) DEFAULT NULL,
  `cvhalve` int(11) DEFAULT NULL,
  `cvothr` int(11) DEFAULT NULL,
  `cvothrx` text,
  `cbstroke` int(11) DEFAULT NULL,
  `strokmul` int(11) DEFAULT NULL,
  `strokyr` int(11) DEFAULT NULL,
  `cbtia` int(11) DEFAULT NULL,
  `tiamult` int(11) DEFAULT NULL,
  `tiayear` int(11) DEFAULT NULL,
  `pd` int(11) DEFAULT NULL,
  `pdyr` int(11) DEFAULT NULL,
  `pdothr` int(11) DEFAULT NULL,
  `pdothryr` int(11) DEFAULT NULL,
  `seizures` int(11) DEFAULT NULL,
  `tbi` int(11) DEFAULT NULL,
  `tbibrief` int(11) DEFAULT NULL,
  `tbiexten` int(11) DEFAULT NULL,
  `tbiwolos` int(11) DEFAULT NULL,
  `tbiyear` int(11) DEFAULT NULL,
  `diabetes` int(11) DEFAULT NULL,
  `diabtype` int(11) DEFAULT NULL,
  `hyperten` int(11) DEFAULT NULL,
  `hypercho` int(11) DEFAULT NULL,
  `b12def` int(11) DEFAULT NULL,
  `thyroid` int(11) DEFAULT NULL,
  `arthrit` int(11) DEFAULT NULL,
  `arthtype` int(11) DEFAULT NULL,
  `arthtypx` text,
  `arthupex` int(11) DEFAULT NULL,
  `arthloex` int(11) DEFAULT NULL,
  `arthspin` int(11) DEFAULT NULL,
  `arthunk` int(11) DEFAULT NULL,
  `incontu` int(11) DEFAULT NULL,
  `incontf` int(11) DEFAULT NULL,
  `apnea` int(11) DEFAULT NULL,
  `rbd` int(11) DEFAULT NULL,
  `insomn` int(11) DEFAULT NULL,
  `orthsleep` int(11) DEFAULT NULL,
  `othsleex` text,
  `alcohol` int(11) DEFAULT NULL,
  `abusothr` int(11) DEFAULT NULL,
  `abusx` text,
  `ptsd` int(11) DEFAULT NULL,
  `bipolar` int(11) DEFAULT NULL,
  `schiz` int(11) DEFAULT NULL,
  `dep2yrs` int(11) DEFAULT NULL,
  `depothr` int(11) DEFAULT NULL,
  `anxiety` int(11) DEFAULT NULL,
  `ocd` int(11) DEFAULT NULL,
  `npsydev` int(11) DEFAULT NULL,
  `psycdis` int(11) DEFAULT NULL,
  `psycdisx` text,
  `header_fk_initiala5` int(11) DEFAULT NULL,
  PRIMARY KEY (`a5`),
  KEY `header_idx` (`header_fk_initiala5`),
  CONSTRAINT `header_fk_initiala5` FOREIGN KEY (`header_fk_initiala5`) REFERENCES `AvirerInitialHeader` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InitialA5`
--

LOCK TABLES `InitialA5` WRITE;
/*!40000 ALTER TABLE `InitialA5` DISABLE KEYS */;
INSERT INTO `InitialA5` VALUES (1,0,0,5,3,30,1,2,0,0,2000,0,0,0,0,0,0,0,0,'Hello',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,NULL,0,1,NULL,1,0,0,0,0,0,0,0,0,0,'Other',0,0,'Other',0,0,0,0,0,0,0,0,0,'0',NULL),(2,0,1,0,1,0,0,0,0,9,0,0,0,0,0,0,0,0,0,'az',0,9,0,0,9,0,0,0,0,0,0,0,9,9,9,0,0,2,0,0,0,NULL,0,2,'az',2,0,0,0,0,0,0,0,0,0,'az',0,0,'az',0,0,0,9,9,0,0,0,0,'0',NULL);
/*!40000 ALTER TABLE `InitialA5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InitialB1`
--

DROP TABLE IF EXISTS `InitialB1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InitialB1` (
  `b1` int(11) NOT NULL AUTO_INCREMENT,
  `height` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `bpsys` int(11) DEFAULT NULL,
  `bpdias` int(11) DEFAULT NULL,
  `hrate` int(11) DEFAULT NULL,
  `vision` int(11) DEFAULT NULL,
  `viscorr` int(11) DEFAULT NULL,
  `viswcorr` int(11) DEFAULT NULL,
  `hearing` int(11) DEFAULT NULL,
  `hearaid` int(11) DEFAULT NULL,
  `hearwaid` int(11) DEFAULT NULL,
  `header_fk_initialb1` int(11) DEFAULT NULL,
  PRIMARY KEY (`b1`),
  KEY `header_idx` (`header_fk_initialb1`),
  CONSTRAINT `header_fk_initialb1` FOREIGN KEY (`header_fk_initialb1`) REFERENCES `AvirerInitialHeader` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InitialB1`
--

LOCK TABLES `InitialB1` WRITE;
/*!40000 ALTER TABLE `InitialB1` DISABLE KEYS */;
INSERT INTO `InitialB1` VALUES (1,0,0,888,888,888,0,0,0,0,NULL,0,NULL),(2,0,60,80,49,34,0,0,0,0,NULL,0,NULL);
/*!40000 ALTER TABLE `InitialB1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InitialB4`
--

DROP TABLE IF EXISTS `InitialB4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InitialB4` (
  `b4` int(11) NOT NULL AUTO_INCREMENT,
  `memory` float DEFAULT NULL,
  `orient` float DEFAULT NULL,
  `judgment` float DEFAULT NULL,
  `commun` float DEFAULT NULL,
  `homehobb` float DEFAULT NULL,
  `perscare` float DEFAULT NULL,
  `cdrsum` float DEFAULT NULL,
  `cdrglob` float DEFAULT NULL,
  `comport` float DEFAULT NULL,
  `cdrlang` float DEFAULT NULL,
  `header_fk_initialb4` int(11) DEFAULT NULL,
  PRIMARY KEY (`b4`),
  KEY `header_idx` (`header_fk_initialb4`),
  CONSTRAINT `header_fk_initialb4` FOREIGN KEY (`header_fk_initialb4`) REFERENCES `AvirerInitialHeader` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InitialB4`
--

LOCK TABLES `InitialB4` WRITE;
/*!40000 ALTER TABLE `InitialB4` DISABLE KEYS */;
INSERT INTO `InitialB4` VALUES (1,0.5,0.5,1,1,2,2,5,8,1,2,NULL),(2,1,1,1,1,1,1,1,1,1,1,NULL);
/*!40000 ALTER TABLE `InitialB4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InitialB5`
--

DROP TABLE IF EXISTS `InitialB5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InitialB5` (
  `b5` int(11) NOT NULL AUTO_INCREMENT,
  `npiqinf` int(11) DEFAULT NULL,
  `npiqinfx` text,
  `del` int(11) DEFAULT NULL,
  `delsev` int(11) DEFAULT NULL,
  `hall` int(11) DEFAULT NULL,
  `hallsev` int(11) DEFAULT NULL,
  `agit` int(11) DEFAULT NULL,
  `agitsev` int(11) DEFAULT NULL,
  `depd` int(11) DEFAULT NULL,
  `depdsev` int(11) DEFAULT NULL,
  `anx` int(11) DEFAULT NULL,
  `anxsev` int(11) DEFAULT NULL,
  `elat` int(11) DEFAULT NULL,
  `elatsev` int(11) DEFAULT NULL,
  `apa` int(11) DEFAULT NULL,
  `apasev` int(11) DEFAULT NULL,
  `disn` int(11) DEFAULT NULL,
  `disnsev` int(11) DEFAULT NULL,
  `irr` int(11) DEFAULT NULL,
  `irrsev` int(11) DEFAULT NULL,
  `mot` int(11) DEFAULT NULL,
  `motsev` int(11) DEFAULT NULL,
  `nite` int(11) DEFAULT NULL,
  `nitesev` int(11) DEFAULT NULL,
  `app` int(11) DEFAULT NULL,
  `appsev` int(11) DEFAULT NULL,
  `header_fk_initialb5` int(11) DEFAULT NULL,
  PRIMARY KEY (`b5`),
  KEY `header_idx` (`header_fk_initialb5`),
  CONSTRAINT `header_fk_initialb5` FOREIGN KEY (`header_fk_initialb5`) REFERENCES `AvirerInitialHeader` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InitialB5`
--

LOCK TABLES `InitialB5` WRITE;
/*!40000 ALTER TABLE `InitialB5` DISABLE KEYS */;
INSERT INTO `InitialB5` VALUES (1,2,NULL,1,1,1,1,1,1,1,1,1,2,1,1,1,2,1,1,1,2,1,1,1,2,1,1,NULL),(2,1,NULL,1,1,0,2,9,3,1,9,1,1,0,2,9,3,1,9,0,1,9,2,1,3,0,9,NULL);
/*!40000 ALTER TABLE `InitialB5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InitialB6`
--

DROP TABLE IF EXISTS `InitialB6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InitialB6` (
  `b6` int(11) NOT NULL AUTO_INCREMENT,
  `nogds` int(11) DEFAULT NULL,
  `satis` int(11) DEFAULT NULL,
  `dropact` int(11) DEFAULT NULL,
  `empty` int(11) DEFAULT NULL,
  `bored` int(11) DEFAULT NULL,
  `spirits` int(11) DEFAULT NULL,
  `afraid` int(11) DEFAULT NULL,
  `happy` int(11) DEFAULT NULL,
  `helpless` int(11) DEFAULT NULL,
  `stayhome` int(11) DEFAULT NULL,
  `memprob` int(11) DEFAULT NULL,
  `wondrful` int(11) DEFAULT NULL,
  `wrthless` int(11) DEFAULT NULL,
  `energy` int(11) DEFAULT NULL,
  `hopeless` int(11) DEFAULT NULL,
  `better` int(11) DEFAULT NULL,
  `gds` int(11) DEFAULT NULL,
  `header_fk_initialb6` int(11) DEFAULT NULL,
  PRIMARY KEY (`b6`),
  KEY `header_idx` (`header_fk_initialb6`),
  CONSTRAINT `header_fk_initialb6` FOREIGN KEY (`header_fk_initialb6`) REFERENCES `AvirerInitialHeader` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InitialB6`
--

LOCK TABLES `InitialB6` WRITE;
/*!40000 ALTER TABLE `InitialB6` DISABLE KEYS */;
INSERT INTO `InitialB6` VALUES (1,1,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0,88,NULL),(2,1,0,0,0,0,0,NULL,0,0,0,0,0,0,0,0,0,88,NULL),(3,0,1,1,1,1,1,NULL,1,1,1,1,1,1,9,0,9,30,NULL),(4,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,88,NULL),(5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL);
/*!40000 ALTER TABLE `InitialB6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InitialB7`
--

DROP TABLE IF EXISTS `InitialB7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InitialB7` (
  `b7` int(11) NOT NULL AUTO_INCREMENT,
  `bills` int(11) DEFAULT NULL,
  `taxes` int(11) DEFAULT NULL,
  `shopping` int(11) DEFAULT NULL,
  `games` int(11) DEFAULT NULL,
  `stove` int(11) DEFAULT NULL,
  `mealprep` int(11) DEFAULT NULL,
  `events` int(11) DEFAULT NULL,
  `payattn` int(11) DEFAULT NULL,
  `remdates` int(11) DEFAULT NULL,
  `travel` int(11) DEFAULT NULL,
  `header_fk_initialb7` int(11) DEFAULT NULL,
  PRIMARY KEY (`b7`),
  KEY `header_idx` (`header_fk_initialb7`),
  CONSTRAINT `header_fk_initialb7` FOREIGN KEY (`header_fk_initialb7`) REFERENCES `AvirerInitialHeader` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InitialB7`
--

LOCK TABLES `InitialB7` WRITE;
/*!40000 ALTER TABLE `InitialB7` DISABLE KEYS */;
INSERT INTO `InitialB7` VALUES (1,2,1,1,2,2,1,2,1,0,8,NULL),(2,8,8,8,8,8,8,8,8,8,8,NULL);
/*!40000 ALTER TABLE `InitialB7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InitialB8`
--

DROP TABLE IF EXISTS `InitialB8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InitialB8` (
  `b8` int(11) NOT NULL AUTO_INCREMENT,
  `normexam` int(11) DEFAULT NULL,
  `parksign` int(11) DEFAULT NULL,
  `resttrl` int(11) DEFAULT NULL,
  `resttrr` int(11) DEFAULT NULL,
  `slowingl` int(11) DEFAULT NULL,
  `slowingr` int(11) DEFAULT NULL,
  `rigidl` int(11) DEFAULT NULL,
  `rigidr` int(11) DEFAULT NULL,
  `brady` int(11) DEFAULT NULL,
  `parkgait` int(11) DEFAULT NULL,
  `postinst` int(11) DEFAULT NULL,
  `cvdsigns` int(11) DEFAULT NULL,
  `cortdef` int(11) DEFAULT NULL,
  `sivdfind` int(11) DEFAULT NULL,
  `cvdmotl` int(11) DEFAULT NULL,
  `cvdmotr` int(11) DEFAULT NULL,
  `cortvisl` int(11) DEFAULT NULL,
  `cortvisr` int(11) DEFAULT NULL,
  `somatl` int(11) DEFAULT NULL,
  `somatr` int(11) DEFAULT NULL,
  `postcort` int(11) DEFAULT NULL,
  `pspcbs` int(11) DEFAULT NULL,
  `eyepsp` int(11) DEFAULT NULL,
  `dyspsp` int(11) DEFAULT NULL,
  `axialpsp` int(11) DEFAULT NULL,
  `gaitpsp` int(11) DEFAULT NULL,
  `apraxsp` int(11) DEFAULT NULL,
  `apraxl` int(11) DEFAULT NULL,
  `apraxr` int(11) DEFAULT NULL,
  `cortsenl` int(11) DEFAULT NULL,
  `cortsenr` int(11) DEFAULT NULL,
  `ataxl` int(11) DEFAULT NULL,
  `ataxr` int(11) DEFAULT NULL,
  `alienlml` int(11) DEFAULT NULL,
  `alienlmr` int(11) DEFAULT NULL,
  `dystonl` int(11) DEFAULT NULL,
  `dystonr` int(11) DEFAULT NULL,
  `myocllt` int(11) DEFAULT NULL,
  `myoclrt` int(11) DEFAULT NULL,
  `alsfind` int(11) DEFAULT NULL,
  `gaitnph` int(11) DEFAULT NULL,
  `othneur` int(11) DEFAULT NULL,
  `othneurx` text,
  `header_fk_initialb8` int(11) DEFAULT NULL,
  PRIMARY KEY (`b8`),
  KEY `header_idx` (`header_fk_initialb8`),
  CONSTRAINT `header_fk_initialb8` FOREIGN KEY (`header_fk_initialb8`) REFERENCES `AvirerInitialHeader` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InitialB8`
--

LOCK TABLES `InitialB8` WRITE;
/*!40000 ALTER TABLE `InitialB8` DISABLE KEYS */;
INSERT INTO `InitialB8` VALUES (1,1,1,1,8,1,1,NULL,8,0,0,0,1,1,8,8,8,1,1,8,8,1,1,8,1,1,8,1,1,1,1,8,1,8,8,1,8,1,8,1,1,0,0,'',NULL),(2,0,0,1,1,1,1,NULL,1,0,0,0,0,1,1,1,1,1,1,1,1,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,0,'',NULL);
/*!40000 ALTER TABLE `InitialB8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InitialB9`
--

DROP TABLE IF EXISTS `InitialB9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InitialB9` (
  `b9` int(11) NOT NULL AUTO_INCREMENT,
  `decsub` int(11) DEFAULT NULL,
  `decin` int(11) DEFAULT NULL,
  `decclcog` int(11) DEFAULT NULL,
  `cogmem` int(11) DEFAULT NULL,
  `cogori` int(11) DEFAULT NULL,
  `cogjudg` int(11) DEFAULT NULL,
  `coglang` int(11) DEFAULT NULL,
  `cogvis` int(11) DEFAULT NULL,
  `cogattn` int(11) DEFAULT NULL,
  `cogfluc` int(11) DEFAULT NULL,
  `cogflago` int(11) DEFAULT NULL,
  `cogothr` int(11) DEFAULT NULL,
  `cogothrx` text,
  `cogfpred` int(11) DEFAULT NULL,
  `cogfprex` text,
  `cogmode` int(11) DEFAULT NULL,
  `cogmodex` text,
  `decage` int(11) DEFAULT NULL,
  `decclbe` int(11) DEFAULT NULL,
  `beapathy` int(11) DEFAULT NULL,
  `bedep` int(11) DEFAULT NULL,
  `bevhall` int(11) DEFAULT NULL,
  `bevwell` int(11) DEFAULT NULL,
  `bevhago` int(11) DEFAULT NULL,
  `beahall` int(11) DEFAULT NULL,
  `bedel` int(11) DEFAULT NULL,
  `bedisin` int(11) DEFAULT NULL,
  `beirrit` int(11) DEFAULT NULL,
  `beagit` int(11) DEFAULT NULL,
  `beperch` int(11) DEFAULT NULL,
  `berem` int(11) DEFAULT NULL,
  `beremago` int(11) DEFAULT NULL,
  `beanx` int(11) DEFAULT NULL,
  `beothr` int(11) DEFAULT NULL,
  `beothrx` text,
  `befpred` int(11) DEFAULT NULL,
  `befpredx` text,
  `bemode` int(11) DEFAULT NULL,
  `bemodex` text,
  `beage` int(11) DEFAULT NULL,
  `decclmot` int(11) DEFAULT NULL,
  `mogait` int(11) DEFAULT NULL,
  `mofalls` int(11) DEFAULT NULL,
  `motrem` int(11) DEFAULT NULL,
  `moslow` int(11) DEFAULT NULL,
  `mofrst` int(11) DEFAULT NULL,
  `momode` int(11) DEFAULT NULL,
  `momodex` text,
  `momopark` int(11) DEFAULT NULL,
  `parkage` int(11) DEFAULT NULL,
  `momoals` int(11) DEFAULT NULL,
  `alsage` int(11) DEFAULT NULL,
  `moage` int(11) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `frstchg` int(11) DEFAULT NULL,
  `lbdeval` int(11) DEFAULT NULL,
  `ftldeval` int(11) DEFAULT NULL,
  `header_fk_initialb9` int(11) DEFAULT NULL,
  PRIMARY KEY (`b9`),
  KEY `header_idx` (`header_fk_initialb9`),
  CONSTRAINT `header_fk_initialb9` FOREIGN KEY (`header_fk_initialb9`) REFERENCES `AvirerInitialHeader` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InitialB9`
--

LOCK TABLES `InitialB9` WRITE;
/*!40000 ALTER TABLE `InitialB9` DISABLE KEYS */;
INSERT INTO `InitialB9` VALUES (1,0,0,0,0,0,0,0,0,0,0,0,0,'',1,'',0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,'',1,'',0,0,0,0,0,0,0,1,'',1,0,2,0,0,1,0,0,0,NULL),(2,0,0,0,0,0,0,0,0,0,0,0,0,'',1,'',0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,'',1,'',0,0,0,0,0,0,0,1,'',1,0,2,0,0,1,0,0,0,NULL);
/*!40000 ALTER TABLE `InitialB9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InitialC2`
--

DROP TABLE IF EXISTS `InitialC2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InitialC2` (
  `c2` int(11) NOT NULL AUTO_INCREMENT,
  `mocacomp` int(11) DEFAULT NULL,
  `mocareas` int(11) DEFAULT NULL,
  `mocaloc` int(11) DEFAULT NULL,
  `mocalan` int(11) DEFAULT NULL,
  `mocalanx` text,
  `mocavis` int(11) DEFAULT NULL,
  `mocahear` int(11) DEFAULT NULL,
  `mocatots` int(11) DEFAULT NULL,
  `mocatrai` int(11) DEFAULT NULL,
  `mocacube` int(11) DEFAULT NULL,
  `mocacloc` int(11) DEFAULT NULL,
  `mocaclon` int(11) DEFAULT NULL,
  `mocacloh` int(11) DEFAULT NULL,
  `mocanami` int(11) DEFAULT NULL,
  `mocaregi` int(11) DEFAULT NULL,
  `mocadigi` int(11) DEFAULT NULL,
  `mocalett` int(11) DEFAULT NULL,
  `mocaser7` int(11) DEFAULT NULL,
  `mocarepe` int(11) DEFAULT NULL,
  `mocaflue` int(11) DEFAULT NULL,
  `mocaabst` int(11) DEFAULT NULL,
  `mocarecn` int(11) DEFAULT NULL,
  `mocarecc` int(11) DEFAULT NULL,
  `mocarecr` int(11) DEFAULT NULL,
  `mocaordt` int(11) DEFAULT NULL,
  `mocaormo` int(11) DEFAULT NULL,
  `mocaoryr` int(11) DEFAULT NULL,
  `mocaordy` int(11) DEFAULT NULL,
  `mocaorpl` int(11) DEFAULT NULL,
  `mocaorct` int(11) DEFAULT NULL,
  `npsycloc` int(11) DEFAULT NULL,
  `npsylan` int(11) DEFAULT NULL,
  `npsylanx` text,
  `craftvrs` int(11) DEFAULT NULL,
  `crafturs` int(11) DEFAULT NULL,
  `udsbentc` int(11) DEFAULT NULL,
  `digforct` int(11) DEFAULT NULL,
  `digforsl` int(11) DEFAULT NULL,
  `digbacct` int(11) DEFAULT NULL,
  `digbacls` int(11) DEFAULT NULL,
  `animals` int(11) DEFAULT NULL,
  `veg` int(11) DEFAULT NULL,
  `traila` int(11) DEFAULT NULL,
  `trailarr` int(11) DEFAULT NULL,
  `trailali` int(11) DEFAULT NULL,
  `trailb` int(11) DEFAULT NULL,
  `trailbrr` int(11) DEFAULT NULL,
  `trailbli` int(11) DEFAULT NULL,
  `craftdvr` int(11) DEFAULT NULL,
  `craftdre` int(11) DEFAULT NULL,
  `craftdti` int(11) DEFAULT NULL,
  `craftcue` int(11) DEFAULT NULL,
  `udsbentd` int(11) DEFAULT NULL,
  `udsbenrs` int(11) DEFAULT NULL,
  `minttots` int(11) DEFAULT NULL,
  `minttotw` int(11) DEFAULT NULL,
  `mintscng` int(11) DEFAULT NULL,
  `mintscnc` int(11) DEFAULT NULL,
  `mintpcng` int(11) DEFAULT NULL,
  `mintpcnc` int(11) DEFAULT NULL,
  `udsverfc` int(11) DEFAULT NULL,
  `udsverfn` int(11) DEFAULT NULL,
  `udsvernf` int(11) DEFAULT NULL,
  `udsverlc` int(11) DEFAULT NULL,
  `udsverlr` int(11) DEFAULT NULL,
  `udsverln` int(11) DEFAULT NULL,
  `udsvertn` int(11) DEFAULT NULL,
  `udsverte` int(11) DEFAULT NULL,
  `udsverti` int(11) DEFAULT NULL,
  `cogstat` int(11) DEFAULT NULL,
  `header_fk_initialc2` int(11) DEFAULT NULL,
  PRIMARY KEY (`c2`),
  KEY `header_idx` (`header_fk_initialc2`),
  CONSTRAINT `header_fk_initialc2` FOREIGN KEY (`header_fk_initialc2`) REFERENCES `AvirerInitialHeader` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InitialC2`
--

LOCK TABLES `InitialC2` WRITE;
/*!40000 ALTER TABLE `InitialC2` DISABLE KEYS */;
INSERT INTO `InitialC2` VALUES (1,1,0,2,2,NULL,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,NULL),(2,0,0,1,1,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,NULL,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,NULL);
/*!40000 ALTER TABLE `InitialC2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InitialD1`
--

DROP TABLE IF EXISTS `InitialD1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InitialD1` (
  `d1` int(11) NOT NULL AUTO_INCREMENT,
  `dxmethod` int(11) DEFAULT NULL,
  `normcog` int(11) DEFAULT NULL,
  `demented` int(11) DEFAULT NULL,
  `amndem` int(11) DEFAULT NULL,
  `pca` int(11) DEFAULT NULL,
  `ppasyn` int(11) DEFAULT NULL,
  `ppasynt` int(11) DEFAULT NULL,
  `ftdsyn` int(11) DEFAULT NULL,
  `lbdsyn` int(11) DEFAULT NULL,
  `namndem` int(11) DEFAULT NULL,
  `mciamem` int(11) DEFAULT NULL,
  `mciaplus` int(11) DEFAULT NULL,
  `mciaplan` int(11) DEFAULT NULL,
  `mciapatt` int(11) DEFAULT NULL,
  `mciapex` int(11) DEFAULT NULL,
  `mciapvis` int(11) DEFAULT NULL,
  `mcinon1` int(11) DEFAULT NULL,
  `mcin1lan` int(11) DEFAULT NULL,
  `mcin1att` int(11) DEFAULT NULL,
  `mcin1ex` int(11) DEFAULT NULL,
  `mcin1vis` int(11) DEFAULT NULL,
  `mcinon2` int(11) DEFAULT NULL,
  `mcin2lan` int(11) DEFAULT NULL,
  `mcin2att` int(11) DEFAULT NULL,
  `mcin2ex` int(11) DEFAULT NULL,
  `mcin2vis` int(11) DEFAULT NULL,
  `impnomci` int(11) DEFAULT NULL,
  `amylpet` int(11) DEFAULT NULL,
  `amylcsf` int(11) DEFAULT NULL,
  `fdgad` int(11) DEFAULT NULL,
  `hippatr` int(11) DEFAULT NULL,
  `taupetad` int(11) DEFAULT NULL,
  `csftau` int(11) DEFAULT NULL,
  `fdgftld` int(11) DEFAULT NULL,
  `tpetftld` int(11) DEFAULT NULL,
  `mrftld` int(11) DEFAULT NULL,
  `datscan` int(11) DEFAULT NULL,
  `othbiom` int(11) DEFAULT NULL,
  `othbiomx` text,
  `imaglinf` int(11) DEFAULT NULL,
  `imaglac` int(11) DEFAULT NULL,
  `imagmach` int(11) DEFAULT NULL,
  `imagmich` int(11) DEFAULT NULL,
  `imagmwwh` int(11) DEFAULT NULL,
  `imagewmh` int(11) DEFAULT NULL,
  `admut` int(11) DEFAULT NULL,
  `ftldmut` int(11) DEFAULT NULL,
  `othmut` int(11) DEFAULT NULL,
  `othmutx` text,
  `alzdis` int(11) DEFAULT NULL,
  `alzdisif` int(11) DEFAULT NULL,
  `lbdis` int(11) DEFAULT NULL,
  `lbdif` int(11) DEFAULT NULL,
  `park` int(11) DEFAULT NULL,
  `msa` int(11) DEFAULT NULL,
  `msaif` int(11) DEFAULT NULL,
  `psp` int(11) DEFAULT NULL,
  `pspif` int(11) DEFAULT NULL,
  `cort` int(11) DEFAULT NULL,
  `cortif` int(11) DEFAULT NULL,
  `ftldmo` int(11) DEFAULT NULL,
  `ftldmoif` int(11) DEFAULT NULL,
  `ftldnos` int(11) DEFAULT NULL,
  `ftldnoif` int(11) DEFAULT NULL,
  `ftldsubt` int(11) DEFAULT NULL,
  `ftldsubx` text,
  `cvd` int(11) DEFAULT NULL,
  `cvdif` int(11) DEFAULT NULL,
  `prevstk` int(11) DEFAULT NULL,
  `strokdec` int(11) DEFAULT NULL,
  `stkimag` int(11) DEFAULT NULL,
  `infnetw` int(11) DEFAULT NULL,
  `infwmh` int(11) DEFAULT NULL,
  `esstrem` int(11) DEFAULT NULL,
  `esstreif` int(11) DEFAULT NULL,
  `downs` int(11) DEFAULT NULL,
  `downsif` int(11) DEFAULT NULL,
  `hunt` int(11) DEFAULT NULL,
  `huntif` int(11) DEFAULT NULL,
  `prion` int(11) DEFAULT NULL,
  `prionif` int(11) DEFAULT NULL,
  `brninj` int(11) DEFAULT NULL,
  `brninjif` int(11) DEFAULT NULL,
  `brnincte` int(11) DEFAULT NULL,
  `hyceph` int(11) DEFAULT NULL,
  `hycephif` int(11) DEFAULT NULL,
  `epilep` int(11) DEFAULT NULL,
  `epilepif` int(11) DEFAULT NULL,
  `neop` int(11) DEFAULT NULL,
  `neopif` int(11) DEFAULT NULL,
  `neopstat` int(11) DEFAULT NULL,
  `hiv` int(11) DEFAULT NULL,
  `hivif` int(11) DEFAULT NULL,
  `othcog` int(11) DEFAULT NULL,
  `othcogif` int(11) DEFAULT NULL,
  `othcogx` text,
  `dep` int(11) DEFAULT NULL,
  `depif` int(11) DEFAULT NULL,
  `deptreat` int(11) DEFAULT NULL,
  `bipoldx` int(11) DEFAULT NULL,
  `bipoldif` int(11) DEFAULT NULL,
  `schizop` int(11) DEFAULT NULL,
  `schizoif` int(11) DEFAULT NULL,
  `anxiet` int(11) DEFAULT NULL,
  `anxietif` int(11) DEFAULT NULL,
  `delir` int(11) DEFAULT NULL,
  `delirif` int(11) DEFAULT NULL,
  `ptsddx` int(11) DEFAULT NULL,
  `ptsddxif` int(11) DEFAULT NULL,
  `othpsy` int(11) DEFAULT NULL,
  `othpsyif` int(11) DEFAULT NULL,
  `othpsyx` text,
  `alcdem` int(11) DEFAULT NULL,
  `alcdemif` int(11) DEFAULT NULL,
  `alcabuse` int(11) DEFAULT NULL,
  `impsub` int(11) DEFAULT NULL,
  `impsubif` int(11) DEFAULT NULL,
  `dysill` int(11) DEFAULT NULL,
  `dysillif` int(11) DEFAULT NULL,
  `meds` int(11) DEFAULT NULL,
  `medsif` int(11) DEFAULT NULL,
  `cogoth` int(11) DEFAULT NULL,
  `cogothif` int(11) DEFAULT NULL,
  `cogothx` text,
  `cogoth2` int(11) DEFAULT NULL,
  `cogoth2f` int(11) DEFAULT NULL,
  `cogoth2x` text,
  `cogoth3` int(11) DEFAULT NULL,
  `cogoth3f` int(11) DEFAULT NULL,
  `cogoth3x` text,
  `header_fk_initiald1` int(11) DEFAULT NULL,
  PRIMARY KEY (`d1`),
  KEY `header_idx` (`header_fk_initiald1`),
  CONSTRAINT `header_fk_initiald1` FOREIGN KEY (`header_fk_initiald1`) REFERENCES `AvirerInitialHeader` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InitialD1`
--

LOCK TABLES `InitialD1` WRITE;
/*!40000 ALTER TABLE `InitialD1` DISABLE KEYS */;
INSERT INTO `InitialD1` VALUES (1,1,0,1,1,1,1,3,1,1,1,1,1,0,1,1,1,1,0,0,0,0,1,1,1,1,1,1,0,1,8,1,0,1,8,1,0,1,1,'tgt',0,0,0,0,0,0,9,1,1,'',1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,2,'',1,0,0,1,0,1,1,1,0,1,0,1,0,1,0,1,0,9,0,0,1,0,1,0,0,1,0,1,0,NULL,1,0,0,0,0,0,2,0,3,0,2,0,1,1,0,NULL,0,0,1,0,1,0,2,0,3,0,0,NULL,0,0,NULL,0,0,NULL,NULL),(2,1,0,0,1,1,1,0,1,1,1,1,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,'de',0,0,0,0,0,0,0,0,0,'',1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,'',1,0,0,0,0,0,0,1,0,1,0,1,0,1,0,1,0,0,1,0,1,0,1,0,0,1,0,1,0,NULL,1,0,0,1,0,1,0,1,0,1,0,1,0,1,0,NULL,0,0,1,1,0,1,0,1,0,0,0,NULL,0,0,NULL,0,0,NULL,NULL);
/*!40000 ALTER TABLE `InitialD1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InitialD2`
--

DROP TABLE IF EXISTS `InitialD2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InitialD2` (
  `d2` int(11) NOT NULL AUTO_INCREMENT,
  `cancer` int(11) DEFAULT NULL,
  `cancsite` int(11) DEFAULT NULL,
  `diabet` int(11) DEFAULT NULL,
  `myoinf` int(11) DEFAULT NULL,
  `conghrt` int(11) DEFAULT NULL,
  `afibrill` int(11) DEFAULT NULL,
  `hypert` int(11) DEFAULT NULL,
  `angina` int(11) DEFAULT NULL,
  `hypchol` int(11) DEFAULT NULL,
  `vb12def` int(11) DEFAULT NULL,
  `thydis` int(11) DEFAULT NULL,
  `arth` int(11) DEFAULT NULL,
  `artype` int(11) DEFAULT NULL,
  `artypex` text,
  `artupex` int(11) DEFAULT NULL,
  `artloex` int(11) DEFAULT NULL,
  `artspin` int(11) DEFAULT NULL,
  `artunkn` int(11) DEFAULT NULL,
  `urineinc` int(11) DEFAULT NULL,
  `bowlic` int(11) DEFAULT NULL,
  `sleepap` int(11) DEFAULT NULL,
  `remdis` int(11) DEFAULT NULL,
  `hyposom` int(11) DEFAULT NULL,
  `sleepoth` int(11) DEFAULT NULL,
  `sleeptx` int(11) DEFAULT NULL,
  `angiocp` int(11) DEFAULT NULL,
  `angiopci` int(11) DEFAULT NULL,
  `pacemake` int(11) DEFAULT NULL,
  `hvalve` int(11) DEFAULT NULL,
  `antienc` int(11) DEFAULT NULL,
  `antiencx` text,
  `othcond` int(11) DEFAULT NULL,
  `othcondx` text,
  `header_fk_initiald2` int(11) DEFAULT NULL,
  PRIMARY KEY (`d2`),
  KEY `header_idx` (`header_fk_initiald2`),
  CONSTRAINT `header_fk_initiald2` FOREIGN KEY (`header_fk_initiald2`) REFERENCES `AvirerInitialHeader` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InitialD2`
--

LOCK TABLES `InitialD2` WRITE;
/*!40000 ALTER TABLE `InitialD2` DISABLE KEYS */;
INSERT INTO `InitialD2` VALUES (1,0,0,0,0,0,0,0,0,0,0,0,0,0,'',1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'',0,NULL,NULL);
/*!40000 ALTER TABLE `InitialD2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InitialZ1`
--

DROP TABLE IF EXISTS `InitialZ1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InitialZ1` (
  `z1` int(11) NOT NULL AUTO_INCREMENT,
  `a2sub` int(11) DEFAULT NULL,
  `a2not` int(11) DEFAULT NULL,
  `a2comm` text,
  `a3sub` int(11) DEFAULT NULL,
  `a3not` int(11) DEFAULT NULL,
  `a3comm` text,
  `a4sub` int(11) DEFAULT NULL,
  `a4not` int(11) DEFAULT NULL,
  `a4comm` text,
  `b1sub` int(11) DEFAULT NULL,
  `b1not` int(11) DEFAULT NULL,
  `b1comm` text,
  `b5sub` int(11) DEFAULT NULL,
  `b5not` int(11) DEFAULT NULL,
  `b5comm` text,
  `b6sub` int(11) DEFAULT NULL,
  `b6not` int(11) DEFAULT NULL,
  `B6Comm` text,
  `b7sub` int(11) DEFAULT NULL,
  `b7not` int(11) DEFAULT NULL,
  `b7comm` text,
  `header_fk_initialz1` int(11) DEFAULT NULL,
  PRIMARY KEY (`z1`),
  KEY `header_idx` (`header_fk_initialz1`),
  CONSTRAINT `header_fk_initialz1` FOREIGN KEY (`header_fk_initialz1`) REFERENCES `AvirerInitialHeader` (`header`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InitialZ1`
--

LOCK TABLES `InitialZ1` WRITE;
/*!40000 ALTER TABLE `InitialZ1` DISABLE KEYS */;
INSERT INTO `InitialZ1` VALUES (1,1,0,'',0,0,'',1,0,'',0,0,'',1,0,'',1,0,'',0,0,'',NULL),(2,1,0,'',0,0,'',1,0,'',0,0,'',1,0,'',1,0,'',0,0,'',NULL),(3,1,96,'',0,0,'',1,97,'',0,95,'',1,96,'',1,98,'',0,0,'',NULL),(4,1,0,'',0,0,'',1,0,'',1,95,'',1,95,'',0,95,'',1,96,'',NULL);
/*!40000 ALTER TABLE `InitialZ1` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-29 22:53:38
