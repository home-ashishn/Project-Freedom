-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: engine_has_pattern
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
-- Current Database: `engine_has_pattern`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `engine_has_pattern` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `engine_has_pattern`;

--
-- Table structure for table `backtest_has_confidence`
--

DROP TABLE IF EXISTS `backtest_has_confidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backtest_has_confidence` (
  `has_id` int(11) NOT NULL,
  `confidence_value` float DEFAULT NULL,
  PRIMARY KEY (`has_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backtest_has_confidence`
--

LOCK TABLES `backtest_has_confidence` WRITE;
/*!40000 ALTER TABLE `backtest_has_confidence` DISABLE KEYS */;
/*!40000 ALTER TABLE `backtest_has_confidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equity_data_has_pattern`
--

DROP TABLE IF EXISTS `equity_data_has_pattern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equity_data_has_pattern` (
  `ROW_ID` int(5) NOT NULL AUTO_INCREMENT,
  `SYMBOL` varchar(45) NOT NULL,
  `CURR_DATE` date NOT NULL,
  `PREV_CLOSE` float(10,2) DEFAULT NULL,
  `OPEN_PRICE` float(10,2) DEFAULT NULL,
  `HIGH_PRICE` float(10,2) DEFAULT NULL,
  `LOW_PRICE` float(10,2) DEFAULT NULL,
  `LAST_PRICE` float(10,2) DEFAULT NULL,
  `CLOSE_PRICE` float(10,2) DEFAULT NULL,
  `AVERAGE_PRICE` float(10,2) DEFAULT NULL,
  `TOTAL_TRADED_QUANTITY` float(20,2) DEFAULT NULL,
  `TURNOVER` float(20,2) DEFAULT NULL,
  `NO_OF_TRADES` int(11) DEFAULT NULL,
  `DELIVERABLE_QTY` int(11) DEFAULT NULL,
  `PERCENT_DELIVERABLE_QTY` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`ROW_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equity_data_has_pattern`
--

LOCK TABLES `equity_data_has_pattern` WRITE;
/*!40000 ALTER TABLE `equity_data_has_pattern` DISABLE KEYS */;
INSERT INTO `equity_data_has_pattern` VALUES (1,'HINDPETRO','2017-04-17',559.20,565.85,566.70,553.50,557.15,556.85,560.46,1847141.00,1035254720.00,27999,763986,41.36),(2,'HINDPETRO','2017-04-18',556.85,562.15,565.95,550.25,552.10,553.30,558.02,2773242.00,1547526784.00,42960,1515709,54.65),(3,'HINDPETRO','2017-04-19',553.30,549.20,558.60,542.95,554.45,553.90,551.82,2788728.00,1538886144.00,52563,1751748,62.82),(4,'HINDPETRO','2017-04-20',553.90,557.80,558.60,550.00,555.00,553.45,553.62,2014860.00,1115465984.00,27160,1175391,58.34),(5,'HINDPETRO','2017-04-21',553.45,555.00,559.50,552.50,557.50,557.10,556.04,1825601.00,1015106432.00,35098,870533,47.68),(6,'HINDPETRO','2017-04-24',557.10,557.80,561.90,548.35,556.20,556.50,554.96,974370.00,540737088.00,22309,355883,36.52),(7,'HINDPETRO','2017-04-25',556.50,558.00,569.00,556.60,557.50,559.60,561.63,3597094.00,2020218240.00,37304,2260086,62.83),(8,'HINDPETRO','2017-04-26',559.60,560.00,563.25,531.00,536.00,535.85,543.50,6240629.00,3391785216.00,50249,4756426,76.22),(9,'HINDPETRO','2017-04-27',535.85,539.75,546.40,533.70,545.00,542.50,540.57,3958570.00,2139899264.00,59821,2442338,61.70),(10,'HINDPETRO','2017-04-28',542.50,545.00,546.70,534.50,536.00,536.15,538.14,1462701.00,787138944.00,20767,825205,56.42),(11,'HINDPETRO','2017-05-02',536.15,539.80,553.90,538.20,552.55,552.60,547.59,2459517.00,1346814720.00,41572,1492277,60.67),(12,'HINDPETRO','2017-05-03',552.60,556.00,557.75,529.15,530.50,530.20,536.22,4703146.00,2521906176.00,40121,3209223,68.24),(13,'HINDPETRO','2017-05-04',530.20,534.00,534.45,523.20,532.00,531.45,528.78,1817573.00,961101888.00,34421,1049331,57.73),(14,'HINDPETRO','2017-05-05',531.45,539.30,539.30,521.40,523.50,523.50,526.83,1692257.00,891539776.00,38773,737019,43.55),(15,'HINDPETRO','2017-05-08',523.50,523.90,532.90,522.05,531.50,531.10,528.08,1517794.00,801516032.00,32697,874801,57.64),(16,'HINDPETRO','2017-05-09',531.10,535.00,535.00,524.00,527.80,527.35,528.04,1789422.00,944881856.00,30991,1142699,63.86),(17,'HINDPETRO','2017-05-10',527.35,530.00,532.50,525.10,529.65,529.20,528.26,1186676.00,626868096.00,24915,762475,64.25),(18,'HINDPETRO','2017-05-11',529.20,528.50,533.90,523.55,526.00,526.95,527.75,1680962.00,887128128.00,20653,1006498,59.88),(19,'HINDPETRO','2017-05-12',526.95,527.50,539.30,525.30,535.50,535.70,534.46,2130693.00,1138765312.00,42727,1206119,56.61),(20,'HINDPETRO','2017-05-15',535.70,537.95,538.80,531.10,537.00,537.15,536.12,1013059.00,543120064.00,27304,527631,52.08),(21,'HINDPETRO','2017-05-16',537.15,534.00,544.95,532.80,541.90,542.00,539.26,1232150.00,664449792.00,21115,560930,45.52),(22,'HINDPETRO','2017-05-17',542.00,543.00,549.90,540.05,543.10,543.55,544.65,2336436.00,1272537728.00,40976,1579920,67.62),(23,'HINDPETRO','2017-05-18',543.55,543.50,543.50,526.55,531.95,533.45,533.08,2043902.00,1089555328.00,40853,1264831,61.88),(24,'HINDPETRO','2017-05-19',533.45,532.55,536.40,517.80,522.45,521.35,524.97,1744817.00,915969856.00,46130,898752,51.51),(25,'HINDPETRO','2017-05-22',521.35,523.00,523.60,507.20,511.80,510.65,511.06,1912404.00,977349760.00,36944,915593,47.88),(26,'HINDPETRO','2017-05-23',510.65,511.00,512.85,492.05,499.55,499.60,500.12,3334106.00,1667439232.00,49401,1791975,53.75),(27,'HINDPETRO','2017-05-24',499.60,495.00,502.00,493.50,500.85,499.70,498.01,2388779.00,1189631488.00,63898,1471289,61.59),(28,'HINDPETRO','2017-05-25',499.70,501.00,511.80,496.65,505.70,508.80,505.74,4629691.00,2341429248.00,50431,2691975,58.15),(29,'HINDPETRO','2017-05-26',508.80,507.60,572.90,495.55,569.10,567.60,548.41,12661268.00,6943568384.00,142084,4042426,31.93),(30,'HINDPETRO','2017-05-29',567.60,570.25,574.80,543.10,549.35,547.25,554.00,4237525.00,2347609856.00,73621,1458822,34.43),(31,'HINDPETRO','2017-05-30',547.25,546.50,559.00,536.00,553.80,554.05,546.62,2154280.00,1177577088.00,42098,808221,37.52),(32,'HINDPETRO','2017-05-31',554.05,554.70,556.90,546.15,554.00,554.20,553.28,2927562.00,1619755520.00,90080,1623409,55.45),(33,'HINDPETRO','2017-06-01',554.20,554.00,554.00,536.15,539.50,541.20,544.11,2390099.00,1300474368.00,51880,1100515,46.04),(34,'HINDPETRO','2017-06-02',541.20,543.05,547.25,535.25,536.05,536.75,539.31,2136487.00,1152220288.00,73327,1236979,57.90),(35,'HINDPETRO','2017-06-05',536.75,539.00,548.70,539.00,541.05,542.20,544.15,1090003.00,593121984.00,21606,531279,48.74),(36,'HINDPETRO','2017-06-06',542.20,540.65,552.50,538.65,545.00,545.25,546.48,2104949.00,1150304640.00,61909,1050885,49.92),(37,'HINDPETRO','2017-06-07',545.25,549.40,549.40,537.25,540.10,540.20,541.31,1489142.00,806089664.00,38824,817556,54.90),(38,'HINDPETRO','2017-06-08',540.20,544.90,545.05,535.50,537.55,538.85,539.87,1373454.00,741482240.00,30648,642046,46.75),(39,'HINDPETRO','2017-06-09',538.85,539.40,541.10,530.05,539.90,539.65,536.12,1192423.00,639279104.00,32638,593872,49.80),(40,'HINDPETRO','2017-06-12',539.65,540.00,549.70,537.55,541.80,545.00,544.11,2134221.00,1161247360.00,66963,1285197,60.22),(41,'HINDPETRO','2017-06-13',545.00,544.95,550.35,539.20,539.40,540.60,544.44,2484185.00,1352480640.00,67307,1686060,67.87),(42,'HINDPETRO','2017-06-14',540.60,536.10,548.60,536.10,547.00,546.70,544.76,2769249.00,1508583168.00,67367,1983550,71.63),(43,'HINDPETRO','2017-06-15',546.70,548.00,551.30,515.00,515.15,518.55,527.72,5136328.00,2710553344.00,94082,2843978,55.37),(44,'HINDPETRO','2017-06-16',518.55,520.05,536.40,520.05,530.00,530.15,528.70,4126568.00,2181717248.00,79045,1844977,44.71);
/*!40000 ALTER TABLE `equity_data_has_pattern` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equity_data_has_pattern_rally_top`
--

DROP TABLE IF EXISTS `equity_data_has_pattern_rally_top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equity_data_has_pattern_rally_top` (
  `ROW_ID` int(5) NOT NULL AUTO_INCREMENT,
  `SYMBOL` varchar(45) NOT NULL,
  `CURR_DATE` date NOT NULL,
  `PREV_CLOSE` float(10,2) DEFAULT NULL,
  `OPEN_PRICE` float(10,2) DEFAULT NULL,
  `HIGH_PRICE` float(10,2) DEFAULT NULL,
  `LOW_PRICE` float(10,2) DEFAULT NULL,
  `LAST_PRICE` float(10,2) DEFAULT NULL,
  `CLOSE_PRICE` float(10,2) DEFAULT NULL,
  `AVERAGE_PRICE` float(10,2) DEFAULT NULL,
  `TOTAL_TRADED_QUANTITY` float(20,2) DEFAULT NULL,
  `TURNOVER` float(20,2) DEFAULT NULL,
  `NO_OF_TRADES` int(11) DEFAULT NULL,
  `DELIVERABLE_QTY` int(11) DEFAULT NULL,
  `PERCENT_DELIVERABLE_QTY` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`ROW_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=739 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equity_data_has_pattern_rally_top`
--

LOCK TABLES `equity_data_has_pattern_rally_top` WRITE;
/*!40000 ALTER TABLE `equity_data_has_pattern_rally_top` DISABLE KEYS */;
INSERT INTO `equity_data_has_pattern_rally_top` VALUES (7,'HINDPETRO','2017-04-25',556.50,558.00,569.00,556.60,557.50,559.60,561.63,3597094.00,2020218240.00,37304,2260086,62.83),(29,'HINDPETRO','2017-05-26',508.80,507.60,572.90,495.55,569.10,567.60,548.41,12661268.00,6943568384.00,142084,4042426,31.93);
/*!40000 ALTER TABLE `equity_data_has_pattern_rally_top` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equity_data_has_pattern_top_temp`
--

DROP TABLE IF EXISTS `equity_data_has_pattern_top_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equity_data_has_pattern_top_temp` (
  `ROW_ID` int(5) NOT NULL AUTO_INCREMENT,
  `SYMBOL` varchar(45) NOT NULL,
  `CURR_DATE` date NOT NULL,
  `PREV_CLOSE` float(10,2) DEFAULT NULL,
  `OPEN_PRICE` float(10,2) DEFAULT NULL,
  `HIGH_PRICE` float(10,2) DEFAULT NULL,
  `LOW_PRICE` float(10,2) DEFAULT NULL,
  `LAST_PRICE` float(10,2) DEFAULT NULL,
  `CLOSE_PRICE` float(10,2) DEFAULT NULL,
  `AVERAGE_PRICE` float(10,2) DEFAULT NULL,
  `TOTAL_TRADED_QUANTITY` float(20,2) DEFAULT NULL,
  `TURNOVER` float(20,2) DEFAULT NULL,
  `NO_OF_TRADES` int(11) DEFAULT NULL,
  `DELIVERABLE_QTY` int(11) DEFAULT NULL,
  `PERCENT_DELIVERABLE_QTY` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`ROW_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=742 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equity_data_has_pattern_top_temp`
--

LOCK TABLES `equity_data_has_pattern_top_temp` WRITE;
/*!40000 ALTER TABLE `equity_data_has_pattern_top_temp` DISABLE KEYS */;
INSERT INTO `equity_data_has_pattern_top_temp` VALUES (5,'HINDPETRO','2017-04-21',553.45,555.00,559.50,552.50,557.50,557.10,556.04,1825601.00,1015106432.00,35098,870533,47.68),(7,'HINDPETRO','2017-04-25',556.50,558.00,569.00,556.60,557.50,559.60,561.63,3597094.00,2020218240.00,37304,2260086,62.83),(29,'HINDPETRO','2017-05-26',508.80,507.60,572.90,495.55,569.10,567.60,548.41,12661268.00,6943568384.00,142084,4042426,31.93);
/*!40000 ALTER TABLE `equity_data_has_pattern_top_temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equity_data_has_second_shoulder_top`
--

DROP TABLE IF EXISTS `equity_data_has_second_shoulder_top`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equity_data_has_second_shoulder_top` (
  `head_row_id` int(5) NOT NULL,
  `ROW_ID` int(5) NOT NULL,
  `SYMBOL` varchar(45) NOT NULL,
  `CURR_DATE` date NOT NULL,
  `PREV_CLOSE` float DEFAULT NULL,
  `OPEN_PRICE` float DEFAULT NULL,
  `HIGH_PRICE` float DEFAULT NULL,
  `LOW_PRICE` float DEFAULT NULL,
  `LAST_PRICE` float DEFAULT NULL,
  `CLOSE_PRICE` float DEFAULT NULL,
  `AVERAGE_PRICE` float DEFAULT NULL,
  `TOTAL_TRADED_QUANTITY` float DEFAULT NULL,
  `TURNOVER` float DEFAULT NULL,
  `NO_OF_TRADES` int(11) DEFAULT NULL,
  `DELIVERABLE_QTY` int(11) DEFAULT NULL,
  `PERCENT_DELIVERABLE_QTY` float DEFAULT NULL,
  PRIMARY KEY (`ROW_ID`,`head_row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equity_data_has_second_shoulder_top`
--

LOCK TABLES `equity_data_has_second_shoulder_top` WRITE;
/*!40000 ALTER TABLE `equity_data_has_second_shoulder_top` DISABLE KEYS */;
/*!40000 ALTER TABLE `equity_data_has_second_shoulder_top` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_event_log`
--

DROP TABLE IF EXISTS `has_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_event_log` (
  `has_event_log_id` int(11) NOT NULL AUTO_INCREMENT,
  `eval_run_id` int(11) DEFAULT NULL,
  `has_event_short_desc` varchar(45) DEFAULT NULL,
  `has_event_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`has_event_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_event_log`
--

LOCK TABLES `has_event_log` WRITE;
/*!40000 ALTER TABLE `has_event_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `has_event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_first_shoulder_data`
--

DROP TABLE IF EXISTS `has_first_shoulder_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_first_shoulder_data` (
  `first_shoulder_top_row_id` int(5) NOT NULL,
  `first_shoulder_top_date` date NOT NULL,
  `first_shoulder_top_close_price` float NOT NULL,
  `first_shoulder_low_row_id` int(5) DEFAULT NULL,
  `first_shoulder_low_date` date DEFAULT NULL,
  `first_shoulder_low_close_price` float DEFAULT NULL,
  `head_row_id` int(5) NOT NULL,
  `head_date` date NOT NULL,
  `head_close_price` float NOT NULL,
  `head_low_row_id` int(5) DEFAULT NULL,
  `head_low_date` date DEFAULT NULL,
  `head_low_close_price` float DEFAULT NULL,
  PRIMARY KEY (`first_shoulder_top_row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_first_shoulder_data`
--

LOCK TABLES `has_first_shoulder_data` WRITE;
/*!40000 ALTER TABLE `has_first_shoulder_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `has_first_shoulder_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_neckline_points`
--

DROP TABLE IF EXISTS `has_neckline_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_neckline_points` (
  `has_id` int(11) NOT NULL,
  `row_id` int(11) NOT NULL,
  `curr_date` date DEFAULT NULL,
  `price_value` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`has_id`,`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_neckline_points`
--

LOCK TABLES `has_neckline_points` WRITE;
/*!40000 ALTER TABLE `has_neckline_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `has_neckline_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_pattern_rules`
--

DROP TABLE IF EXISTS `has_pattern_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_pattern_rules` (
  `rule_id` int(11) NOT NULL,
  `rule_name` varchar(45) DEFAULT NULL,
  `rule_value` float NOT NULL,
  `rule_desc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`rule_id`),
  UNIQUE KEY `rule_name_UNIQUE` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_pattern_rules`
--

LOCK TABLES `has_pattern_rules` WRITE;
/*!40000 ALTER TABLE `has_pattern_rules` DISABLE KEYS */;
INSERT INTO `has_pattern_rules` VALUES (1,'HEAD_DURATION_PERCENTAGE_OF_RALLY',5,'TIME TAKEN TO MAKE LOW AFTER IDENTIFYING HEAD PEAK. ALSO SAME TIME IS USED TO VERIFY THAT THIS IS LOW POINT FROM FUTURE VALUES'),(2,'MAX_NECKLINE_SLOPE_ABSOLUTE_VALUE',0.3,'MAX VALUE FOR SLOPE OF NECKLINE IN ABSOLUTE TERMS'),(3,'HEAD_DURATION_PERCENTAGE_OF_RALLY_1',7.5,'-');
/*!40000 ALTER TABLE `has_pattern_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_pattern_type`
--

DROP TABLE IF EXISTS `has_pattern_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_pattern_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(45) DEFAULT NULL,
  `type_desc` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_pattern_type`
--

LOCK TABLES `has_pattern_type` WRITE;
/*!40000 ALTER TABLE `has_pattern_type` DISABLE KEYS */;
INSERT INTO `has_pattern_type` VALUES (1,'SHORT_CUT',NULL),(2,'FULL_LOW',NULL);
/*!40000 ALTER TABLE `has_pattern_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identified_has_data`
--

DROP TABLE IF EXISTS `identified_has_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identified_has_data` (
  `has_id` int(5) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) NOT NULL,
  `first_shoulder_top_row_id` int(5) NOT NULL,
  `first_shoulder_top_date` date DEFAULT NULL,
  `first_shoulder_top_close_price` float DEFAULT NULL,
  `first_shoulder_low_row_id` int(5) DEFAULT NULL,
  `first_shoulder_low_date` date DEFAULT NULL,
  `first_shoulder_low_close_price` float DEFAULT NULL,
  `head_row_id` int(5) DEFAULT NULL,
  `head_date` date DEFAULT NULL,
  `head_close_price` float DEFAULT NULL,
  `head_low_row_id` int(5) DEFAULT NULL,
  `head_low_date` date DEFAULT NULL,
  `head_low_close_price` float DEFAULT NULL,
  `second_shoulder_top_row_id` int(5) DEFAULT NULL,
  `second_shoulder_top_date` date DEFAULT NULL,
  `second_shoulder_top_close_price` float DEFAULT NULL,
  `second_shoulder_low_row_id` int(5) DEFAULT NULL,
  `second_shoulder_low_date` date DEFAULT NULL,
  `second_shoulder_low_close_price` float DEFAULT NULL,
  PRIMARY KEY (`has_id`,`symbol`,`first_shoulder_top_row_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identified_has_data`
--

LOCK TABLES `identified_has_data` WRITE;
/*!40000 ALTER TABLE `identified_has_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `identified_has_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identified_has_neckline_data`
--

DROP TABLE IF EXISTS `identified_has_neckline_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identified_has_neckline_data` (
  `has_id` int(5) NOT NULL AUTO_INCREMENT,
  `first_shoulder_low_row_id` int(5) DEFAULT NULL,
  `first_shoulder_low_date` date DEFAULT NULL,
  `first_shoulder_low_close_price` float DEFAULT NULL,
  `neckline_slope_value` float DEFAULT NULL,
  PRIMARY KEY (`has_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identified_has_neckline_data`
--

LOCK TABLES `identified_has_neckline_data` WRITE;
/*!40000 ALTER TABLE `identified_has_neckline_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `identified_has_neckline_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identified_has_pattern_type`
--

DROP TABLE IF EXISTS `identified_has_pattern_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identified_has_pattern_type` (
  `has_id` int(11) NOT NULL,
  `identified_pattern_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`has_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identified_has_pattern_type`
--

LOCK TABLES `identified_has_pattern_type` WRITE;
/*!40000 ALTER TABLE `identified_has_pattern_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `identified_has_pattern_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market_sessions`
--

DROP TABLE IF EXISTS `market_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `market_sessions` (
  `row_id` int(5) NOT NULL,
  `session_date` date DEFAULT NULL,
  PRIMARY KEY (`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_sessions`
--

LOCK TABLES `market_sessions` WRITE;
/*!40000 ALTER TABLE `market_sessions` DISABLE KEYS */;
INSERT INTO `market_sessions` VALUES (1,'2017-04-17'),(2,'2017-04-18'),(3,'2017-04-19'),(4,'2017-04-20'),(5,'2017-04-21'),(6,'2017-04-24'),(7,'2017-04-25'),(8,'2017-04-26'),(9,'2017-04-27'),(10,'2017-04-28'),(11,'2017-05-02'),(12,'2017-05-03'),(13,'2017-05-04'),(14,'2017-05-05'),(15,'2017-05-08'),(16,'2017-05-09'),(17,'2017-05-10'),(18,'2017-05-11'),(19,'2017-05-12'),(20,'2017-05-15'),(21,'2017-05-16'),(22,'2017-05-17'),(23,'2017-05-18'),(24,'2017-05-19'),(25,'2017-05-22'),(26,'2017-05-23'),(27,'2017-05-24'),(28,'2017-05-25'),(29,'2017-05-26'),(30,'2017-05-29'),(31,'2017-05-30'),(32,'2017-05-31'),(33,'2017-06-01'),(34,'2017-06-02'),(35,'2017-06-05'),(36,'2017-06-06'),(37,'2017-06-07'),(38,'2017-06-08'),(39,'2017-06-09'),(40,'2017-06-12'),(41,'2017-06-13'),(42,'2017-06-14'),(43,'2017-06-15'),(44,'2017-06-16'),(45,'2017-06-19'),(46,'2017-06-20'),(47,'2017-06-21'),(48,'2017-06-22'),(49,'2017-06-23'),(50,'2017-06-27'),(51,'2017-06-28'),(52,'2017-06-29'),(53,'2017-06-30'),(54,'2017-07-03'),(55,'2017-07-04');
/*!40000 ALTER TABLE `market_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'engine_has_pattern'
--
/*!50003 DROP PROCEDURE IF EXISTS `backtest_calculate_confidence` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `backtest_calculate_confidence`(
input_has_id int,
CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION int)
proc_label: BEGIN

declare var_head_close_price float;

declare var_head_row_id int;

declare var_head_neckline_price float;

declare var_second_shoulder_low_row_id int;

declare second_shoulder_low_close_price float;

declare var_head_height float;

declare var_min_price float;

declare var_max_price float;

declare var_confidence_value float default -1;


-- declare var_neckline_slope float;

select a.second_shoulder_low_row_id,a.second_shoulder_low_close_price,
a.head_row_id,a.head_close_price from  engine_has_pattern.identified_has_data a
where a.has_id = input_has_id
into
var_second_shoulder_low_row_id,second_shoulder_low_close_price,
var_head_row_id,var_head_close_price;

select a.price_value from  engine_has_pattern.has_neckline_points a
where row_id = var_head_row_id
into var_head_neckline_price;

set var_head_height = var_head_close_price - var_head_neckline_price;

select max(a.CLOSE_PRICE) from  engine_has_pattern.equity_data_has_pattern a
where a.ROW_ID >  var_second_shoulder_low_row_id
and a.ROW_ID <=  (var_second_shoulder_low_row_id +  CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION)

into var_max_price;

select min(a.CLOSE_PRICE) from  engine_has_pattern.equity_data_has_pattern a
where a.ROW_ID >  var_second_shoulder_low_row_id
and a.ROW_ID <=  (var_second_shoulder_low_row_id +  CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION)

into var_min_price;

if var_max_price > second_shoulder_low_close_price
then

if ( var_max_price - second_shoulder_low_close_price) >   (second_shoulder_low_close_price - var_min_price)

then

set var_confidence_value = 0;

replace into engine_has_pattern.backtest_has_confidence
values(input_has_id,var_confidence_value);

leave proc_label;

end if;


end if;






set var_confidence_value = (second_shoulder_low_close_price -  var_min_price) * 100/
                            var_head_height;

replace into engine_has_pattern.backtest_has_confidence
values(input_has_id,var_confidence_value);



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `backtest_identify_all_has_pattern_type` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `backtest_identify_all_has_pattern_type`(
duration_days INT)
BEGIN

  -- Declare variables used just for cursor and loop control
  DECLARE no_more_rows int;
  DECLARE loop_cntr INT DEFAULT 1;
  DECLARE num_rows INT DEFAULT 0;

  DECLARE var_has_id INT;
  DECLARE var_second_shoulder_top_row_id INT;
  DECLARE var_second_shoulder_top_close_price FLOAT;

  DECLARE calculated_cut_off_date DATE;

  DECLARE HEAD_DUR_PERC_OF_RALLY float DEFAULT 0.0;

  DECLARE CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION int DEFAULT 0;
  DECLARE var_cut_off_date_row_id int;

  DECLARE identified_pattern_type INT;





      DECLARE identified_has_details CURSOR FOR
    SELECT DISTINCT
        has_id,second_shoulder_top_row_id, second_shoulder_top_close_price
        -- ,CURR_DATE,CLOSE_PRICE
    FROM engine_has_pattern.identified_has_data
    ORDER BY has_id ASC
;

   -- Declare 'handlers' for exceptions
  DECLARE CONTINUE HANDLER FOR NOT FOUND
    SET no_more_rows = 1;

SELECT rule_value/100 FROM engine_has_pattern.has_pattern_rules
where rule_name = 'HEAD_DURATION_PERCENTAGE_OF_RALLY_1' into  HEAD_DUR_PERC_OF_RALLY;

SET CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION =    ROUND(2 * duration_days * HEAD_DUR_PERC_OF_RALLY );

delete from  engine_has_pattern.identified_has_pattern_type;

delete from engine_has_pattern.backtest_has_confidence;

OPEN identified_has_details;

 IF no_more_rows = 1 THEN
 close identified_has_details;
 END IF;

find_second_shoulder__low_loop : LOOP

 IF no_more_rows = 1 THEN
 LEAVE find_second_shoulder__low_loop;
 END IF;

FETCH identified_has_details INTO var_has_id,var_second_shoulder_top_row_id,
                                    var_second_shoulder_top_close_price;

 IF no_more_rows = 1 THEN
 LEAVE find_second_shoulder__low_loop;
 END IF;


select  a.curr_date from engine_has_pattern.equity_data_has_pattern a
where a.row_id =  (var_second_shoulder_top_row_id +  CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION)
into calculated_cut_off_date;

call identify_has_pattern_type(duration_days,calculated_cut_off_date,var_has_id,var_second_shoulder_top_row_id,
                                    var_second_shoulder_top_close_price,
                                    CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION
                                    );
select a.identified_pattern_type_id from engine_has_pattern.identified_has_pattern_type a
where a.has_id = var_has_id
into identified_pattern_type;

if    identified_pattern_type = 2
then

call engine_has_pattern.backtest_calculate_confidence(var_has_id,
CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION);

end if;


-- call find_second_shoulder_low(current_head_row_id,current_head_close_price,duration_days);
 IF no_more_rows = 1 THEN
 LEAVE find_second_shoulder__low_loop;
 END IF;

END LOOP find_second_shoulder__low_loop;


 close identified_has_details;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculate_neckline_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_neckline_data`(
input_has_id int,
input_first_shoulder_low_row_id int,
input_first_shoulder_low_close_price float,
input_first_shoulder_low_date date,
input_head_low_row_id int,
input_head_low_close_price float,
duration_days INT)
BEGIN


declare neckline_slope float default 0.0;

declare price_diff_percentage float default 0.0;

declare VAR_MAX_NECKLINE_SLOPE_ABS_VALUE float default 0.0;



SELECT rule_value FROM engine_has_pattern.has_pattern_rules
where rule_name = 'MAX_NECKLINE_SLOPE_ABSOLUTE_VALUE' into  VAR_MAX_NECKLINE_SLOPE_ABS_VALUE;

set  price_diff_percentage =  (input_head_low_close_price - input_first_shoulder_low_close_price) * 100
                                /  input_first_shoulder_low_close_price;

set neckline_slope =  price_diff_percentage/ (input_head_low_row_id - input_first_shoulder_low_row_id);

if abs(neckline_slope) > VAR_MAX_NECKLINE_SLOPE_ABS_VALUE then

set neckline_slope = (neckline_slope/abs(neckline_slope)) * VAR_MAX_NECKLINE_SLOPE_ABS_VALUE;  -- set neckline slope to 0.5 or -0.5

end if;

replace INTO engine_has_pattern.identified_has_neckline_data
(has_id,
first_shoulder_low_row_id,
first_shoulder_low_date,
first_shoulder_low_close_price,
neckline_slope_value)
VALUES  (
input_has_id ,
input_first_shoulder_low_row_id ,
input_first_shoulder_low_date ,
input_first_shoulder_low_close_price ,
neckline_slope
);

call calculate_neckline_points(input_has_id,input_first_shoulder_low_row_id,input_first_shoulder_low_close_price,
neckline_slope,duration_days);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculate_neckline_points` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_neckline_points`(
input_has_id int,
input_first_shoulder_low_row_id int,
input_first_shoulder_low_close_price float,
input_neckline_slope float,
duration_days INT)
BEGIN

declare loop_counter int default 0;

declare calculated_price_value float default 0;

declare calculated_row_id int default 0;



set loop_counter =   duration_days / 2;

plot_neckline_loop : LOOP

 IF loop_counter = 0 THEN
 LEAVE plot_neckline_loop;
 END IF;

 set calculated_row_id = loop_counter + input_first_shoulder_low_row_id;

 set calculated_price_value =  input_first_shoulder_low_close_price +
                                 ((loop_counter * input_neckline_slope) * input_first_shoulder_low_close_price/ 100);


 set calculated_price_value = (round(calculated_price_value/0.05)) * 0.05;                                

replace INTO engine_has_pattern.has_neckline_points
( select  input_has_id,calculated_row_id,a.session_date,calculated_price_value
from engine_has_pattern.market_sessions  a
where   a.ROW_ID = calculated_row_id
);



 set loop_counter = loop_counter - 1;

END LOOP plot_neckline_loop;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `data_accumulation` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `data_accumulation`(symbol_in varchar(45),
startDate date,
endDate date,
duration_days INT)
BEGIN


delete from engine_has_pattern.equity_data_has_pattern;

ALTER TABLE engine_has_pattern.equity_data_has_pattern AUTO_INCREMENT =1;


INSERT INTO engine_has_pattern.equity_data_has_pattern

(select NULL,SYMBOL,
CURR_DATE,
PREV_CLOSE,
OPEN_PRICE,
HIGH_PRICE,
LOW_PRICE,
LAST_PRICE,
CLOSE_PRICE,
AVERAGE_PRICE,
TOTAL_TRADED_QUANTITY,
TURNOVER,
NO_OF_TRADES,
DELIVERABLE_QTY,
PERCENT_DELIVERABLE_QTY
 from engine_ea.equity_data_main where symbol = symbol_in
 and CURR_DATE between startDate and
 date_add(endDate, INTERVAL (duration_days/2) day)
 -- endDate
 );


delete from engine_has_pattern.market_sessions;

replace INTO engine_has_pattern.market_sessions

(select a.ROW_ID,a.CURR_DATE from engine_has_pattern.equity_data_has_pattern a);

delete from engine_has_pattern.equity_data_has_pattern  where  CURR_DATE >  endDate;

call validate_market_sessions_data(endDate,duration_days);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_first_shoulder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_first_shoulder`(
duration_days INT)
BEGIN

  -- Declare variables used just for cursor and loop control
  DECLARE no_more_rows int;
  DECLARE num_rows INT DEFAULT 0;

  DECLARE current_close_price float DEFAULT 0;

  DECLARE previous_close_price float DEFAULT 0;

  DECLARE current_row_id int DEFAULT 0;

  DECLARE previous_row_id int DEFAULT 0;

  DECLARE current_row_date DATE;

  DECLARE previous_row_date DATE;

  DECLARE HEAD_DUR_PERC_OF_RALLY float DEFAULT 0.0;

  DECLARE CALCULATED_SHOULDER_HEAD_DURATION int DEFAULT 0;




    DECLARE has_rally_tops CURSOR FOR
    SELECT DISTINCT
        ROW_ID,CURR_DATE,CLOSE_PRICE
    FROM engine_has_pattern.equity_data_has_pattern_rally_top
    ORDER BY ROW_ID ASC
;



  -- Declare 'handlers' for exceptions
  DECLARE CONTINUE HANDLER FOR NOT FOUND
    SET no_more_rows = 1;

SELECT rule_value/100 FROM engine_has_pattern.has_pattern_rules
where rule_name = 'HEAD_DURATION_PERCENTAGE_OF_RALLY_1' into  HEAD_DUR_PERC_OF_RALLY;

SET CALCULATED_SHOULDER_HEAD_DURATION =   2 * ROUND(duration_days * HEAD_DUR_PERC_OF_RALLY );

delete from engine_has_pattern.has_first_shoulder_data;

OPEN has_rally_tops;

 IF no_more_rows = 1 THEN
 close has_rally_tops;
 END IF;

FETCH has_rally_tops INTO previous_row_id,previous_row_date,previous_close_price;

SELECT curr_date FROM engine_has_pattern.equity_data_has_pattern
where row_id = previous_row_id
into previous_row_date;


rally_loop : LOOP

 IF no_more_rows = 1 THEN
 LEAVE rally_loop;
 END IF;


FETCH has_rally_tops INTO current_row_id,current_row_date,current_close_price;

 IF no_more_rows = 1 THEN
 LEAVE rally_loop;
 END IF;

SELECT curr_date FROM engine_has_pattern.equity_data_has_pattern
where row_id = current_row_id
into current_row_date;

IF( current_row_id -  previous_row_id <=  CALCULATED_SHOULDER_HEAD_DURATION
and current_close_price > previous_close_price) THEN

insert into engine_has_pattern.has_first_shoulder_data
values(previous_row_id,previous_row_date,previous_close_price,null,null,null,
current_row_id,current_row_date,current_close_price,null,null,null);

call find_first_shoulder_and_head_low(previous_row_id,current_row_id,duration_days);


END IF;


 set  previous_row_id =   current_row_id;
 set  previous_row_date =   current_row_date;
 set  previous_close_price =   current_close_price;

END LOOP rally_loop;

CLOSE has_rally_tops;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_first_shoulder_and_head_low` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_first_shoulder_and_head_low`(
input_shoulder_top_row_id INT,
input_head_row_id INT,
duration_days INT)
BEGIN

DECLARE HEAD_DUR_PERC_OF_RALLY float DEFAULT 0.0;

DECLARE CALCULATED_RALLY_LOW_DURATION int DEFAULT 0;

DECLARE target_close_price float DEFAULT 0;


DECLARE target_row_id int DEFAULT 0;


DECLARE target_row_date date;


SELECT rule_value/100 FROM engine_has_pattern.has_pattern_rules
where rule_name = 'HEAD_DURATION_PERCENTAGE_OF_RALLY_1' into  HEAD_DUR_PERC_OF_RALLY;

SET CALCULATED_RALLY_LOW_DURATION =   ROUND(duration_days * HEAD_DUR_PERC_OF_RALLY );


-- update first shoulder related low point details


SELECT a.row_id, a.curr_date, a. CLOSE_PRICE FROM engine_has_pattern.equity_data_has_pattern a
WHERE a.close_price =
( SELECT min(b.close_price) FROM
engine_has_pattern.equity_data_has_pattern b
where 1=1
and b.row_id > input_shoulder_top_row_id
and b.row_id <= (input_shoulder_top_row_id + CALCULATED_RALLY_LOW_DURATION)
)
and a.row_id > input_shoulder_top_row_id
and a.row_id <= (input_shoulder_top_row_id + CALCULATED_RALLY_LOW_DURATION)

into target_row_id,target_row_date,target_close_price;

update engine_has_pattern.has_first_shoulder_data
set  first_shoulder_low_row_id = target_row_id,
first_shoulder_low_date = target_row_date,
first_shoulder_low_close_price = target_close_price
where first_shoulder_top_row_id = input_shoulder_top_row_id;


-- update head related low point details

SELECT a.row_id, a.curr_date, a. CLOSE_PRICE FROM engine_has_pattern.equity_data_has_pattern a
WHERE a.close_price =
( SELECT min(b.close_price) FROM
engine_has_pattern.equity_data_has_pattern b
where 1=1
and b.row_id > input_head_row_id
and b.row_id <= (input_head_row_id + CALCULATED_RALLY_LOW_DURATION)
)
and a.row_id > input_head_row_id
and a.row_id <= (input_head_row_id + CALCULATED_RALLY_LOW_DURATION)

into target_row_id,target_row_date,target_close_price;

update engine_has_pattern.has_first_shoulder_data
set  head_low_row_id = target_row_id,
head_low_date = target_row_date,
head_low_close_price = target_close_price
where first_shoulder_top_row_id = input_shoulder_top_row_id;







END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_has` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_has`(
symbol_in varchar(45),
duration_days INT,
startDate date,
endDate date
-- ,input_pattern_type_id int
)
BEGIN

call data_accumulation(symbol_in,startDate,endDate,duration_days);

call engine_has_pattern.find_rally_top(duration_days);

call engine_has_pattern.find_first_shoulder(duration_days);

call find_second_shoulder_for_has(symbol_in,duration_days);

-- call identify_all_has_pattern_type(duration_days,endDate);







END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_rally_top` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_rally_top`(
duration_days INT)
BEGIN

DECLARE HEAD_DUR_PERC_OF_RALLY float DEFAULT 0.0;

DECLARE CALCULATED_RALLY_TOP_DURATION int DEFAULT 0;


SELECT rule_value/100 FROM engine_has_pattern.has_pattern_rules
where rule_name = 'HEAD_DURATION_PERCENTAGE_OF_RALLY' into  HEAD_DUR_PERC_OF_RALLY;

SET CALCULATED_RALLY_TOP_DURATION =  2* ROUND(duration_days * HEAD_DUR_PERC_OF_RALLY );


delete from engine_has_pattern.equity_data_has_pattern_top_temp;

replace into engine_has_pattern.equity_data_has_pattern_top_temp(

SELECT distinct a.* FROM engine_has_pattern.equity_data_has_pattern a
where a.close_price >
(SELECT max(close_price) FROM engine_has_pattern.equity_data_has_pattern b
where DATEDIFF(a.curr_date,b.curr_date) <= duration_days
and DATEDIFF(a.curr_date,b.curr_date) > 0 )
) ;


delete from engine_has_pattern.equity_data_has_pattern_rally_top;

insert into engine_has_pattern.equity_data_has_pattern_rally_top(
SELECT distinct a.* FROM engine_has_pattern.equity_data_has_pattern_top_temp a
WHERE a.close_price >
( SELECT max(b.close_price) FROM
engine_has_pattern.equity_data_has_pattern b
where 1=1
and b.row_id - a.row_id <= CALCULATED_RALLY_TOP_DURATION
and b.row_id - a.row_id > 0
)
);


/*
insert into engine_has_pattern.equity_data_has_pattern_rally_top(
SELECT a.* FROM engine_has_pattern.equity_data_has_pattern_top_temp a
WHERE NOT EXISTS
( SELECT curr_date FROM
engine_has_pattern.equity_data_has_pattern_top_temp b
where 1=1
AND DATEDIFF(b.curr_date,a.curr_date) < duration_days
AND DATEDIFF(b.curr_date,a.curr_date) > 0
)
)
;
*/






END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_second_shoulder` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_second_shoulder`(
symbol_in varchar(45),
input_head_row_id int,
input_head_close_price float,
input_head_low_row_id int,
input_head_low_price float,
duration_days INT
)
proc_label: BEGIN




  DECLARE HEAD_DUR_PERC_OF_RALLY float DEFAULT 0.0;

  DECLARE CALCULATED_HEAD_TO_SHOULDER_DURATION int DEFAULT 0;


  DECLARE var_has_id int;
  DECLARE var_first_shoulder_low_row_id int;
  DECLARE var_first_shoulder_low_close_price float;
  DECLARE var_first_shoulder_low_date date;
   DECLARE var_head_low_row_id int;
  DECLARE var_head_low_close_price float;

    DECLARE var_second_shoulder_count float;



  -- DECLARE VAR_HEAD_ROW_ID INT DEFAULT 0;





SELECT rule_value/100 FROM engine_has_pattern.has_pattern_rules
where rule_name = 'HEAD_DURATION_PERCENTAGE_OF_RALLY_1' into  HEAD_DUR_PERC_OF_RALLY;

SET CALCULATED_HEAD_TO_SHOULDER_DURATION =    2 * ROUND(duration_days * HEAD_DUR_PERC_OF_RALLY );


SELECT count(*) FROM engine_has_pattern.equity_data_has_pattern a
where a.close_price =
(SELECT max(close_price) FROM engine_has_pattern.equity_data_has_pattern b
where 1=1
and b.row_id > input_head_row_id
and b.row_id <= (input_head_row_id +  CALCULATED_HEAD_TO_SHOULDER_DURATION)
)
and a.CLOSE_PRICE < input_head_close_price
and a.CLOSE_PRICE > input_head_low_price

into var_second_shoulder_count;

if(var_second_shoulder_count = 0) then

leave proc_label;

end if;



replace into engine_has_pattern.equity_data_has_second_shoulder_top(

SELECT distinct input_head_row_id,a.* FROM engine_has_pattern.equity_data_has_pattern a
where a.close_price =
(SELECT max(close_price) FROM engine_has_pattern.equity_data_has_pattern b
where 1=1
and b.row_id > input_head_low_row_id
and b.row_id <= (input_head_row_id +  CALCULATED_HEAD_TO_SHOULDER_DURATION)
)
and a.CLOSE_PRICE < input_head_close_price
and a.CLOSE_PRICE > input_head_low_price
)
;

replace into engine_has_pattern.identified_has_data(
select null,symbol_in, a.*,null,null,null,null,null,null from   engine_has_pattern.has_first_shoulder_data a
where a.head_row_id = input_head_row_id);

update  engine_has_pattern.identified_has_data a, engine_has_pattern.equity_data_has_second_shoulder_top b
set a.second_shoulder_top_row_id = b.ROW_ID,
a.second_shoulder_top_date = b.CURR_DATE,
a.second_shoulder_top_close_price = b.CLOSE_PRICE
where a.head_row_id = b.head_row_id;

select a.has_id,a.first_shoulder_low_row_id,a.first_shoulder_low_close_price, a.first_shoulder_low_date,
a.head_low_row_id,a.head_low_close_price from engine_has_pattern.identified_has_data a
where a.head_row_id = input_head_row_id
into  var_has_id,var_first_shoulder_low_row_id,var_first_shoulder_low_close_price, var_first_shoulder_low_date,
var_head_low_row_id,var_head_low_close_price;


call engine_has_pattern.calculate_neckline_data(var_has_id,var_first_shoulder_low_row_id,var_first_shoulder_low_close_price,
var_first_shoulder_low_date,var_head_low_row_id,var_head_low_close_price,duration_days);


-- call engine_has_pattern.identify_has_pattern_type





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_second_shoulder_for_has` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_second_shoulder_for_has`(
symbol_in varchar(45),
duration_days INT
)
BEGIN


  -- Declare variables used just for cursor and loop control
  DECLARE no_more_rows int;
  DECLARE loop_cntr INT DEFAULT 1;
  DECLARE num_rows INT DEFAULT 0;

  DECLARE current_head_close_price float DEFAULT 0;

  DECLARE current_head_row_id int DEFAULT 0;

  DECLARE current_head_low_row_id int DEFAULT 0;


  DECLARE current_head_low_price float DEFAULT 0;



    DECLARE has_first_shoulder_details CURSOR FOR
    SELECT DISTINCT
        head_row_id,head_close_price,head_low_row_id,head_low_close_price
        -- ,CURR_DATE,CLOSE_PRICE
    FROM engine_has_pattern.has_first_shoulder_data
    ORDER BY head_row_id ASC
;

  -- Declare 'handlers' for exceptions
  DECLARE CONTINUE HANDLER FOR NOT FOUND
    SET no_more_rows = 1;

delete from engine_has_pattern.equity_data_has_second_shoulder_top;

if (select max(has_id) from engine_has_pattern.identified_has_data) > 10000
then
ALTER TABLE engine_has_pattern.equity_data_has_pattern AUTO_INCREMENT =1;
end if;

delete from engine_has_pattern.identified_has_data;

delete from  engine_has_pattern.has_neckline_points;
delete from  engine_has_pattern.identified_has_neckline_data;



OPEN has_first_shoulder_details;

 IF no_more_rows = 1 THEN
 close has_first_shoulder_details;
 END IF;

find_second_shoulder_loop : LOOP

 IF no_more_rows = 1 THEN
 LEAVE find_second_shoulder_loop;
 END IF;

FETCH has_first_shoulder_details INTO current_head_row_id,current_head_close_price,current_head_low_row_id,
current_head_low_price;

 IF no_more_rows = 1 THEN
 LEAVE find_second_shoulder_loop;
 END IF;

call find_second_shoulder(symbol_in,current_head_row_id,current_head_close_price,current_head_low_row_id,
current_head_low_price,duration_days);

-- call find_second_shoulder_low(current_head_row_id,current_head_close_price,duration_days);
 IF no_more_rows = 1 THEN
 LEAVE find_second_shoulder_loop;
 END IF;

END LOOP find_second_shoulder_loop;


close has_first_shoulder_details;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `identify_as_pattern_type_1_or_2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `identify_as_pattern_type_1_or_2`(
input_endDate_row_id int,
input_has_id int,
input_second_shoulder_top_row_id int,
input_second_shoulder_top_close_price float,
CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION int
)
proc_label: BEGIN


declare var_shoulder_low_min_close_price float(10,2);

declare var_shoulder_low_min_row_id int;

declare var_shoulder_low_min_row_date date;




declare var_shoulder_low_slope float(10,2);

declare var_neckline_slope float(10,2);

declare var_effective_slope float(10,2);


declare price_diff_percentage float(10,2);


declare var_shoulder_top_neckline_price float(10,2);


declare var_shoulder_height_percentage float(10,2);

declare identified_as_type_2 boolean;






select min(CLOSE_PRICE) from engine_has_pattern.equity_data_has_pattern
where ROW_ID >  input_second_shoulder_top_row_id
and ROW_ID <=    input_endDate_row_id
into var_shoulder_low_min_close_price;

call identify_as_pattern_type_2(input_has_id,input_endDate_row_id, var_shoulder_low_min_close_price,
input_second_shoulder_top_row_id,identified_as_type_2);

if identified_as_type_2 = true
then

leave proc_label;

end if;


-- identify if pattern type 1 --


select ROW_ID,CURR_DATE from engine_has_pattern.equity_data_has_pattern
where ROW_ID >  input_second_shoulder_top_row_id
and ROW_ID <=    input_endDate_row_id
and FORMAT(CLOSE_PRICE,2)  = FORMAT(var_shoulder_low_min_close_price,2)
order by  ROW_ID desc
limit 1
into var_shoulder_low_min_row_id,var_shoulder_low_min_row_date;

select a.price_value from engine_has_pattern.has_neckline_points a
where a.has_id = input_has_id
and a.row_id = input_second_shoulder_top_row_id
into var_shoulder_top_neckline_price;

set  price_diff_percentage =  (var_shoulder_low_min_close_price - input_second_shoulder_top_close_price) * 100
                                /  input_second_shoulder_top_close_price;

set var_shoulder_low_slope =  price_diff_percentage/ (var_shoulder_low_min_row_id - input_second_shoulder_top_row_id);

select a.neckline_slope_value from engine_has_pattern.identified_has_neckline_data a
where a.has_id = input_has_id
into var_neckline_slope;

set var_effective_slope = var_shoulder_low_slope - var_neckline_slope;



set var_shoulder_height_percentage = (input_second_shoulder_top_close_price - var_shoulder_top_neckline_price) * 100/

                                                    input_second_shoulder_top_close_price;


if ((var_effective_slope * CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION)   + var_shoulder_height_percentage)  < 0

then

replace into engine_has_pattern.identified_has_pattern_type values(input_has_id,1);

update engine_has_pattern.identified_has_data a
set  second_shoulder_low_row_id = var_shoulder_low_min_row_id,
second_shoulder_low_date =  var_shoulder_low_min_row_date,
second_shoulder_low_close_price = var_shoulder_low_min_close_price
where has_id = input_has_id;

end if;







END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `identify_as_pattern_type_2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `identify_as_pattern_type_2`(
input_has_id int,
input_endDate_row_id int,
input_shoulder_low_min_close_price float,
input_second_shoulder_top_row_id int,
out output_identified boolean
)
BEGIN

declare var_current_close_price float(10,2);

declare var_current_date date;

declare var_current_row_id int;



  -- Declare variables used just for cursor and loop control
  DECLARE no_more_rows int;
  DECLARE loop_cntr INT DEFAULT 1;
  DECLARE num_rows INT DEFAULT 0;

      DECLARE identified_neckline_points CURSOR FOR
    SELECT DISTINCT
           row_id,curr_date,price_value
        -- ,CURR_DATE,CLOSE_PRICE
    FROM engine_has_pattern.has_neckline_points a
    where   has_id = input_has_id
    and row_id > input_second_shoulder_top_row_id
    and row_id <= input_endDate_row_id
    ORDER BY curr_date ASC
;


  -- Declare 'handlers' for exceptions
  DECLARE CONTINUE HANDLER FOR NOT FOUND
    SET no_more_rows = 1;



OPEN identified_neckline_points;

 IF no_more_rows = 1 THEN
 close identified_neckline_points;
 END IF;

identified_neckline_points_loop : LOOP

 IF no_more_rows = 1 THEN
 LEAVE identified_neckline_points_loop;
 END IF;

FETCH identified_neckline_points INTO var_current_row_id,var_current_date,var_current_close_price;

 IF no_more_rows = 1 THEN
 LEAVE identified_neckline_points_loop;
 END IF;


 if (input_shoulder_low_min_close_price <=  var_current_close_price)
 then

 select a.curr_date from engine_has_pattern.has_neckline_points a
 where a.row_id = var_current_row_id
 into var_current_date;

replace into engine_has_pattern.identified_has_pattern_type values(input_has_id,2);

set output_identified = true;

update engine_has_pattern.identified_has_data a
set  second_shoulder_low_row_id = var_current_row_id,
second_shoulder_low_date =  var_current_date,
second_shoulder_low_close_price = input_shoulder_low_min_close_price
where has_id = input_has_id;


end if;
 IF no_more_rows = 1 THEN
 LEAVE identified_neckline_points_loop;
 END IF;

END LOOP identified_neckline_points_loop;


 close identified_neckline_points;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `identify_has_pattern_type` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `identify_has_pattern_type`(
duration_days INT,
cut_off_date date,
input_has_id int,
input_second_shoulder_top_row_id int,
input_second_shoulder_top_close_price float,
CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION int
)
proc_label: BEGIN

declare var_cut_off_date_row_id int;

select a.ROW_ID from engine_has_pattern.equity_data_has_pattern a
where a.CURR_DATE = cut_off_date into var_cut_off_date_row_id;

IF ((var_cut_off_date_row_id -  input_second_shoulder_top_row_id  = 0) AND duration_days <= 30)
THEN

replace into engine_has_pattern.identified_has_pattern_type values(var_has_id,1);

LEAVE proc_label;


END IF;


IF (var_cut_off_date_row_id -  input_second_shoulder_top_row_id <   (0.2 * CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION))
THEN

LEAVE proc_label;

END IF;

IF (var_cut_off_date_row_id -  input_second_shoulder_top_row_id <=   CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION)
THEN


call identify_as_pattern_type_1_or_2(var_cut_off_date_row_id,input_has_id,input_second_shoulder_top_row_id,
input_second_shoulder_top_close_price,
CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION);

LEAVE proc_label;

ELSE

DELETE FROM prediction_has_pattern.identified_has_data
WHERE has_id = input_has_id;

END IF;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `validate_market_sessions_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `validate_market_sessions_data`(
endDate date,
duration_days INT)
proc_label: BEGIN

declare max_session_date date;

declare target_session_date date;


declare max_session_date_sr_no int;

declare end_date_sr_no int;

declare max_session_date_row_id int;

declare loop_counter int;





select max(a.session_date) from engine_has_pattern.market_sessions a  into max_session_date;

set target_session_date =  date_add(endDate, INTERVAL (duration_days/2) day);

if max_session_date  < target_session_date
then

select max(a.row_id) from engine_has_pattern.market_sessions a  into max_session_date_row_id;


select a.SR_NO from engine_ea.market_sessions a
where a.SESSION_DATE =  max_session_date
into max_session_date_sr_no;

if (max_session_date_sr_no is null) then

leave proc_label;

end if;

set end_date_sr_no =  max_session_date_sr_no + round(5 * datediff(target_session_date,max_session_date)/7);

set loop_counter = 1;


fill_market_sessions : LOOP

 IF loop_counter > (end_date_sr_no - max_session_date_sr_no) THEN
 LEAVE fill_market_sessions;
 END IF;

replace INTO engine_has_pattern.market_sessions

(select (max_session_date_row_id + loop_counter),a.SESSION_DATE from engine_ea.market_sessions a
where a.SR_NO = (max_session_date_sr_no  + loop_counter)
)
;


 set loop_counter = loop_counter + 1;

 end  loop fill_market_sessions;


end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Current Database: `prediction_has_pattern`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `prediction_has_pattern` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `prediction_has_pattern`;

--
-- Table structure for table `backtest_has_confidence`
--

DROP TABLE IF EXISTS `backtest_has_confidence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backtest_has_confidence` (
  `has_evaluation_run_id` int(11) NOT NULL,
  `has_id` int(11) NOT NULL,
  `confidence_value` float DEFAULT NULL,
  PRIMARY KEY (`has_evaluation_run_id`,`has_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `backtest_has_confidence`
--

LOCK TABLES `backtest_has_confidence` WRITE;
/*!40000 ALTER TABLE `backtest_has_confidence` DISABLE KEYS */;
/*!40000 ALTER TABLE `backtest_has_confidence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_evaluation_run`
--

DROP TABLE IF EXISTS `has_evaluation_run`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_evaluation_run` (
  `has_evaluation_run_id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) DEFAULT NULL,
  `curr_date` date DEFAULT NULL,
  `duration_days` int(11) DEFAULT NULL,
  PRIMARY KEY (`has_evaluation_run_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1883 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_evaluation_run`
--

LOCK TABLES `has_evaluation_run` WRITE;
/*!40000 ALTER TABLE `has_evaluation_run` DISABLE KEYS */;
INSERT INTO `has_evaluation_run` VALUES (1849,'ADANIPORTS','2017-06-16',30),(1850,'ADANIPORTS','2017-06-16',45),(1851,'ADANIPORTS','2017-06-16',60),(1852,'AUROPHARMA','2017-06-16',30),(1853,'AUROPHARMA','2017-06-16',45),(1854,'AUROPHARMA','2017-06-16',60),(1855,'AXISBANK','2017-06-16',30),(1856,'AXISBANK','2017-06-16',45),(1857,'AXISBANK','2017-06-16',60),(1858,'BEML','2017-06-16',30),(1859,'BEML','2017-06-16',45),(1860,'BEML','2017-06-16',60),(1861,'BHARATFIN','2017-06-16',30),(1862,'BHARATFIN','2017-06-16',45),(1863,'BHARATFIN','2017-06-16',60),(1864,'BPCL','2017-06-16',30),(1865,'BPCL','2017-06-16',45),(1866,'BPCL','2017-06-16',60),(1867,'DLF','2017-06-16',30),(1868,'DLF','2017-06-16',45),(1869,'DLF','2017-06-16',60),(1870,'FEDERALBNK','2017-06-16',30),(1871,'FEDERALBNK','2017-06-16',45),(1872,'FEDERALBNK','2017-06-16',60),(1873,'HDFC','2017-06-16',30),(1874,'HDFC','2017-06-16',45),(1875,'HDFC','2017-06-16',60),(1876,'HDFCBANK','2017-06-16',30),(1877,'HDFCBANK','2017-06-16',45),(1878,'HDFCBANK','2017-06-16',60),(1879,'HDIL','2017-06-16',30),(1880,'HDIL','2017-06-16',45),(1881,'HDIL','2017-06-16',60),(1882,'HINDPETRO','2017-06-16',30);
/*!40000 ALTER TABLE `has_evaluation_run` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_neckline_points`
--

DROP TABLE IF EXISTS `has_neckline_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_neckline_points` (
  `has_evaluation_run_id` int(11) NOT NULL,
  `has_id` int(11) NOT NULL,
  `row_id` int(11) NOT NULL,
  `curr_date` date DEFAULT NULL,
  `price_value` float(10,2) DEFAULT NULL,
  PRIMARY KEY (`has_evaluation_run_id`,`has_id`,`row_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_neckline_points`
--

LOCK TABLES `has_neckline_points` WRITE;
/*!40000 ALTER TABLE `has_neckline_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `has_neckline_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has_prediction_rules`
--

DROP TABLE IF EXISTS `has_prediction_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has_prediction_rules` (
  `rule_id` int(11) NOT NULL,
  `rule_name` varchar(45) DEFAULT NULL,
  `rule_value` float NOT NULL,
  `rule_desc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`rule_id`),
  UNIQUE KEY `rule_name_UNIQUE` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has_prediction_rules`
--

LOCK TABLES `has_prediction_rules` WRITE;
/*!40000 ALTER TABLE `has_prediction_rules` DISABLE KEYS */;
INSERT INTO `has_prediction_rules` VALUES (1,'TARGET_HAS_DURATION_FACTOR',2,'TARGET_HAS_DURATION_FACTOR'),(2,'BACKTESTING_DURATION_IN_YEARS',3,'BACKTESTING_DURATION_IN_YEARS');
/*!40000 ALTER TABLE `has_prediction_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identified_has_data`
--

DROP TABLE IF EXISTS `identified_has_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identified_has_data` (
  `has_evaluation_run_id` int(5) NOT NULL,
  `has_id` int(5) NOT NULL,
  `symbol` varchar(45) NOT NULL,
  `first_shoulder_top_row_id` int(5) NOT NULL,
  `first_shoulder_top_date` date DEFAULT NULL,
  `first_shoulder_top_close_price` float DEFAULT NULL,
  `first_shoulder_low_row_id` int(5) DEFAULT NULL,
  `first_shoulder_low_date` date DEFAULT NULL,
  `first_shoulder_low_close_price` float DEFAULT NULL,
  `head_row_id` int(5) DEFAULT NULL,
  `head_date` date DEFAULT NULL,
  `head_close_price` float DEFAULT NULL,
  `head_low_row_id` int(5) DEFAULT NULL,
  `head_low_date` date DEFAULT NULL,
  `head_low_close_price` float DEFAULT NULL,
  `second_shoulder_top_row_id` int(5) DEFAULT NULL,
  `second_shoulder_top_date` date DEFAULT NULL,
  `second_shoulder_top_close_price` float DEFAULT NULL,
  `second_shoulder_low_row_id` int(5) DEFAULT NULL,
  `second_shoulder_low_date` date DEFAULT NULL,
  `second_shoulder_low_close_price` float DEFAULT NULL,
  PRIMARY KEY (`has_evaluation_run_id`,`has_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identified_has_data`
--

LOCK TABLES `identified_has_data` WRITE;
/*!40000 ALTER TABLE `identified_has_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `identified_has_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identified_has_data_for_backtest`
--

DROP TABLE IF EXISTS `identified_has_data_for_backtest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identified_has_data_for_backtest` (
  `has_evaluation_run_id` int(5) NOT NULL,
  `has_id` int(5) NOT NULL,
  `symbol` varchar(45) NOT NULL,
  `first_shoulder_top_row_id` int(5) NOT NULL,
  `first_shoulder_top_date` date DEFAULT NULL,
  `first_shoulder_top_close_price` float DEFAULT NULL,
  `first_shoulder_low_row_id` int(5) DEFAULT NULL,
  `first_shoulder_low_date` date DEFAULT NULL,
  `first_shoulder_low_close_price` float DEFAULT NULL,
  `head_row_id` int(5) DEFAULT NULL,
  `head_date` date DEFAULT NULL,
  `head_close_price` float DEFAULT NULL,
  `head_low_row_id` int(5) DEFAULT NULL,
  `head_low_date` date DEFAULT NULL,
  `head_low_close_price` float DEFAULT NULL,
  `second_shoulder_top_row_id` int(5) DEFAULT NULL,
  `second_shoulder_top_date` date DEFAULT NULL,
  `second_shoulder_top_close_price` float DEFAULT NULL,
  `second_shoulder_low_row_id` int(5) DEFAULT NULL,
  `second_shoulder_low_date` date DEFAULT NULL,
  `second_shoulder_low_close_price` float DEFAULT NULL,
  PRIMARY KEY (`has_evaluation_run_id`,`has_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identified_has_data_for_backtest`
--

LOCK TABLES `identified_has_data_for_backtest` WRITE;
/*!40000 ALTER TABLE `identified_has_data_for_backtest` DISABLE KEYS */;
/*!40000 ALTER TABLE `identified_has_data_for_backtest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identified_has_neckline_data`
--

DROP TABLE IF EXISTS `identified_has_neckline_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identified_has_neckline_data` (
  `has_evaluation_run_id` int(11) NOT NULL,
  `has_id` int(5) NOT NULL,
  `first_shoulder_low_row_id` int(5) DEFAULT NULL,
  `first_shoulder_low_date` date DEFAULT NULL,
  `first_shoulder_low_close_price` float DEFAULT NULL,
  `neckline_slope_value` float DEFAULT NULL,
  PRIMARY KEY (`has_evaluation_run_id`,`has_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identified_has_neckline_data`
--

LOCK TABLES `identified_has_neckline_data` WRITE;
/*!40000 ALTER TABLE `identified_has_neckline_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `identified_has_neckline_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `identified_has_pattern_type`
--

DROP TABLE IF EXISTS `identified_has_pattern_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `identified_has_pattern_type` (
  `has_evaluation_run_id` int(11) NOT NULL,
  `has_id` int(11) NOT NULL,
  `identified_pattern_type_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`has_evaluation_run_id`,`has_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `identified_has_pattern_type`
--

LOCK TABLES `identified_has_pattern_type` WRITE;
/*!40000 ALTER TABLE `identified_has_pattern_type` DISABLE KEYS */;
INSERT INTO `identified_has_pattern_type` VALUES (45,132,2),(46,135,2),(1682,22,2);
/*!40000 ALTER TABLE `identified_has_pattern_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prediction_type`
--

DROP TABLE IF EXISTS `prediction_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prediction_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(45) DEFAULT NULL,
  `type_desc` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prediction_type`
--

LOCK TABLES `prediction_type` WRITE;
/*!40000 ALTER TABLE `prediction_type` DISABLE KEYS */;
INSERT INTO `prediction_type` VALUES (1,'current_time','Identify the pattern for current time frame. Not required to analyse wether the pattern was successful. Only needed output is support/resistance types for future dates based on neckline'),(2,'back_testing','Identify the pattern for past dates. Also analyse wether the pattern was successful based upon neckline and volume data.');
/*!40000 ALTER TABLE `prediction_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'prediction_has_pattern'
--
/*!50003 DROP PROCEDURE IF EXISTS `CLEAN_DB_DATA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CLEAN_DB_DATA`()
BEGIN


DELETE FROM `prediction_has_pattern`.`backtest_has_confidence`;

DELETE FROM `prediction_has_pattern`.`has_evaluation_run`;

DELETE FROM `prediction_has_pattern`.`has_neckline_points`;

DELETE FROM `prediction_has_pattern`.`identified_has_data`;

DELETE FROM `prediction_has_pattern`.`identified_has_data_for_backtest`;

DELETE FROM `prediction_has_pattern`.`identified_has_neckline_data`;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_has_main` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_has_main`(
symbol_in varchar(45),
duration_days INT,
endDate date)
BEGIN

  DECLARE var_evaluation_run_id int;

  DECLARE var_identified_pattern_type_id int;

  DECLARE VAR_TARGET_HAS_DURATION_FACTOR float DEFAULT 0;

  DECLARE VAR_BACKTESTING_DURATION_IN_YEARS float DEFAULT 0;




SELECT rule_value FROM prediction_has_pattern.has_prediction_rules
where rule_name = 'TARGET_HAS_DURATION_FACTOR' into  VAR_TARGET_HAS_DURATION_FACTOR;

SELECT rule_value FROM prediction_has_pattern.has_prediction_rules
where rule_name = 'BACKTESTING_DURATION_IN_YEARS' into  VAR_BACKTESTING_DURATION_IN_YEARS;

  SET @startDate = DATE_SUB(endDate,INTERVAL (VAR_TARGET_HAS_DURATION_FACTOR*duration_days) day) ;

INSERT INTO prediction_has_pattern.has_evaluation_run
values (null,symbol_in,endDate,duration_days);


select max(a.has_evaluation_run_id) from prediction_has_pattern.has_evaluation_run a
into var_evaluation_run_id;

call prediction_has_pattern.find_target_has(symbol_in,duration_days,@startDate,endDate,var_evaluation_run_id,
                                            var_identified_pattern_type_id);

if var_identified_pattern_type_id = 2
then


-- start backtesting back from already covered period

call prediction_has_pattern.has_backtesting(symbol_in ,
duration_days,
@startDate,
var_evaluation_run_id,
VAR_BACKTESTING_DURATION_IN_YEARS);

end if;


-- replace INTO prediction_has_pattern.identified_has_pattern_type





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `find_target_has` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `find_target_has`(
symbol_in varchar(45),
duration_days INT,
startDate date,
endDate date,
input_evaluation_run_id int,
out var_identified_pattern_type_id int
)
BEGIN

  DECLARE var_has_id INT;
  DECLARE var_second_shoulder_top_row_id INT;
  DECLARE var_second_shoulder_top_date DATE;
  DECLARE var_second_shoulder_top_close_price FLOAT;

  DECLARE HEAD_DUR_PERC_OF_RALLY float DEFAULT 0.0;

  DECLARE CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION int DEFAULT 0;


  DECLARE identified_has_data_count int;




caLL engine_has_pattern.find_has (symbol_in,duration_days,
                                  startDate, endDate);

select count(*) from engine_has_pattern.identified_has_data into identified_has_data_count;

if (identified_has_data_count >= 1)   then

SELECT rule_value/100 FROM engine_has_pattern.has_pattern_rules
where rule_name = 'HEAD_DURATION_PERCENTAGE_OF_RALLY' into  HEAD_DUR_PERC_OF_RALLY;


SET CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION =    ROUND(2 * duration_days * HEAD_DUR_PERC_OF_RALLY );

delete from  engine_has_pattern.identified_has_pattern_type;

select a.has_id,a.second_shoulder_top_row_id,a.second_shoulder_top_date,
a.second_shoulder_top_close_price from  engine_has_pattern.identified_has_data a
where a.second_shoulder_top_date =
(select max(second_shoulder_top_date) from   engine_has_pattern.identified_has_data)

INTO var_has_id,var_second_shoulder_top_row_id,
                                    var_second_shoulder_top_date,var_second_shoulder_top_close_price;

-- repeat replace to update second shoulder low details ---
 
replace INTO prediction_has_pattern.identified_has_data
(select input_evaluation_run_id,a.* from engine_has_pattern.identified_has_data a
where a.has_id = var_has_id);


call engine_has_pattern.identify_has_pattern_type(duration_days,endDate,var_has_id,var_second_shoulder_top_row_id,
                                    var_second_shoulder_top_close_price,
                                    CALCULATED_SECOND_SHOULDER_TO_LOW_DURATION);

select a.identified_pattern_type_id from  engine_has_pattern.identified_has_pattern_type a

where a.has_id = var_has_id

into var_identified_pattern_type_id;

if   var_identified_pattern_type_id is not null
then

replace INTO prediction_has_pattern.identified_has_data
(select input_evaluation_run_id,a.* from engine_has_pattern.identified_has_data a
where a.has_id = var_has_id);

replace INTO prediction_has_pattern.identified_has_pattern_type
(select input_evaluation_run_id,a.* from engine_has_pattern.identified_has_pattern_type a
where a.has_id = var_has_id);


replace INTO prediction_has_pattern.identified_has_neckline_data
(select input_evaluation_run_id,a.* from engine_has_pattern.identified_has_neckline_data a
where a.has_id = var_has_id);


replace INTO prediction_has_pattern.has_neckline_points
(select input_evaluation_run_id,a.* from engine_has_pattern.has_neckline_points a
where a.has_id = var_has_id);

end if;

end if;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `has_backtesting` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `has_backtesting`(
symbol_in varchar(45),
duration_days INT,
endDate date,
input_evaluation_run_id int,
VAR_BACKTESTING_DURATION_IN_YEARS float
)
BEGIN


SET @startDate = DATE_SUB(endDate,INTERVAL VAR_BACKTESTING_DURATION_IN_YEARS year) ;
caLL engine_has_pattern.find_has (symbol_in,duration_days,
                                  @startDate, endDate);

call engine_has_pattern.backtest_identify_all_has_pattern_type(duration_days);

replace into prediction_has_pattern.backtest_has_confidence
(select  input_evaluation_run_id,a.*  from
engine_has_pattern.backtest_has_confidence a);

replace into prediction_has_pattern.identified_has_data_for_backtest
(select  input_evaluation_run_id,a.*  from
engine_has_pattern.identified_has_data a);



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prediction_for_symbol` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prediction_for_symbol`(
symbol_in varchar(45),
endDate date
)
BEGIN


call prediction_has_pattern.find_has_main(symbol_in,30,endDate);

call prediction_has_pattern.find_has_main(symbol_in,45,endDate);

call prediction_has_pattern.find_has_main(symbol_in,60,endDate);


/*

declare  var_evaluation_run_id int;

INSERT INTO prediction_has_pattern.has_evaluation_run
values (null,symbol_in,endDate,duration_days);


select max(a.has_evaluation_run_id) from prediction_has_pattern.has_evaluation_run a
into var_evaluation_run_id;

call prediction_has_pattern.has_backtesting (symbol_in,30,endDate,var_evaluation_run_id,3);
*/


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prediction_has_main` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prediction_has_main`(
targetDate date)
BEGIN


  -- Declare variables used just for cursor and loop control
  DECLARE no_more_rows int;
  DECLARE loop_cntr INT DEFAULT 1;
  DECLARE num_rows INT DEFAULT 0;

  DECLARE var_symbol VARCHAR(45);



    DECLARE has_top25_details CURSOR FOR
    SELECT DISTINCT
        symbol
        -- ,CURR_DATE,CLOSE_PRICE
    FROM engine_ea.top_25_equity;


  -- Declare 'handlers' for exceptions
  DECLARE CONTINUE HANDLER FOR NOT FOUND
    SET no_more_rows = 1;

-- call   prediction_has_pattern.CLEAN_DB_DATA();

open  has_top25_details;


has_top25_loop : LOOP

 IF no_more_rows = 1 THEN
 LEAVE has_top25_loop;
 END IF;

FETCH has_top25_details INTO var_symbol;

CALL prediction_has_pattern.prediction_for_symbol(var_symbol,targetDate);

 IF no_more_rows = 1 THEN
 LEAVE has_top25_loop;
 END IF;


 end loop has_top25_loop;


 close  has_top25_details;







END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prediction_has_main_ka_baap` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prediction_has_main_ka_baap`()
BEGIN

call   prediction_has_pattern.CLEAN_DB_DATA();


call prediction_has_main('2017-06-16');


-- call prediction_has_main('2017-05-12');

-- call prediction_has_main('2017-04-06');

/*
call prediction_has_main('2017-03-31');

call prediction_has_main('2017-02-24');

call prediction_has_main('2017-01-23');

call prediction_has_main('2016-12-16');

call prediction_has_main('2016-11-11');

call prediction_has_main('2016-10-06');

call prediction_has_main('2016-09-30');

call prediction_has_main('2016-08-24');

call prediction_has_main('2016-07-22');
*/


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

-- Dump completed on 2017-06-17 22:14:30
