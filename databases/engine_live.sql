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
) ENGINE=InnoDB AUTO_INCREMENT=16330 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_data`
--

LOCK TABLES `live_data` WRITE;
/*!40000 ALTER TABLE `live_data` DISABLE KEYS */;
INSERT INTO `live_data` VALUES (83,'2018-01-11 11:48:04','BATA',142463,748.65),(88,'2018-01-11 11:48:17','BATA',142566,748.75),(104,'2018-01-11 11:52:09','BATA',143352,749.25),(119,'2018-01-11 11:52:24','BATA',143358,749.25),(129,'2018-01-11 11:56:58','BATA',146858,750),(134,'2018-01-11 11:57:11','BATA',146889,750),(16329,'2018-01-13 09:15:03','BATA',6240,730.47);
/*!40000 ALTER TABLE `live_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_buy_order`
--

DROP TABLE IF EXISTS `option_buy_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_buy_order` (
  `symbol` varchar(45) NOT NULL,
  `option_type` varchar(2) NOT NULL,
  `option_strike_price` float NOT NULL,
  `buy_price` float NOT NULL,
  PRIMARY KEY (`symbol`,`option_type`,`option_strike_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_buy_order`
--

LOCK TABLES `option_buy_order` WRITE;
/*!40000 ALTER TABLE `option_buy_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `option_buy_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_buy_order_event`
--

DROP TABLE IF EXISTS `option_buy_order_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_buy_order_event` (
  `symbol` varchar(45) NOT NULL,
  `option_type` varchar(2) NOT NULL,
  `option_strike_price` float NOT NULL,
  `buy_price` float NOT NULL,
  `event_type` varchar(5) NOT NULL,
  `is_event_handled` tinyint(4) NOT NULL,
  PRIMARY KEY (`symbol`,`option_type`,`option_strike_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_buy_order_event`
--

LOCK TABLES `option_buy_order_event` WRITE;
/*!40000 ALTER TABLE `option_buy_order_event` DISABLE KEYS */;
INSERT INTO `option_buy_order_event` VALUES ('BATAINDIA','P',720,6.15,'NEW',0);
/*!40000 ALTER TABLE `option_buy_order_event` ENABLE KEYS */;
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
  `option_close_price` float DEFAULT NULL,
  `last_implied_volatility` float DEFAULT NULL,
  `expiry_factor_quotient` float DEFAULT '1',
  `url` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`symbol`,`option_type`,`option_strike_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selected_instrument`
--

LOCK TABLES `selected_instrument` WRITE;
/*!40000 ALTER TABLE `selected_instrument` DISABLE KEYS */;
INSERT INTO `selected_instrument` VALUES ('BATAINDIA','PE',720,8.35,34.01,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/option_chain/optionKeys.jsp?symbolCode=254&symbol=BATAINDIA&symbol=bata&instrument=OPTSTK&date=-&segmentLink=17&segmentLink=17');
/*!40000 ALTER TABLE `selected_instrument` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trading_parameters`
--

DROP TABLE IF EXISTS `trading_parameters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trading_parameters` (
  `param_id` varchar(20) NOT NULL,
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
INSERT INTO `trading_parameters` VALUES ('EXPIRY_FACTOR','A FACTOR MULTIPLIED WITH THE EXPIRY FACTOR QUOTIENT FOR THE SELECTED INSTRUMENT. IT IS USEFUL IN CALCULATING THE DEPRECIATION OF THE OPTION PRICE AT THE START OF THE CURRENT DAY',0.05);
/*!40000 ALTER TABLE `trading_parameters` ENABLE KEYS */;
UNLOCK TABLES;

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
CREATE DEFINER=`root`@`localhost` PROCEDURE `CALL_GENERATE_LIVE_STOCK_DATA`()
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

      call    GENERATE_LIVE_STOCK_DATA(VAR_SYMBOL,24,VAR_PREV_CLOSE);

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

       SET LAST_ENTRY_PRICE = LAST_ENTRY_PRICE  + (LAST_ENTRY_PRICE * (0.0015 - (0.003 * RAND())));

       SET LAST_ENTRY_PRICE = ROUND(LAST_ENTRY_PRICE,2);

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
SYMBOL_IN VARCHAR(20)
)
BEGIN


DECLARE VAR_OPTION_TYPE varchar(2);
DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;
DECLARE VAR_OPTION_CLOSE_PRICE FLOAT;

DECLARE VAR_CONFIDENCE_LEVEL FLOAT DEFAULT 0;

DECLARE VAR_EXPIRY_FACTOR_QUOTIENT FLOAT DEFAULT 0;

DECLARE VAR_EXPIRY_FACTOR FLOAT DEFAULT 0;






SELECT confidence_level FROM basis_for_calls WHERE symbol = SYMBOL_IN INTO VAR_CONFIDENCE_LEVEL;

SELECT option_type,option_strike_price,option_close_price,expiry_factor_quotient FROM selected_instrument
WHERE symbol = SYMBOL_IN INTO VAR_OPTION_TYPE,
VAR_OPTION_STRIKE_PRICE,VAR_OPTION_CLOSE_PRICE,VAR_EXPIRY_FACTOR_QUOTIENT;

SELECT  param_value FROM trading_parameters WHERE param_id = 'EXPIRY_FACTOR' INTO VAR_EXPIRY_FACTOR;



CALL PUT_NEW_OPTION_BUY_ORDER_EVENT(SYMBOL_IN,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
                                          VAR_OPTION_CLOSE_PRICE,VAR_CONFIDENCE_LEVEL,
                                          VAR_EXPIRY_FACTOR_QUOTIENT,VAR_EXPIRY_FACTOR);



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
CREATE DEFINER=`root`@`localhost` PROCEDURE `MARKET_OPENING_MASTER`()
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

      call    MARKET_OPENING_COMPONENT(VAR_SYMBOL);

    END LOOP;
  END;





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
OPTION_TYPE_IN varchar(1),
OPTION_STRIKE_PRICE_IN FLOAT,
OPTION_CLOSE_PRICE_IN FLOAT,
CONFIDENCE_LEVEL_IN FLOAT,
EXPIRY_FACTOR_QUOTIENT_IN float,
EXPIRY_FACTOR_IN float
)
BEGIN

DECLARE CALCULATED_BUY_PRICE FLOAT DEFAULT 0;


SET CALCULATED_BUY_PRICE =   calculate_price_from_confidence(OPTION_CLOSE_PRICE_IN,CONFIDENCE_LEVEL_IN,
                                                                        EXPIRY_FACTOR_QUOTIENT_IN,EXPIRY_FACTOR_IN);


REPLACE INTO option_buy_order_event
VALUES
(SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,CALCULATED_BUY_PRICE,'NEW',0);





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

declare NO_OF_ENTRIES int default 188; -- consider loop time to be 2 mins



loop1: loop

       set l_loop := l_loop + 1;

       IF l_loop > NO_OF_ENTRIES THEN
          leave loop1;
       end if;

       CALL CALL_GENERATE_LIVE_STOCK_DATA();


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

-- Dump completed on 2018-01-13 20:33:33
