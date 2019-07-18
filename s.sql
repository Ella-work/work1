-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: stu
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `age` int(10) unsigned NOT NULL,
  `sex` enum('w','m') DEFAULT NULL,
  `SCORE` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'b',26,'m',0);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_1`
--

DROP TABLE IF EXISTS `class_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `age` tinyint(4) NOT NULL,
  `gender` enum('m','w') DEFAULT NULL,
  `SCORE` float DEFAULT '0',
  `入学时间` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_1`
--

LOCK TABLES `class_1` WRITE;
/*!40000 ALTER TABLE `class_1` DISABLE KEYS */;
INSERT INTO `class_1` VALUES (1,'lucy',18,'m',58,'2016-05-06'),(2,'marry',13,'w',99,'2019-08-06'),(3,'baren',12,'w',99,'2018-12-29'),(4,'Ella',15,'w',69,'2018-05-29'),(5,'aa',23,'m',0,'2018-05-29'),(6,'b',26,'m',0,NULL),(7,'jame',17,'m',90.5,'2019-04-28');
/*!40000 ALTER TABLE `class_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interest`
--

DROP TABLE IF EXISTS `interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `hobby` set('sing','dance','draw') DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `level` char(1) NOT NULL,
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interest`
--

LOCK TABLES `interest` WRITE;
/*!40000 ALTER TABLE `interest` DISABLE KEYS */;
INSERT INTO `interest` VALUES (1,'tom','sing,dance',16800.00,'B','表现良好，进步较快'),(2,'lily','sing',12000.00,'A','天生丽质'),(3,'lucy','dance',19000.00,'C','一般');
/*!40000 ALTER TABLE `interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marathon`
--

DROP TABLE IF EXISTS `marathon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marathon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `姓名` varchar(32) DEFAULT NULL,
  `报名时间` datetime DEFAULT NULL,
  `成绩` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marathon`
--

LOCK TABLES `marathon` WRITE;
/*!40000 ALTER TABLE `marathon` DISABLE KEYS */;
INSERT INTO `marathon` VALUES (1,'赵四','2019-03-28 14:28:36','02:28:57'),(2,'王五','2019-07-17 10:14:34','02:46:09'),(3,'赵柳','2019-07-17 00:00:00','02:41:09'),(4,'小气','2019-07-17 10:19:06','01:59:09');
/*!40000 ALTER TABLE `marathon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `age` int(11) NOT NULL,
  `hobby` varchar(32) DEFAULT NULL,
  `SCORE` float DEFAULT '0',
  `comment` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'a',5,'football,computer,running',0,'良好'),(2,'b',16,'computer,running',0,'优秀'),(3,'c',10,'computer',0,'表现一般'),(4,'d',6,'football',90,'足球有天赋'),(5,'e',8,'running',60,'不错'),(6,'f',13,'football,basketball',99,'奇才'),(7,'f',15,'football',91,'优秀'),(8,'f',15,'football',45,'表现良好成绩有待提升'),(9,'f',11,'null',32,'表有待提升');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-17 14:48:41
