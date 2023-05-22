DROP TABLE IF EXISTS `Acquisition`;
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

LOCK TABLES `Acquisition` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Change`;
CREATE TABLE `Change` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `Date` datetime(6) DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

LOCK TABLES `Change` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `ChangeHopeGame`;
CREATE TABLE `ChangeHopeGame` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `desc` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `fk_Change_id` int(8) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnmbd576jtpfkgaesr9hlndv6o` (`fk_Change_id`),
  CONSTRAINT `FKnmbd576jtpfkgaesr9hlndv6o` FOREIGN KEY (`fk_Change_id`) REFERENCES `Change` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

LOCK TABLES `ChangeHopeGame` WRITE;
UNLOCK TABLES;

--
--

DROP TABLE IF EXISTS `ChangeOwnGame`;
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


LOCK TABLES `ChangeOwnGame` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Letter`;
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

LOCK TABLES `Letter` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Love`;
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

LOCK TABLES `Love` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Member`;
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

LOCK TABLES `Member` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `NewProduct`;
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

LOCK TABLES `NewProduct` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `News`;
CREATE TABLE `News` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `date` datetime(6) DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `reviseTime` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

LOCK TABLES `News` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `OldProduct`;
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

LOCK TABLES `OldProduct` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Order`;
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

LOCK TABLES `Order` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `OrderItem`;
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

LOCK TABLES `OrderItem` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `SPRING_SESSION`;
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

LOCK TABLES `SPRING_SESSION` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `SPRING_SESSION_ATTRIBUTES`;
CREATE TABLE `SPRING_SESSION_ATTRIBUTES` (
  `SESSION_PRIMARY_ID` char(36) NOT NULL,
  `ATTRIBUTE_NAME` varchar(200) NOT NULL,
  `ATTRIBUTE_BYTES` blob NOT NULL,
  PRIMARY KEY (`SESSION_PRIMARY_ID`,`ATTRIBUTE_NAME`),
  CONSTRAINT `SPRING_SESSION_ATTRIBUTES_FK` FOREIGN KEY (`SESSION_PRIMARY_ID`) REFERENCES `SPRING_SESSION` (`PRIMARY_ID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

LOCK TABLES `SPRING_SESSION_ATTRIBUTES` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `Strategy`;
CREATE TABLE `Strategy` (
  `id` int(8) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `date` datetime(6) DEFAULT NULL,
  `member_id` int DEFAULT NULL,
  `reviseTime` datetime(6) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

LOCK TABLES `Strategy` WRITE;
UNLOCK TABLES;


DROP TABLE IF EXISTS `StrategyPicture`;
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

LOCK TABLES `StrategyPicture` WRITE;
UNLOCK TABLES;
