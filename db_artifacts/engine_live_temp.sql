-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: engine_live_temp
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `basis_for_calls`
--

DROP TABLE IF EXISTS `basis_for_calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basis_for_calls` (
  `symbol` varchar(45) NOT NULL,
  `volume_prev_day` int(11) NOT NULL,
  `prev_close` float NOT NULL,
  `pivot` float NOT NULL,
  `h1` float NOT NULL,
  `l1` float NOT NULL,
  `h2` float NOT NULL,
  `l2` float NOT NULL,
  `h3` float NOT NULL,
  `l3` float NOT NULL,
  `curr_signal` tinyint(4) NOT NULL,
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basis_for_calls`
--

LOCK TABLES `basis_for_calls` WRITE;
/*!40000 ALTER TABLE `basis_for_calls` DISABLE KEYS */;
INSERT INTO `basis_for_calls` VALUES ('HINDPETRO',9145620,436.15,441.27,450.38,430.1,464.62,425,473.73,420,1);
/*!40000 ALTER TABLE `basis_for_calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intraday_calls`
--

DROP TABLE IF EXISTS `intraday_calls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intraday_calls` (
  `symbol` varchar(45) NOT NULL,
  `call_signal` tinyint(4) NOT NULL,
  `call_price` float NOT NULL,
  `call_time` datetime NOT NULL,
  `call_advice` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`symbol`,`call_time`,`call_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intraday_calls`
--

LOCK TABLES `intraday_calls` WRITE;
/*!40000 ALTER TABLE `intraday_calls` DISABLE KEYS */;
INSERT INTO `intraday_calls` VALUES ('HINDPETRO',1,432.5,'2017-08-09 11:46:18','BUY AT CURRENT PRICE FOR TARGET OF 452.7799987792969'),('HINDPETRO',1,431.85,'2017-08-09 11:46:37','BUY AT CURRENT PRICE FOR TARGET OF 452.1300048828125'),('HINDPETRO',1,431.65,'2017-08-09 11:46:56','BUY AT CURRENT PRICE FOR TARGET OF 451.92999267578125'),('HINDPETRO',-1,428.1,'2017-08-09 11:53:05','EXIT BUY TRADE AT CURRENT PRICE OF 428.1'),('HINDPETRO',-1,427.9,'2017-08-09 11:53:26','EXIT BUY TRADE AT CURRENT PRICE OF 427.9'),('HINDPETRO',-1,427.95,'2017-08-09 11:53:45','EXIT BUY TRADE AT CURRENT PRICE OF 427.95'),('HINDPETRO',-1,427.95,'2017-08-09 11:54:04','EXIT BUY TRADE AT CURRENT PRICE OF 427.95'),('HINDPETRO',-1,428.45,'2017-08-09 11:54:43','EXIT BUY TRADE AT CURRENT PRICE OF 428.45'),('HINDPETRO',-1,428.45,'2017-08-09 11:55:03','EXIT BUY TRADE AT CURRENT PRICE OF 428.45'),('HINDPETRO',-1,428.25,'2017-08-09 11:55:21','EXIT BUY TRADE AT CURRENT PRICE OF 428.25'),('HINDPETRO',-1,428.55,'2017-08-09 11:55:41','EXIT BUY TRADE AT CURRENT PRICE OF 428.55'),('HINDPETRO',-1,428.4,'2017-08-09 11:56:01','EXIT BUY TRADE AT CURRENT PRICE OF 428.4'),('HINDPETRO',-1,428.2,'2017-08-09 11:56:20','EXIT BUY TRADE AT CURRENT PRICE OF 428.2'),('HINDPETRO',-1,428.15,'2017-08-09 11:56:39','EXIT BUY TRADE AT CURRENT PRICE OF 428.15'),('HINDPETRO',-1,428.25,'2017-08-09 11:56:58','EXIT BUY TRADE AT CURRENT PRICE OF 428.25'),('HINDPETRO',-1,428.15,'2017-08-09 11:57:17','EXIT BUY TRADE AT CURRENT PRICE OF 428.15'),('HINDPETRO',-1,428.5,'2017-08-09 12:17:04','EXIT BUY TRADE AT CURRENT PRICE OF 428.5');
/*!40000 ALTER TABLE `intraday_calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intraday_calls_archive`
--

DROP TABLE IF EXISTS `intraday_calls_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intraday_calls_archive` (
  `symbol` varchar(45) NOT NULL,
  `call_signal` tinyint(4) NOT NULL,
  `call_price` float NOT NULL,
  `call_time` datetime NOT NULL,
  `call_advice` varchar(200) NOT NULL,
  PRIMARY KEY (`symbol`,`call_signal`,`call_time`,`call_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intraday_calls_archive`
--

LOCK TABLES `intraday_calls_archive` WRITE;
/*!40000 ALTER TABLE `intraday_calls_archive` DISABLE KEYS */;
INSERT INTO `intraday_calls_archive` VALUES ('AXISBANK',1,509.94,'2017-08-04 10:18:30','SELL AT CURRENT PRICE FOR TARGET OF 503.739990234374000000000000000000'),('AXISBANK',1,504.11,'2017-08-04 12:36:30','SELL AT CURRENT PRICE FOR TARGET OF 497.909973144531000000000000000000'),('AXISBANK',1,511.01,'2017-08-04 13:34:00','SELL AT CURRENT PRICE FOR TARGET OF 504.809997558593000000000000000000'),('AXISBANK',1,513.15,'2017-08-04 13:53:30','SELL AT CURRENT PRICE FOR TARGET OF 506.950012207031000000000000000000'),('AXISBANK',1,513.65,'2017-08-04 13:54:00','SELL AT CURRENT PRICE FOR TARGET OF 507.450012207031000000000000000000'),('AXISBANK',1,513.08,'2017-08-04 13:54:30','SELL AT CURRENT PRICE FOR TARGET OF 506.880004882812000000000000000000'),('AXISBANK',1,504.17,'2017-08-04 14:48:00','SELL AT CURRENT PRICE FOR TARGET OF 497.970001220702000000000000000000'),('AXISBANK',1,504.67,'2017-08-04 14:49:00','SELL AT CURRENT PRICE FOR TARGET OF 498.470001220702000000000000000000'),('AXISBANK',1,504.69,'2017-08-04 15:15:30','SELL AT CURRENT PRICE FOR TARGET OF 498.489990234374000000000000000000'),('ESCORTS',1,685.45,'2017-08-04 09:39:30','SELL AT CURRENT PRICE FOR TARGET OF 666.299987792969000000000000000000'),('ESCORTS',1,686.47,'2017-08-04 09:41:00','SELL AT CURRENT PRICE FOR TARGET OF 667.319946289063000000000000000000'),('ESCORTS',1,687.69,'2017-08-04 09:41:30','SELL AT CURRENT PRICE FOR TARGET OF 668.539978027344000000000000000000'),('ESCORTS',1,688.23,'2017-08-04 09:42:00','SELL AT CURRENT PRICE FOR TARGET OF 669.079956054688000000000000000000'),('ESCORTS',1,678.45,'2017-08-04 11:44:00','SELL AT CURRENT PRICE FOR TARGET OF 659.299987792969000000000000000000'),('ESCORTS',1,678.45,'2017-08-04 11:44:30','SELL AT CURRENT PRICE FOR TARGET OF 659.299987792969000000000000000000'),('ESCORTS',1,679.19,'2017-08-04 11:45:00','SELL AT CURRENT PRICE FOR TARGET OF 660.039978027344000000000000000000'),('ESCORTS',1,678.01,'2017-08-04 11:45:30','SELL AT CURRENT PRICE FOR TARGET OF 658.859985351563000000000000000000'),('ESCORTS',1,677.76,'2017-08-04 11:46:00','SELL AT CURRENT PRICE FOR TARGET OF 658.609985351563000000000000000000'),('ESCORTS',1,678.53,'2017-08-04 11:46:30','SELL AT CURRENT PRICE FOR TARGET OF 659.380004882813000000000000000000'),('ESCORTS',1,695.8,'2017-08-04 12:38:30','SELL AT CURRENT PRICE FOR TARGET OF 676.649963378907000000000000000000'),('ESCORTS',1,696.9,'2017-08-04 12:39:00','SELL AT CURRENT PRICE FOR TARGET OF 677.750000000001000000000000000000'),('ESCORTS',1,697.22,'2017-08-04 12:39:30','SELL AT CURRENT PRICE FOR TARGET OF 678.069946289063000000000000000000'),('ESCORTS',1,698.71,'2017-08-04 12:40:00','SELL AT CURRENT PRICE FOR TARGET OF 679.559997558594000000000000000000'),('ESCORTS',1,697.89,'2017-08-04 12:40:30','SELL AT CURRENT PRICE FOR TARGET OF 678.739990234376000000000000000000'),('ESCORTS',1,695.38,'2017-08-04 12:57:00','SELL AT CURRENT PRICE FOR TARGET OF 676.229980468751000000000000000000'),('ESCORTS',1,685.62,'2017-08-04 13:21:00','SELL AT CURRENT PRICE FOR TARGET OF 666.469970703126000000000000000000'),('ESCORTS',1,685.43,'2017-08-04 13:22:00','SELL AT CURRENT PRICE FOR TARGET OF 666.279968261719000000000000000000'),('ESCORTS',1,686.37,'2017-08-04 13:23:00','SELL AT CURRENT PRICE FOR TARGET OF 667.219970703126000000000000000000'),('ESCORTS',1,687.53,'2017-08-04 13:23:30','SELL AT CURRENT PRICE FOR TARGET OF 668.380004882813000000000000000000'),('ESCORTS',1,686.39,'2017-08-04 13:24:00','SELL AT CURRENT PRICE FOR TARGET OF 667.239990234376000000000000000000'),('ESCORTS',1,686.81,'2017-08-04 13:24:30','SELL AT CURRENT PRICE FOR TARGET OF 667.659973144532000000000000000000'),('ESCORTS',1,686.11,'2017-08-04 13:25:00','SELL AT CURRENT PRICE FOR TARGET OF 666.959960937501000000000000000000'),('ESCORTS',1,685.1,'2017-08-04 13:31:00','SELL AT CURRENT PRICE FOR TARGET OF 665.949951171876000000000000000000'),('ESCORTS',1,686.8,'2017-08-04 13:31:30','SELL AT CURRENT PRICE FOR TARGET OF 667.649963378907000000000000000000'),('ESCORTS',1,687.33,'2017-08-04 13:32:00','SELL AT CURRENT PRICE FOR TARGET OF 668.179992675782000000000000000000'),('ESCORTS',1,687.22,'2017-08-04 13:32:30','SELL AT CURRENT PRICE FOR TARGET OF 668.069946289063000000000000000000'),('ESCORTS',1,685.51,'2017-08-04 13:33:00','SELL AT CURRENT PRICE FOR TARGET OF 666.359985351563000000000000000000'),('ESCORTS',1,687.46,'2017-08-04 13:35:00','SELL AT CURRENT PRICE FOR TARGET OF 668.309997558594000000000000000000'),('ESCORTS',1,687.37,'2017-08-04 13:35:30','SELL AT CURRENT PRICE FOR TARGET OF 668.219970703126000000000000000000'),('ESCORTS',1,688.49,'2017-08-04 13:36:30','SELL AT CURRENT PRICE FOR TARGET OF 669.339965820313000000000000000000'),('ESCORTS',1,687.02,'2017-08-04 13:50:00','SELL AT CURRENT PRICE FOR TARGET OF 667.869995117188000000000000000000'),('ESCORTS',1,687.87,'2017-08-04 13:52:00','SELL AT CURRENT PRICE FOR TARGET OF 668.719970703126000000000000000000'),('ESCORTS',1,687.85,'2017-08-04 13:52:30','SELL AT CURRENT PRICE FOR TARGET OF 668.699951171876000000000000000000'),('HDFCBANK',1,1820.32,'2017-08-04 09:38:30','BUY AT CURRENT PRICE FOR TARGET OF 1850.919921874990000000000000000000'),('HDFCBANK',1,1808.14,'2017-08-04 09:45:30','BUY AT CURRENT PRICE FOR TARGET OF 1838.739990234370000000000000000000'),('HDFCBANK',1,1775.72,'2017-08-04 10:55:00','BUY AT CURRENT PRICE FOR TARGET OF 1806.319946289060000000000000000000'),('HDFCBANK',1,1773.5,'2017-08-04 10:55:30','BUY AT CURRENT PRICE FOR TARGET OF 1804.099975585930000000000000000000'),('HDFCBANK',1,1808.16,'2017-08-04 12:16:00','BUY AT CURRENT PRICE FOR TARGET OF 1838.760009765620000000000000000000'),('HDFCBANK',1,1810.25,'2017-08-04 12:16:30','EXIT SELL TRADE AT CURRENT PRICE OF - 1810.25'),('HDFCBANK',1,1813.52,'2017-08-04 12:17:00','EXIT SELL TRADE AT CURRENT PRICE OF - 1813.52001953125'),('HDFCBANK',1,1808.69,'2017-08-04 12:20:30','BUY AT CURRENT PRICE FOR TARGET OF 1839.289916992180000000000000000000'),('HDFCBANK',1,1777.39,'2017-08-04 15:19:30','BUY AT CURRENT PRICE FOR TARGET OF 1807.989990234370000000000000000000'),('IOC',-1,394.3,'2017-08-04 13:27:30','EXIT BUY TRADE AT CURRENT PRICE OF - 394.299987792969'),('IOC',-1,394.73,'2017-08-04 15:18:00','EXIT BUY TRADE AT CURRENT PRICE OF 394.730010986328');
/*!40000 ALTER TABLE `intraday_calls_archive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intraday_closed_trades`
--

DROP TABLE IF EXISTS `intraday_closed_trades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intraday_closed_trades` (
  `symbol` varchar(45) NOT NULL,
  `trade_signal` tinyint(4) NOT NULL,
  `trade_price` float DEFAULT NULL,
  `trade_time` datetime NOT NULL,
  `trade_close_price` float DEFAULT NULL,
  `trade_close_time` datetime DEFAULT NULL,
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intraday_closed_trades`
--

LOCK TABLES `intraday_closed_trades` WRITE;
/*!40000 ALTER TABLE `intraday_closed_trades` DISABLE KEYS */;
/*!40000 ALTER TABLE `intraday_closed_trades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `intraday_trades`
--

DROP TABLE IF EXISTS `intraday_trades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intraday_trades` (
  `symbol` varchar(45) NOT NULL,
  `trade_signal` tinyint(4) NOT NULL,
  `trade_price` float DEFAULT NULL,
  `trade_time` datetime NOT NULL,
  `trade_close_price` float DEFAULT NULL,
  `trade_close_time` datetime DEFAULT NULL,
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `intraday_trades`
--

LOCK TABLES `intraday_trades` WRITE;
/*!40000 ALTER TABLE `intraday_trades` DISABLE KEYS */;
/*!40000 ALTER TABLE `intraday_trades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_data`
--

DROP TABLE IF EXISTS `live_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curr_time` datetime DEFAULT NULL,
  `symbol` varchar(45) DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21307 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_data`
--

LOCK TABLES `live_data` WRITE;
/*!40000 ALTER TABLE `live_data` DISABLE KEYS */;
INSERT INTO `live_data` VALUES (21074,'2017-08-09 12:27:35','HINDPETRO',4639781,428.5),(21075,'2017-08-09 12:27:54','HINDPETRO',4641383,428.45),(21076,'2017-08-09 12:28:13','HINDPETRO',4646388,427.5),(21077,'2017-08-09 12:28:32','HINDPETRO',4654814,428.2),(21078,'2017-08-09 12:28:51','HINDPETRO',4657296,428.15),(21079,'2017-08-09 12:29:12','HINDPETRO',4660764,428.9),(21080,'2017-08-09 12:29:31','HINDPETRO',4661684,428.85),(21081,'2017-08-09 12:29:51','HINDPETRO',4665652,429.1),(21082,'2017-08-09 12:30:10','HINDPETRO',4672420,429.4),(21083,'2017-08-09 12:30:29','HINDPETRO',4675207,429.15),(21084,'2017-08-09 12:30:48','HINDPETRO',4679448,429.45),(21085,'2017-08-09 12:31:10','HINDPETRO',4681356,429.4),(21086,'2017-08-09 12:31:33','HINDPETRO',4682641,429.1),(21087,'2017-08-09 12:31:52','HINDPETRO',4685111,428.9),(21088,'2017-08-09 12:32:12','HINDPETRO',4685325,428.95),(21089,'2017-08-09 12:32:34','HINDPETRO',4687577,428.8),(21090,'2017-08-09 12:32:53','HINDPETRO',4688827,428.8),(21091,'2017-08-09 12:33:13','HINDPETRO',4689908,428.85),(21092,'2017-08-09 12:33:32','HINDPETRO',4692982,428.9),(21093,'2017-08-09 12:33:51','HINDPETRO',4695047,428.95),(21094,'2017-08-09 12:34:10','HINDPETRO',4699146,428.9),(21095,'2017-08-09 12:34:30','HINDPETRO',4710218,427.9),(21096,'2017-08-09 12:34:49','HINDPETRO',4712264,427.9),(21097,'2017-08-09 12:35:08','HINDPETRO',4726011,427.3),(21098,'2017-08-09 12:35:28','HINDPETRO',4728522,427.3),(21099,'2017-08-09 12:35:48','HINDPETRO',4732393,427.45),(21100,'2017-08-09 12:36:07','HINDPETRO',4735201,428),(21101,'2017-08-09 12:36:27','HINDPETRO',4737040,428),(21102,'2017-08-09 12:36:46','HINDPETRO',4737629,427.65),(21103,'2017-08-09 12:37:05','HINDPETRO',4741995,428),(21104,'2017-08-09 12:37:24','HINDPETRO',4743466,427.6),(21105,'2017-08-09 12:37:43','HINDPETRO',4743672,427.4),(21106,'2017-08-09 12:42:49','HINDPETRO',4774439,428.2),(21107,'2017-08-09 12:43:11','HINDPETRO',4789956,427.15),(21108,'2017-08-09 12:43:32','HINDPETRO',4799391,426.7),(21109,'2017-08-09 12:43:51','HINDPETRO',4800545,426.8),(21110,'2017-08-09 12:44:11','HINDPETRO',4806631,426.7),(21111,'2017-08-09 12:44:30','HINDPETRO',4815193,426.7),(21112,'2017-08-09 12:44:49','HINDPETRO',4833947,425.8),(21113,'2017-08-09 12:45:09','HINDPETRO',4846757,425.75),(21114,'2017-08-09 12:45:28','HINDPETRO',4855191,425.7),(21115,'2017-08-09 12:45:47','HINDPETRO',4861856,425.65),(21116,'2017-08-09 12:46:06','HINDPETRO',4895412,424.85),(21117,'2017-08-09 12:46:26','HINDPETRO',4902346,425),(21118,'2017-08-09 12:46:46','HINDPETRO',4916224,425.3),(21119,'2017-08-09 12:47:05','HINDPETRO',4917365,425.3),(21120,'2017-08-09 12:47:26','HINDPETRO',4927426,425),(21121,'2017-08-09 12:47:48','HINDPETRO',4930676,425.25),(21122,'2017-08-09 12:48:07','HINDPETRO',4933691,425.55),(21123,'2017-08-09 12:48:26','HINDPETRO',4937108,425.8),(21124,'2017-08-09 12:48:45','HINDPETRO',4941202,425.5),(21125,'2017-08-09 12:49:05','HINDPETRO',4946779,425.65),(21126,'2017-08-09 12:49:24','HINDPETRO',4952439,425.25),(21127,'2017-08-09 12:49:44','HINDPETRO',4953188,425.25),(21128,'2017-08-09 12:50:03','HINDPETRO',4954066,425.25),(21129,'2017-08-09 12:50:22','HINDPETRO',4969990,424.5),(21130,'2017-08-09 12:50:41','HINDPETRO',4981852,423.55),(21131,'2017-08-09 12:51:01','HINDPETRO',4990827,424.2),(21132,'2017-08-09 12:51:20','HINDPETRO',5002602,423.2),(21133,'2017-08-09 12:51:39','HINDPETRO',5019400,423.5),(21134,'2017-08-09 12:51:58','HINDPETRO',5034895,424.1),(21135,'2017-08-09 12:52:17','HINDPETRO',5070825,423.85),(21136,'2017-08-09 12:52:36','HINDPETRO',5088756,423.7),(21137,'2017-08-09 12:52:37','HINDPETRO',5088756,423.7),(21138,'2017-08-09 12:52:38','HINDPETRO',5090239,423.7),(21139,'2017-08-09 12:52:40','HINDPETRO',5090239,423.7),(21140,'2017-08-09 12:52:41','HINDPETRO',5090239,423.7),(21141,'2017-08-09 12:52:42','HINDPETRO',5090239,423.7),(21142,'2017-08-09 12:52:44','HINDPETRO',5090239,423.7),(21143,'2017-08-09 12:52:45','HINDPETRO',5090239,423.7),(21144,'2017-08-09 12:52:47','HINDPETRO',5091040,423.85),(21145,'2017-08-09 12:52:49','HINDPETRO',5091040,423.85),(21146,'2017-08-09 12:52:50','HINDPETRO',5091040,423.85),(21147,'2017-08-09 12:52:52','HINDPETRO',5091040,423.85),(21148,'2017-08-09 12:52:53','HINDPETRO',5091040,423.85),(21149,'2017-08-09 12:52:55','HINDPETRO',5099109,424.5),(21150,'2017-08-09 12:52:56','HINDPETRO',5099109,424.5),(21151,'2017-08-09 12:52:57','HINDPETRO',5099109,424.5),(21152,'2017-08-09 12:52:59','HINDPETRO',5099109,424.5),(21153,'2017-08-09 12:53:00','HINDPETRO',5099109,424.5),(21154,'2017-08-09 12:53:02','HINDPETRO',5099109,424.5),(21155,'2017-08-09 12:53:03','HINDPETRO',5099166,424.75),(21156,'2017-08-09 12:53:05','HINDPETRO',5099166,424.75),(21157,'2017-08-09 12:53:06','HINDPETRO',5099166,424.75),(21158,'2017-08-09 12:53:08','HINDPETRO',5099166,424.75),(21159,'2017-08-09 12:53:09','HINDPETRO',5099166,424.75),(21160,'2017-08-09 12:53:10','HINDPETRO',5099166,424.75),(21161,'2017-08-09 12:53:11','HINDPETRO',5100353,424.55),(21162,'2017-08-09 12:53:12','HINDPETRO',5100353,424.55),(21163,'2017-08-09 12:53:14','HINDPETRO',5100353,424.55),(21164,'2017-08-09 12:53:15','HINDPETRO',5100353,424.55),(21165,'2017-08-09 12:53:17','HINDPETRO',5100353,424.55),(21166,'2017-08-09 12:53:18','HINDPETRO',5100353,424.55),(21167,'2017-08-09 12:53:19','HINDPETRO',5105724,424.95),(21168,'2017-08-09 12:53:21','HINDPETRO',5105724,424.95),(21169,'2017-08-09 12:53:23','HINDPETRO',5105724,424.95),(21170,'2017-08-09 12:53:24','HINDPETRO',5105724,424.95),(21171,'2017-08-09 12:53:25','HINDPETRO',5105724,424.95),(21172,'2017-08-09 12:53:27','HINDPETRO',5105724,424.95),(21173,'2017-08-09 12:53:29','HINDPETRO',5106923,425),(21174,'2017-08-09 12:53:30','HINDPETRO',5106923,425),(21175,'2017-08-09 12:53:33','HINDPETRO',5106923,425),(21176,'2017-08-09 12:53:35','HINDPETRO',5106923,425),(21177,'2017-08-09 12:53:36','HINDPETRO',5106948,424.9),(21178,'2017-08-09 12:53:38','HINDPETRO',5106948,424.9),(21179,'2017-08-09 12:53:40','HINDPETRO',5106948,424.9),(21180,'2017-08-09 12:53:42','HINDPETRO',5106948,424.9),(21181,'2017-08-09 12:53:44','HINDPETRO',5108444,425),(21182,'2017-08-09 12:53:47','HINDPETRO',5108444,425),(21183,'2017-08-09 12:53:49','HINDPETRO',5108444,425),(21184,'2017-08-09 12:53:50','HINDPETRO',5108444,425),(21185,'2017-08-09 12:53:51','HINDPETRO',5109745,425),(21186,'2017-08-09 12:53:53','HINDPETRO',5109745,425),(21187,'2017-08-09 12:53:55','HINDPETRO',5109745,425),(21188,'2017-08-09 12:53:56','HINDPETRO',5109745,425),(21189,'2017-08-09 12:53:57','HINDPETRO',5109745,425),(21190,'2017-08-09 12:53:59','HINDPETRO',5109745,425),(21191,'2017-08-09 12:54:01','HINDPETRO',5109745,425),(21192,'2017-08-09 12:54:03','HINDPETRO',5109745,425),(21193,'2017-08-09 12:54:04','HINDPETRO',5109745,425),(21194,'2017-08-09 12:54:05','HINDPETRO',5111951,424.95),(21195,'2017-08-09 12:54:07','HINDPETRO',5111951,424.95),(21196,'2017-08-09 12:54:08','HINDPETRO',5119531,424.65),(21197,'2017-08-09 12:54:27','HINDPETRO',5129307,424.65),(21198,'2017-08-09 12:54:46','HINDPETRO',5133738,425.3),(21199,'2017-08-09 12:55:05','HINDPETRO',5150014,425.35),(21200,'2017-08-09 12:55:54','HINDPETRO',5159545,426.7),(21201,'2017-08-09 12:56:14','HINDPETRO',5167559,426.5),(21202,'2017-08-09 12:56:33','HINDPETRO',5170817,426.55),(21203,'2017-08-09 12:56:53','HINDPETRO',5173271,426.9),(21204,'2017-08-09 12:57:15','HINDPETRO',5176593,426.9),(21205,'2017-08-09 12:57:34','HINDPETRO',5180700,426.75),(21206,'2017-08-09 12:57:53','HINDPETRO',5192216,427.7),(21207,'2017-08-09 12:58:13','HINDPETRO',5206677,427.75),(21208,'2017-08-09 12:58:32','HINDPETRO',5208463,427.6),(21209,'2017-08-09 12:58:51','HINDPETRO',5212235,427.5),(21210,'2017-08-09 12:59:10','HINDPETRO',5214754,427.55),(21211,'2017-08-09 12:59:30','HINDPETRO',5216791,427.75),(21212,'2017-08-09 13:22:36','HINDPETRO',5459315,425.2),(21213,'2017-08-09 13:22:54','HINDPETRO',5460258,425.15),(21214,'2017-08-09 13:23:13','HINDPETRO',5476388,425.05),(21215,'2017-08-09 13:23:32','HINDPETRO',5481137,425.35),(21216,'2017-08-09 13:23:53','HINDPETRO',5489445,425.55),(21217,'2017-08-09 13:24:13','HINDPETRO',5489560,425.5),(21218,'2017-08-09 13:24:33','HINDPETRO',5491918,425.25),(21219,'2017-08-09 13:24:53','HINDPETRO',5495665,425.35),(21220,'2017-08-09 13:25:12','HINDPETRO',5499496,425.1),(21221,'2017-08-09 13:25:31','HINDPETRO',5505847,425.05),(21222,'2017-08-09 13:25:50','HINDPETRO',5507095,425.1),(21223,'2017-08-09 13:26:10','HINDPETRO',5508407,425.05),(21224,'2017-08-09 13:26:29','HINDPETRO',5509334,425.1),(21225,'2017-08-09 13:26:48','HINDPETRO',5513078,425),(21226,'2017-08-09 13:27:09','HINDPETRO',5515262,425.05),(21227,'2017-08-09 13:27:29','HINDPETRO',5516516,425),(21228,'2017-08-09 13:27:48','HINDPETRO',5516639,425),(21229,'2017-08-09 13:28:07','HINDPETRO',5518889,425),(21230,'2017-08-09 13:28:26','HINDPETRO',5523468,425.15),(21231,'2017-08-09 13:28:45','HINDPETRO',5527125,425.5),(21232,'2017-08-09 13:29:04','HINDPETRO',5527065,425.5),(21233,'2017-08-09 13:29:23','HINDPETRO',5530280,425.25),(21234,'2017-08-09 13:29:43','HINDPETRO',5530545,425.2),(21235,'2017-08-09 13:30:02','HINDPETRO',5531366,425.1),(21236,'2017-08-09 13:30:21','HINDPETRO',5535205,425),(21237,'2017-08-09 13:30:40','HINDPETRO',5536994,425.05),(21238,'2017-08-09 13:31:00','HINDPETRO',5543717,425.4),(21239,'2017-08-09 13:31:19','HINDPETRO',5545397,425.45),(21240,'2017-08-09 13:31:38','HINDPETRO',5551799,425),(21241,'2017-08-09 13:31:58','HINDPETRO',5556577,425.6),(21242,'2017-08-09 13:32:17','HINDPETRO',5557050,425.7),(21243,'2017-08-09 13:32:37','HINDPETRO',5561804,426),(21244,'2017-08-09 13:32:57','HINDPETRO',5563309,425.25),(21245,'2017-08-09 13:33:17','HINDPETRO',5573640,425.3),(21246,'2017-08-09 13:33:36','HINDPETRO',5580638,426.15),(21247,'2017-08-09 13:33:55','HINDPETRO',5583271,425.35),(21248,'2017-08-09 13:34:14','HINDPETRO',5586201,425.15),(21249,'2017-08-09 13:34:34','HINDPETRO',5590776,425.25),(21250,'2017-08-09 13:34:53','HINDPETRO',5592549,425.2),(21251,'2017-08-09 13:35:13','HINDPETRO',5594291,425.05),(21252,'2017-08-09 13:35:33','HINDPETRO',5598507,425.1),(21253,'2017-08-09 13:35:53','HINDPETRO',5600457,425.5),(21254,'2017-08-09 13:36:13','HINDPETRO',5602091,425.4),(21255,'2017-08-09 13:36:32','HINDPETRO',5602866,425.45),(21256,'2017-08-09 13:36:52','HINDPETRO',5603932,425.4),(21257,'2017-08-09 13:37:12','HINDPETRO',5604797,425.05),(21258,'2017-08-09 13:37:31','HINDPETRO',5609703,425.05),(21259,'2017-08-09 13:37:50','HINDPETRO',5620375,425.75),(21260,'2017-08-09 13:38:10','HINDPETRO',5622137,425.9),(21261,'2017-08-09 13:38:29','HINDPETRO',5623690,425.75),(21262,'2017-08-09 13:38:48','HINDPETRO',5624041,425.05),(21263,'2017-08-09 13:39:07','HINDPETRO',5626080,425.4),(21264,'2017-08-09 13:39:26','HINDPETRO',5626485,425.25),(21265,'2017-08-09 13:39:45','HINDPETRO',5627355,425.1),(21266,'2017-08-09 13:40:05','HINDPETRO',5627727,425.1),(21267,'2017-08-09 13:40:25','HINDPETRO',5628764,425.2),(21268,'2017-08-09 13:40:44','HINDPETRO',5631029,425),(21269,'2017-08-09 13:41:03','HINDPETRO',5635588,425.25),(21270,'2017-08-09 13:41:23','HINDPETRO',5636786,425.7),(21271,'2017-08-09 13:41:42','HINDPETRO',5637096,425.35),(21272,'2017-08-09 13:42:01','HINDPETRO',5642321,425.3),(21273,'2017-08-09 13:42:22','HINDPETRO',5645660,425.35),(21274,'2017-08-09 13:42:41','HINDPETRO',5646298,425.1),(21275,'2017-08-09 14:13:15','HINDPETRO',5989670,425),(21276,'2017-08-09 14:13:35','HINDPETRO',5992622,424.85),(21277,'2017-08-09 14:13:54','HINDPETRO',5996144,424.8),(21278,'2017-08-09 14:14:14','HINDPETRO',5999108,425.1),(21279,'2017-08-09 14:14:33','HINDPETRO',6002531,425),(21280,'2017-08-09 14:14:52','HINDPETRO',6005121,425.05),(21281,'2017-08-09 14:15:12','HINDPETRO',6010022,424.85),(21282,'2017-08-09 14:15:32','HINDPETRO',6014102,425.45),(21283,'2017-08-09 14:15:51','HINDPETRO',6019033,425.45),(21284,'2017-08-09 14:16:10','HINDPETRO',6023209,426),(21285,'2017-08-09 14:16:30','HINDPETRO',6032538,426.65),(21286,'2017-08-09 14:17:11','HINDPETRO',6053999,426.8),(21287,'2017-08-09 14:17:30','HINDPETRO',6065536,427.7),(21288,'2017-08-09 14:17:50','HINDPETRO',6082863,427.95),(21289,'2017-08-09 14:18:09','HINDPETRO',6088021,428.35),(21290,'2017-08-09 15:12:00','HINDPETRO',7186624,432),(21291,'2017-08-09 15:12:20','HINDPETRO',7207236,431.75),(21292,'2017-08-09 15:12:38','HINDPETRO',7221265,431.05),(21293,'2017-08-09 15:12:57','HINDPETRO',7226460,430.65),(21294,'2017-08-09 15:13:39','HINDPETRO',7244884,431.4),(21295,'2017-08-09 15:13:58','HINDPETRO',7249882,431.8),(21296,'2017-08-09 15:14:17','HINDPETRO',7261545,431.5),(21297,'2017-08-09 15:14:36','HINDPETRO',7268342,431.05),(21298,'2017-08-09 15:14:57','HINDPETRO',7268996,431.25),(21299,'2017-08-09 15:15:16','HINDPETRO',7274716,431.2),(21300,'2017-08-09 15:15:37','HINDPETRO',7284766,431.85),(21301,'2017-08-09 15:15:56','HINDPETRO',7295254,431.7),(21302,'2017-08-09 15:16:15','HINDPETRO',7304714,430.1),(21303,'2017-08-09 15:16:34','HINDPETRO',7333625,429.1),(21304,'2017-08-09 15:16:54','HINDPETRO',7340792,429.1),(21305,'2017-08-09 15:17:14','HINDPETRO',7343764,428.7);
/*!40000 ALTER TABLE `live_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `live_data_staging_calculation`
--

DROP TABLE IF EXISTS `live_data_staging_calculation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_data_staging_calculation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curr_time` datetime DEFAULT NULL,
  `symbol` varchar(45) DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14320 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_data_staging_calculation`
--

LOCK TABLES `live_data_staging_calculation` WRITE;
/*!40000 ALTER TABLE `live_data_staging_calculation` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_data_staging_calculation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs_engine`
--

DROP TABLE IF EXISTS `logs_engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs_engine` (
  `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sample_msg` text,
  PRIMARY KEY (`sample_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7772 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs_engine`
--

LOCK TABLES `logs_engine` WRITE;
/*!40000 ALTER TABLE `logs_engine` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs_engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `symbol_basics`
--

DROP TABLE IF EXISTS `symbol_basics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `symbol_basics` (
  `symbol` varchar(45) NOT NULL,
  `volume_prev_day` int(11) NOT NULL,
  `prev_close` float NOT NULL,
  `pivot` float NOT NULL,
  `h1` float NOT NULL,
  `l1` float NOT NULL,
  `h2` float NOT NULL,
  `l2` float NOT NULL,
  `h3` float NOT NULL,
  `l3` float NOT NULL,
  `curr_signal` tinyint(4) NOT NULL,
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `symbol_basics`
--

LOCK TABLES `symbol_basics` WRITE;
/*!40000 ALTER TABLE `symbol_basics` DISABLE KEYS */;
INSERT INTO `symbol_basics` VALUES ('AXISBANK',7120203,508.1,507.85,511.1,504.9,514.05,501.65,517.3,498.7,-1),('ESCORTS',2559525,671.1,669.75,680,660.85,688.9,650.6,699.15,641.7,-1),('HDFCBANK',2334133,1790.25,1784.4,1802.65,1772.05,1815,1753.8,1833.25,1741.45,1),('IOC',17149000,387.05,384,397.7,373.7,411.05,363.05,424.1,352.85,1);
/*!40000 ALTER TABLE `symbol_basics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'engine_live_temp'
--
/*!50003 DROP FUNCTION IF EXISTS `is_resistance_vicinity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `is_resistance_vicinity`(
var_h1l1_range float,
var_upper_level float,
var_current_price float) RETURNS tinyint(1)
BEGIN

declare var_reference_range float;

set  var_reference_range = GREATEST((var_h1l1_range * 0.2),(var_upper_level * 0.25/100));

if  (var_upper_level - var_current_price) <=  var_reference_range then

return true;

else

return false;

end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `is_support_vicinity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `is_support_vicinity`(
var_h1l1_range float,
var_lower_level float,
var_current_price float) RETURNS tinyint(1)
BEGIN

declare var_reference_range float;

set  var_reference_range = GREATEST((var_h1l1_range * 0.2),(var_lower_level * 0.25/100));

if  (var_current_price - var_lower_level) <=  var_reference_range then

return true;

else

return false;

end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculate_new_support` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_new_support`(
symbol VARCHAR(45))
BEGIN



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CALCULATION_CYCLE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CALCULATION_CYCLE`(
input_time datetime)
BEGIN

call test_run_convert_basis_to_calls(input_time);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `convert_to_buy_calls` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `convert_to_buy_calls`(
input_symbol varchar(45))
BEGIN

declare input_time datetime;

declare var_is_buy_given boolean default 0;

delete FROM live_data
where price = 0
or volume = 0;

select max(curr_time) from live_data
where symbol = input_symbol into  input_time;

/*
delete FROM live_data
where curr_time < date_sub(input_time,interval 30 minute);
*/


call find_buy_call(input_time,input_symbol,true,var_is_buy_given);

if(var_is_buy_given is null or var_is_buy_given != 1) then

call find_trade_exit_call_for_buy(input_time,input_symbol);

end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `convert_to_sell_calls` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `convert_to_sell_calls`(
input_symbol varchar(45))
BEGIN

declare input_time datetime;

declare var_is_sell_given boolean default 0;

delete FROM live_data
where price = 0
or volume = 0;

select max(curr_time) from live_data
where symbol = input_symbol into  input_time;
/*
delete FROM live_data
where curr_time < date_sub(input_time,interval 30 minute);
*/

call find_sell_call(input_time,input_symbol,true,var_is_sell_given);

if(var_is_sell_given is null or var_is_sell_given != 1) then

call find_trade_exit_call_for_sell(input_time,input_symbol);

end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `dummy_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `dummy_data`(
symbol_in varchar(45),
prev_close_price float,
prev_volume integer
)
BEGIN





declare start_time datetime;

declare current_pointer_time datetime;

declare current_pointer_price float(10,2);

declare current_pointer_volume int;

declare current_temp_pointer_volume int;





delete FROM live_data where symbol = symbol_in;

ALTER TABLE engine_indicators.equity_data_indiactors AUTO_INCREMENT =1;





set start_time = '2017-08-04 09:15:00';

set current_pointer_time = start_time;

set current_pointer_price = (prev_close_price * ((100 + (0.5-rand())/0.2))) / 100;

set current_pointer_volume  = (prev_volume * 0.25 * (log(100*rand())))/100;

replace INTO `engine_live`.`live_data`
(   curr_time,
symbol,
volume,
price)
VALUES
(
   current_pointer_time, symbol_in,
     current_pointer_volume, current_pointer_price

);

-- set current_pointer_time = date_add(current_pointer_time, interval 30 second);


while timediff(current_pointer_time,  '2017-08-04 15:30:00' ) < 0

do

set  current_pointer_price  = current_pointer_price + (current_pointer_price * 0.005 * (0.5-rand())  );

set current_pointer_time = date_add(current_pointer_time, interval 30 second);

set current_temp_pointer_volume  =  (prev_volume * 0.25 * (log(3*rand())))/100;

if current_temp_pointer_volume < 0 then

set current_temp_pointer_volume = current_temp_pointer_volume * -0.1;

end if;

set current_pointer_volume = current_pointer_volume +   current_temp_pointer_volume;

replace INTO `engine_live`.`live_data`
(   curr_time,
symbol,
volume,
price)
VALUES
(
   current_pointer_time, symbol_in,
     current_pointer_volume, current_pointer_price

);




end while;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_buy_call` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_buy_call`(
input_time datetime,
input_symbol varchar(45),
is_pure_buy_call boolean,
out var_is_buy_given boolean)
proc_label: BEGIN


declare  var_volume_prev_avg int(11) ;
declare  var_prev_close float ;
declare var_h1 float ;
declare var_l1 float ;
declare  var_h2 float ;
declare  var_l2 float ;
declare  var_h3 float ;
declare  var_l3 float ;

declare  var_upper_level float ;
declare  var_lower_level float ;

declare  current_price float ;

declare  current_volume int(11) ;


declare  var_is_support_vicinity boolean ;

declare  var_is_support_taken boolean ;

declare  var_is_resistance_broken boolean ;





select     volume_prev_day,
    prev_close,
    h1,
    l1,
    h2,
    l2,
    h3,
    l3

from basis_for_calls
where symbol = input_symbol
into    var_volume_prev_avg,
  var_prev_close  ,
  var_h1  ,
  var_l1  ,
  var_h2  ,
  var_l2  ,
  var_h3  ,
  var_l3  ;

select price,volume from live_data
where curr_time = input_time
and symbol = input_symbol
into current_price,current_volume;

if(current_price < var_l3) then

leave proc_label;


else

if(current_price < var_l2) then

set var_lower_level = var_l3;
set var_upper_level = var_l2;

else
if(current_price < var_l1) then

set var_lower_level = var_l2;
set var_upper_level = var_l1;

else

if(current_price < var_h1) then

set var_lower_level = var_l1;
set var_upper_level = var_h1;

else
if(current_price < var_h2) then

set var_lower_level = var_h1;
set var_upper_level = var_h2;

else
if(current_price < var_h3) then

set var_lower_level = var_h2;
set var_upper_level = var_h3;

end if;
end if;
end if;
end if;
end if;
end if;


set var_is_support_vicinity =  is_support_vicinity(var_h1-var_l1,var_lower_level,current_price);

if(var_is_support_vicinity) then

call is_support_taken(input_time,input_symbol,var_lower_level,current_price,
current_volume,var_volume_prev_avg,var_is_support_taken);

end if;

if(var_is_support_taken) then

set var_is_buy_given = true;

if(is_pure_buy_call)  then

replace into   intraday_calls
values( input_symbol,1,current_price,input_time,
concat('BUY AT CURRENT PRICE FOR TARGET OF ' ,(current_price+var_h1-var_l1))
);

else


replace into   intraday_calls
values( input_symbol,1,current_price,input_time,
concat('EXIT SELL TRADE AT CURRENT PRICE OF ',current_price)
);


end if;


end if;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_sell_call` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_sell_call`(
input_time datetime,
input_symbol varchar(45),
is_pure_sell_call boolean,
out var_is_sell_given boolean)
proc_label: BEGIN


declare  var_volume_prev_avg int(11) ;
declare  var_prev_close float ;
declare var_h1 float ;
declare var_l1 float ;
declare  var_h2 float ;
declare  var_l2 float ;
declare  var_h3 float ;
declare  var_l3 float ;

declare  var_upper_level float ;
declare  var_lower_level float ;

declare  current_price float ;

declare  current_volume int(11) ;


declare  var_is_resistance_vicinity boolean ;

declare  var_is_resistance_taken boolean ;

declare  var_is_resistance_broken boolean ;





select     volume_prev_day,
    prev_close,
    h1,
    l1,
    h2,
    l2,
    h3,
    l3

from basis_for_calls
where symbol = input_symbol
into    var_volume_prev_avg,
  var_prev_close  ,
  var_h1  ,
  var_l1  ,
  var_h2  ,
  var_l2  ,
  var_h3  ,
  var_l3  ;

select price,volume from live_data
where curr_time = input_time
and symbol = input_symbol
into current_price,current_volume;

if(current_price < var_l3) then

leave proc_label;


else

if(current_price < var_l2) then

set var_lower_level = var_l3;
set var_upper_level = var_l2;

else
if(current_price < var_l1) then

set var_lower_level = var_l2;
set var_upper_level = var_l1;

else

if(current_price < var_h1) then

set var_lower_level = var_l1;
set var_upper_level = var_h1;

else
if(current_price < var_h2) then

set var_lower_level = var_h1;
set var_upper_level = var_h2;

else
if(current_price < var_h3) then

set var_lower_level = var_h2;
set var_upper_level = var_h3;

end if;
end if;
end if;
end if;
end if;
end if;


set var_is_resistance_vicinity =  is_resistance_vicinity(var_h1-var_l1,var_upper_level,current_price);

if(var_is_resistance_vicinity) then

call is_resistance_taken(input_time,input_symbol,var_upper_level,current_price,
current_volume,var_volume_prev_avg,var_is_resistance_taken);

end if;

if(var_is_resistance_taken) then

set var_is_sell_given = true;



if(is_pure_sell_call)  then

replace into   intraday_calls
values( input_symbol,-1,current_price,input_time,
concat('SELL AT CURRENT PRICE FOR TARGET OF ' ,(current_price-(var_h1-var_l1)))
);

else


replace into   intraday_calls
values( input_symbol,-1,current_price,input_time,
concat('EXIT BUY TRADE AT CURRENT PRICE OF ',current_price)
);



end if;



end if;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_trade_exit_call_for_buy` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_trade_exit_call_for_buy`(
input_time datetime,
input_symbol varchar(45)
)
BEGIN

declare var_is_sell_call boolean;

call find_sell_call(input_time,input_symbol,false,var_is_sell_call);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_trade_exit_call_for_sell` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_trade_exit_call_for_sell`(
input_time datetime,
input_symbol varchar(45)
)
BEGIN

declare var_is_buy_call boolean;

call find_buy_call(input_time,input_symbol,false,var_is_buy_call);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_avg_volume_5min_back` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_avg_volume_5min_back`(
input_time datetime,
input_symbol varchar(45),
var_current_volume int(11),
out avg_volume_5min float
)
BEGIN


declare time_5min_back datetime;

-- declare id_5min_back datetime;

declare no_secs_5min_back int;

declare var_5min_back_volume int(11);

declare  time_5min_back_lower  datetime;

declare  time_5min_back_upper  datetime;


set time_5min_back_lower =   date_sub(input_time,interval 400 second);

set time_5min_back_upper = date_sub(input_time,interval 280 second);



select  max(curr_time) from live_data
where symbol = input_symbol
and curr_time > time_5min_back_lower
and  curr_time < time_5min_back_upper
into time_5min_back;

if (time_5min_back is not null) then



select volume from live_data
where  symbol = input_symbol
and curr_time = time_5min_back
into var_5min_back_volume;

set no_secs_5min_back = TIME_TO_SEC(TIMEDIFF(input_time,time_5min_back));

set avg_volume_5min = (var_current_volume - var_5min_back_volume)/ no_secs_5min_back;


end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_avg_volume_till_time` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_avg_volume_till_time`(
input_time datetime,
input_symbol varchar(45),
var_current_volume int(11),
out avg_volume_till_time float
)
BEGIN


declare time_min datetime;

-- declare id_5min_back datetime;

declare no_secs_till_time int;

declare var_till_time_volume int(11);


set time_min =  concat(date(input_time),' ', '09:15:00');

set no_secs_till_time = TIME_TO_SEC(TIMEDIFF(input_time,time_min));

set avg_volume_till_time = var_current_volume/no_secs_till_time;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `is_resistance_taken` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `is_resistance_taken`(
input_time datetime,
input_symbol varchar(45),
var_upper_level float,
var_current_price float,
var_current_volume int(11),
var_volume_prev_avg int(11),
out var_is_resistance_taken boolean
)
this_proc: BEGIN

declare max_price_3min float;

declare min_price_3min float;


declare avg_volume_till_time float;

declare avg_volume_5min float;

declare avg_volume_prev_5day_avg float;


declare no_mins_till_time  float;





select max(price) from live_data where
symbol =  input_symbol
and curr_time between date_sub(input_time,interval 3 minute) and input_time
into   max_price_3min;

if(max_price_3min >  var_upper_level)  then

set var_is_resistance_taken = 0;

leave this_proc;

end if;

select min(price) from live_data where
symbol =  input_symbol
and curr_time between date_sub(input_time,interval 3 minute) and input_time
into   min_price_3min;

if( (max_price_3min - var_current_price) < (var_current_price - min_price_3min) ) then

set var_is_resistance_taken = 0;

leave this_proc;

end if;

call get_avg_volume_5min_back
(input_time, input_symbol,var_current_volume,avg_volume_5min);

call get_avg_volume_till_time
(input_time, input_symbol,var_current_volume,avg_volume_till_time);

set avg_volume_prev_5day_avg = var_volume_prev_avg/(375*60);


if(avg_volume_5min > (1.1 * avg_volume_till_time) )   then

if( avg_volume_5min > (1.1 *  avg_volume_prev_5day_avg)) then

set var_is_resistance_taken = 1;

end if;

end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `is_support_taken` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `is_support_taken`(
input_time datetime,
input_symbol varchar(45),
var_lower_level float,
var_current_price float,
var_current_volume int(11),
var_volume_prev_avg int(11),
out var_is_support_taken boolean
)
this_proc: BEGIN

declare min_price_3min float;

declare max_price_3min float;


declare avg_volume_till_time float;

declare avg_volume_5min float;

declare avg_volume_prev_5day_avg float;


declare no_mins_till_time  float;





select min(price) from live_data where
symbol =  input_symbol
and curr_time between date_sub(input_time,interval 3 minute) and input_time
into   min_price_3min;

if(min_price_3min <  var_lower_level)  then

set var_is_support_taken = 0;

leave this_proc;

end if;

select max(price) from live_data where
symbol =  input_symbol
and curr_time between date_sub(input_time,interval 3 minute) and input_time
into   max_price_3min;

if( (max_price_3min - var_current_price) > (var_current_price - min_price_3min) ) then

set var_is_support_taken = 0;

leave this_proc;

end if;


call get_avg_volume_5min_back
(input_time, input_symbol,var_current_volume,avg_volume_5min);

call get_avg_volume_till_time
(input_time, input_symbol,var_current_volume,avg_volume_till_time);

set avg_volume_prev_5day_avg = var_volume_prev_avg/(375*60);


if(avg_volume_5min > (1.1 * avg_volume_till_time) )   then

if( avg_volume_5min > (1.1 *  avg_volume_prev_5day_avg)) then

set var_is_support_taken = 1;

end if;

end if;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `run_calculation_cycles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `run_calculation_cycles`()
BEGIN



declare start_time datetime;

declare current_pointer_time datetime;

set start_time = '2017-08-04 09:25:00';

set current_pointer_time = start_time;

-- set current_pointer_time = date_add(current_pointer_time, interval 30 second);



while timediff(current_pointer_time,  '2017-08-04 15:30:00' ) < 0
do

call CALCULATION_CYCLE(current_pointer_time);

set current_pointer_time = date_add(current_pointer_time, interval 30 second);


end while;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `test_run_convert_basis_to_calls` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_run_convert_basis_to_calls`(
input_time datetime)
BEGIN



  -- Declare variables used just for cursor and loop control
  DECLARE no_more_rows int DEFAULT 0;
  DECLARE loop_cntr INT DEFAULT 1;

  declare user_cnt int;
  DECLARE counter INT DEFAULT 0;

  declare var_symbol varchar(45);

  declare var_signal tinyint;



  DECLARE cursor_basis_for_calls CURSOR FOR
  select distinct symbol,curr_signal from basis_for_calls;


  -- Declare 'handlers' for exceptions
  DECLARE CONTINUE HANDLER FOR NOT FOUND
    SET no_more_rows = 1;

set counter = 1;

OPEN cursor_basis_for_calls;

select FOUND_ROWS() into user_cnt ;

	INSERT INTO logs_engine (sample_msg) VALUES
		(CONCAT('for input_time = ',input_time,', cursor_basis_for_calls.user_cnt  = ',user_cnt));



loop_label: WHILE   counter <=  user_cnt
DO

FETCH cursor_basis_for_calls INTO var_symbol,var_signal;


if(var_signal = 1) then

call  test_run_convert_to_buy_calls(input_time,var_symbol);



end if;

if(var_signal = -1) then

call  test_run_convert_to_sell_calls(input_time,var_symbol);



end if;

set counter = counter + 1;

end while;


close cursor_basis_for_calls;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `test_run_convert_to_buy_calls` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_run_convert_to_buy_calls`(
input_time datetime,
input_symbol varchar(45)
)
BEGIN

declare var_is_buy_given boolean default 0;

call find_buy_call(input_time,input_symbol,true,var_is_buy_given);



if(var_is_buy_given is null or var_is_buy_given != 1) then

call find_trade_exit_call_for_buy(input_time,input_symbol);

end if;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `test_run_convert_to_sell_calls` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `test_run_convert_to_sell_calls`(
input_time datetime,
input_symbol varchar(45)
)
BEGIN

declare var_is_sell_given boolean default 0;

call find_sell_call(input_time,input_symbol,true,var_is_sell_given);




if(var_is_sell_given is null or var_is_sell_given != 1) then

call find_trade_exit_call_for_sell(input_time,input_symbol);

end if;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-09 15:17:38
