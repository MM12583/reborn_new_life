-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: aws-first-database.ckkpuswf8ke8.ap-southeast-2.rds.amazonaws.com    Database: new_shopping
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `Acquisition`
--

DROP TABLE IF EXISTS `Acquisition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Acquisition` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `askdate` datetime(6) DEFAULT NULL,
  `audit` varchar(255) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `fileName1` varchar(255) DEFAULT NULL,
  `fileName2` varchar(255) DEFAULT NULL,
  `fileName3` varchar(255) DEFAULT NULL,
  `gbackcoverpic` longblob,
  `gbcoverpic` longblob,
  `gcoverpic` longblob,
  `member_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(6,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Acquisition`
--

LOCK TABLES `Acquisition` WRITE;
/*!40000 ALTER TABLE `Acquisition` DISABLE KEYS */;
/*!40000 ALTER TABLE `Acquisition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Change`
--

DROP TABLE IF EXISTS `Change`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Change` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Date` datetime(6) DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Change`
--

LOCK TABLES `Change` WRITE;
/*!40000 ALTER TABLE `Change` DISABLE KEYS */;
/*!40000 ALTER TABLE `Change` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChangeHopeGame`
--

DROP TABLE IF EXISTS `ChangeHopeGame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ChangeHopeGame` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `desc` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fk_Change_id` int(8) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnmbd576jtpfkgaesr9hlndv6o` (`fk_Change_id`),
  CONSTRAINT `FKnmbd576jtpfkgaesr9hlndv6o` FOREIGN KEY (`fk_Change_id`) REFERENCES `Change` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChangeHopeGame`
--

LOCK TABLES `ChangeHopeGame` WRITE;
/*!40000 ALTER TABLE `ChangeHopeGame` DISABLE KEYS */;
/*!40000 ALTER TABLE `ChangeHopeGame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChangeOwnGame`
--

DROP TABLE IF EXISTS `ChangeOwnGame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ChangeOwnGame` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `desc` varchar(255) DEFAULT NULL,
  `fileName1` varchar(255) DEFAULT NULL,
  `fileName2` varchar(255) DEFAULT NULL,
  `fileName3` varchar(255) DEFAULT NULL,
  `gbackcoverpic` longblob,
  `gbcoverpic` longblob,
  `gcoverpic` longblob,
  `name` varchar(255) DEFAULT NULL,
  `fk_Change_id` int(8) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKabdm1clxtwcjii8v2p26yi51m` (`fk_Change_id`),
  CONSTRAINT `FKabdm1clxtwcjii8v2p26yi51m` FOREIGN KEY (`fk_Change_id`) REFERENCES `Change` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChangeOwnGame`
--

LOCK TABLES `ChangeOwnGame` WRITE;
/*!40000 ALTER TABLE `ChangeOwnGame` DISABLE KEYS */;
/*!40000 ALTER TABLE `ChangeOwnGame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Letter`
--

DROP TABLE IF EXISTS `Letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Letter` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `date` datetime(6) DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `recipientId` int DEFAULT NULL,
  `reviseTime` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Letter`
--

LOCK TABLES `Letter` WRITE;
/*!40000 ALTER TABLE `Letter` DISABLE KEYS */;
/*!40000 ALTER TABLE `Letter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Love`
--

DROP TABLE IF EXISTS `Love`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Love` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `member_id` int DEFAULT NULL,
  `newproduct_id` int DEFAULT NULL,
  `newproduct_name` varchar(255) DEFAULT NULL,
  `newproduct_price` int DEFAULT NULL,
  `oldproduct_id` int DEFAULT NULL,
  `oldproduct_name` varchar(255) DEFAULT NULL,
  `oldproduct_price` int DEFAULT NULL,
  `strategy_id` int DEFAULT NULL,
  `strategy_name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Love`
--

LOCK TABLES `Love` WRITE;
/*!40000 ALTER TABLE `Love` DISABLE KEYS */;
/*!40000 ALTER TABLE `Love` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Member`
--

DROP TABLE IF EXISTS `Member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Member` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fileName` varchar(255) DEFAULT NULL,
  `memberId` varchar(255) DEFAULT NULL,
  `memberImage` longblob,
  `mimeType` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nickName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `rank` varchar(255) DEFAULT 'member',
  `registerTime` datetime(6) DEFAULT NULL,
  `reviseTime` datetime(6) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Member`
--

LOCK TABLES `Member` WRITE;
/*!40000 ALTER TABLE `Member` DISABLE KEYS */;
/*!40000 ALTER TABLE `Member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NewProduct`
--

DROP TABLE IF EXISTS `NewProduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `NewProduct` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `bgfileName` varchar(255) DEFAULT NULL,
  `bgpicture` longblob,
  `brand` varchar(255) DEFAULT NULL,
  `cnfileName` varchar(255) DEFAULT NULL,
  `cnpicture` longblob,
  `copy` longtext,
  `desc` longtext,
  `discount` decimal(3,1) DEFAULT '1.0',
  `fileName` varchar(255) DEFAULT NULL,
  `levelfileName` varchar(255) DEFAULT NULL,
  `levelpicture` longblob,
  `mimeType` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` longblob,
  `price` decimal(6,0) DEFAULT NULL,
  `purchasePrice` decimal(6,0) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NewProduct`
--

LOCK TABLES `NewProduct` WRITE;
/*!40000 ALTER TABLE `NewProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `NewProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `News`
--

DROP TABLE IF EXISTS `News`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `News` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `date` datetime(6) DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `reviseTime` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `News`
--

LOCK TABLES `News` WRITE;
/*!40000 ALTER TABLE `News` DISABLE KEYS */;
/*!40000 ALTER TABLE `News` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OldProduct`
--

DROP TABLE IF EXISTS `OldProduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OldProduct` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `acqprice` decimal(6,0) DEFAULT NULL,
  `bgfileName` varchar(255) DEFAULT NULL,
  `bgpicture` longblob,
  `brand` varchar(255) DEFAULT NULL,
  `cnfileName` varchar(255) DEFAULT NULL,
  `cnpicture` longblob,
  `copy` longtext,
  `desc` longtext,
  `discount` decimal(3,1) DEFAULT '1.0',
  `fileName` varchar(255) DEFAULT NULL,
  `leasePrice` decimal(6,0) DEFAULT NULL,
  `levelfileName` varchar(255) DEFAULT NULL,
  `levelpicture` longblob,
  `mimeType` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `picture` longblob,
  `price` decimal(6,0) DEFAULT NULL,
  `stock` decimal(6,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OldProduct`
--

LOCK TABLES `OldProduct` WRITE;
/*!40000 ALTER TABLE `OldProduct` DISABLE KEYS */;
/*!40000 ALTER TABLE `OldProduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Order`
--

DROP TABLE IF EXISTS `Order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Order` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `date` datetime(6) DEFAULT NULL,
  `deladdress` varchar(255) DEFAULT NULL,
  `delway` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `memberName` varchar(255) DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `payPayment` varchar(255) DEFAULT NULL,
  `payornot` int DEFAULT NULL,
  `payway` varchar(255) DEFAULT NULL,
  `person` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `total` decimal(6,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Order`
--

LOCK TABLES `Order` WRITE;
/*!40000 ALTER TABLE `Order` DISABLE KEYS */;
/*!40000 ALTER TABLE `Order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrderItem`
--

DROP TABLE IF EXISTS `OrderItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderItem` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `buyPrice` decimal(6,0) DEFAULT NULL,
  `count` int DEFAULT NULL,
  `discount` decimal(3,1) DEFAULT '1.0',
  `leaseDate` date DEFAULT NULL,
  `newProductId` int DEFAULT NULL,
  `newProductName` varchar(255) DEFAULT NULL,
  `oldProductId` int DEFAULT NULL,
  `oldProductName` varchar(255) DEFAULT NULL,
  `price` decimal(6,0) DEFAULT NULL,
  `subtotal` decimal(6,0) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `fk_order_id` int(8) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6kmi2jlihdjhf0gg1xcm740ou` (`fk_order_id`),
  CONSTRAINT `FK6kmi2jlihdjhf0gg1xcm740ou` FOREIGN KEY (`fk_order_id`) REFERENCES `Order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderItem`
--

LOCK TABLES `OrderItem` WRITE;
/*!40000 ALTER TABLE `OrderItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrderItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SPRING_SESSION`
--

DROP TABLE IF EXISTS `SPRING_SESSION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SPRING_SESSION` (
  `PRIMARY_ID` char(36) NOT NULL,
  `SESSION_ID` char(36) NOT NULL,
  `CREATION_TIME` bigint NOT NULL,
  `LAST_ACCESS_TIME` bigint NOT NULL,
  `MAX_INACTIVE_INTERVAL` int NOT NULL,
  `EXPIRY_TIME` bigint NOT NULL,
  `PRINCIPAL_NAME` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`PRIMARY_ID`),
  UNIQUE KEY `SPRING_SESSION_IX1` (`SESSION_ID`),
  KEY `SPRING_SESSION_IX2` (`EXPIRY_TIME`),
  KEY `SPRING_SESSION_IX3` (`PRINCIPAL_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPRING_SESSION`
--

LOCK TABLES `SPRING_SESSION` WRITE;
/*!40000 ALTER TABLE `SPRING_SESSION` DISABLE KEYS */;
/*!40000 ALTER TABLE `SPRING_SESSION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SPRING_SESSION_ATTRIBUTES`
--

DROP TABLE IF EXISTS `SPRING_SESSION_ATTRIBUTES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SPRING_SESSION_ATTRIBUTES` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `SPRING_SESSION` (`PRIMARY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SPRING_SESSION_ATTRIBUTES`
--

LOCK TABLES `SPRING_SESSION_ATTRIBUTES` WRITE;
/*!40000 ALTER TABLE `SPRING_SESSION_ATTRIBUTES` DISABLE KEYS */;
/*!40000 ALTER TABLE `SPRING_SESSION_ATTRIBUTES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Strategy`
--

DROP TABLE IF EXISTS `Strategy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Strategy` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `date` datetime(6) DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `reviseTime` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Strategy`
--

LOCK TABLES `Strategy` WRITE;
/*!40000 ALTER TABLE `Strategy` DISABLE KEYS */;
/*!40000 ALTER TABLE `Strategy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StrategyPicture`
--

DROP TABLE IF EXISTS `StrategyPicture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `StrategyPicture` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `bgfileName` varchar(255) DEFAULT NULL,
  `bgpicture` longblob,
  `fileName` varchar(255) DEFAULT NULL,
  `picture` longblob,
  `fk_strategy_id` int(8) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKojirdfbkuiim008qbl96vin52` (`fk_strategy_id`),
  CONSTRAINT `FKojirdfbkuiim008qbl96vin52` FOREIGN KEY (`fk_strategy_id`) REFERENCES `Strategy` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StrategyPicture`
--

LOCK TABLES `StrategyPicture` WRITE;
/*!40000 ALTER TABLE `StrategyPicture` DISABLE KEYS */;
/*!40000 ALTER TABLE `StrategyPicture` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-18 12:22:50
