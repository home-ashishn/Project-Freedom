-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: engine_live
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
  `curr_signal` tinyint(4) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `confidence_level` float DEFAULT NULL,
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basis_for_calls`
--

LOCK TABLES `basis_for_calls` WRITE;
/*!40000 ALTER TABLE `basis_for_calls` DISABLE KEYS */;
INSERT INTO `basis_for_calls` VALUES ('BATAINDIA',521444,746.1,-1,'http://www.moneycontrol.com/india/stockpricequote/leather-products/bataindia/BI01',78.5);
/*!40000 ALTER TABLE `basis_for_calls` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=28209 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_data`
--

LOCK TABLES `live_data` WRITE;
/*!40000 ALTER TABLE `live_data` DISABLE KEYS */;
INSERT INTO `live_data` VALUES (28184,'2018-01-15 09:15:09','BATAINDIA',6144,730.55),(28185,'2018-01-15 09:15:14','BATAINDIA',6965,730.8),(28186,'2018-01-15 09:15:19','BATAINDIA',7110,731.15),(28187,'2018-01-15 09:15:24','BATAINDIA',7113,732.1),(28188,'2018-01-15 09:15:29','BATAINDIA',7203,732.6),(28189,'2018-01-15 09:15:34','BATAINDIA',7266,732.65),(28190,'2018-01-15 09:15:39','BATAINDIA',7411,732.85),(28191,'2018-01-15 09:15:44','BATAINDIA',7411,733.15),(28192,'2018-01-15 09:15:49','BATAINDIA',7519,733.7),(28193,'2018-01-15 09:15:54','BATAINDIA',7604,734.05),(28194,'2018-01-15 09:15:59','BATAINDIA',7718,734.7),(28195,'2018-01-15 09:16:04','BATAINDIA',7727,734.7),(28196,'2018-01-15 09:16:09','BATAINDIA',7848,735.1),(28197,'2018-01-15 09:16:14','BATAINDIA',8008,735.55),(28198,'2018-01-15 09:16:19','BATAINDIA',8047,735.75),(28199,'2018-01-15 09:16:24','BATAINDIA',11519,736.05),(28200,'2018-01-15 09:16:29','BATAINDIA',11645,736.25),(28201,'2018-01-15 09:16:34','BATAINDIA',11645,737.1),(28202,'2018-01-15 09:16:39','BATAINDIA',11698,737.2),(28203,'2018-01-15 09:16:44','BATAINDIA',11737,737.4),(28204,'2018-01-15 09:16:49','BATAINDIA',11827,737.8),(28205,'2018-01-15 09:16:54','BATAINDIA',11969,738.15),(28206,'2018-01-15 09:16:59','BATAINDIA',12122,739.2),(28207,'2018-01-15 09:17:04','BATAINDIA',12184,740.1),(28208,'2018-01-15 09:17:09','BATAINDIA',12338,741);
/*!40000 ALTER TABLE `live_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negative_price_trend_data`
--

DROP TABLE IF EXISTS `negative_price_trend_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negative_price_trend_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) DEFAULT NULL,
  `time_start` datetime DEFAULT NULL,
  `time_end` datetime DEFAULT NULL,
  `curr_time` datetime DEFAULT NULL,
  `volume_start` int(11) DEFAULT NULL,
  `volume_end` int(11) DEFAULT NULL,
  `price_start` float DEFAULT NULL,
  `price_end` float DEFAULT NULL,
  `max_strength` float DEFAULT NULL,
  `is_strength_applied` tinyint(4) DEFAULT NULL,
  `id_enclosed_strength` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negative_price_trend_data`
--

LOCK TABLES `negative_price_trend_data` WRITE;
/*!40000 ALTER TABLE `negative_price_trend_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `negative_price_trend_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `negative_price_trend_data_log`
--

DROP TABLE IF EXISTS `negative_price_trend_data_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negative_price_trend_data_log` (
  `symbol` varchar(45) NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  `curr_time` datetime DEFAULT NULL,
  `volume_start` int(11) DEFAULT NULL,
  `volume_end` int(11) DEFAULT NULL,
  `price_start` float DEFAULT NULL,
  `price_end` float DEFAULT NULL,
  `max_strength` float DEFAULT NULL,
  `is_strength_valid` tinyint(4) DEFAULT NULL,
  `id_enclosed_strength` int(11) DEFAULT NULL,
  PRIMARY KEY (`symbol`,`time_start`,`time_end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negative_price_trend_data_log`
--

LOCK TABLES `negative_price_trend_data_log` WRITE;
/*!40000 ALTER TABLE `negative_price_trend_data_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `negative_price_trend_data_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_buy_order`
--

DROP TABLE IF EXISTS `option_buy_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_buy_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) NOT NULL,
  `option_type` varchar(2) NOT NULL,
  `option_strike_price` float NOT NULL,
  `buy_price` float NOT NULL,
  `no_of_lots` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `isExecuted` tinyint(4) NOT NULL,
  `exchange_order_id` int(11) DEFAULT NULL,
  `filled_quantity` int(11) DEFAULT NULL,
  `remaining_quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_buy_order`
--

LOCK TABLES `option_buy_order` WRITE;
/*!40000 ALTER TABLE `option_buy_order` DISABLE KEYS */;
INSERT INTO `option_buy_order` VALUES (20,'BATAINDIA','PE',720,6.55,3,3300,0,51951538,0,3300);
/*!40000 ALTER TABLE `option_buy_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_buy_order_event`
--

DROP TABLE IF EXISTS `option_buy_order_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_buy_order_event` (
  `order_id` int(11) NOT NULL,
  `symbol` varchar(45) NOT NULL,
  `curr_time` datetime NOT NULL,
  `option_type` varchar(2) NOT NULL,
  `option_strike_price` float NOT NULL,
  `buy_price` float NOT NULL,
  `no_of_lots` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `event_type` varchar(5) NOT NULL,
  `is_event_handled` tinyint(4) NOT NULL,
  PRIMARY KEY (`order_id`,`event_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_buy_order_event`
--

LOCK TABLES `option_buy_order_event` WRITE;
/*!40000 ALTER TABLE `option_buy_order_event` DISABLE KEYS */;
INSERT INTO `option_buy_order_event` VALUES (20,'BATAINDIA','2018-01-15 09:15:00','PE',720,6.55,3,3300,'NEW',1);
/*!40000 ALTER TABLE `option_buy_order_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_buy_order_log`
--

DROP TABLE IF EXISTS `option_buy_order_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_buy_order_log` (
  `order_id` int(11) NOT NULL,
  `symbol` varchar(45) NOT NULL,
  `option_type` varchar(2) NOT NULL,
  `option_strike_price` float NOT NULL,
  `buy_price` float NOT NULL,
  `no_of_lots` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `isExecuted` tinyint(4) DEFAULT NULL,
  `update_time` datetime NOT NULL,
  `filled_quantity` int(11) DEFAULT NULL,
  `remaining_quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`,`update_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_buy_order_log`
--

LOCK TABLES `option_buy_order_log` WRITE;
/*!40000 ALTER TABLE `option_buy_order_log` DISABLE KEYS */;
INSERT INTO `option_buy_order_log` VALUES (20,'BATAINDIA','PE',720,6.55,3,3300,0,'2018-01-15 09:15:00',0,3300);
/*!40000 ALTER TABLE `option_buy_order_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positive_price_trend_data`
--

DROP TABLE IF EXISTS `positive_price_trend_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `positive_price_trend_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime DEFAULT NULL,
  `curr_time` datetime DEFAULT NULL,
  `volume_start` int(11) DEFAULT NULL,
  `volume_end` int(11) DEFAULT NULL,
  `price_start` float DEFAULT NULL,
  `price_end` float DEFAULT NULL,
  `max_strength` float DEFAULT NULL,
  `is_strength_applied` tinyint(4) DEFAULT NULL,
  `id_enclosed_strength` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positive_price_trend_data`
--

LOCK TABLES `positive_price_trend_data` WRITE;
/*!40000 ALTER TABLE `positive_price_trend_data` DISABLE KEYS */;
INSERT INTO `positive_price_trend_data` VALUES (25,'BATAINDIA','2018-01-15 09:15:34','2018-01-15 09:17:04','2018-01-15 09:17:09',7266,12184,732.65,740.1,2.31879,0,NULL);
/*!40000 ALTER TABLE `positive_price_trend_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `positive_price_trend_data_log`
--

DROP TABLE IF EXISTS `positive_price_trend_data_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `positive_price_trend_data_log` (
  `symbol` varchar(45) NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  `curr_time` datetime DEFAULT NULL,
  `volume_start` int(11) DEFAULT NULL,
  `volume_end` int(11) DEFAULT NULL,
  `price_start` float DEFAULT NULL,
  `price_end` float DEFAULT NULL,
  `max_strength` float DEFAULT NULL,
  `is_strength_valid` tinyint(4) DEFAULT NULL,
  `id_enclosed_strength` int(11) DEFAULT NULL,
  PRIMARY KEY (`symbol`,`time_start`,`time_end`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positive_price_trend_data_log`
--

LOCK TABLES `positive_price_trend_data_log` WRITE;
/*!40000 ALTER TABLE `positive_price_trend_data_log` DISABLE KEYS */;
INSERT INTO `positive_price_trend_data_log` VALUES ('BATAINDIA','2018-01-15 09:15:34','2018-01-15 09:17:04','2018-01-15 09:17:09',7266,12184,732.65,740.1,2.31879,1,NULL);
/*!40000 ALTER TABLE `positive_price_trend_data_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `selected_instrument`
--

DROP TABLE IF EXISTS `selected_instrument`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `selected_instrument` (
  `symbol` varchar(45) NOT NULL,
  `option_type` varchar(2) NOT NULL,
  `option_strike_price` float NOT NULL,
  `option_close_price` float NOT NULL,
  `lot_size` int(11) NOT NULL,
  `last_implied_volatility` float DEFAULT NULL,
  `expiry_factor_quotient` float NOT NULL DEFAULT '1',
  `url` varchar(500) NOT NULL,
  PRIMARY KEY (`symbol`,`option_type`,`option_strike_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selected_instrument`
--

LOCK TABLES `selected_instrument` WRITE;
/*!40000 ALTER TABLE `selected_instrument` DISABLE KEYS */;
INSERT INTO `selected_instrument` VALUES ('BATAINDIA','PE',720,8.35,1100,34.01,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/option_chain/optionKeys.jsp?symbolCode=254&symbol=BATAINDIA&symbol=bata&instrument=OPTSTK&date=-&segmentLink=17&segmentLink=17');
/*!40000 ALTER TABLE `selected_instrument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trading_parameters`
--

DROP TABLE IF EXISTS `trading_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trading_parameters` (
  `param_id` varchar(50) NOT NULL,
  `param_desc` varchar(500) DEFAULT NULL,
  `param_value` float DEFAULT NULL,
  PRIMARY KEY (`param_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trading_parameters`
--

LOCK TABLES `trading_parameters` WRITE;
/*!40000 ALTER TABLE `trading_parameters` DISABLE KEYS */;
INSERT INTO `trading_parameters` VALUES ('EXPIRY_FACTOR','A FACTOR MULTIPLIED WITH THE EXPIRY FACTOR QUOTIENT FOR THE SELECTED INSTRUMENT. IT IS USEFUL IN CALCULATING THE DEPRECIATION OF THE OPTION PRICE AT THE START OF THE CURRENT DAY',0.05),('STRENGTH_TO_BUY_ORDER_FACTOR','FACTOR BY WHICH THE STRENGTH WILL BE APPLIED TO THE CURRENT BUY ORDER. SAME DIRECTION STRENGTH WILL INCREASE ORDER PRICE AND VICE VERSA. NEW PRICE = OLD PRICE +/-  (STRENGTH_TO_BUY_ORDER_FACTOR * STRENGTH) ;',0.15);
/*!40000 ALTER TABLE `trading_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'engine_live'
--

--
-- Dumping routines for database 'engine_live'
--
/*!50003 DROP FUNCTION IF EXISTS `calculate_price_from_confidence` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calculate_price_from_confidence`(
PRICE_IN float,
CONFIDENCE_LEVEL_IN float,
EXPIRY_FACTOR_QUOTIENT_IN float,
EXPIRY_FACTOR_IN float ) RETURNS float
BEGIN

DECLARE CALCULATED_BUY_PRICE FLOAT DEFAULT 0;


set CALCULATED_BUY_PRICE = (PRICE_IN * CONFIDENCE_LEVEL_IN/100) -
                                              (PRICE_IN * EXPIRY_FACTOR_QUOTIENT_IN * EXPIRY_FACTOR_IN);

set CALCULATED_BUY_PRICE = round_price_value(CALCULATED_BUY_PRICE);

return CALCULATED_BUY_PRICE;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `RANDOMIZE_VOLUME` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `RANDOMIZE_VOLUME`(VOLUME_PER_ENTRY INT) RETURNS int(11)
BEGIN


DECLARE RANDOM_FACTOR FLOAT;

DECLARE BASE FLOAT DEFAULT 0;


DECLARE EXPONENT FLOAT DEFAULT 0;


SET RANDOM_FACTOR = RAND();

-- START BLOCK FOR BULK PURCHASE

IF ( RANDOM_FACTOR >= 0.999) THEN

SET BASE =  1000 * (RANDOM_FACTOR - 0.95);

SET EXPONENT = 2 * RAND();

SET RANDOM_FACTOR = POWER(BASE, EXPONENT);

-- END BLOCK FOR BULK PURCHASE


ELSE IF( RANDOM_FACTOR >= 0.95) THEN

SET BASE =  500 * (RANDOM_FACTOR - 0.95);

SET EXPONENT = 1.5 * RAND();

SET RANDOM_FACTOR = POWER(BASE, EXPONENT);

ELSE IF ( RANDOM_FACTOR <= 0.2) THEN

SET BASE = RANDOM_FACTOR;

SET EXPONENT = 5 * RAND();

SET RANDOM_FACTOR = POWER(BASE, EXPONENT);

ELSE

SET RANDOM_FACTOR = 1.5 * RANDOM_FACTOR;


END IF;

END IF;

END IF;



RETURN VOLUME_PER_ENTRY * (RANDOM_FACTOR);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `round_price_value` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `round_price_value`(
PRICE_IN float
) RETURNS float
BEGIN

declare remainder float default 0;

set remainder =  MOD(PRICE_IN , 0.05);

if(remainder < 0.025) then

return PRICE_IN -  remainder;

end if;

return (PRICE_IN - remainder) + 0.05;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `APPLY_STRENGTH_POSITIVE_TREND_TO_BUY_ORDER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `APPLY_STRENGTH_POSITIVE_TREND_TO_BUY_ORDER`(
SYMBOL_IN VARCHAR(45),
STRENGTH_TO_BE_APPLIED_IN FLOAT,
ENCLOSED_RECORD_ID_IN INT,
time_in datetime
)
BEGIN

DECLARE VAR_OPTION_TYPE varchar(2);
DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;
DECLARE VAR_NO_OF_LOTS INT;
DECLARE VAR_QUANTITY INT;

DECLARE VAR_INITIAL_ORDER_PRICE FLOAT;

DECLARE VAR_ENCLOSING_RECORD_STRENGTH FLOAT;

DECLARE VAR_STRENGTH_TO_BUY_ORDER_FACTOR FLOAT;

DECLARE VAR_ORIGINAL_ORDER_PRICE FLOAT;

DECLARE VAR_CALCULATED_ORDER_PRICE FLOAT;




SELECT option_type,option_strike_price,no_of_lots,quantity,buy_price FROM engine_live.option_buy_order
where symbol = SYMBOL_IN and isExecuted = 0
INTO VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
VAR_NO_OF_LOTS,VAR_QUANTITY,
VAR_INITIAL_ORDER_PRICE;

SELECT  param_value FROM trading_parameters WHERE param_id = 'STRENGTH_TO_BUY_ORDER_FACTOR'
INTO VAR_STRENGTH_TO_BUY_ORDER_FACTOR;

IF(VAR_OPTION_TYPE = 'CE' ) THEN
IF(ENCLOSED_RECORD_ID_IN IS NULL OR ENCLOSED_RECORD_ID_IN = 0) THEN

SET VAR_CALCULATED_ORDER_PRICE = VAR_INITIAL_ORDER_PRICE * (1+
                        (VAR_STRENGTH_TO_BUY_ORDER_FACTOR * STRENGTH_TO_BE_APPLIED_IN));


ELSE

SELECT max_strength from positive_price_trend_data WHERE id = ENCLOSED_RECORD_ID_IN

INTO VAR_ENCLOSING_RECORD_STRENGTH;

SET VAR_ORIGINAL_ORDER_PRICE =  VAR_INITIAL_ORDER_PRICE / (1+
                        (VAR_STRENGTH_TO_BUY_ORDER_FACTOR * VAR_ENCLOSING_RECORD_STRENGTH));

SET VAR_CALCULATED_ORDER_PRICE = VAR_ORIGINAL_ORDER_PRICE * (1+
                        (VAR_STRENGTH_TO_BUY_ORDER_FACTOR * STRENGTH_TO_BE_APPLIED_IN));

END IF;




ELSE IF(VAR_OPTION_TYPE = 'PE' ) THEN

IF(ENCLOSED_RECORD_ID_IN IS NULL OR ENCLOSED_RECORD_ID_IN = 0) THEN

SET VAR_CALCULATED_ORDER_PRICE = VAR_INITIAL_ORDER_PRICE * (1 -
                        (VAR_STRENGTH_TO_BUY_ORDER_FACTOR * STRENGTH_TO_BE_APPLIED_IN));


ELSE

SELECT max_strength from positive_price_trend_data WHERE id = ENCLOSED_RECORD_ID_IN

INTO VAR_ENCLOSING_RECORD_STRENGTH;

SET VAR_ORIGINAL_ORDER_PRICE =  VAR_INITIAL_ORDER_PRICE / (1 -
                        (VAR_STRENGTH_TO_BUY_ORDER_FACTOR * VAR_ENCLOSING_RECORD_STRENGTH));

SET VAR_CALCULATED_ORDER_PRICE = VAR_ORIGINAL_ORDER_PRICE * (1 -
                        (VAR_STRENGTH_TO_BUY_ORDER_FACTOR * STRENGTH_TO_BE_APPLIED_IN));

END IF;

END IF;

END IF;


SET VAR_CALCULATED_ORDER_PRICE = round_price_value(VAR_CALCULATED_ORDER_PRICE);

call PUT_MODIFY_OPTION_BUY_ORDER_EVENT(SYMBOL_IN,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,VAR_NO_OF_LOTS,
VAR_QUANTITY,VAR_CALCULATED_ORDER_PRICE,time_in);









END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CALCULATE_QUANTITY_FROM_MARGIN` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CALCULATE_QUANTITY_FROM_MARGIN`(
MARGIN_IN FLOAT,
CALCULATED_BUY_PRICE_IN FLOAT,
LOT_SIZE_IN INT,
OUT NO_OF_LOTS_OUT INT
)
BEGIN

DECLARE  CALCULATED_EXHAUSTION_FACTOR FLOAT;

DECLARE  SMALLER_CALCULATED_EXHAUSTION_FACTOR FLOAT;


declare l_loop int default 0;


loop1: loop

       set l_loop := l_loop + 1;

       IF l_loop > 15 THEN
          leave loop1;
       end if;

      SET CALCULATED_EXHAUSTION_FACTOR = (l_loop * LOT_SIZE_IN * CALCULATED_BUY_PRICE_IN)
                                                  / MARGIN_IN;

       IF(CALCULATED_EXHAUSTION_FACTOR >= 1.1) THEN

        SET NO_OF_LOTS_OUT = l_loop -1;

        SET SMALLER_CALCULATED_EXHAUSTION_FACTOR = (NO_OF_LOTS_OUT * LOT_SIZE_IN * CALCULATED_BUY_PRICE_IN)
                                                  / MARGIN_IN;
-- IF NO_OF_LOTS_OUT BECOMES TOO LESS INCREASE IT BY 1

        IF((1- SMALLER_CALCULATED_EXHAUSTION_FACTOR) > ( CALCULATED_EXHAUSTION_FACTOR - 1)) THEN

                SET NO_OF_LOTS_OUT = NO_OF_LOTS_OUT + 1;


        END IF;

                  leave loop1;


       END IF;

END loop loop1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CALL_GENERATE_LIVE_STOCK_DATA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CALL_GENERATE_LIVE_STOCK_DATA`(
NO_OF_ENTRIES INT)
BEGIN


DECLARE symbol_CN CURSOR FOR
select symbol,prev_close from basis_for_calls;

  OPEN symbol_CN;
  BEGIN
    DECLARE VAR_SYMBOL varchar(20);
    DECLARE VAR_PREV_CLOSE float;

    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE symbol_CN; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE symbol_CN; RESIGNAL; END;
    LOOP
      FETCH symbol_CN INTO VAR_SYMBOL,VAR_PREV_CLOSE;
      -- SET counter = counter + 1;

      call    GENERATE_LIVE_STOCK_DATA(VAR_SYMBOL,NO_OF_ENTRIES,VAR_PREV_CLOSE);

    END LOOP;
  END;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_BUY_ORDER_CYCLE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_BUY_ORDER_CYCLE`()
BEGIN


DECLARE symbol_CN CURSOR FOR
select symbol from basis_for_calls;

  OPEN symbol_CN;
  BEGIN
    DECLARE VAR_SYMBOL varchar(20);
    DECLARE LATEST_TIME_POINT DATETIME DEFAULT NOW();

    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE symbol_CN; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE symbol_CN; RESIGNAL; END;
    LOOP
      FETCH symbol_CN INTO VAR_SYMBOL;
      -- SET counter = counter + 1;
      SELECT MAX(curr_time) FROM live_data WHERE SYMBOL =  VAR_SYMBOL INTO LATEST_TIME_POINT;


      call    CHECK_BUY_ORDER_FOR_SYMBOL(VAR_SYMBOL,LATEST_TIME_POINT);

    END LOOP;
  END;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_BUY_ORDER_FOR_NEGATIVE_TREND_FOR_SYMBOL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_BUY_ORDER_FOR_NEGATIVE_TREND_FOR_SYMBOL`()
BEGIN

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_BUY_ORDER_FOR_POSITIVE_TREND_FOR_SYMBOL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_BUY_ORDER_FOR_POSITIVE_TREND_FOR_SYMBOL`(
SYMBOL_IN VARCHAR(45),
time_in datetime
)
BEGIN

DECLARE VAR_COUNT_TREND_RECORDS INT;

DECLARE STRENGTH_TO_BE_APPLIED FLOAT;

DECLARE VAR_ENCLOSING_RECORD_ID INT;





SELECT count(*) FROM engine_live.positive_price_trend_data
WHERE is_strength_applied = 0
and curr_time = 
(select max(curr_time) from positive_price_trend_data where is_strength_applied = 0)
INTO VAR_COUNT_TREND_RECORDS;

IF(VAR_COUNT_TREND_RECORDS = 1) THEN

SELECT max_strength,id_enclosed_strength FROM engine_live.positive_price_trend_data
WHERE is_strength_applied = 0
and curr_time =
(select max(curr_time) from positive_price_trend_data where is_strength_applied = 0)
into STRENGTH_TO_BE_APPLIED,VAR_ENCLOSING_RECORD_ID;

CALL APPLY_STRENGTH_POSITIVE_TREND_TO_BUY_ORDER(SYMBOL_IN,STRENGTH_TO_BE_APPLIED,VAR_ENCLOSING_RECORD_ID,time_in);


END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_BUY_ORDER_FOR_SYMBOL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_BUY_ORDER_FOR_SYMBOL`(
SYMBOL_IN VARCHAR(45),
time_in datetime
)
BEGIN


CALL CHECK_BUY_ORDER_FOR_POSITIVE_TREND_FOR_SYMBOL(SYMBOL_IN,time_in);

-- CALL CHECK_BUY_ORDER_FOR_NEGATIVE_TREND_FOR_SYMBOL(SYMBOL_IN);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_NEGATIVE_PRICE_TREND_FOR_ONE_PC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_NEGATIVE_PRICE_TREND_FOR_ONE_PC`(
SYMBOL_IN VARCHAR(20),
LATEST_TIME_POINT_IN DATETIME,
PER_HOUR_VOLUME_PREV_DAY_IN FLOAT)
BEGIN


DECLARE CURSOR_TREND CURSOR FOR
SELECT A.VOLUME, B.VOLUME,
A.PRICE,B.PRICE,
A.curr_time,B.curr_time FROM LIVE_DATA A,LIVE_DATA B
WHERE
A.symbol = SYMBOL_IN  AND B.symbol = SYMBOL_IN AND
(B.CURR_TIME < LATEST_TIME_POINT_IN AND
B.CURR_TIME >= DATE_SUB(LATEST_TIME_POINT_IN, INTERVAL 2 MINUTE))
AND
(A.curr_time < B.curr_time
AND A.curr_time >= DATE_SUB(B.curr_time, INTERVAL 1 HOUR))
AND B.price <= (A.price * 0.99);

  OPEN CURSOR_TREND;
  BEGIN

    DECLARE VAR_VOLUME_START INT;
    DECLARE VAR_VOLUME_END INT;
    DECLARE VAR_PRICE_START FLOAT;
    DECLARE VAR_PRICE_END FLOAT;
    DECLARE VAR_CURR_TIME_START DATETIME;
    DECLARE VAR_CURR_TIME_END DATETIME;

    DECLARE VAR_VOLUME_FACTOR FLOAT DEFAULT 0;

    DECLARE VAR_STRENGTH FLOAT DEFAULT 0;

    DECLARE VAR_PCT_LOSS FLOAT DEFAULT 0;



    DECLARE VAR_MAX_STRENGTH FLOAT DEFAULT 0;

    DECLARE TIME_DIFF FLOAT DEFAULT 0;


    DECLARE VAR_VOLUME_START_FOR_MAX_STRENGTH INT;
    DECLARE VAR_VOLUME_END_FOR_MAX_STRENGTH INT;
    DECLARE VAR_PRICE_START_FOR_MAX_STRENGTH FLOAT;
    DECLARE VAR_PRICE_END_FOR_MAX_STRENGTH FLOAT;
    DECLARE VAR_CURR_TIME_START_FOR_MAX_STRENGTH DATETIME;
    DECLARE VAR_CURR_TIME_END_FOR_MAX_STRENGTH DATETIME;





    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN
    CLOSE CURSOR_TREND;
            IF(VAR_MAX_STRENGTH > 0) THEN
       call CHECK_N_P_T_1_PC_STRENGTH_VALIDITY(SYMBOL_IN,LATEST_TIME_POINT_IN,
                                           VAR_MAX_STRENGTH,VAR_VOLUME_START_FOR_MAX_STRENGTH,
                                           VAR_VOLUME_END_FOR_MAX_STRENGTH,VAR_PRICE_START_FOR_MAX_STRENGTH,
                                           VAR_PRICE_END_FOR_MAX_STRENGTH,VAR_CURR_TIME_START_FOR_MAX_STRENGTH,
                                           VAR_CURR_TIME_END_FOR_MAX_STRENGTH);


       END IF;
    END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE CURSOR_TREND; RESIGNAL; END;
    LOOP
      FETCH CURSOR_TREND INTO VAR_VOLUME_START,VAR_VOLUME_END,
                                        VAR_PRICE_START,VAR_PRICE_END,
                                        VAR_CURR_TIME_START,VAR_CURR_TIME_END;


      SET TIME_DIFF = TIMESTAMPDIFF(second,VAR_CURR_TIME_START,VAR_CURR_TIME_END);


      /*
      VOLUME FACTOR (VF) = VOLUME GAINED / EXPECTED VOLUME GAIN BASED ON PREV DAY

      STRENGTH = VF PER PERCENT LOSS. THIS WILL GIVEACCURATE STRENGTH AND WEED
                 OUT HIGH SURGES IN LOW VOLUME. BENCHMARK FOR THIS IS 1
                 i,e 1 VF PER PERCENT LOSS.

      */

       SET VAR_VOLUME_FACTOR =  ((VAR_VOLUME_END - VAR_VOLUME_START) / PER_HOUR_VOLUME_PREV_DAY_IN )
                             * (3600 /   TIME_DIFF) ;

       SET VAR_PCT_LOSS = (VAR_PRICE_START - VAR_PRICE_END) * 100/ VAR_PRICE_START;


        SET VAR_STRENGTH = VAR_VOLUME_FACTOR / VAR_PCT_LOSS;

       if   VAR_STRENGTH >= 1 then

           if ( VAR_STRENGTH >  VAR_MAX_STRENGTH) then

               SET VAR_MAX_STRENGTH = VAR_STRENGTH;

               SET  VAR_VOLUME_START_FOR_MAX_STRENGTH = VAR_VOLUME_START;
               SET  VAR_VOLUME_END_FOR_MAX_STRENGTH = VAR_VOLUME_END;
               SET  VAR_PRICE_START_FOR_MAX_STRENGTH = VAR_PRICE_START;
               SET  VAR_PRICE_END_FOR_MAX_STRENGTH = VAR_PRICE_END;
               SET  VAR_CURR_TIME_START_FOR_MAX_STRENGTH = VAR_CURR_TIME_START;
               SET  VAR_CURR_TIME_END_FOR_MAX_STRENGTH = VAR_CURR_TIME_END;



           end if;
       end if;

      -- SET counter = counter + 1;

    END LOOP;

        IF(VAR_MAX_STRENGTH > 0) THEN
       call CHECK_N_P_T_1_PC_STRENGTH_VALIDITY(SYMBOL_IN,LATEST_TIME_POINT_IN,
                                           VAR_MAX_STRENGTH,VAR_VOLUME_START_FOR_MAX_STRENGTH,
                                           VAR_VOLUME_END_FOR_MAX_STRENGTH,VAR_PRICE_START_FOR_MAX_STRENGTH,
                                           VAR_PRICE_END_FOR_MAX_STRENGTH,VAR_CURR_TIME_START_FOR_MAX_STRENGTH,
                                           VAR_CURR_TIME_END_FOR_MAX_STRENGTH);


       END IF;
  END;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_N_P_T_1_PC_STRENGTH_VALIDITY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_N_P_T_1_PC_STRENGTH_VALIDITY`(
SYMBOL_IN VARCHAR(20),
    LATEST_TIME_POINT_IN DATETIME,
    VAR_MAX_STRENGTH_IN FLOAT,
    VAR_VOLUME_START_FOR_MAX_STRENGTH_IN INT,
    VAR_VOLUME_END_FOR_MAX_STRENGTH_IN INT,
    VAR_PRICE_START_FOR_MAX_STRENGTH_IN FLOAT,
    VAR_PRICE_END_FOR_MAX_STRENGTH_IN FLOAT,
    VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN DATETIME,
    VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN DATETIME)
BEGIN

DECLARE SAME_RECORD_COUNT int DEFAULT 0;

DECLARE SAME_RECORD_COUNT_IN_LOG int DEFAULT 0;


DECLARE OVERLAP_RECORD_COUNT int DEFAULT 0;

DECLARE ENCLOSING_RECORD_COUNT int DEFAULT 0;

DECLARE VAR_ENCLOSING_RECORD_ID INT;




SELECT count(*) FROM negative_price_trend_data WHERE

symbol = SYMBOL_IN
AND time_start = VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN
AND time_end =  VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN
into SAME_RECORD_COUNT;


SELECT count(*) FROM negative_price_trend_data WHERE

symbol = SYMBOL_IN
AND  (time_start <= VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN and time_end > VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN)
AND   time_end < VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN
into OVERLAP_RECORD_COUNT;


IF(OVERLAP_RECORD_COUNT = 0) THEN

SELECT count(*) FROM negative_price_trend_data WHERE

symbol = SYMBOL_IN
AND  time_start > VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN
AND  time_end < VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN
AND   max_strength > VAR_MAX_STRENGTH_IN
into OVERLAP_RECORD_COUNT;

END IF;


if(SAME_RECORD_COUNT >= 1 or OVERLAP_RECORD_COUNT >= 1) then

SELECT count(*) FROM negative_price_trend_data_log WHERE

symbol = SYMBOL_IN AND
curr_time =  LATEST_TIME_POINT_IN
AND time_start = VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN
AND time_end =  VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN
into SAME_RECORD_COUNT_IN_LOG;

if (SAME_RECORD_COUNT_IN_LOG = 0) then

insert INTO `engine_live`.`negative_price_trend_data_log`
VALUES
(SYMBOL_IN,VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN,VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN,
LATEST_TIME_POINT_IN,VAR_VOLUME_START_FOR_MAX_STRENGTH_IN,VAR_VOLUME_END_FOR_MAX_STRENGTH_IN,
VAR_PRICE_START_FOR_MAX_STRENGTH_IN,VAR_PRICE_END_FOR_MAX_STRENGTH_IN,VAR_MAX_STRENGTH_IN,0,0);

end if;


else


SELECT count(*) FROM negative_price_trend_data WHERE

symbol = SYMBOL_IN
AND  time_start > VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN
AND  time_end < VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN
AND   max_strength < VAR_MAX_STRENGTH_IN
into ENCLOSING_RECORD_COUNT;


IF(ENCLOSING_RECORD_COUNT >1) THEN

CALL  GET_ENCLOSING_RECORD_ID_FOR_NEGATIVE_TREND(SYMBOL_IN,VAR_MAX_STRENGTH_IN,
                              VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN,VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN,
                              VAR_ENCLOSING_RECORD_ID);

END IF;

IF(ENCLOSING_RECORD_COUNT = 1) THEN

SELECT id FROM negative_price_trend_data WHERE

symbol = SYMBOL_IN
AND  time_start > VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN
AND  time_end < VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN
AND   max_strength < VAR_MAX_STRENGTH_IN
into VAR_ENCLOSING_RECORD_ID;


END IF;



insert INTO `engine_live`.`negative_price_trend_data`
VALUES
(NULL,SYMBOL_IN,VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN,VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN,
LATEST_TIME_POINT_IN,VAR_VOLUME_START_FOR_MAX_STRENGTH_IN,VAR_VOLUME_END_FOR_MAX_STRENGTH_IN,
VAR_PRICE_START_FOR_MAX_STRENGTH_IN,VAR_PRICE_END_FOR_MAX_STRENGTH_IN,VAR_MAX_STRENGTH_IN,0,
VAR_ENCLOSING_RECORD_ID);



insert INTO `engine_live`.`negative_price_trend_data_log`
VALUES
(SYMBOL_IN,VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN,VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN,
LATEST_TIME_POINT_IN,VAR_VOLUME_START_FOR_MAX_STRENGTH_IN,VAR_VOLUME_END_FOR_MAX_STRENGTH_IN,
VAR_PRICE_START_FOR_MAX_STRENGTH_IN,VAR_PRICE_END_FOR_MAX_STRENGTH_IN,VAR_MAX_STRENGTH_IN,1,VAR_ENCLOSING_RECORD_ID);


END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_POSITIVE_PRICE_TREND_FOR_ONE_PC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_POSITIVE_PRICE_TREND_FOR_ONE_PC`(
SYMBOL_IN VARCHAR(20),
LATEST_TIME_POINT_IN DATETIME,
PER_HOUR_VOLUME_PREV_DAY_IN FLOAT)
BEGIN


DECLARE CURSOR_TREND CURSOR FOR
SELECT A.VOLUME, B.VOLUME,
A.PRICE,B.PRICE,
A.curr_time,B.curr_time FROM LIVE_DATA A,LIVE_DATA B
WHERE
A.symbol = SYMBOL_IN  AND B.symbol = SYMBOL_IN AND
(B.CURR_TIME < LATEST_TIME_POINT_IN AND
B.CURR_TIME >= DATE_SUB(LATEST_TIME_POINT_IN, INTERVAL 2 MINUTE))
AND
(A.curr_time < B.curr_time
AND A.curr_time >= DATE_SUB(B.curr_time, INTERVAL 1 HOUR))
AND B.price >= (A.price * 1.01);

  OPEN CURSOR_TREND;
  BEGIN

    DECLARE VAR_VOLUME_START INT;
    DECLARE VAR_VOLUME_END INT;
    DECLARE VAR_PRICE_START FLOAT;
    DECLARE VAR_PRICE_END FLOAT;
    DECLARE VAR_CURR_TIME_START DATETIME;
    DECLARE VAR_CURR_TIME_END DATETIME;

    DECLARE VAR_VOLUME_FACTOR FLOAT DEFAULT 0;

    DECLARE VAR_STRENGTH FLOAT DEFAULT 0;

    DECLARE VAR_PCT_GAIN FLOAT DEFAULT 0;



    DECLARE VAR_MAX_STRENGTH FLOAT DEFAULT 0;

    DECLARE TIME_DIFF FLOAT DEFAULT 0;


    DECLARE VAR_VOLUME_START_FOR_MAX_STRENGTH INT;
    DECLARE VAR_VOLUME_END_FOR_MAX_STRENGTH INT;
    DECLARE VAR_PRICE_START_FOR_MAX_STRENGTH FLOAT;
    DECLARE VAR_PRICE_END_FOR_MAX_STRENGTH FLOAT;
    DECLARE VAR_CURR_TIME_START_FOR_MAX_STRENGTH DATETIME;
    DECLARE VAR_CURR_TIME_END_FOR_MAX_STRENGTH DATETIME;





    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN
    CLOSE CURSOR_TREND;
            IF(VAR_MAX_STRENGTH > 0) THEN
       call CHECK_P_P_T_1_PC_STRENGTH_VALIDITY(SYMBOL_IN,LATEST_TIME_POINT_IN,
                                           VAR_MAX_STRENGTH,VAR_VOLUME_START_FOR_MAX_STRENGTH,
                                           VAR_VOLUME_END_FOR_MAX_STRENGTH,VAR_PRICE_START_FOR_MAX_STRENGTH,
                                           VAR_PRICE_END_FOR_MAX_STRENGTH,VAR_CURR_TIME_START_FOR_MAX_STRENGTH,
                                           VAR_CURR_TIME_END_FOR_MAX_STRENGTH);


       END IF;
    END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE CURSOR_TREND; RESIGNAL; END;
    LOOP
      FETCH CURSOR_TREND INTO VAR_VOLUME_START,VAR_VOLUME_END,
                                        VAR_PRICE_START,VAR_PRICE_END,
                                        VAR_CURR_TIME_START,VAR_CURR_TIME_END;


      SET TIME_DIFF = TIMESTAMPDIFF(second,VAR_CURR_TIME_START,VAR_CURR_TIME_END);


      /*
      VOLUME FACTOR (VF) = VOLUME GAINED / EXPECTED VOLUME GAIN BASED ON PREV DAY

      STRENGTH = VF PER PERCENT GAIN. THIS WILL GIVEACCURATE STRENGTH AND WEED
                 OUT HIGH SURGES IN LOW VOLUME. BENCHMARK FOR THIS IS 1
                 i,e 1 VF PER PERCENT GAIN.

      */

       SET VAR_VOLUME_FACTOR =  ((VAR_VOLUME_END - VAR_VOLUME_START) / PER_HOUR_VOLUME_PREV_DAY_IN )
                             * (3600 /   TIME_DIFF) ;

       SET VAR_PCT_GAIN = (VAR_PRICE_END -  VAR_PRICE_START) * 100/ VAR_PRICE_START;


        SET VAR_STRENGTH = VAR_VOLUME_FACTOR / VAR_PCT_GAIN;

       if   VAR_STRENGTH >= 1 then

           if ( VAR_STRENGTH >  VAR_MAX_STRENGTH) then

               SET VAR_MAX_STRENGTH = VAR_STRENGTH;

               SET  VAR_VOLUME_START_FOR_MAX_STRENGTH = VAR_VOLUME_START;
               SET  VAR_VOLUME_END_FOR_MAX_STRENGTH = VAR_VOLUME_END;
               SET  VAR_PRICE_START_FOR_MAX_STRENGTH = VAR_PRICE_START;
               SET  VAR_PRICE_END_FOR_MAX_STRENGTH = VAR_PRICE_END;
               SET  VAR_CURR_TIME_START_FOR_MAX_STRENGTH = VAR_CURR_TIME_START;
               SET  VAR_CURR_TIME_END_FOR_MAX_STRENGTH = VAR_CURR_TIME_END;



           end if;
       end if;

      -- SET counter = counter + 1;

    END LOOP;

        IF(VAR_MAX_STRENGTH > 0) THEN
       call CHECK_P_P_T_1_PC_STRENGTH_VALIDITY(SYMBOL_IN,LATEST_TIME_POINT_IN,
                                           VAR_MAX_STRENGTH,VAR_VOLUME_START_FOR_MAX_STRENGTH,
                                           VAR_VOLUME_END_FOR_MAX_STRENGTH,VAR_PRICE_START_FOR_MAX_STRENGTH,
                                           VAR_PRICE_END_FOR_MAX_STRENGTH,VAR_CURR_TIME_START_FOR_MAX_STRENGTH,
                                           VAR_CURR_TIME_END_FOR_MAX_STRENGTH);


       END IF;
  END;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_PRICE_TREND_CYCLE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_PRICE_TREND_CYCLE`()
BEGIN
DECLARE symbol_CN CURSOR FOR
select symbol from basis_for_calls;

  OPEN symbol_CN;
  BEGIN
    DECLARE VAR_SYMBOL varchar(20);

    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE symbol_CN; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE symbol_CN; RESIGNAL; END;
    LOOP
      FETCH symbol_CN INTO VAR_SYMBOL;
      -- SET counter = counter + 1;

      call    CHECK_PRICE_TREND_FOR_SYMBOL(VAR_SYMBOL);

    END LOOP;
  END;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_PRICE_TREND_FOR_ONE_PC` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_PRICE_TREND_FOR_ONE_PC`(
SYMBOL_IN VARCHAR(20),
LATEST_TIME_POINT_IN DATETIME,
PREV_DAY_VOLUME_IN INT(11))
BEGIN

DECLARE PER_HOUR_VOLUME_PREV_DAY FLOAT DEFAULT 0;

SET PER_HOUR_VOLUME_PREV_DAY = PREV_DAY_VOLUME_IN * 4/25;

CALL CHECK_POSITIVE_PRICE_TREND_FOR_ONE_PC(SYMBOL_IN,LATEST_TIME_POINT_IN,PER_HOUR_VOLUME_PREV_DAY);

CALL CHECK_NEGATIVE_PRICE_TREND_FOR_ONE_PC(SYMBOL_IN,LATEST_TIME_POINT_IN,PER_HOUR_VOLUME_PREV_DAY);



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_PRICE_TREND_FOR_SYMBOL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_PRICE_TREND_FOR_SYMBOL`(
SYMBOL_IN VARCHAR(20))
BEGIN

DECLARE LATEST_TIME_POINT DATETIME DEFAULT NOW();

DECLARE PREV_DAY_VOLUME INT(11) DEFAULT 0;


SELECT MAX(curr_time) FROM live_data WHERE SYMBOL =  SYMBOL_IN INTO LATEST_TIME_POINT;

SELECT volume_prev_day FROM BASIS_FOR_CALLS WHERE SYMBOL = SYMBOL_IN
INTO PREV_DAY_VOLUME;


CALL CHECK_PRICE_TREND_FOR_ONE_PC(SYMBOL_IN, LATEST_TIME_POINT,PREV_DAY_VOLUME);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_P_P_T_1_PC_STRENGTH_VALIDITY` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_P_P_T_1_PC_STRENGTH_VALIDITY`(
SYMBOL_IN VARCHAR(20),
    LATEST_TIME_POINT_IN DATETIME,
    VAR_MAX_STRENGTH_IN FLOAT,
    VAR_VOLUME_START_FOR_MAX_STRENGTH_IN INT,
    VAR_VOLUME_END_FOR_MAX_STRENGTH_IN INT,
    VAR_PRICE_START_FOR_MAX_STRENGTH_IN FLOAT,
    VAR_PRICE_END_FOR_MAX_STRENGTH_IN FLOAT,
    VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN DATETIME,
    VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN DATETIME)
BEGIN

DECLARE SAME_RECORD_COUNT int DEFAULT 0;

DECLARE SAME_RECORD_COUNT_IN_LOG int DEFAULT 0;


DECLARE OVERLAP_RECORD_COUNT int DEFAULT 0;

DECLARE ENCLOSING_RECORD_COUNT int DEFAULT 0;

DECLARE VAR_ENCLOSING_RECORD_ID INT;




SELECT count(*) FROM positive_price_trend_data WHERE

symbol = SYMBOL_IN
AND time_start = VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN
AND time_end =  VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN
into SAME_RECORD_COUNT;


SELECT count(*) FROM positive_price_trend_data WHERE

symbol = SYMBOL_IN
AND  (time_start <= VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN and time_end > VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN)
AND   time_end < VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN
into OVERLAP_RECORD_COUNT;


IF(OVERLAP_RECORD_COUNT = 0) THEN

SELECT count(*) FROM positive_price_trend_data WHERE

symbol = SYMBOL_IN
AND  time_start > VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN
AND  time_end < VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN
AND   max_strength > VAR_MAX_STRENGTH_IN
into OVERLAP_RECORD_COUNT;

END IF;


if(SAME_RECORD_COUNT >= 1 or OVERLAP_RECORD_COUNT >= 1) then

SELECT count(*) FROM positive_price_trend_data_log WHERE

symbol = SYMBOL_IN AND
curr_time =  LATEST_TIME_POINT_IN
AND time_start = VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN
AND time_end =  VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN
into SAME_RECORD_COUNT_IN_LOG;

if (SAME_RECORD_COUNT_IN_LOG = 0) then

insert INTO `engine_live`.`positive_price_trend_data_log`
VALUES
(SYMBOL_IN,VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN,VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN,
LATEST_TIME_POINT_IN,VAR_VOLUME_START_FOR_MAX_STRENGTH_IN,VAR_VOLUME_END_FOR_MAX_STRENGTH_IN,
VAR_PRICE_START_FOR_MAX_STRENGTH_IN,VAR_PRICE_END_FOR_MAX_STRENGTH_IN,VAR_MAX_STRENGTH_IN,0,0);

end if;


else

SELECT count(*) FROM positive_price_trend_data WHERE

symbol = SYMBOL_IN
AND  time_start > VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN
AND  time_end < VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN
AND   max_strength < VAR_MAX_STRENGTH_IN
into ENCLOSING_RECORD_COUNT;


IF(ENCLOSING_RECORD_COUNT >1) THEN

CALL  GET_ENCLOSING_RECORD_ID_FOR_POSITIVE_TREND(SYMBOL_IN,VAR_MAX_STRENGTH_IN,
                              VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN,VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN,
                              VAR_ENCLOSING_RECORD_ID);

END IF;

IF(ENCLOSING_RECORD_COUNT = 1) THEN

SELECT id FROM positive_price_trend_data WHERE

symbol = SYMBOL_IN
AND  time_start > VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN
AND  time_end < VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN
AND   max_strength < VAR_MAX_STRENGTH_IN
into VAR_ENCLOSING_RECORD_ID;


END IF;



insert INTO `engine_live`.`positive_price_trend_data`
VALUES
(NULL,SYMBOL_IN,VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN,VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN,
LATEST_TIME_POINT_IN,VAR_VOLUME_START_FOR_MAX_STRENGTH_IN,VAR_VOLUME_END_FOR_MAX_STRENGTH_IN,
VAR_PRICE_START_FOR_MAX_STRENGTH_IN,VAR_PRICE_END_FOR_MAX_STRENGTH_IN,VAR_MAX_STRENGTH_IN,0,VAR_ENCLOSING_RECORD_ID);



insert INTO `engine_live`.`positive_price_trend_data_log`
VALUES
(SYMBOL_IN,VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN,VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN,
LATEST_TIME_POINT_IN,VAR_VOLUME_START_FOR_MAX_STRENGTH_IN,VAR_VOLUME_END_FOR_MAX_STRENGTH_IN,
VAR_PRICE_START_FOR_MAX_STRENGTH_IN,VAR_PRICE_END_FOR_MAX_STRENGTH_IN,VAR_MAX_STRENGTH_IN,1,VAR_ENCLOSING_RECORD_ID);


END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DUMMY_HANDLE_BUY_ORDER_EVENTS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DUMMY_HANDLE_BUY_ORDER_EVENTS`()
BEGIN

DECLARE pending_events CURSOR FOR
SELECT event_type,order_id,buy_price,quantity FROM engine_live.option_buy_order_event
where is_event_handled = 0;

  OPEN pending_events;
  BEGIN
    DECLARE VAR_EVENT_TYPE varchar(5);
    DECLARE VAR_ORDER_ID INT;

    DECLARE VAR_BUY_PRICE FLOAT;
    DECLARE VAR_QUANTITY INT;



    DECLARE GENERATED_EXCHANGE_ORDER_ID INT;

    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE pending_events; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE pending_events; RESIGNAL; END;
    LOOP
      FETCH pending_events INTO VAR_EVENT_TYPE,VAR_ORDER_ID,VAR_BUY_PRICE,VAR_QUANTITY;
      -- SET counter = counter + 1;


      IF( VAR_EVENT_TYPE = 'MOD') THEN


  -- THIS STEP TO BE EXECUTED BY COMPONENT HANDLING EVENTS


      UPDATE    option_buy_order SET
      buy_price = VAR_BUY_PRICE, quantity = VAR_QUANTITY
      where order_id = VAR_ORDER_ID;
      END IF;

      UPDATE    option_buy_order_event SET
      is_event_handled = 1 where order_id = VAR_ORDER_ID;


      IF( VAR_EVENT_TYPE = 'NEW') THEN

 -- THIS STEP BELOW TO BE RAPLACED WITH SENDING ORDER TO API AND GETTING BACK GENERATED ORDER ID

      SET   GENERATED_EXCHANGE_ORDER_ID = RAND() * 100000000;

  -- THIS STEP TO BE EXECUTED BY COMPONENT HANDLING EVENTS

      UPDATE    option_buy_order SET
      exchange_order_id = GENERATED_EXCHANGE_ORDER_ID where order_id = VAR_ORDER_ID;
      END IF;


      UPDATE    option_buy_order_event SET
      is_event_handled = 1 where order_id = VAR_ORDER_ID;

    END LOOP;
  END;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GENERATE_LIVE_STOCK_DATA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GENERATE_LIVE_STOCK_DATA`(
SYMBOL_IN VARCHAR(20),
NO_OF_ENTRIES INT,
PREV_CLOSE FLOAT)
BEGIN

DECLARE VOLUME_PER_ENTRY INT;

DECLARE PREV_DAY_VOLUME INT;

DECLARE LAST_ENTRY_TIME DATETIME;

DECLARE LAST_ENTRY_PRICE FLOAT;

DECLARE LAST_ENTRY_VOLUME INT;



DECLARE DAY_START_REFERENCE DATETIME;


declare l_loop int default 0;


SELECT volume_prev_day FROM BASIS_FOR_CALLS WHERE SYMBOL = SYMBOL_IN
INTO PREV_DAY_VOLUME;

SET  VOLUME_PER_ENTRY =  PREV_DAY_VOLUME / (12*375);

SELECT MAX(curr_time) FROM live_data WHERE SYMBOL = SYMBOL_IN INTO LAST_ENTRY_TIME;


SET DAY_START_REFERENCE = CONCAT(DATE(curdate()),' 09:15:00');


IF (LAST_ENTRY_TIME IS NULL OR LAST_ENTRY_TIME   < DAY_START_REFERENCE )  THEN

CALL INSERT_OPENING_DATA(SYMBOL_IN,PREV_DAY_VOLUME,PREV_CLOSE);

END IF;

SELECT MAX(curr_time) FROM live_data WHERE SYMBOL = SYMBOL_IN INTO LAST_ENTRY_TIME;

SELECT price, volume  FROM live_data WHERE SYMBOL = SYMBOL_IN AND
-- TIMEDIFF(curr_time,LAST_ENTRY_TIME) = 0
curr_time =  LAST_ENTRY_TIME
INTO LAST_ENTRY_PRICE, LAST_ENTRY_VOLUME;


    loop1: loop

       set l_loop := l_loop + 1;

       IF l_loop > NO_OF_ENTRIES THEN
          leave loop1;
       end if;

       SET  LAST_ENTRY_TIME = DATE_ADD(LAST_ENTRY_TIME, INTERVAL 5 SECOND);

       -- SET LAST_ENTRY_PRICE = LAST_ENTRY_PRICE  + (LAST_ENTRY_PRICE * (0.0015 - (0.003 * RAND())));

       SET LAST_ENTRY_PRICE = LAST_ENTRY_PRICE  + (LAST_ENTRY_PRICE * (0.0015 - (0.0015 * RAND())));

       SET LAST_ENTRY_PRICE = round_price_value(LAST_ENTRY_PRICE);

       SET LAST_ENTRY_VOLUME =  LAST_ENTRY_VOLUME + (RANDOMIZE_VOLUME(VOLUME_PER_ENTRY));


       INSERT INTO live_data
(
`curr_time`,
`symbol`,
`volume`,
`price`)
VALUES
(LAST_ENTRY_TIME,SYMBOL_IN,LAST_ENTRY_VOLUME,
LAST_ENTRY_PRICE
);

    end loop loop1;









END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GET_ENCLOSING_RECORD_ID_FOR_NEGATIVE_TREND` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GET_ENCLOSING_RECORD_ID_FOR_NEGATIVE_TREND`(
    SYMBOL_IN VARCHAR(20),
    VAR_MAX_STRENGTH_IN FLOAT,
    VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN DATETIME,
    VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN DATETIME
,OUT ENCLOSING_RECORD_ID_OUT INT
)
BEGIN


DECLARE symbol_CN CURSOR FOR
SELECT id,max_strength FROM negative_price_trend_data WHERE
symbol = SYMBOL_IN
AND  time_start > VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN
AND  time_end < VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN
AND   max_strength < VAR_MAX_STRENGTH_IN;

  OPEN symbol_CN;
  BEGIN
    DECLARE VAR_ENCLOSING_ID INT;

    DECLARE VAR_ENCLOSING_STRENGTH INT;

    DECLARE VAR_MAX_ENCLOSING_STRENGTH INT;





    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE symbol_CN; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE symbol_CN; RESIGNAL; END;
    LOOP
      FETCH symbol_CN INTO VAR_ENCLOSING_ID,VAR_ENCLOSING_STRENGTH;
      -- SET counter = counter + 1;

      IF(VAR_ENCLOSING_STRENGTH >  VAR_MAX_ENCLOSING_STRENGTH) THEN

      SET VAR_MAX_ENCLOSING_STRENGTH =  VAR_ENCLOSING_STRENGTH;

      SET ENCLOSING_RECORD_ID_OUT = VAR_ENCLOSING_ID;

      END IF;


    END LOOP;
  END;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GET_ENCLOSING_RECORD_ID_FOR_POSITIVE_TREND` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GET_ENCLOSING_RECORD_ID_FOR_POSITIVE_TREND`(
    SYMBOL_IN VARCHAR(20),
    VAR_MAX_STRENGTH_IN FLOAT,
    VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN DATETIME,
    VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN DATETIME
,OUT ENCLOSING_RECORD_ID_OUT INT
)
BEGIN


DECLARE symbol_CN CURSOR FOR
SELECT id,max_strength FROM positive_price_trend_data WHERE
symbol = SYMBOL_IN
AND  time_start > VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN
AND  time_end < VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN
AND   max_strength < VAR_MAX_STRENGTH_IN;

  OPEN symbol_CN;
  BEGIN
    DECLARE VAR_ENCLOSING_ID INT;

    DECLARE VAR_ENCLOSING_STRENGTH INT;

    DECLARE VAR_MAX_ENCLOSING_STRENGTH INT;





    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE symbol_CN; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE symbol_CN; RESIGNAL; END;
    LOOP
      FETCH symbol_CN INTO VAR_ENCLOSING_ID,VAR_ENCLOSING_STRENGTH;
      -- SET counter = counter + 1;

      IF(VAR_ENCLOSING_STRENGTH >  VAR_MAX_ENCLOSING_STRENGTH) THEN

      SET VAR_MAX_ENCLOSING_STRENGTH =  VAR_ENCLOSING_STRENGTH;

      SET ENCLOSING_RECORD_ID_OUT = VAR_ENCLOSING_ID;

      END IF;


    END LOOP;
  END;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `INIT_DB` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `INIT_DB`()
BEGIN

-- DELETE FROM `basis_for_calls`;
DELETE FROM  `live_data`;
DELETE FROM  `option_buy_order`;
DELETE FROM  `option_buy_order_event`;
DELETE FROM  `option_buy_order_log`;
DELETE FROM  `positive_price_trend_data`;
DELETE FROM  `positive_price_trend_data_log`;
DELETE FROM  `negative_price_trend_data`;
DELETE FROM  `negative_price_trend_data_log`;
-- DELETE FROM  `selected_instrument`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `INSERT_OPENING_DATA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `INSERT_OPENING_DATA`(
SYMBOL_IN VARCHAR(20),
PREV_DAY_VOLUME INT,
PREV_CLOSE FLOAT
)
BEGIN

DECLARE LAST_ENTRY_TIME DATETIME;

DECLARE PRICE_VALUE FLOAT;



SET LAST_ENTRY_TIME = concat(DATE(CURDATE()), ' 09:15:0',ROUND(RAND()*10));

SET PRICE_VALUE  = PREV_CLOSE + (PREV_CLOSE * (0.05 - (0.1 * RAND())));

SET PRICE_VALUE = ROUND(PRICE_VALUE,2);

INSERT INTO live_data
(
`curr_time`,
`symbol`,
`volume`,
`price`)
VALUES
(LAST_ENTRY_TIME,SYMBOL_IN,PREV_DAY_VOLUME * (0.012 * RAND()),PRICE_VALUE

);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MARKET_OPENING_COMPONENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MARKET_OPENING_COMPONENT`(
SYMBOL_IN VARCHAR(20),
MARGIN_IN FLOAT
)
BEGIN


DECLARE VAR_OPTION_TYPE varchar(2);
DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;

DECLARE VAR_OPTION_CLOSE_PRICE FLOAT;

DECLARE VAR_CONFIDENCE_LEVEL FLOAT DEFAULT 0;

DECLARE VAR_EXPIRY_FACTOR_QUOTIENT FLOAT DEFAULT 0;

DECLARE VAR_EXPIRY_FACTOR FLOAT DEFAULT 0;

DECLARE DAY_START_REFERENCE DATETIME;

DECLARE VAR_LOT_SIZE INT DEFAULT 0;

DECLARE VAR_NO_OF_LOTS INT DEFAULT 0;

DECLARE VAR_QUANTITY INT DEFAULT 0;

DECLARE CALCULATED_BUY_PRICE FLOAT DEFAULT 0;






SELECT confidence_level FROM basis_for_calls WHERE symbol = SYMBOL_IN INTO VAR_CONFIDENCE_LEVEL;



SELECT option_type,option_strike_price,option_close_price,expiry_factor_quotient,
lot_size FROM selected_instrument
WHERE symbol = SYMBOL_IN INTO VAR_OPTION_TYPE,
VAR_OPTION_STRIKE_PRICE,VAR_OPTION_CLOSE_PRICE,VAR_EXPIRY_FACTOR_QUOTIENT,VAR_LOT_SIZE;


SET CALCULATED_BUY_PRICE =   calculate_price_from_confidence(VAR_OPTION_CLOSE_PRICE,VAR_CONFIDENCE_LEVEL,
                             VAR_EXPIRY_FACTOR_QUOTIENT,VAR_EXPIRY_FACTOR);


SET CALCULATED_BUY_PRICE = round_price_value(CALCULATED_BUY_PRICE);

CALL CALCULATE_QUANTITY_FROM_MARGIN(MARGIN_IN,CALCULATED_BUY_PRICE,VAR_LOT_SIZE,VAR_NO_OF_LOTS);


SET VAR_QUANTITY = VAR_LOT_SIZE * VAR_NO_OF_LOTS;



SELECT  param_value FROM trading_parameters WHERE param_id = 'EXPIRY_FACTOR' INTO VAR_EXPIRY_FACTOR;



SET DAY_START_REFERENCE = CONCAT(DATE(curdate()),' 09:15:00');


CALL PUT_NEW_OPTION_BUY_ORDER_EVENT(SYMBOL_IN,
                                          VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
                                          VAR_OPTION_CLOSE_PRICE,VAR_NO_OF_LOTS,
                                          VAR_QUANTITY,CALCULATED_BUY_PRICE,
                                          DAY_START_REFERENCE);



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MARKET_OPENING_MASTER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MARKET_OPENING_MASTER`(
MARGIN_PER_STOCK_IN FLOAT
)
BEGIN

declare NO_OF_ENTRIES int default 0;

declare l_loop int default 0;


DECLARE symbol_CN CURSOR FOR
select symbol from basis_for_calls;

  OPEN symbol_CN;
  BEGIN
    DECLARE VAR_SYMBOL varchar(20);
    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE symbol_CN; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE symbol_CN; RESIGNAL; END;
    LOOP
      FETCH symbol_CN INTO VAR_SYMBOL;
      -- SET counter = counter + 1;

      call    MARKET_OPENING_COMPONENT(VAR_SYMBOL,MARGIN_PER_STOCK_IN);

    END LOOP;
  END;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PUT_MODIFY_OPTION_BUY_ORDER_EVENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PUT_MODIFY_OPTION_BUY_ORDER_EVENT`(
SYMBOL_IN VARCHAR(45),
OPTION_TYPE_IN varchar(2),
OPTION_STRIKE_PRICE_IN FLOAT,
NO_OF_LOTS_IN INT,
QUANTITY_IN INT,
MODIFIED_PRICE FLOAT,
time_in datetime
)
BEGIN

DECLARE VAR_ORDER_ID INT(11) DEFAULT 0;


SELECT order_id FROM option_buy_order

where symbol = SYMBOL_IN
and option_type = OPTION_TYPE_IN
and option_strike_price = OPTION_STRIKE_PRICE_IN
INTO VAR_ORDER_ID;

update option_buy_order
set buy_price = MODIFIED_PRICE
where symbol = SYMBOL_IN
and option_type = OPTION_TYPE_IN
and option_strike_price = OPTION_STRIKE_PRICE_IN;





REPLACE INTO option_buy_order_log
VALUES
(VAR_ORDER_ID,SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,MODIFIED_PRICE,
NO_OF_LOTS_IN,QUANTITY_IN,0,time_in,0,QUANTITY_IN);

REPLACE INTO option_buy_order_event
VALUES
(VAR_ORDER_ID,SYMBOL_IN,time_in,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,MODIFIED_PRICE,
                        NO_OF_LOTS_IN,QUANTITY_IN,'MOD',0);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PUT_NEW_OPTION_BUY_ORDER_EVENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PUT_NEW_OPTION_BUY_ORDER_EVENT`(
SYMBOL_IN VARCHAR(20),
OPTION_TYPE_IN varchar(2),
OPTION_STRIKE_PRICE_IN FLOAT,
OPTION_CLOSE_PRICE_IN FLOAT,
NO_OF_LOTS_IN INT,
QUANTITY_IN INT,
BUY_PRICE_IN FLOAT,
time_in datetime
)
BEGIN


DECLARE GENERATED_ORDER_ID INT DEFAULT 0;



INSERT INTO option_buy_order
VALUES
(NULL,SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,BUY_PRICE_IN,NO_OF_LOTS_IN,QUANTITY_IN,0,
0,0,QUANTITY_IN);

SET GENERATED_ORDER_ID =  LAST_INSERT_ID();

INSERT INTO option_buy_order_log
VALUES
(GENERATED_ORDER_ID,SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,BUY_PRICE_IN,
NO_OF_LOTS_IN,QUANTITY_IN,0,time_in,0,QUANTITY_IN);

REPLACE INTO option_buy_order_event
VALUES
(GENERATED_ORDER_ID,SYMBOL_IN,time_in,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,BUY_PRICE_IN,
                        NO_OF_LOTS_IN,QUANTITY_IN,'NEW',0);





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TEST_LIVE_DATA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TEST_LIVE_DATA`()
BEGIN

declare l_loop int default 0;

declare NO_OF_ENTRIES int default 187; -- consider loop time to be 2 mins

-- call CALL_GENERATE_LIVE_STOCK_DATA(12);

call INIT_DB();

call MARKET_OPENING_MASTER(20000);

CALL DUMMY_HANDLE_BUY_ORDER_EVENTS();


loop1: loop

       set l_loop := l_loop + 1;

       IF l_loop > NO_OF_ENTRIES THEN
          leave loop1;
       end if;


       CALL CALL_GENERATE_LIVE_STOCK_DATA(24);


       CALL CHECK_PRICE_TREND_CYCLE();


       CALL CHECK_BUY_ORDER_CYCLE();


       CALL DUMMY_HANDLE_BUY_ORDER_EVENTS();



END loop loop1;


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

-- Dump completed on 2018-01-15 23:03:28
