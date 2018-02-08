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
-- Table structure for table `basis_for_calls_archive`
--

DROP TABLE IF EXISTS `basis_for_calls_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basis_for_calls_archive` (
  `curr_date` date NOT NULL,
  `symbol` varchar(45) NOT NULL,
  `volume_prev_day` int(11) NOT NULL,
  `prev_close` float NOT NULL,
  `curr_signal` tinyint(4) NOT NULL,
  `url` varchar(200) DEFAULT NULL,
  `confidence_level` float DEFAULT NULL,
  PRIMARY KEY (`symbol`,`curr_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=217629 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `live_data_archive`
--

DROP TABLE IF EXISTS `live_data_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_data_archive` (
  `id` int(11) DEFAULT NULL,
  `curr_time` datetime NOT NULL,
  `symbol` varchar(45) NOT NULL,
  `volume` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`curr_time`,`symbol`,`volume`,`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `live_option_price_data`
--

DROP TABLE IF EXISTS `live_option_price_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_option_price_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curr_time` datetime DEFAULT NULL,
  `symbol` varchar(45) DEFAULT NULL,
  `option_type` varchar(2) NOT NULL,
  `option_strike_price` float NOT NULL,
  `volume` int(11) DEFAULT NULL,
  `last_price` float(6,2) DEFAULT NULL,
  `bid_price_1` float(6,2) DEFAULT NULL,
  `offer_price_1` float(6,2) DEFAULT NULL,
  `bid_price_2` float(6,2) DEFAULT NULL,
  `offer_price_2` float(6,2) DEFAULT NULL,
  `bid_quantity_1` int(11) DEFAULT NULL,
  `offer_quantity_1` int(11) DEFAULT NULL,
  `bid_quantity_2` int(11) DEFAULT NULL,
  `offer_quantity_2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1473666 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `live_option_price_data_archive`
--

DROP TABLE IF EXISTS `live_option_price_data_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_option_price_data_archive` (
  `id` int(11) NOT NULL,
  `curr_time` datetime NOT NULL,
  `symbol` varchar(45) NOT NULL,
  `option_type` varchar(2) NOT NULL,
  `option_strike_price` float NOT NULL,
  `volume` int(11) DEFAULT NULL,
  `last_price` float DEFAULT NULL,
  `bid_price_1` float DEFAULT NULL,
  `offer_price_1` float DEFAULT NULL,
  `bid_price_2` float DEFAULT NULL,
  `offer_price_2` float DEFAULT NULL,
  `bid_quantity_1` float DEFAULT NULL,
  `offer_quantity_1` float DEFAULT NULL,
  `bid_quantity_2` float DEFAULT NULL,
  `offer_quantity_2` float DEFAULT NULL,
  PRIMARY KEY (`curr_time`,`symbol`,`option_type`,`option_strike_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `live_procedure_status`
--

DROP TABLE IF EXISTS `live_procedure_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_procedure_status` (
  `curr_date` date NOT NULL,
  `process_status` tinyint(4) NOT NULL,
  PRIMARY KEY (`curr_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `live_process_status_record`
--

DROP TABLE IF EXISTS `live_process_status_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `live_process_status_record` (
  `curr_time` datetime NOT NULL,
  `process_status` varchar(7) NOT NULL,
  `is_error_handled` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`curr_time`,`process_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_messages`
--

DROP TABLE IF EXISTS `log_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `curr_time` datetime NOT NULL,
  `source` varchar(100) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `market_day_events_status`
--

DROP TABLE IF EXISTS `market_day_events_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `market_day_events_status` (
  `curr_date` date NOT NULL,
  `is_day_init_done` tinyint(4) DEFAULT NULL,
  `is_market_opening_done` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`curr_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `original_max_strength` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2215 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `negative_price_trend_data_for_sell_order`
--

DROP TABLE IF EXISTS `negative_price_trend_data_for_sell_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `negative_price_trend_data_for_sell_order` (
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
  `original_max_strength` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2193 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `curr_time` datetime NOT NULL,
  `volume_start` int(11) DEFAULT NULL,
  `volume_end` int(11) DEFAULT NULL,
  `price_start` float DEFAULT NULL,
  `price_end` float DEFAULT NULL,
  `max_strength` float DEFAULT NULL,
  `is_strength_valid` tinyint(4) DEFAULT NULL,
  `id_enclosed_strength` int(11) DEFAULT NULL,
  PRIMARY KEY (`symbol`,`time_start`,`time_end`,`curr_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB AUTO_INCREMENT=14313061 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `option_buy_order_cancelled`
--

DROP TABLE IF EXISTS `option_buy_order_cancelled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_buy_order_cancelled` (
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
) ENGINE=InnoDB AUTO_INCREMENT=14313025 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `event_type` varchar(5) NOT NULL COMMENT 'CAL- CALCULATED\nNEW - IMPLIES NEW ORDER TO BE INSERTED\nMOD - IMPLIES ORDER TO BE MODIFIED',
  `is_event_handled` tinyint(4) NOT NULL,
  PRIMARY KEY (`order_id`,`event_type`,`curr_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `remaining_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `option_position`
--

DROP TABLE IF EXISTS `option_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_position` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) NOT NULL,
  `option_type` varchar(2) NOT NULL,
  `option_strike_price` float NOT NULL,
  `buy_price` float NOT NULL,
  `no_of_lots` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `exchange_order_id` int(11) DEFAULT NULL,
  `filled_quantity` int(11) DEFAULT NULL,
  `remaining_quantity` int(11) DEFAULT NULL,
  `total_buy_price` float NOT NULL,
  `sell_price` float DEFAULT NULL,
  `total_sell_price` float DEFAULT NULL,
  `buy_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sell_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`,`buy_time`,`sell_time`)
) ENGINE=InnoDB AUTO_INCREMENT=14313060 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `option_sell_order`
--

DROP TABLE IF EXISTS `option_sell_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_sell_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) NOT NULL,
  `option_type` varchar(2) NOT NULL,
  `option_strike_price` float NOT NULL,
  `sell_price` float NOT NULL,
  `no_of_lots` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `isExecuted` tinyint(4) NOT NULL,
  `exchange_order_id` int(11) DEFAULT NULL,
  `filled_quantity` int(11) DEFAULT NULL,
  `remaining_quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9899192 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `option_sell_order_event`
--

DROP TABLE IF EXISTS `option_sell_order_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_sell_order_event` (
  `order_id` int(11) NOT NULL,
  `symbol` varchar(45) NOT NULL,
  `curr_time` datetime NOT NULL,
  `option_type` varchar(2) NOT NULL,
  `option_strike_price` float NOT NULL,
  `sell_price` float NOT NULL,
  `no_of_lots` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `event_type` varchar(5) NOT NULL COMMENT 'CAL- CALCULATED\nNEW - IMPLIES NEW ORDER TO BE INSERTED\nMOD - IMPLIES ORDER TO BE MODIFIED',
  `is_event_handled` tinyint(4) NOT NULL,
  PRIMARY KEY (`order_id`,`event_type`,`curr_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `option_sell_order_log`
--

DROP TABLE IF EXISTS `option_sell_order_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_sell_order_log` (
  `order_id` int(11) NOT NULL,
  `symbol` varchar(45) NOT NULL,
  `option_type` varchar(2) NOT NULL,
  `option_strike_price` float NOT NULL,
  `sell_price` float NOT NULL,
  `no_of_lots` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `isExecuted` tinyint(4) DEFAULT NULL,
  `update_time` datetime NOT NULL,
  `filled_quantity` int(11) DEFAULT NULL,
  `remaining_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `option_stop_loss_order_price`
--

DROP TABLE IF EXISTS `option_stop_loss_order_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_stop_loss_order_price` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) NOT NULL,
  `option_type` varchar(2) NOT NULL,
  `option_strike_price` float NOT NULL,
  `buy_price` float DEFAULT NULL,
  `sl_price` float NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `original_max_strength` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2877 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `positive_price_trend_data_for_sell_order`
--

DROP TABLE IF EXISTS `positive_price_trend_data_for_sell_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `positive_price_trend_data_for_sell_order` (
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
  `original_max_strength` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2851 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `curr_time` datetime NOT NULL,
  `volume_start` int(11) DEFAULT NULL,
  `volume_end` int(11) DEFAULT NULL,
  `price_start` float DEFAULT NULL,
  `price_end` float DEFAULT NULL,
  `max_strength` float DEFAULT NULL,
  `is_strength_valid` tinyint(4) DEFAULT NULL,
  `id_enclosed_strength` int(11) DEFAULT NULL,
  PRIMARY KEY (`symbol`,`time_start`,`time_end`,`curr_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `margin_allowance` int(11) DEFAULT NULL,
  `last_implied_volatility` float DEFAULT NULL,
  `expiry_factor_quotient` float NOT NULL DEFAULT '1',
  `url` varchar(500) NOT NULL,
  PRIMARY KEY (`symbol`,`option_type`,`option_strike_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `selected_instrument_archive`
--

DROP TABLE IF EXISTS `selected_instrument_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `selected_instrument_archive` (
  `curr_date` date NOT NULL,
  `symbol` varchar(45) NOT NULL,
  `option_type` varchar(2) NOT NULL,
  `option_strike_price` float NOT NULL,
  `option_close_price` float NOT NULL,
  `lot_size` int(11) NOT NULL,
  `margin_allowance` int(11) DEFAULT NULL,
  `last_implied_volatility` float DEFAULT NULL,
  `expiry_factor_quotient` float NOT NULL DEFAULT '1',
  `url` varchar(500) NOT NULL,
  PRIMARY KEY (`curr_date`,`symbol`,`option_type`,`option_strike_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
  `text_param_value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`param_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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

SET BASE =  800 * (RANDOM_FACTOR - 0.95);

SET EXPONENT = 2 * RAND();

SET RANDOM_FACTOR = POWER(BASE, EXPONENT);

-- END BLOCK FOR BULK PURCHASE


ELSE IF( RANDOM_FACTOR >= 0.95) THEN

SET BASE =  400 * (RANDOM_FACTOR - 0.95);

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
) RETURNS float(6,2)
BEGIN

declare remainder float default 0;

declare PRICE_OUT FLOAT default 0;

IF(PRICE_IN < 0) THEN
SET PRICE_IN = 0.05;
END IF;

set remainder =  MOD(PRICE_IN , 0.05);

if(remainder < 0.025) then

set PRICE_OUT = PRICE_IN -  remainder;

if(PRICE_OUT = 0) then

set PRICE_OUT = 0.05;

end if;

return  PRICE_OUT;

end if;

set PRICE_OUT = (PRICE_IN - remainder) + 0.05;

return  PRICE_OUT;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `APPLY_STRENGTH_NEGATIVE_TREND_TO_BUY_ORDER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `APPLY_STRENGTH_NEGATIVE_TREND_TO_BUY_ORDER`(
SYMBOL_IN VARCHAR(45),
STRENGTH_TO_BE_APPLIED_IN FLOAT,
ENCLOSED_RECORD_ID_IN INT,
time_in datetime)
BEGIN

DECLARE VAR_OPTION_TYPE varchar(2);
DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;

DECLARE VAR_INITIAL_ORDER_PRICE FLOAT;

DECLARE VAR_ENCLOSING_RECORD_STRENGTH FLOAT;

DECLARE VAR_STRENGTH_TO_BUY_ORDER_FACTOR FLOAT;

DECLARE VAR_ORIGINAL_ORDER_PRICE FLOAT;

DECLARE VAR_CALCULATED_ORDER_PRICE FLOAT;




DECLARE cursor_OPTION_BUY_ORDERS CURSOR FOR
SELECT option_type,option_strike_price,buy_price FROM engine_live.option_buy_order
where symbol = SYMBOL_IN and isExecuted = 0;

  OPEN cursor_OPTION_BUY_ORDERS;
  BEGIN
    DECLARE VAR_ENCLOSING_ID INT;

    DECLARE VAR_ENCLOSING_STRENGTH INT;

    DECLARE VAR_MAX_ENCLOSING_STRENGTH INT;

    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE cursor_OPTION_BUY_ORDERS; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE cursor_OPTION_BUY_ORDERS; RESIGNAL; END;
    LOOP
      FETCH cursor_OPTION_BUY_ORDERS INTO VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
VAR_INITIAL_ORDER_PRICE;

SELECT  param_value FROM trading_parameters WHERE param_id = 'STRENGTH_TO_BUY_ORDER_FACTOR'
INTO VAR_STRENGTH_TO_BUY_ORDER_FACTOR;





IF(VAR_OPTION_TYPE = 'PE' ) THEN
IF(ENCLOSED_RECORD_ID_IN IS NULL OR ENCLOSED_RECORD_ID_IN = 0) THEN

SET VAR_CALCULATED_ORDER_PRICE = VAR_INITIAL_ORDER_PRICE * (1+
                        (VAR_STRENGTH_TO_BUY_ORDER_FACTOR * STRENGTH_TO_BE_APPLIED_IN));


ELSE

SELECT max_strength from negative_price_trend_data WHERE id = ENCLOSED_RECORD_ID_IN

INTO VAR_ENCLOSING_RECORD_STRENGTH;

SET VAR_ORIGINAL_ORDER_PRICE =  VAR_INITIAL_ORDER_PRICE / (1+
                        (VAR_STRENGTH_TO_BUY_ORDER_FACTOR * VAR_ENCLOSING_RECORD_STRENGTH));

SET VAR_CALCULATED_ORDER_PRICE = VAR_ORIGINAL_ORDER_PRICE * (1+
                        (VAR_STRENGTH_TO_BUY_ORDER_FACTOR * STRENGTH_TO_BE_APPLIED_IN));

END IF;




ELSE IF(VAR_OPTION_TYPE = 'CE' ) THEN

IF(ENCLOSED_RECORD_ID_IN IS NULL OR ENCLOSED_RECORD_ID_IN = 0) THEN

SET VAR_CALCULATED_ORDER_PRICE = VAR_INITIAL_ORDER_PRICE / (1 +
                        (VAR_STRENGTH_TO_BUY_ORDER_FACTOR * STRENGTH_TO_BE_APPLIED_IN));


ELSE

SELECT max_strength from negative_price_trend_data WHERE id = ENCLOSED_RECORD_ID_IN

INTO VAR_ENCLOSING_RECORD_STRENGTH;

SET VAR_ORIGINAL_ORDER_PRICE =  VAR_INITIAL_ORDER_PRICE * (1 +
                        (VAR_STRENGTH_TO_BUY_ORDER_FACTOR * VAR_ENCLOSING_RECORD_STRENGTH));

SET VAR_CALCULATED_ORDER_PRICE = VAR_ORIGINAL_ORDER_PRICE / (1 +
                        (VAR_STRENGTH_TO_BUY_ORDER_FACTOR * STRENGTH_TO_BE_APPLIED_IN));

END IF;

END IF;

END IF;


SET VAR_CALCULATED_ORDER_PRICE = round_price_value(VAR_CALCULATED_ORDER_PRICE);


call PUT_MODIFY_OPTION_BUY_ORDER_EVENT(SYMBOL_IN,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
VAR_CALCULATED_ORDER_PRICE,time_in);



    END LOOP;
  END;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `APPLY_STRENGTH_NEGATIVE_TREND_TO_SELL_ORDER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `APPLY_STRENGTH_NEGATIVE_TREND_TO_SELL_ORDER`(
SYMBOL_IN VARCHAR(45),
STRENGTH_TO_BE_APPLIED_IN FLOAT,
ENCLOSED_RECORD_ID_IN INT,
time_in datetime)
BEGIN

DECLARE VAR_OPTION_TYPE varchar(2);
DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;
DECLARE VAR_NO_OF_LOTS INT;
DECLARE VAR_QUANTITY INT;

DECLARE VAR_INITIAL_ORDER_PRICE FLOAT;

DECLARE VAR_ENCLOSING_RECORD_STRENGTH FLOAT;

DECLARE VAR_STRENGTH_TO_SELL_ORDER_FACTOR FLOAT;

DECLARE VAR_ORIGINAL_ORDER_PRICE FLOAT;

DECLARE VAR_CALCULATED_ORDER_PRICE FLOAT;

DECLARE VAR_PRICE_CHANGE_FACTOR FLOAT;


DECLARE cursor_OPTION_SELL_ORDERS CURSOR FOR
SELECT option_type,option_strike_price,no_of_lots,quantity,sell_price FROM engine_live.option_sell_order
where symbol = SYMBOL_IN and isExecuted = 0;

  OPEN cursor_OPTION_SELL_ORDERS;
  BEGIN
    DECLARE VAR_ENCLOSING_ID INT;

    DECLARE VAR_ENCLOSING_STRENGTH INT;

    DECLARE VAR_MAX_ENCLOSING_STRENGTH INT;

    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE cursor_OPTION_SELL_ORDERS; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE cursor_OPTION_SELL_ORDERS; RESIGNAL; END;
    LOOP
      FETCH cursor_OPTION_SELL_ORDERS INTO VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
VAR_NO_OF_LOTS,VAR_QUANTITY,
VAR_INITIAL_ORDER_PRICE;

SELECT  param_value FROM trading_parameters WHERE param_id = 'STRENGTH_TO_SELL_ORDER_FACTOR'
INTO VAR_STRENGTH_TO_SELL_ORDER_FACTOR;





IF(VAR_OPTION_TYPE = 'PE' ) THEN

IF(ENCLOSED_RECORD_ID_IN IS NULL OR ENCLOSED_RECORD_ID_IN = 0) THEN

SET VAR_CALCULATED_ORDER_PRICE = VAR_INITIAL_ORDER_PRICE * (1+
                        (VAR_STRENGTH_TO_SELL_ORDER_FACTOR * STRENGTH_TO_BE_APPLIED_IN));


ELSE

SELECT max_strength from negative_price_trend_data WHERE id = ENCLOSED_RECORD_ID_IN

INTO VAR_ENCLOSING_RECORD_STRENGTH;

SET VAR_ORIGINAL_ORDER_PRICE =  VAR_INITIAL_ORDER_PRICE / (1+
                        (VAR_STRENGTH_TO_SELL_ORDER_FACTOR * VAR_ENCLOSING_RECORD_STRENGTH));

SET VAR_CALCULATED_ORDER_PRICE = VAR_ORIGINAL_ORDER_PRICE * (1+
                        (VAR_STRENGTH_TO_SELL_ORDER_FACTOR * STRENGTH_TO_BE_APPLIED_IN));

END IF;




ELSE IF(VAR_OPTION_TYPE = 'CE' ) THEN


REPLACE INTO negative_price_trend_data_for_sell_order
(select * from negative_price_trend_data
where symbol = SYMBOL_IN
and curr_time = time_in
and max_strength = STRENGTH_TO_BE_APPLIED_IN
-- and is_strength_applied = 1
);

update negative_price_trend_data_for_sell_order
set is_strength_applied = 0
where symbol = SYMBOL_IN
and curr_time = time_in
and max_strength = STRENGTH_TO_BE_APPLIED_IN;

END IF;

END IF;


IF(VAR_CALCULATED_ORDER_PRICE IS NOT NULL) THEN

SET VAR_CALCULATED_ORDER_PRICE = round_price_value(VAR_CALCULATED_ORDER_PRICE);

SET VAR_PRICE_CHANGE_FACTOR =  VAR_CALCULATED_ORDER_PRICE / VAR_INITIAL_ORDER_PRICE;

call PUT_MODIFY_OPTION_SELL_ORDER_EVENT(SYMBOL_IN,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,VAR_NO_OF_LOTS,
VAR_QUANTITY,VAR_CALCULATED_ORDER_PRICE,VAR_PRICE_CHANGE_FACTOR,time_in,0);

END IF;



    END LOOP;
  END;

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
time_in datetime)
BEGIN

DECLARE VAR_OPTION_TYPE varchar(2);
DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;

DECLARE VAR_INITIAL_ORDER_PRICE FLOAT;

DECLARE VAR_ENCLOSING_RECORD_STRENGTH FLOAT;

DECLARE VAR_STRENGTH_TO_BUY_ORDER_FACTOR FLOAT;

DECLARE VAR_ORIGINAL_ORDER_PRICE FLOAT;

DECLARE VAR_CALCULATED_ORDER_PRICE FLOAT;




DECLARE cursor_OPTION_BUY_ORDERS CURSOR FOR
SELECT option_type,option_strike_price,buy_price FROM engine_live.option_buy_order
where symbol = SYMBOL_IN and isExecuted = 0;

  OPEN cursor_OPTION_BUY_ORDERS;
  BEGIN
    DECLARE VAR_ENCLOSING_ID INT;

    DECLARE VAR_ENCLOSING_STRENGTH INT;

    DECLARE VAR_MAX_ENCLOSING_STRENGTH INT;





    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE cursor_OPTION_BUY_ORDERS; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE cursor_OPTION_BUY_ORDERS; RESIGNAL; END;
    LOOP
      FETCH cursor_OPTION_BUY_ORDERS INTO VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
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

SET VAR_CALCULATED_ORDER_PRICE = VAR_INITIAL_ORDER_PRICE / (1 +
                        (VAR_STRENGTH_TO_BUY_ORDER_FACTOR * STRENGTH_TO_BE_APPLIED_IN));


ELSE

SELECT max_strength from positive_price_trend_data WHERE id = ENCLOSED_RECORD_ID_IN

INTO VAR_ENCLOSING_RECORD_STRENGTH;

SET VAR_ORIGINAL_ORDER_PRICE =  VAR_INITIAL_ORDER_PRICE * (1 +
                        (VAR_STRENGTH_TO_BUY_ORDER_FACTOR * VAR_ENCLOSING_RECORD_STRENGTH));

SET VAR_CALCULATED_ORDER_PRICE = VAR_ORIGINAL_ORDER_PRICE / (1 +
                        (VAR_STRENGTH_TO_BUY_ORDER_FACTOR * STRENGTH_TO_BE_APPLIED_IN));

END IF;

END IF;

END IF;


SET VAR_CALCULATED_ORDER_PRICE = round_price_value(VAR_CALCULATED_ORDER_PRICE);


call PUT_MODIFY_OPTION_BUY_ORDER_EVENT(SYMBOL_IN,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
VAR_CALCULATED_ORDER_PRICE,time_in);



    END LOOP;
  END;










END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `APPLY_STRENGTH_POSITIVE_TREND_TO_SELL_ORDER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `APPLY_STRENGTH_POSITIVE_TREND_TO_SELL_ORDER`(
SYMBOL_IN VARCHAR(45),
STRENGTH_TO_BE_APPLIED_IN FLOAT,
ENCLOSED_RECORD_ID_IN INT,
time_in datetime)
BEGIN

DECLARE VAR_OPTION_TYPE varchar(2);
DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;
DECLARE VAR_NO_OF_LOTS INT;
DECLARE VAR_QUANTITY INT;

DECLARE VAR_INITIAL_ORDER_PRICE FLOAT;

DECLARE VAR_ENCLOSING_RECORD_STRENGTH FLOAT;

DECLARE VAR_STRENGTH_TO_SELL_ORDER_FACTOR FLOAT;

DECLARE VAR_ORIGINAL_ORDER_PRICE FLOAT;

DECLARE VAR_CALCULATED_ORDER_PRICE FLOAT;

DECLARE VAR_PRICE_CHANGE_FACTOR FLOAT;



DECLARE cursor_OPTION_BUY_ORDERS CURSOR FOR
SELECT option_type,option_strike_price,no_of_lots,quantity,sell_price FROM engine_live.option_sell_order
where symbol = SYMBOL_IN and isExecuted = 0;

  OPEN cursor_OPTION_BUY_ORDERS;
  BEGIN
    DECLARE VAR_ENCLOSING_ID INT;

    DECLARE VAR_ENCLOSING_STRENGTH INT;

    DECLARE VAR_MAX_ENCLOSING_STRENGTH INT;





    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE cursor_OPTION_BUY_ORDERS; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE cursor_OPTION_BUY_ORDERS; RESIGNAL; END;
    LOOP
      FETCH cursor_OPTION_BUY_ORDERS INTO VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
VAR_NO_OF_LOTS,VAR_QUANTITY,
VAR_INITIAL_ORDER_PRICE;

SELECT  param_value FROM trading_parameters WHERE param_id = 'STRENGTH_TO_SELL_ORDER_FACTOR'
INTO VAR_STRENGTH_TO_SELL_ORDER_FACTOR;



IF(VAR_OPTION_TYPE = 'CE' ) THEN
IF(ENCLOSED_RECORD_ID_IN IS NULL OR ENCLOSED_RECORD_ID_IN = 0) THEN

SET VAR_CALCULATED_ORDER_PRICE = VAR_INITIAL_ORDER_PRICE * (1+
                        (VAR_STRENGTH_TO_SELL_ORDER_FACTOR * STRENGTH_TO_BE_APPLIED_IN));


ELSE

SELECT max_strength from positive_price_trend_data WHERE id = ENCLOSED_RECORD_ID_IN

INTO VAR_ENCLOSING_RECORD_STRENGTH;

SET VAR_ORIGINAL_ORDER_PRICE =  VAR_INITIAL_ORDER_PRICE / (1+
                        (VAR_STRENGTH_TO_SELL_ORDER_FACTOR * VAR_ENCLOSING_RECORD_STRENGTH));

SET VAR_CALCULATED_ORDER_PRICE = VAR_ORIGINAL_ORDER_PRICE * (1+
                        (VAR_STRENGTH_TO_SELL_ORDER_FACTOR * STRENGTH_TO_BE_APPLIED_IN));

END IF;




ELSE IF(VAR_OPTION_TYPE = 'PE' ) THEN


REPLACE INTO positive_price_trend_data_for_sell_order
(select * from positive_price_trend_data
where symbol = SYMBOL_IN
and curr_time = time_in
and max_strength = STRENGTH_TO_BE_APPLIED_IN
-- and is_strength_applied = 1
);

update positive_price_trend_data_for_sell_order
set is_strength_applied = 0
where symbol = SYMBOL_IN
and curr_time = time_in
and max_strength = STRENGTH_TO_BE_APPLIED_IN;


END IF;

END IF;


IF(VAR_CALCULATED_ORDER_PRICE IS NOT NULL) THEN

SET VAR_CALCULATED_ORDER_PRICE = round_price_value(VAR_CALCULATED_ORDER_PRICE);

SET VAR_PRICE_CHANGE_FACTOR =  VAR_CALCULATED_ORDER_PRICE / VAR_INITIAL_ORDER_PRICE;


call PUT_MODIFY_OPTION_SELL_ORDER_EVENT(SYMBOL_IN,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,VAR_NO_OF_LOTS,
VAR_QUANTITY,VAR_CALCULATED_ORDER_PRICE,VAR_PRICE_CHANGE_FACTOR,time_in,0);

END IF;



    END LOOP;
  END;










END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CALCULATE_EFFICIENT_BUY_ORDER_PRICE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CALCULATE_EFFICIENT_BUY_ORDER_PRICE`(
SYMBOL_IN VARCHAR(20),
OPTION_TYPE_IN varchar(2),
OPTION_STRIKE_PRICE_IN FLOAT,
ORDER_PRICE_IN FLOAT(6,2),
QUANTITY_IN INT,
time_in datetime,
OUT EFFICIENT_ORDER_PRICE_OUT FLOAT(6,2)
)
proc_cebop : BEGIN

DECLARE LATEST_OPTION_PRICE FLOAT(6,2);

DECLARE LATEST_OPTION_BID1_PRICE FLOAT(6,2);

DECLARE LATEST_OPTION_BID2_PRICE FLOAT(6,2);

DECLARE LATEST_OPTION_BID1_PRICE_QUANTITY INT(11);

DECLARE LATEST_OPTION_BID2_PRICE_QUANTITY INT(11);


SET ORDER_PRICE_IN = round_price_value(ORDER_PRICE_IN);

SET EFFICIENT_ORDER_PRICE_OUT =  ORDER_PRICE_IN;


SELECT last_price,bid_price_1,bid_price_2,bid_quantity_1,bid_quantity_2 FROM live_option_price_data
where symbol = SYMBOL_IN
and option_type = OPTION_TYPE_IN
and option_strike_price = OPTION_STRIKE_PRICE_IN
and curr_time < time_in and curr_time > DATE_SUB(time_in, INTERVAL 180 SECOND)
order by curr_time desc
limit 1
into LATEST_OPTION_PRICE,LATEST_OPTION_BID1_PRICE,LATEST_OPTION_BID2_PRICE,
LATEST_OPTION_BID1_PRICE_QUANTITY,LATEST_OPTION_BID2_PRICE_QUANTITY;


IF(LATEST_OPTION_PRICE IS NULL OR LATEST_OPTION_BID1_PRICE IS NULL OR LATEST_OPTION_BID2_PRICE IS NULL) THEN

SET EFFICIENT_ORDER_PRICE_OUT = NULL;

LEAVE  proc_cebop;


END IF;


IF( EFFICIENT_ORDER_PRICE_OUT >   LATEST_OPTION_BID2_PRICE) THEN

/*
IF BID QUANTITY IS LESS THEN MOVE PRICE DOWN TO BID PRICE AS THE SUPPORT IS WEAK AT BID PRICE.

ALSO BOTH BID QUANTITIES SHOULD BE LESS FOR THE PRICE TO HIT THE ORDER

*/

IF( (LATEST_OPTION_BID2_PRICE_QUANTITY <  QUANTITY_IN) AND
    (LATEST_OPTION_BID1_PRICE_QUANTITY <  QUANTITY_IN) ) THEN

SET EFFICIENT_ORDER_PRICE_OUT =  LATEST_OPTION_BID2_PRICE;

LEAVE  proc_cebop;


END IF;

END IF;


IF( EFFICIENT_ORDER_PRICE_OUT >   LATEST_OPTION_BID1_PRICE) THEN

/*
IF BID QUANTITY IS LESS THEN MOVE PRICE DOWN TO BID PRICE AS THE SUPPORT IS WEAK AT BID PRICE.

*/

IF( LATEST_OPTION_BID1_PRICE_QUANTITY <  QUANTITY_IN) THEN

SET EFFICIENT_ORDER_PRICE_OUT =  LATEST_OPTION_BID1_PRICE;

LEAVE  proc_cebop;


END IF;

END IF;



IF( EFFICIENT_ORDER_PRICE_OUT >  LATEST_OPTION_PRICE) THEN

SET EFFICIENT_ORDER_PRICE_OUT = LATEST_OPTION_PRICE;

END IF;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CALCULATE_EFFICIENT_SELL_ORDER_PRICE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CALCULATE_EFFICIENT_SELL_ORDER_PRICE`(
SYMBOL_IN VARCHAR(20),
OPTION_TYPE_IN varchar(2),
OPTION_STRIKE_PRICE_IN FLOAT,
ORDER_PRICE_IN FLOAT(6,2),
QUANTITY_IN INT,
time_in datetime,
OUT EFFICIENT_ORDER_PRICE_OUT FLOAT(6,2)
)
proc_ceSop : BEGIN

DECLARE LATEST_OPTION_PRICE FLOAT(6,2);

DECLARE LATEST_OPTION_OFFER1_PRICE FLOAT(6,2);

DECLARE LATEST_OPTION_OFFER2_PRICE FLOAT(6,2);

DECLARE LATEST_OPTION_OFFER1_PRICE_QUANTITY INT(11);

DECLARE LATEST_OPTION_OFFER2_PRICE_QUANTITY INT(11);

DECLARE LATEST_OPTION_BID1_PRICE FLOAT(6,2);



SET ORDER_PRICE_IN = round_price_value(ORDER_PRICE_IN);

SET EFFICIENT_ORDER_PRICE_OUT =  ORDER_PRICE_IN;


IF(EFFICIENT_ORDER_PRICE_OUT <= 0.05) THEN

SELECT last_price,bid_price_1 FROM live_option_price_data
where symbol = SYMBOL_IN
and option_type = OPTION_TYPE_IN
and option_strike_price = OPTION_STRIKE_PRICE_IN
and curr_time < time_in and curr_time > DATE_SUB(time_in, INTERVAL 180 SECOND)
order by curr_time desc
limit 1
into LATEST_OPTION_PRICE, LATEST_OPTION_BID1_PRICE;

IF(LATEST_OPTION_BID1_PRICE > LATEST_OPTION_PRICE) THEN

SET EFFICIENT_ORDER_PRICE_OUT =  LATEST_OPTION_BID1_PRICE;

LEAVE  proc_ceSop;

END IF;


SET EFFICIENT_ORDER_PRICE_OUT =  LATEST_OPTION_PRICE;

LEAVE  proc_ceSop;


END IF;



SELECT last_price,offer_price_1,offer_price_2,offer_quantity_1,offer_quantity_2 FROM live_option_price_data
where symbol = SYMBOL_IN
and option_type = OPTION_TYPE_IN
and option_strike_price = OPTION_STRIKE_PRICE_IN
and curr_time < time_in and curr_time > DATE_SUB(time_in, INTERVAL 180 SECOND)
order by curr_time desc
limit 1
into LATEST_OPTION_PRICE,LATEST_OPTION_OFFER1_PRICE,LATEST_OPTION_OFFER2_PRICE,
LATEST_OPTION_OFFER1_PRICE_QUANTITY,LATEST_OPTION_OFFER2_PRICE_QUANTITY;


IF(LATEST_OPTION_PRICE IS NULL OR LATEST_OPTION_OFFER1_PRICE IS NULL OR LATEST_OPTION_OFFER2_PRICE IS NULL) THEN

SET EFFICIENT_ORDER_PRICE_OUT = NULL;

LEAVE  proc_ceSop;






END IF;


IF( EFFICIENT_ORDER_PRICE_OUT <  LATEST_OPTION_OFFER2_PRICE) THEN

/*
IF OFFER QUANTITY IS LESS THEN MOVE PRICE UP TO BID PRICE AS THE
RESISTANCE IS WEAK AT OFFER PRICE.

*/

IF( (LATEST_OPTION_OFFER2_PRICE_QUANTITY <  QUANTITY_IN)
AND (LATEST_OPTION_OFFER1_PRICE_QUANTITY <  QUANTITY_IN) ) THEN

SET EFFICIENT_ORDER_PRICE_OUT =  LATEST_OPTION_OFFER2_PRICE;

LEAVE  proc_ceSop;


END IF;

END IF;


IF( EFFICIENT_ORDER_PRICE_OUT <   LATEST_OPTION_OFFER1_PRICE) THEN

/*
IF OFFER QUANTITY IS LESS THEN MOVE PRICE UP TO BID PRICE AS THE
RESISTANCE IS WEAK AT OFFER PRICE.

ALSO BOTH OFFER QUANTITIES SHOULD BE LESS FOR THE PRICE TO HIT THE ORDER


*/

IF( LATEST_OPTION_OFFER1_PRICE_QUANTITY <  QUANTITY_IN) THEN

SET EFFICIENT_ORDER_PRICE_OUT =  LATEST_OPTION_OFFER1_PRICE;

LEAVE  proc_ceSop;

END IF;

END IF;



IF( EFFICIENT_ORDER_PRICE_OUT <  LATEST_OPTION_PRICE) THEN

SET EFFICIENT_ORDER_PRICE_OUT = LATEST_OPTION_PRICE;

END IF;




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

SET NO_OF_LOTS_OUT = 40;


loop1: loop

       set l_loop := l_loop + 1;

       IF l_loop > 40 THEN
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
PER_HOUR_VOLUME_PREV_DAY_IN FLOAT,
ORDER_CYCLE_FREQUENCY_IN FLOAT)
BEGIN



DECLARE CURSOR_TREND CURSOR FOR
SELECT A.VOLUME, B.VOLUME,
A.PRICE,B.PRICE,
A.curr_time,B.curr_time FROM LIVE_DATA A,LIVE_DATA B
WHERE
A.symbol = SYMBOL_IN  AND B.symbol = SYMBOL_IN AND
(B.CURR_TIME < LATEST_TIME_POINT_IN AND
B.CURR_TIME >= DATE_SUB(LATEST_TIME_POINT_IN, INTERVAL (ORDER_CYCLE_FREQUENCY_IN * 60) SECOND))
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
VAR_ENCLOSING_RECORD_ID,null);



insert INTO `engine_live`.`negative_price_trend_data_log`
VALUES
(SYMBOL_IN,VAR_CURR_TIME_START_FOR_MAX_STRENGTH_IN,VAR_CURR_TIME_END_FOR_MAX_STRENGTH_IN,
LATEST_TIME_POINT_IN,VAR_VOLUME_START_FOR_MAX_STRENGTH_IN,VAR_VOLUME_END_FOR_MAX_STRENGTH_IN,
VAR_PRICE_START_FOR_MAX_STRENGTH_IN,VAR_PRICE_END_FOR_MAX_STRENGTH_IN,VAR_MAX_STRENGTH_IN,1,
VAR_ENCLOSING_RECORD_ID);


END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_ORDER_CYCLE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_ORDER_CYCLE`(
test_time_in datetime)
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
      SET LATEST_TIME_POINT =  test_time_in;
      if(LATEST_TIME_POINT is null) then
      SELECT MAX(curr_time) FROM live_data WHERE SYMBOL =  VAR_SYMBOL INTO LATEST_TIME_POINT;
      end if;


      call    CHECK_ORDER_FOR_SYMBOL(VAR_SYMBOL,LATEST_TIME_POINT);

    END LOOP;
  END;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_ORDER_FOR_NEGATIVE_TREND_FOR_SYMBOL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_ORDER_FOR_NEGATIVE_TREND_FOR_SYMBOL`(SYMBOL_IN VARCHAR(45),
time_in datetime
)
BEGIN

DECLARE VAR_COUNT_TREND_RECORDS INT;

DECLARE VAR_TREND_RECORD_ID INT;

DECLARE STRENGTH_TO_BE_APPLIED FLOAT;

DECLARE VAR_ENCLOSING_RECORD_ID INT;

DECLARE VAR_TIME_DIFF_MINUTES FLOAT;




SELECT count(*) FROM engine_live.negative_price_trend_data
WHERE
symbol = SYMBOL_IN and
is_strength_applied = 0
and curr_time =
(select max(curr_time) from negative_price_trend_data
WHERE
symbol = SYMBOL_IN and
is_strength_applied = 0)
INTO VAR_COUNT_TREND_RECORDS;

IF(VAR_COUNT_TREND_RECORDS = 1) THEN

SELECT max_strength,id_enclosed_strength,id,
(TIMESTAMPDIFF(SECOND,time_start,time_end)) / 60
FROM engine_live.negative_price_trend_data
WHERE
symbol = SYMBOL_IN and
is_strength_applied = 0
and curr_time =
(select max(curr_time) from negative_price_trend_data WHERE
symbol = SYMBOL_IN and
is_strength_applied = 0)
into STRENGTH_TO_BE_APPLIED,VAR_ENCLOSING_RECORD_ID,VAR_TREND_RECORD_ID,VAR_TIME_DIFF_MINUTES;


IF( VAR_TIME_DIFF_MINUTES < 10 AND STRENGTH_TO_BE_APPLIED > 2.5) THEN

update negative_price_trend_data
set  original_max_strength = STRENGTH_TO_BE_APPLIED
where id = VAR_TREND_RECORD_ID;

SET STRENGTH_TO_BE_APPLIED = STRENGTH_TO_BE_APPLIED * (VAR_TIME_DIFF_MINUTES / 10 );

update negative_price_trend_data
set  max_strength = STRENGTH_TO_BE_APPLIED
where id = VAR_TREND_RECORD_ID;

END IF;


-- BELOW LINE COMMENTED SO THAT STRENGTHS CAN BE APPLIED TO SELL ORDER AS WELL
update negative_price_trend_data set is_strength_applied = 1 where id = VAR_TREND_RECORD_ID;

CALL APPLY_STRENGTH_NEGATIVE_TREND_TO_BUY_ORDER(SYMBOL_IN,
STRENGTH_TO_BE_APPLIED,VAR_ENCLOSING_RECORD_ID,time_in);

CALL APPLY_STRENGTH_NEGATIVE_TREND_TO_SELL_ORDER(SYMBOL_IN,
STRENGTH_TO_BE_APPLIED,VAR_ENCLOSING_RECORD_ID,time_in);



END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_ORDER_FOR_POSITIVE_TREND_FOR_SYMBOL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_ORDER_FOR_POSITIVE_TREND_FOR_SYMBOL`(
SYMBOL_IN VARCHAR(45),
time_in datetime
)
BEGIN

DECLARE VAR_COUNT_TREND_RECORDS INT;

DECLARE VAR_TREND_RECORD_ID INT;


DECLARE STRENGTH_TO_BE_APPLIED FLOAT;

DECLARE VAR_ENCLOSING_RECORD_ID INT;

DECLARE VAR_TIME_DIFF_MINUTES FLOAT;



SELECT count(*) FROM engine_live.positive_price_trend_data
WHERE
symbol = SYMBOL_IN and
is_strength_applied = 0
and curr_time =
(select max(curr_time) from positive_price_trend_data
WHERE
symbol = SYMBOL_IN and
is_strength_applied = 0
)
INTO VAR_COUNT_TREND_RECORDS;

IF(VAR_COUNT_TREND_RECORDS = 1) THEN

SELECT max_strength,id_enclosed_strength,id,
(TIMESTAMPDIFF(SECOND,time_start,time_end)) / 60
FROM engine_live.positive_price_trend_data
WHERE
symbol = SYMBOL_IN and
is_strength_applied = 0
and curr_time =
(select max(curr_time) from positive_price_trend_data
WHERE
symbol = SYMBOL_IN and
is_strength_applied = 0
)
into STRENGTH_TO_BE_APPLIED,VAR_ENCLOSING_RECORD_ID,VAR_TREND_RECORD_ID,VAR_TIME_DIFF_MINUTES;

IF( VAR_TIME_DIFF_MINUTES < 10 AND STRENGTH_TO_BE_APPLIED > 2.5) THEN

update positive_price_trend_data
set  original_max_strength = STRENGTH_TO_BE_APPLIED
where id = VAR_TREND_RECORD_ID;

SET STRENGTH_TO_BE_APPLIED = STRENGTH_TO_BE_APPLIED * (VAR_TIME_DIFF_MINUTES / 10 );

update positive_price_trend_data
set  max_strength = STRENGTH_TO_BE_APPLIED
where id = VAR_TREND_RECORD_ID;

END IF;


update positive_price_trend_data set is_strength_applied = 1 where id = VAR_TREND_RECORD_ID;

CALL APPLY_STRENGTH_POSITIVE_TREND_TO_BUY_ORDER(SYMBOL_IN,
STRENGTH_TO_BE_APPLIED,VAR_ENCLOSING_RECORD_ID,time_in);

CALL APPLY_STRENGTH_POSITIVE_TREND_TO_SELL_ORDER(SYMBOL_IN,
STRENGTH_TO_BE_APPLIED,VAR_ENCLOSING_RECORD_ID,time_in);


END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_ORDER_FOR_SYMBOL` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_ORDER_FOR_SYMBOL`(
SYMBOL_IN VARCHAR(45),
time_in datetime
)
BEGIN


CALL CHECK_ORDER_FOR_POSITIVE_TREND_FOR_SYMBOL(SYMBOL_IN,time_in);

CALL CHECK_ORDER_FOR_NEGATIVE_TREND_FOR_SYMBOL(SYMBOL_IN,time_in);


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
PER_HOUR_VOLUME_PREV_DAY_IN FLOAT,
ORDER_CYCLE_FREQUENCY_IN FLOAT)
BEGIN


DECLARE CURSOR_TREND CURSOR FOR
SELECT A.VOLUME, B.VOLUME,
A.PRICE,B.PRICE,
A.curr_time,B.curr_time FROM LIVE_DATA A,LIVE_DATA B
WHERE
A.symbol = SYMBOL_IN  AND B.symbol = SYMBOL_IN AND
(B.CURR_TIME < LATEST_TIME_POINT_IN AND
B.CURR_TIME >= DATE_SUB(LATEST_TIME_POINT_IN, INTERVAL (ORDER_CYCLE_FREQUENCY_IN * 60) SECOND))
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_PRICE_TREND_CYCLE`(
test_time_in datetime)
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

      call    CHECK_PRICE_TREND_FOR_SYMBOL(VAR_SYMBOL,test_time_in);

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


DECLARE VAR_ORDER_CYCLE_FREQUENCY FLOAT;

DECLARE PER_HOUR_VOLUME_PREV_DAY FLOAT DEFAULT 0;

SELECT  param_value FROM trading_parameters WHERE param_id = 'ORDER_CYCLE_FREQUENCY'
INTO VAR_ORDER_CYCLE_FREQUENCY;

SET PER_HOUR_VOLUME_PREV_DAY = PREV_DAY_VOLUME_IN * 4/25;

CALL CHECK_POSITIVE_PRICE_TREND_FOR_ONE_PC(SYMBOL_IN,LATEST_TIME_POINT_IN,PER_HOUR_VOLUME_PREV_DAY
                                                                      ,VAR_ORDER_CYCLE_FREQUENCY);

CALL CHECK_NEGATIVE_PRICE_TREND_FOR_ONE_PC(SYMBOL_IN,LATEST_TIME_POINT_IN,PER_HOUR_VOLUME_PREV_DAY
                                                                      ,VAR_ORDER_CYCLE_FREQUENCY);



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
SYMBOL_IN VARCHAR(20),
test_time_in datetime)
BEGIN

DECLARE LATEST_TIME_POINT DATETIME DEFAULT NOW();

DECLARE PREV_DAY_VOLUME INT(11) DEFAULT 0;

set LATEST_TIME_POINT =  test_time_in;
if(LATEST_TIME_POINT is null) then
SELECT MAX(curr_time) FROM live_data WHERE SYMBOL =  SYMBOL_IN INTO LATEST_TIME_POINT;
end if;

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
VAR_PRICE_START_FOR_MAX_STRENGTH_IN,VAR_PRICE_END_FOR_MAX_STRENGTH_IN,VAR_MAX_STRENGTH_IN,0,VAR_ENCLOSING_RECORD_ID,null);



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
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_SLOW_SL_ORDER_POSITION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_SLOW_SL_ORDER_POSITION`(
VAR_SYMBOL VARCHAR(20),
VAR_OPTION_TYPE varchar(2),
VAR_OPTION_STRIKE_PRICE FLOAT,
VAR_BUY_PRICE FLOAT,
VAR_SL_PRICE FLOAT,
time_in datetime,
INTERVAL_SECONDS_IN INT
)
BEGIN


DECLARE IS_FULL_ORDER_FILLED BOOLEAN DEFAULT TRUE;

DECLARE MIN_LAST_PRICE FLOAT;

DECLARE VAR_NO_OF_LOTS INT DEFAULT 0;

DECLARE VAR_QUANTITY INT DEFAULT 0;

DECLARE TARGET_SELL_PRICE FLOAT DEFAULT 0;

-- DECLARE VAR_LAST_ORDER_PRICE FLOAT;

DECLARE FINAL_MIN_LAST_PRICE FLOAT;

/*
SELECT sell_price,no_of_lots,quantity FROM option_sell_order
where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE
and option_strike_price = VAR_OPTION_STRIKE_PRICE
INTO VAR_LAST_ORDER_PRICE,VAR_NO_OF_LOTS ,
VAR_QUANTITY;
*/

SELECT no_of_lots,quantity FROM option_sell_order
where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE
and option_strike_price = VAR_OPTION_STRIKE_PRICE
INTO VAR_NO_OF_LOTS ,
VAR_QUANTITY;


SELECT min(last_price) FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time < time_in and curr_time > DATE_SUB(time_in, INTERVAL INTERVAL_SECONDS_IN SECOND)
INTO MIN_LAST_PRICE;

SET MIN_LAST_PRICE = round_price_value(MIN_LAST_PRICE);

CALL CHECK_SLOW_SL_ORDER_POSITION_FOR_OFFER_PRICE(VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
VAR_QUANTITY,MIN_LAST_PRICE,time_in,INTERVAL_SECONDS_IN,FINAL_MIN_LAST_PRICE);

SET FINAL_MIN_LAST_PRICE = round_price_value(FINAL_MIN_LAST_PRICE);


IF(FINAL_MIN_LAST_PRICE < VAR_SL_PRICE) THEN

IF (FINAL_MIN_LAST_PRICE <=  VAR_BUY_PRICE * 0.85) THEN

SET TARGET_SELL_PRICE = VAR_BUY_PRICE * 0.9;

ELSE IF (FINAL_MIN_LAST_PRICE <=  VAR_BUY_PRICE * 0.9) THEN

SET TARGET_SELL_PRICE = VAR_BUY_PRICE * 0.95;

END IF;

END IF;

END IF;

IF(TARGET_SELL_PRICE > 0) THEN


-- SET VAR_LAST_ORDER_PRICE = round_price_value( VAR_LAST_ORDER_PRICE);

SET TARGET_SELL_PRICE = round_price_value( TARGET_SELL_PRICE);

-- IF(TARGET_SELL_PRICE != VAR_LAST_ORDER_PRICE) THEN

CALL PUT_MODIFY_OPTION_SELL_ORDER_EVENT(
VAR_SYMBOL,
VAR_OPTION_TYPE,
VAR_OPTION_STRIKE_PRICE,
VAR_NO_OF_LOTS ,
VAR_QUANTITY ,
TARGET_SELL_PRICE ,
NULL,
time_in,
1
);

-- END IF;


END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_SLOW_SL_ORDER_POSITION_FOR_OFFER_PRICE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_SLOW_SL_ORDER_POSITION_FOR_OFFER_PRICE`(
VAR_SYMBOL VARCHAR(20),
VAR_OPTION_TYPE varchar(2),
VAR_OPTION_STRIKE_PRICE FLOAT,
VAR_QUANTITY INT,
MIN_LAST_PRICE_IN FLOAT,
time_in datetime,
INTERVAL_SECONDS_IN INT,
OUT FINAL_MIN_LAST_PRICE_OUT FLOAT
)
proc_cssopfop : BEGIN


DECLARE MIN_SELL1_PRICE FLOAT;

DECLARE MIN_SELL1_PRICE_ID INT;

DECLARE MIN_SELL1_PRICE_QUANTITY INT(11);

DECLARE MIN_SELL2_PRICE FLOAT(6,2);

-- DECLARE MIN_SELL2_PRICE_ID INT;

DECLARE MIN_SELL2_PRICE_QUANTITY INT;


SET FINAL_MIN_LAST_PRICE_OUT = MIN_LAST_PRICE_IN;

SELECT min(offer_price_1) FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time < time_in and curr_time > DATE_SUB(time_in, INTERVAL INTERVAL_SECONDS_IN SECOND)
INTO MIN_SELL1_PRICE;

SET MIN_SELL1_PRICE = round_price_value(MIN_SELL1_PRICE);

IF(MIN_SELL1_PRICE < MIN_LAST_PRICE_IN) THEN

SELECT max(offer_quantity_1) FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time < time_in
and curr_time > DATE_SUB(time_in, INTERVAL INTERVAL_SECONDS_IN SECOND)
and round_price_value(offer_price_1) = round_price_value(MIN_SELL1_PRICE)
INTO MIN_SELL1_PRICE_QUANTITY;



IF( MIN_SELL1_PRICE_QUANTITY >= VAR_QUANTITY) THEN

SET FINAL_MIN_LAST_PRICE_OUT = MIN_SELL1_PRICE;

LEAVE proc_cssopfop;

END IF;

ELSE

LEAVE proc_cssopfop;

END IF;

SELECT id FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time < time_in
and curr_time > DATE_SUB(time_in, INTERVAL INTERVAL_SECONDS_IN SECOND)
and round_price_value(offer_price_1) = round_price_value(MIN_SELL1_PRICE)
and offer_quantity_1 = MIN_SELL1_PRICE_QUANTITY
order by id desc limit 1
INTO MIN_SELL1_PRICE_ID;

SELECT offer_price_2 FROM live_option_price_data
where id = MIN_SELL1_PRICE_ID
INTO MIN_SELL2_PRICE;

SET MIN_SELL2_PRICE = round_price_value(MIN_SELL2_PRICE);


IF(MIN_SELL2_PRICE < MIN_LAST_PRICE_IN) THEN

SELECT offer_quantity_2 FROM live_option_price_data

where id = MIN_SELL1_PRICE_ID

INTO MIN_SELL2_PRICE_QUANTITY;


IF ((MIN_SELL2_PRICE_QUANTITY + MIN_SELL1_PRICE_QUANTITY) >= VAR_QUANTITY ) THEN

SET FINAL_MIN_LAST_PRICE_OUT = MIN_SELL2_PRICE;

LEAVE proc_cssopfop;

END IF;

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `COMPLETE_ORDER_CYCLE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `COMPLETE_ORDER_CYCLE`(
DUMMY_CURRENT_TIME datetime,
INTERVAL_SECONDS_IN INT,
IS_DUMMY_CYCLE BOOLEAN)
BEGIN

DECLARE TEXT_NEW_BUY_ORDER_TIME VARCHAR(100) DEFAULT '2018-01-21 09:30:00';

SELECT  text_param_value FROM trading_parameters WHERE param_id = 'NEW_BUY_ORDER_TIME'
INTO TEXT_NEW_BUY_ORDER_TIME;



       CALL CHECK_PRICE_TREND_CYCLE(DUMMY_CURRENT_TIME);

       CALL SLOW_STOP_LOSS_TRIGGER_CYCLE(DUMMY_CURRENT_TIME,INTERVAL_SECONDS_IN,IS_DUMMY_CYCLE);

       CALL CHECK_ORDER_CYCLE(DUMMY_CURRENT_TIME);

       CALL FAST_STOP_LOSS_TRIGGER_CYCLE(DUMMY_CURRENT_TIME,INTERVAL_SECONDS_IN);


       IF(time(DUMMY_CURRENT_TIME) = time(TEXT_NEW_BUY_ORDER_TIME)) THEN

       CALL  MARKET_NEW_ORDER_MASTER(DUMMY_CURRENT_TIME);

       END IF;

IF(IS_DUMMY_CYCLE) THEN

       CALL DUMMY_HANDLE_BUY_ORDER_EVENTS();
END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DUMMY_CALCULATE_OPTION_BID_OFFER_LIVE_FOR_MINUTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DUMMY_CALCULATE_OPTION_BID_OFFER_LIVE_FOR_MINUTE`(
SYMBOL_IN VARCHAR(45),
OPTION_TYPE_IN varchar(2),
OPTION_STRIKE_PRICE_IN FLOAT,
time_in datetime
)
BEGIN

DECLARE LIVE_DATA_CN CURSOR FOR
select last_price,curr_time from live_option_price_data
where symbol = SYMBOL_IN
and option_type = OPTION_TYPE_IN
and option_strike_price = OPTION_STRIKE_PRICE_IN
and TIMESTAMPDIFF(SECOND,curr_time,time_in) > 0
and TIMESTAMPDIFF(SECOND,curr_time,time_in) <= 60
;

  OPEN LIVE_DATA_CN;
  BEGIN
    DECLARE VAR_PRICE FLOAT;
    DECLARE VAR_CURR_TIME DATETIME;


    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE LIVE_DATA_CN; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE LIVE_DATA_CN; RESIGNAL; END;
    LOOP
      FETCH LIVE_DATA_CN INTO VAR_PRICE,VAR_CURR_TIME;
      -- SET counter = counter + 1;

    CALL DUMMY_CALCULATE_OPTION_BID_OFFER_PRICE_LIVE(SYMBOL_IN,OPTION_TYPE_IN,
                                                OPTION_STRIKE_PRICE_IN,                                               
                                                VAR_PRICE,VAR_CURR_TIME);

    END LOOP;
  END;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DUMMY_CALCULATE_OPTION_BID_OFFER_LIVE_MASTER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DUMMY_CALCULATE_OPTION_BID_OFFER_LIVE_MASTER`(
test_time_in DATETIME
)
BEGIN


DECLARE SELECTED_INSTRUMENT_CN CURSOR FOR
select distinct symbol,option_type,option_strike_price
 from live_option_price_data
-- where symbol = 'HDFC'
;

  OPEN SELECTED_INSTRUMENT_CN;
  BEGIN
    DECLARE VAR_SYMBOL varchar(20);
    DECLARE VAR_OPTION_TYPE varchar(2);
    DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;





    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE SELECTED_INSTRUMENT_CN; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE SELECTED_INSTRUMENT_CN; RESIGNAL; END;
    LOOP
      FETCH SELECTED_INSTRUMENT_CN INTO VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE;
      -- SET counter = counter + 1;


      CALL DUMMY_CALCULATE_OPTION_BID_OFFER_LIVE_FOR_MINUTE(VAR_SYMBOL,VAR_OPTION_TYPE,
                                                VAR_OPTION_STRIKE_PRICE
                                                , test_time_in);

    END LOOP;
  END;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DUMMY_CALCULATE_OPTION_BID_OFFER_PRICE_LIVE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DUMMY_CALCULATE_OPTION_BID_OFFER_PRICE_LIVE`(
SYMBOL_IN VARCHAR(45),
OPTION_TYPE_IN varchar(2),
OPTION_STRIKE_PRICE_IN FLOAT,
OPTION_CURRENT_PRICE_IN FLOAT,
time_in datetime)
BEGIN

DECLARE PROJECTED_PRICE FLOAT DEFAULT NULL;

DECLARE CALCULATED_BID1_PRICE FLOAT DEFAULT NULL;

DECLARE CALCULATED_OFFER1_PRICE FLOAT DEFAULT NULL;

DECLARE CALCULATED_BID1_QUANTITY INT DEFAULT NULL;

DECLARE CALCULATED_OFFER1_QUANTITY INT DEFAULT NULL;

DECLARE CALCULATED_BID2_PRICE FLOAT DEFAULT NULL;

DECLARE CALCULATED_OFFER2_PRICE FLOAT DEFAULT NULL;

DECLARE CALCULATED_BID2_QUANTITY INT DEFAULT NULL;

DECLARE CALCULATED_OFFER2_QUANTITY INT DEFAULT NULL;

DECLARE RANDOM_FACTOR FLOAT DEFAULT NULL;

DECLARE LOT_FACTOR FLOAT DEFAULT NULL;

DECLARE LOT_SIZE_IN INT;


select distinct lot_size from selected_instrument
where symbol = SYMBOL_IN
-- and option_type = OPTION_TYPE_IN
-- and option_strike_price = OPTION_STRIKE_PRICE_IN
order by  lot_size limit 1
into LOT_SIZE_IN;






SET PROJECTED_PRICE =  OPTION_CURRENT_PRICE_IN * (0.97 + (0.03 * RAND()) +(0.03 * RAND()));


SET RANDOM_FACTOR = RAND();

IF( RANDOM_FACTOR <= 0.5) THEN

SET CALCULATED_BID1_PRICE =  PROJECTED_PRICE  * (0.97 + (0.03 * RAND()));

SET CALCULATED_OFFER1_PRICE =  CALCULATED_BID1_PRICE  * (1 + (0.015 * RAND()));

SET CALCULATED_BID1_PRICE = round_price_value(CALCULATED_BID1_PRICE);

SET CALCULATED_OFFER1_PRICE = round_price_value(CALCULATED_OFFER1_PRICE);

IF(CALCULATED_OFFER1_PRICE =  CALCULATED_BID1_PRICE) THEN

SET CALCULATED_OFFER1_PRICE =  CALCULATED_BID1_PRICE + 0.05;

END IF;



SET LOT_FACTOR = 5 * RAND();

SET CALCULATED_BID1_QUANTITY =  LOT_SIZE_IN * ROUND(LOT_FACTOR * RAND());

SET LOT_FACTOR = 5 * RAND();

SET CALCULATED_OFFER1_QUANTITY =  LOT_SIZE_IN * ROUND(LOT_FACTOR * RAND());


SET CALCULATED_BID2_PRICE =  CALCULATED_BID1_PRICE  * (1 - (0.02 * RAND()));

SET CALCULATED_OFFER2_PRICE =  CALCULATED_OFFER1_PRICE  * (1 + (0.02 * RAND()));


SET CALCULATED_BID2_PRICE = round_price_value(CALCULATED_BID2_PRICE);

SET CALCULATED_OFFER2_PRICE = round_price_value(CALCULATED_OFFER2_PRICE);


IF(CALCULATED_BID2_PRICE =  CALCULATED_BID1_PRICE) THEN

SET CALCULATED_BID2_PRICE =  CALCULATED_BID1_PRICE - 0.05;

END IF;

IF(CALCULATED_OFFER2_PRICE =  CALCULATED_OFFER1_PRICE) THEN

SET CALCULATED_OFFER2_PRICE =  CALCULATED_OFFER1_PRICE + 0.05;

END IF;



SET LOT_FACTOR = 5 * RAND();

SET CALCULATED_BID2_QUANTITY =  LOT_SIZE_IN * ROUND(LOT_FACTOR * RAND());

SET LOT_FACTOR = 5 * RAND();

SET CALCULATED_OFFER2_QUANTITY =  LOT_SIZE_IN * ROUND(LOT_FACTOR * RAND());


END IF;






IF( RANDOM_FACTOR > 0.5) THEN

SET CALCULATED_OFFER1_PRICE =  PROJECTED_PRICE  * (1 + (0.03 * RAND()));

SET CALCULATED_BID1_PRICE =  CALCULATED_OFFER1_PRICE  * (1 - (0.015 * RAND()));

SET CALCULATED_BID1_PRICE = round_price_value(CALCULATED_BID1_PRICE);

SET CALCULATED_OFFER1_PRICE = round_price_value(CALCULATED_OFFER1_PRICE);

IF(CALCULATED_OFFER1_PRICE =  CALCULATED_BID1_PRICE) THEN

SET CALCULATED_OFFER1_PRICE =  CALCULATED_BID1_PRICE + 0.05;

END IF;


SET LOT_FACTOR = 5 * RAND();

SET CALCULATED_BID1_QUANTITY =  LOT_SIZE_IN * ROUND(LOT_FACTOR * RAND());

SET LOT_FACTOR = 5 * RAND();

SET CALCULATED_OFFER1_QUANTITY =  LOT_SIZE_IN * ROUND(LOT_FACTOR * RAND());


SET CALCULATED_BID2_PRICE =  CALCULATED_BID1_PRICE  * (1 - (0.02 * RAND()));

SET CALCULATED_OFFER2_PRICE =  CALCULATED_OFFER1_PRICE  * (1 + (0.02 * RAND()));


SET CALCULATED_BID2_PRICE = round_price_value(CALCULATED_BID2_PRICE);

SET CALCULATED_OFFER2_PRICE = round_price_value(CALCULATED_OFFER2_PRICE);


IF(CALCULATED_BID2_PRICE =  CALCULATED_BID1_PRICE) THEN

SET CALCULATED_BID2_PRICE =  CALCULATED_BID1_PRICE - 0.05;

END IF;

IF(CALCULATED_OFFER2_PRICE =  CALCULATED_OFFER1_PRICE) THEN

SET CALCULATED_OFFER2_PRICE =  CALCULATED_OFFER1_PRICE + 0.05;

END IF;


SET LOT_FACTOR = 5 * RAND();

SET CALCULATED_BID2_QUANTITY =  LOT_SIZE_IN * ROUND(LOT_FACTOR * RAND());

SET LOT_FACTOR = 5 * RAND();

SET CALCULATED_OFFER2_QUANTITY =  LOT_SIZE_IN * ROUND(LOT_FACTOR * RAND());


END IF;




IF(CALCULATED_BID1_QUANTITY IS NULL OR CALCULATED_BID1_QUANTITY = 0) THEN

SET CALCULATED_BID1_QUANTITY = LOT_SIZE_IN;

END IF;


IF(CALCULATED_OFFER1_QUANTITY IS NULL OR CALCULATED_OFFER1_QUANTITY = 0) THEN

SET CALCULATED_OFFER1_QUANTITY = LOT_SIZE_IN;

END IF;

IF(CALCULATED_BID2_QUANTITY IS NULL OR CALCULATED_BID2_QUANTITY = 0) THEN

SET CALCULATED_BID2_QUANTITY = LOT_SIZE_IN;

END IF;

IF(CALCULATED_OFFER2_QUANTITY IS NULL OR CALCULATED_OFFER2_QUANTITY = 0) THEN

SET CALCULATED_OFFER2_QUANTITY = LOT_SIZE_IN;

END IF;

update live_option_price_data
set
bid_price_1 = CALCULATED_BID1_PRICE,
bid_quantity_1 = CALCULATED_BID1_QUANTITY,
bid_price_2 = CALCULATED_BID2_PRICE,
bid_quantity_2 = CALCULATED_BID2_QUANTITY,
offer_price_1 = CALCULATED_OFFER1_PRICE,
offer_quantity_1 = CALCULATED_OFFER1_QUANTITY,
offer_price_2 = CALCULATED_OFFER2_PRICE,
offer_quantity_2 = CALCULATED_OFFER2_QUANTITY



where symbol = SYMBOL_IN
and option_type = OPTION_TYPE_IN
and option_strike_price = OPTION_STRIKE_PRICE_IN
and curr_time = time_in;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DUMMY_CALCULATE_OPTION_PRICE_LIVE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DUMMY_CALCULATE_OPTION_PRICE_LIVE`(
SYMBOL_IN VARCHAR(45),
OPTION_TYPE_IN varchar(2),
OPTION_STRIKE_PRICE_IN FLOAT,
OPTION_PREV_CLOSE_PRICE_IN FLOAT,
PRICE_PER_SECOND_FACTOR_IN FLOAT,
time_in datetime,
STOCK_CURRENT_PRICE_IN FLOAT,
EXPIRY_DAYS_REMAINING INT)
BEGIN



DECLARE VAR_STOCK_CURRENT_PRICE_DIFF FLOAT;


DECLARE DAY_END_REFERENCE DATETIME;

DECLARE REMAINING_TIME_SECONDS INT;

DECLARE VAR_CALCULATED_OPTION_PRICE FLOAT;

DECLARE PRICE_PER_SECOND_FACTOR_NEW FLOAT;

DECLARE VAR_OPTION_PRICE_FACTOR FLOAT;





SET DAY_END_REFERENCE = CONCAT(DATE(time_in),' 15:30:00');

SELECT TIMESTAMPDIFF(SECOND,time_in,DAY_END_REFERENCE) INTO REMAINING_TIME_SECONDS;


SET REMAINING_TIME_SECONDS = REMAINING_TIME_SECONDS + (375 * 60 * (EXPIRY_DAYS_REMAINING - 1));



IF(OPTION_TYPE_IN = 'CE') THEN


SET VAR_STOCK_CURRENT_PRICE_DIFF = OPTION_STRIKE_PRICE_IN - STOCK_CURRENT_PRICE_IN;


ELSE IF(OPTION_TYPE_IN = 'PE') THEN


SET VAR_STOCK_CURRENT_PRICE_DIFF = STOCK_CURRENT_PRICE_IN - OPTION_STRIKE_PRICE_IN;


END IF;

END IF;



SET VAR_OPTION_PRICE_FACTOR =   (OPTION_PREV_CLOSE_PRICE_IN * REMAINING_TIME_SECONDS)/
                                                        (EXPIRY_DAYS_REMAINING * (375 * 60));



SET PRICE_PER_SECOND_FACTOR_NEW =  (VAR_STOCK_CURRENT_PRICE_DIFF +  VAR_OPTION_PRICE_FACTOR)/
                                    ( REMAINING_TIME_SECONDS);


SET VAR_CALCULATED_OPTION_PRICE = OPTION_PREV_CLOSE_PRICE_IN *
                                              (PRICE_PER_SECOND_FACTOR_IN / PRICE_PER_SECOND_FACTOR_NEW);

-- SET VAR_CALCULATED_OPTION_PRICE = VAR_CALCULATED_OPTION_PRICE - (VAR_OPTION_PRICE_FACTOR * 0.02);

SET VAR_CALCULATED_OPTION_PRICE = round_price_value(VAR_CALCULATED_OPTION_PRICE);

REPLACE INTO `engine_live`.`live_option_price_data`
(`id`,
`curr_time`,
`symbol`,
`option_type`,
`option_strike_price`,
`volume`,
`last_price`)
VALUES
(null,time_in,SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,rand()*500,VAR_CALCULATED_OPTION_PRICE);




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DUMMY_CALCULATE_OPTION_PRICE_LIVE_FOR_MINUTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DUMMY_CALCULATE_OPTION_PRICE_LIVE_FOR_MINUTE`(
SYMBOL_IN VARCHAR(45),
OPTION_TYPE_IN varchar(2),
OPTION_STRIKE_PRICE_IN FLOAT,
OPTION_PREV_CLOSE_PRICE_IN FLOAT,
PRICE_PER_SECOND_FACTOR_IN FLOAT,
time_in datetime,
EXPIRY_DAYS_REMAINING INT)
BEGIN

DECLARE LIVE_DATA_CN CURSOR FOR
select price,curr_time from live_data
where symbol = SYMBOL_IN
and TIMESTAMPDIFF(SECOND,curr_time,time_in) > 0
and TIMESTAMPDIFF(SECOND,curr_time,time_in) <= 60
order by curr_time desc limit 3
;

  OPEN LIVE_DATA_CN;
  BEGIN
    DECLARE VAR_PRICE FLOAT;
    DECLARE VAR_CURR_TIME DATETIME;


    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE LIVE_DATA_CN; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE LIVE_DATA_CN; RESIGNAL; END;
    LOOP
      FETCH LIVE_DATA_CN INTO VAR_PRICE,VAR_CURR_TIME;
      -- SET counter = counter + 1;

    CALL DUMMY_CALCULATE_OPTION_PRICE_LIVE(SYMBOL_IN,OPTION_TYPE_IN,
                                                OPTION_STRIKE_PRICE_IN,OPTION_PREV_CLOSE_PRICE_IN,
                                                PRICE_PER_SECOND_FACTOR_IN,
                                                VAR_CURR_TIME,VAR_PRICE,EXPIRY_DAYS_REMAINING);

    END LOOP;
  END;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DUMMY_CALCULATE_OPTION_PRICE_LIVE_MASTER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DUMMY_CALCULATE_OPTION_PRICE_LIVE_MASTER`(
test_time_in DATETIME,
EXPIRY_DAYS_REMAINING_IN INT
)
BEGIN


DECLARE SELECTED_INSTRUMENT_CN CURSOR FOR
select symbol,option_type,option_strike_price,option_close_price
 from selected_instrument
-- where symbol = 'HDFC'
;

  OPEN SELECTED_INSTRUMENT_CN;
  BEGIN
    DECLARE VAR_SYMBOL varchar(20);
    DECLARE VAR_OPTION_TYPE varchar(2);
    DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;

DECLARE VAR_STOCK_PREV_CLOSE_PRICE FLOAT;

DECLARE VAR_OPTION_PREV_CLOSE_PRICE FLOAT;

DECLARE VAR_STOCK_CLOSE_PRICE_DIFF FLOAT;
    DECLARE PRICE_PER_DAY_FACTOR FLOAT;
    DECLARE PRICE_PER_SECOND_FACTOR FLOAT;


    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE SELECTED_INSTRUMENT_CN; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE SELECTED_INSTRUMENT_CN; RESIGNAL; END;
    LOOP
      FETCH SELECTED_INSTRUMENT_CN INTO VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
      VAR_OPTION_PREV_CLOSE_PRICE;
      -- SET counter = counter + 1;

SELECT prev_close FROM basis_for_calls
WHERE symbol = VAR_SYMBOL
INTO VAR_STOCK_PREV_CLOSE_PRICE;



IF(VAR_OPTION_TYPE = 'CE') THEN


      SET VAR_STOCK_CLOSE_PRICE_DIFF = VAR_OPTION_STRIKE_PRICE - VAR_STOCK_PREV_CLOSE_PRICE;


ELSE IF(VAR_OPTION_TYPE = 'PE') THEN

SET VAR_STOCK_CLOSE_PRICE_DIFF = VAR_STOCK_PREV_CLOSE_PRICE - VAR_OPTION_STRIKE_PRICE;


END IF;
 END IF;




      SET PRICE_PER_DAY_FACTOR =  (VAR_STOCK_CLOSE_PRICE_DIFF +  VAR_OPTION_PREV_CLOSE_PRICE)/
                                    EXPIRY_DAYS_REMAINING_IN ;

      SET PRICE_PER_SECOND_FACTOR =  PRICE_PER_DAY_FACTOR / (375 * 60);



      CALL DUMMY_CALCULATE_OPTION_PRICE_LIVE_FOR_MINUTE(VAR_SYMBOL,VAR_OPTION_TYPE,
                                                VAR_OPTION_STRIKE_PRICE
                                                , VAR_OPTION_PREV_CLOSE_PRICE,PRICE_PER_SECOND_FACTOR,
                                                test_time_in,EXPIRY_DAYS_REMAINING_IN);

    END LOOP;
  END;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DUMMY_CHECK_BUY_ORDER_CYCLE_POSITIONS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DUMMY_CHECK_BUY_ORDER_CYCLE_POSITIONS`(
time_in datetime,
INTERVAL_SECONDS_IN INT)
BEGIN


DECLARE VAR_OPTION_TYPE varchar(2);
DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;
DECLARE VAR_NO_OF_LOTS INT;
DECLARE VAR_QUANTITY INT;

DECLARE VAR_BUY_PRICE FLOAT;


DECLARE cursor_OPTION_BUY_ORDERS CURSOR FOR
SELECT symbol,option_type,option_strike_price,no_of_lots,quantity,buy_price FROM engine_live.option_buy_order
where isExecuted = 0;

  OPEN cursor_OPTION_BUY_ORDERS;
  BEGIN
    DECLARE VAR_SYMBOL varchar(20);

    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE cursor_OPTION_BUY_ORDERS; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE cursor_OPTION_BUY_ORDERS; RESIGNAL; END;
    LOOP
      FETCH cursor_OPTION_BUY_ORDERS INTO VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
                      VAR_NO_OF_LOTS,VAR_QUANTITY,VAR_BUY_PRICE;




      call DUMMY_CHECK_BUY_ORDER_POSITION(VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
                                           VAR_NO_OF_LOTS,VAR_QUANTITY,VAR_BUY_PRICE
                                           ,time_in,INTERVAL_SECONDS_IN);

    END LOOP;
  END;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DUMMY_CHECK_BUY_ORDER_POSITION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DUMMY_CHECK_BUY_ORDER_POSITION`(
VAR_SYMBOL VARCHAR(20),
VAR_OPTION_TYPE varchar(2),
VAR_OPTION_STRIKE_PRICE FLOAT,
VAR_NO_OF_LOTS INT,
VAR_QUANTITY INT,
VAR_BUY_PRICE FLOAT,
time_in datetime,
INTERVAL_SECONDS_IN INT
)
proc_dcbop : BEGIN

DECLARE VAR_TARGET_RECORD_COUNT INT;

DECLARE IS_FULL_ORDER_FILLED BOOLEAN DEFAULT TRUE;

DECLARE INTERVAL_START_PRICE FLOAT DEFAULT NULL ;




-- DECLARE LOWER_THAN_ORDER_PRICE FLOAT DEFAULT NULL ;

DECLARE FINAL_BUY_PRICE FLOAT DEFAULT NULL;

DECLARE VAR_BUY_ORDER_TIME DATETIME DEFAULT NULL;



select max(update_time) from option_buy_order_log
where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
into VAR_BUY_ORDER_TIME;


IF( VAR_BUY_ORDER_TIME = time_in) THEN

LEAVE proc_dcbop;

END IF;


/*
SELECT min(last_price) FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time > DATE_SUB(time_in, INTERVAL (INTERVAL_SECONDS_IN + 10) SECOND)
and curr_time < DATE_SUB(time_in, INTERVAL (INTERVAL_SECONDS_IN - 10) SECOND)
into INTERVAL_START_PRICE;
*/

-- IF(INTERVAL_START_PRICE IS NULL) THEN

SELECT last_price FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time > DATE_SUB(time_in, INTERVAL INTERVAL_SECONDS_IN SECOND)
and curr_time < time_in
order by curr_time asc LIMIT 1
into INTERVAL_START_PRICE;

-- END IF;

IF( INTERVAL_START_PRICE IS NOT NULL AND INTERVAL_START_PRICE <=   VAR_BUY_PRICE ) THEN

SET FINAL_BUY_PRICE = VAR_BUY_PRICE;

ELSE

CALL DUMMY_CHECK_BUY_ORDER_POSITION_FOR_OFFER_PRICE(VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
VAR_NO_OF_LOTS,VAR_QUANTITY,VAR_BUY_PRICE,time_in,INTERVAL_SECONDS_IN,FINAL_BUY_PRICE);


END IF;


IF( FINAL_BUY_PRICE IS NULL) THEN

SELECT count(*) FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time < time_in and curr_time > DATE_SUB(time_in, INTERVAL INTERVAL_SECONDS_IN SECOND)
and last_price < VAR_BUY_PRICE
INTO VAR_TARGET_RECORD_COUNT;

IF(VAR_TARGET_RECORD_COUNT = 0) THEN

SELECT count(*) FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time < time_in and curr_time > DATE_SUB(time_in, INTERVAL INTERVAL_SECONDS_IN SECOND)
and last_price = VAR_BUY_PRICE
INTO VAR_TARGET_RECORD_COUNT;

SET IS_FULL_ORDER_FILLED = FALSE;


END IF;

IF(VAR_TARGET_RECORD_COUNT >= 1) THEN

SET FINAL_BUY_PRICE =  VAR_BUY_PRICE;

END IF;

END IF;


IF( FINAL_BUY_PRICE IS NOT NULL AND FINAL_BUY_PRICE > 0) THEN

SET FINAL_BUY_PRICE = round_price_value(FINAL_BUY_PRICE);

replace INTO option_position
(SELECT order_id,
    symbol,
    option_type,
    option_strike_price,
    FINAL_BUY_PRICE,
    no_of_lots,
    quantity,
    exchange_order_id,quantity,0, FINAL_BUY_PRICE*quantity,0,0,
    time_in,time_in FROM option_buy_order
where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE );

update option_buy_order set isExecuted = 1
where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE;

/* ALSO SET NEW LOT SIZE AND QUANTITY FROM FILLED QUANTITY */

CALL PUT_NEW_OPTION_SELL_ORDER_EVENT(VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,VAR_NO_OF_LOTS,
VAR_QUANTITY,FINAL_BUY_PRICE,time_in);


END IF;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DUMMY_CHECK_BUY_ORDER_POSITION_FOR_OFFER_PRICE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DUMMY_CHECK_BUY_ORDER_POSITION_FOR_OFFER_PRICE`(
VAR_SYMBOL VARCHAR(20),
VAR_OPTION_TYPE varchar(2),
VAR_OPTION_STRIKE_PRICE FLOAT,
VAR_NO_OF_LOTS INT,
VAR_QUANTITY INT,
VAR_BUY_PRICE FLOAT,
time_in datetime,
INTERVAL_SECONDS_IN INT,
OUT FINAL_MIN_LAST_PRICE_OUT FLOAT

)
proc_dcbopfop : BEGIN


DECLARE MIN_OFFER1_PRICE FLOAT;

DECLARE MIN_OFFER1_PRICE_ID INT;

DECLARE MIN_OFFER1_PRICE_QUANTITY INT(11);

DECLARE MIN_OFFER2_PRICE FLOAT(6,2);

-- DECLARE MIN_OFFER2_PRICE_ID INT;

DECLARE MIN_OFFER2_PRICE_QUANTITY INT;



SELECT min(offer_price_2) FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time < time_in and curr_time > DATE_SUB(time_in, INTERVAL INTERVAL_SECONDS_IN SECOND)
INTO MIN_OFFER2_PRICE;

SET MIN_OFFER2_PRICE = round_price_value(MIN_OFFER2_PRICE);

IF(MIN_OFFER2_PRICE <= VAR_BUY_PRICE) THEN

SET FINAL_MIN_LAST_PRICE_OUT = VAR_BUY_PRICE;

LEAVE proc_dcbopfop;

END IF;

SELECT min(offer_price_1) FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time < time_in and curr_time > DATE_SUB(time_in, INTERVAL INTERVAL_SECONDS_IN SECOND)
INTO MIN_OFFER1_PRICE;

SET MIN_OFFER1_PRICE = round_price_value(MIN_OFFER1_PRICE);

IF(MIN_OFFER1_PRICE <= VAR_BUY_PRICE) THEN

SELECT max(offer_quantity_1) FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time < time_in
and curr_time > DATE_SUB(time_in, INTERVAL INTERVAL_SECONDS_IN SECOND)
and round_price_value(offer_price_1) = round_price_value(MIN_OFFER1_PRICE)
INTO MIN_OFFER1_PRICE_QUANTITY;

IF(MIN_OFFER1_PRICE_QUANTITY >= VAR_QUANTITY) THEN

SET FINAL_MIN_LAST_PRICE_OUT = VAR_BUY_PRICE;

END IF;

END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DUMMY_CHECK_POSITIONS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DUMMY_CHECK_POSITIONS`(
CURRENT_TIME_IN DATETIME,
INTERVAL_SECONDS_IN INT)
BEGIN

DECLARE TEXT_NEW_BUY_ORDER_TIME VARCHAR(100) DEFAULT '2018-01-21 09:30:00';

SELECT  text_param_value FROM trading_parameters WHERE param_id = 'NEW_BUY_ORDER_TIME'
INTO TEXT_NEW_BUY_ORDER_TIME;

if(time(CURRENT_TIME_IN) > time(TEXT_NEW_BUY_ORDER_TIME)) then


CALL DUMMY_CHECK_BUY_ORDER_CYCLE_POSITIONS(CURRENT_TIME_IN,INTERVAL_SECONDS_IN);

CALL DUMMY_CHECK_SELL_ORDER_CYCLE_POSITIONS(CURRENT_TIME_IN,INTERVAL_SECONDS_IN);

end if;



/*
INSERT INTO option_buy_order
VALUES
(NULL,SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,BUY_PRICE_IN,NO_OF_LOTS_IN,QUANTITY_IN,0,
0,0,QUANTITY_IN);
*/


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DUMMY_CHECK_SELL_ORDER_CYCLE_POSITIONS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DUMMY_CHECK_SELL_ORDER_CYCLE_POSITIONS`(
time_in datetime,
INTERVAL_SECONDS_IN INT)
BEGIN


DECLARE VAR_OPTION_TYPE varchar(2);
DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;
DECLARE VAR_NO_OF_LOTS INT;
DECLARE VAR_QUANTITY INT;

DECLARE VAR_SELL_PRICE FLOAT;


DECLARE cursor_OPTION_SELL_ORDERS CURSOR FOR
SELECT symbol,option_type,option_strike_price,no_of_lots,quantity,sell_price
FROM engine_live.option_sell_order
where isExecuted = 0;

  OPEN cursor_OPTION_SELL_ORDERS;
  BEGIN
    DECLARE VAR_SYMBOL varchar(20);

    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE cursor_OPTION_SELL_ORDERS; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE cursor_OPTION_SELL_ORDERS; RESIGNAL; END;
    LOOP
      FETCH cursor_OPTION_SELL_ORDERS INTO VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
                      VAR_NO_OF_LOTS,VAR_QUANTITY,VAR_SELL_PRICE;




      call DUMMY_CHECK_SELL_ORDER_POSITION(VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
                                           VAR_NO_OF_LOTS,VAR_QUANTITY,
                                           round_price_value(VAR_SELL_PRICE)
                                           ,time_in,INTERVAL_SECONDS_IN);

    END LOOP;
  END;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DUMMY_CHECK_SELL_ORDER_POSITION` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DUMMY_CHECK_SELL_ORDER_POSITION`(
VAR_SYMBOL VARCHAR(20),
VAR_OPTION_TYPE varchar(2),
VAR_OPTION_STRIKE_PRICE FLOAT,
VAR_NO_OF_LOTS INT,
VAR_QUANTITY INT,
VAR_SELL_PRICE FLOAT,
time_in datetime,
INTERVAL_SECONDS_IN INT
)
dcsop_proc: BEGIN


DECLARE VAR_TARGET_RECORD_COUNT INT;

DECLARE IS_FULL_ORDER_FILLED BOOLEAN DEFAULT TRUE;

DECLARE TARGET_SELL_PRICE FLOAT DEFAULT NULL;

DECLARE VAR_BUY_TIME DATETIME DEFAULT NULL;

DECLARE INTERVAL_START_PRICE FLOAT DEFAULT NULL ;



select buy_time from option_position
where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
into VAR_BUY_TIME;

IF( VAR_BUY_TIME = time_in) THEN

LEAVE dcsop_proc;

END IF;


/*

SELECT max(last_price) FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time > DATE_SUB(time_in, INTERVAL (INTERVAL_SECONDS_IN + 10) SECOND)
and curr_time < DATE_SUB(time_in, INTERVAL (INTERVAL_SECONDS_IN - 10) SECOND)
into INTERVAL_START_PRICE;

*/

-- IF(INTERVAL_START_PRICE IS NULL) THEN

SELECT last_price FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time > DATE_SUB(time_in, INTERVAL INTERVAL_SECONDS_IN SECOND)
and curr_time < time_in
order by curr_time asc LIMIT 1
into INTERVAL_START_PRICE;

-- END IF;

IF( INTERVAL_START_PRICE IS NOT NULL AND INTERVAL_START_PRICE >=   VAR_SELL_PRICE ) THEN

SET TARGET_SELL_PRICE = VAR_SELL_PRICE;

ELSE

CALL DUMMY_CHECK_SELL_ORDER_POSITION_FOR_BID_PRICE(VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
VAR_NO_OF_LOTS,VAR_QUANTITY,VAR_SELL_PRICE,time_in,INTERVAL_SECONDS_IN,TARGET_SELL_PRICE);

END IF;

IF(TARGET_SELL_PRICE IS NULL) THEN

/*
IF(VAR_SELL_PRICE IS NULL OR VAR_SELL_PRICE = 0) THEN -- code for market orders

SELECT last_price FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time < time_in and curr_time > DATE_SUB(time_in, INTERVAL 300 SECOND)
order by curr_time desc
limit 1
INTO TARGET_SELL_PRICE;

END IF;
*/
SELECT count(*) FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time < time_in and curr_time > DATE_SUB(time_in, INTERVAL INTERVAL_SECONDS_IN SECOND)
and last_price > VAR_SELL_PRICE
INTO VAR_TARGET_RECORD_COUNT;

IF(VAR_TARGET_RECORD_COUNT = 0) THEN

SELECT count(*) FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time < time_in and curr_time > DATE_SUB(time_in, INTERVAL INTERVAL_SECONDS_IN SECOND)
and last_price = VAR_SELL_PRICE
INTO VAR_TARGET_RECORD_COUNT;

SET IS_FULL_ORDER_FILLED = FALSE;


END IF;


IF(VAR_TARGET_RECORD_COUNT >= 1) THEN

SET TARGET_SELL_PRICE = VAR_SELL_PRICE;


END IF;

END IF;



IF(TARGET_SELL_PRICE IS NOT NULL AND TARGET_SELL_PRICE !=0) THEN

update option_position
set sell_price = TARGET_SELL_PRICE,
total_sell_price = filled_quantity *  TARGET_SELL_PRICE,
sell_time = time_in
where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE;

update option_sell_order set isExecuted = 1
where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE;


END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `DUMMY_CHECK_SELL_ORDER_POSITION_FOR_BID_PRICE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `DUMMY_CHECK_SELL_ORDER_POSITION_FOR_BID_PRICE`(
VAR_SYMBOL VARCHAR(20),
VAR_OPTION_TYPE varchar(2),
VAR_OPTION_STRIKE_PRICE FLOAT,
VAR_NO_OF_LOTS INT,
VAR_QUANTITY INT,
VAR_SELL_PRICE FLOAT,
time_in datetime,
INTERVAL_SECONDS_IN INT,
OUT FINAL_MAX_LAST_PRICE_OUT FLOAT

)
proc_dcsopfbp : BEGIN


DECLARE MAX_BID1_PRICE FLOAT;

DECLARE MAX_BID1_PRICE_ID INT;

DECLARE MAX_BID1_PRICE_QUANTITY INT(11);

DECLARE MAX_BID2_PRICE FLOAT(6,2);

-- DECLARE MAX_BID2_PRICE_ID INT;

DECLARE MAX_BID2_PRICE_QUANTITY INT;



SELECT max(bid_price_2) FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time < time_in and curr_time > DATE_SUB(time_in, INTERVAL INTERVAL_SECONDS_IN SECOND)
INTO MAX_BID2_PRICE;

SET MAX_BID2_PRICE = round_price_value(MAX_BID2_PRICE);

IF(MAX_BID2_PRICE >= VAR_SELL_PRICE) THEN

SET FINAL_MAX_LAST_PRICE_OUT = VAR_SELL_PRICE;

LEAVE proc_dcsopfbp;

END IF;

SELECT max(bid_price_1) FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time < time_in and curr_time > DATE_SUB(time_in, INTERVAL INTERVAL_SECONDS_IN SECOND)
INTO MAX_BID1_PRICE;

SET MAX_BID1_PRICE = round_price_value(MAX_BID1_PRICE);

IF(MAX_BID1_PRICE >= VAR_SELL_PRICE) THEN

SELECT max(bid_quantity_1) FROM live_option_price_data where symbol = VAR_SYMBOL
and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
and curr_time < time_in
and curr_time > DATE_SUB(time_in, INTERVAL INTERVAL_SECONDS_IN SECOND)
and round_price_value(bid_price_1) = round_price_value(MAX_BID1_PRICE)
INTO MAX_BID1_PRICE_QUANTITY;

IF(MAX_BID1_PRICE_QUANTITY >= VAR_QUANTITY) THEN

SET FINAL_MAX_LAST_PRICE_OUT = VAR_SELL_PRICE;

END IF;

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

 /*
      UPDATE    option_buy_order SET
      buy_price = VAR_BUY_PRICE, quantity = VAR_QUANTITY
      where order_id = VAR_ORDER_ID;
 */
      UPDATE    option_buy_order_event SET
      is_event_handled = 1 where order_id = VAR_ORDER_ID;

       END IF;


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
/*!50003 DROP PROCEDURE IF EXISTS `FAST_STOP_LOSS_TRIGGER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FAST_STOP_LOSS_TRIGGER`(
SYMBOL_IN VARCHAR(45),
OPTION_TYPE_IN varchar(2),
OPTION_STRIKE_PRICE_IN FLOAT,
BUY_PRICE_IN FLOAT,
time_in datetime
)
BEGIN


DECLARE IS_FULL_ORDER_FILLED BOOLEAN DEFAULT TRUE;

DECLARE VAR_LAST_PRICE FLOAT;

DECLARE VAR_NO_OF_LOTS INT DEFAULT 0;

DECLARE VAR_QUANTITY INT DEFAULT 0;

DECLARE VAR_LAST_ORDER_PRICE FLOAT;

DECLARE TARGET_STRENGTH FLOAT DEFAULT 0;



DECLARE TARGET_SELL_PRICE FLOAT DEFAULT NULL;



IF(OPTION_TYPE_IN = 'CE') THEN

select max_strength from negative_price_trend_data_for_sell_order
where symbol = SYMBOL_IN
and id_enclosed_strength IS NULL
and is_strength_applied = 0
order by curr_time desc
limit 1
into TARGET_STRENGTH;


update negative_price_trend_data_for_sell_order
set is_strength_applied = 1
where symbol = SYMBOL_IN
and curr_time = time_in
and max_strength = TARGET_STRENGTH;


END IF;

IF(OPTION_TYPE_IN = 'PE') THEN

select max_strength from positive_price_trend_data_for_sell_order
where symbol = SYMBOL_IN
and id_enclosed_strength IS NULL
and is_strength_applied = 0
order by curr_time desc
limit 1
into TARGET_STRENGTH;

update positive_price_trend_data_for_sell_order
set is_strength_applied = 1
where symbol = SYMBOL_IN
and curr_time = time_in
and max_strength = TARGET_STRENGTH;


END IF;


SELECT last_price FROM live_option_price_data where symbol = SYMBOL_IN
and option_type = OPTION_TYPE_IN and option_strike_price = OPTION_STRIKE_PRICE_IN
and curr_time < time_in and curr_time > DATE_SUB(time_in, INTERVAL 300 SECOND)
order by curr_time desc
limit 1
INTO VAR_LAST_PRICE;


IF(TARGET_STRENGTH > 2.5) THEN

SET  TARGET_SELL_PRICE = 0;

ELSE  IF(TARGET_STRENGTH > 1.25) THEN

  IF(VAR_LAST_PRICE >= BUY_PRICE_IN) THEN

    SET  TARGET_SELL_PRICE = VAR_LAST_PRICE;

  ELSE

    SET  TARGET_SELL_PRICE = BUY_PRICE_IN * 0.95;

  END IF;


ELSE  IF(TARGET_STRENGTH <= 1.25 AND TARGET_STRENGTH > 0) THEN

  IF(VAR_LAST_PRICE >= BUY_PRICE_IN) THEN

    SET  TARGET_SELL_PRICE = VAR_LAST_PRICE * 1.05;

  ELSE

    SET  TARGET_SELL_PRICE = BUY_PRICE_IN;

  END IF;

END IF;

END IF;

END IF;



-- IF(TARGET_SELL_PRICE > 0) THEN

SELECT sell_price,no_of_lots,quantity FROM option_sell_order
where symbol = SYMBOL_IN
and option_type = OPTION_TYPE_IN
and option_strike_price = OPTION_STRIKE_PRICE_IN
INTO VAR_LAST_ORDER_PRICE,VAR_NO_OF_LOTS ,
VAR_QUANTITY;

SET VAR_LAST_ORDER_PRICE = round_price_value( VAR_LAST_ORDER_PRICE);

SET TARGET_SELL_PRICE = round_price_value( TARGET_SELL_PRICE);

IF(TARGET_SELL_PRICE != VAR_LAST_ORDER_PRICE) THEN

CALL PUT_MODIFY_OPTION_SELL_ORDER_EVENT(
SYMBOL_IN,
OPTION_TYPE_IN,
OPTION_STRIKE_PRICE_IN,
VAR_NO_OF_LOTS ,
VAR_QUANTITY ,
TARGET_SELL_PRICE ,
NULL,
time_in,
1
);

END IF;

-- END IF;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FAST_STOP_LOSS_TRIGGER_CYCLE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FAST_STOP_LOSS_TRIGGER_CYCLE`(
CURRENT_TIME_IN DATETIME,
INTERVAL_SECONDS_IN INT)
BEGIN



DECLARE VAR_OPTION_TYPE varchar(2);
DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;

DECLARE VAR_SL_PRICE FLOAT;

DECLARE VAR_BUY_PRICE FLOAT;



DECLARE cursor_OPTION_SELL_ORDERS CURSOR FOR
SELECT symbol,option_type,option_strike_price,buy_price
FROM engine_live.option_position
where sell_price is null or sell_price = 0;

  OPEN cursor_OPTION_SELL_ORDERS;
  BEGIN
    DECLARE VAR_SYMBOL varchar(20);

    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE cursor_OPTION_SELL_ORDERS; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE cursor_OPTION_SELL_ORDERS; RESIGNAL; END;
    LOOP
      FETCH cursor_OPTION_SELL_ORDERS INTO VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,VAR_BUY_PRICE;




      call FAST_STOP_LOSS_TRIGGER(VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
                                                                   VAR_BUY_PRICE,CURRENT_TIME_IN);

    END LOOP;
  END;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FINALIZE_DB_DAY_END` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FINALIZE_DB_DAY_END`(
DATE_REFERENCE_IN DATE)
BEGIN


DECLARE MAX_ID INT;


replace into basis_for_calls_archive(
SELECT date(START_TIME_IN),a.* FROM basis_for_calls a);


replace into selected_instrument_archive(
SELECT date(START_TIME_IN),a.* FROM selected_instrument a);

replace into live_data_archive( SELECT * FROM live_data);

replace into live_option_price_data_archive( SELECT * FROM live_option_price_data);

replace into live_process_status_record_archive( SELECT * FROM live_process_status_record);


delete from  live_data_archive
where date(curr_time) < date_sub(DATE_REFERENCE_IN,interval 6 day);

delete from  live_option_price_data_archive
where date(curr_time) < date_sub(DATE_REFERENCE_IN,interval 6 day);

delete from  live_process_status_record_archive
where date(curr_time) < date_sub(DATE_REFERENCE_IN,interval 6 day);

SELECT MAX(id) from live_data into MAX_ID;

delete from live_data;


IF(MAX_ID > 9999999999) THEN

ALTER TABLE live_data AUTO_INCREMENT =1;

END IF;

SELECT MAX(id) from live_option_price_data into MAX_ID;

delete from live_option_price_data;

IF(MAX_ID > 9999999999) THEN

ALTER TABLE live_option_price_data AUTO_INCREMENT =1;

END IF;


SELECT MAX(id) from option_buy_order into MAX_ID;

delete from option_buy_order;

IF(MAX_ID > 9999999999) THEN

ALTER TABLE option_buy_order AUTO_INCREMENT =1;

END IF;


SELECT MAX(id) from option_sell_order into MAX_ID;

delete from option_sell_order;

IF(MAX_ID > 9999999999) THEN

ALTER TABLE option_sell_order AUTO_INCREMENT =1;

END IF;


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

       SET LAST_ENTRY_PRICE = LAST_ENTRY_PRICE  + (LAST_ENTRY_PRICE * (0.0005 - (0.001 * RAND())));

       -- SET LAST_ENTRY_PRICE = LAST_ENTRY_PRICE  + (LAST_ENTRY_PRICE * (0.0015 - (0.0015 * RAND())));

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
/*!50003 DROP PROCEDURE IF EXISTS `INIT_DB_DAY_START` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `INIT_DB_DAY_START`(
START_TIME_IN DATETIME
)
BEGIN




/*
replace into basis_for_calls_archive(
SELECT date(START_TIME_IN),a.* FROM basis_for_calls a);

replace into selected_instrument_archive(
SELECT date(START_TIME_IN),a.* FROM selected_instrument a);
*/


DELETE FROM live_data where date(curr_time) < date(START_TIME_IN);

DELETE FROM live_option_price_data where date(curr_time) < date(START_TIME_IN);

IF ( time(START_TIME_IN) <= time('2018-01-21 09:15:00')) THEN


 DELETE FROM  option_buy_order;

 DELETE FROM  option_sell_order;

 DELETE FROM option_stop_loss_order_price;



END IF;


DELETE FROM  option_buy_order_event where date(curr_time) < date(START_TIME_IN);
DELETE FROM  option_buy_order_log where date(update_time) < date(START_TIME_IN);
DELETE FROM  positive_price_trend_data where date(curr_time) < date(START_TIME_IN);
DELETE FROM  positive_price_trend_data_log where date(curr_time) < date(START_TIME_IN);
DELETE FROM  negative_price_trend_data where date(curr_time) < date(START_TIME_IN);
DELETE FROM  negative_price_trend_data_log where date(curr_time) < date(START_TIME_IN);
DELETE FROM  option_sell_order_event where date(curr_time) < date(START_TIME_IN);
DELETE FROM  option_sell_order_log where date(update_time) < date(START_TIME_IN);
DELETE FROM option_position where date(buy_time) < date(START_TIME_IN);
DELETE FROM negative_price_trend_data_for_sell_order where date(curr_time) < date(START_TIME_IN);
DELETE FROM positive_price_trend_data_for_sell_order where date(curr_time) < date(START_TIME_IN);

DELETE FROM live_process_status_record where date(curr_time) < date(START_TIME_IN);




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `INIT_DB_WITHOUT_LIVE_DATA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `INIT_DB_WITHOUT_LIVE_DATA`(
START_TIME_IN DATETIME,
IS_DUMMY_OPTION_DATA BOOLEAN)
BEGIN

-- DELETE FROM `basis_for_calls`;
-- DELETE FROM  `live_data`;

DELETE FROM log_messages;

replace into basis_for_calls_archive(
SELECT date(START_TIME_IN),a.* FROM engine_live.basis_for_calls a);


replace into selected_instrument_archive(
SELECT date(START_TIME_IN),a.* FROM engine_live.selected_instrument a);



replace into live_data_archive( SELECT * FROM engine_live.live_data);

replace into live_option_price_data_archive( SELECT * FROM engine_live.live_option_price_data);



delete FROM engine_live.live_data where date(curr_time) != date(START_TIME_IN);
replace into live_data( SELECT * FROM engine_live.live_data_archive
 where date(curr_time) = date(START_TIME_IN) );
delete from live_data
where symbol not in
(select distinct symbol from basis_for_calls);

delete FROM engine_live.live_option_price_data where date(curr_time) != date(START_TIME_IN);
replace into live_option_price_data( SELECT * FROM engine_live.live_option_price_data_archive
 where date(curr_time) = date(START_TIME_IN) );
delete from live_option_price_data
where symbol not in
(select distinct symbol from selected_instrument);



IF(IS_DUMMY_OPTION_DATA) THEN

delete FROM engine_live.live_option_price_data
where curr_time > START_TIME_IN;

end if;


IF(time(START_TIME_IN) <= time('2018-01-19 09:15:00')) THEN

DELETE FROM  `option_buy_order`;
DELETE FROM  `option_buy_order_event`;
DELETE FROM  `option_buy_order_log`;
DELETE FROM  `positive_price_trend_data`;
DELETE FROM  `positive_price_trend_data_log`;
DELETE FROM  `negative_price_trend_data`;
DELETE FROM  `negative_price_trend_data_log`;
DELETE FROM  `option_sell_order`;
DELETE FROM  `option_sell_order_event`;
DELETE FROM  `option_sell_order_log`;
DELETE FROM `option_position`;
DELETE FROM option_stop_loss_order_price;
DELETE FROM `negative_price_trend_data_for_sell_order`;
DELETE FROM `positive_price_trend_data_for_sell_order`;


END IF;
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

SET PRICE_VALUE  = PREV_CLOSE + (PREV_CLOSE * (0.035 - (0.07 * RAND())));

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
/*!50003 DROP PROCEDURE IF EXISTS `LIVE_DATA_EXECUTION_MASTER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `LIVE_DATA_EXECUTION_MASTER`()
proc_ldem : BEGIN

DECLARE DATE_REFERENCE DATE DEFAULT CURDATE();

DECLARE DAY_START_REFERENCE DATETIME;

DECLARE DAY_END_REFERENCE DATETIME;

DECLARE VAR_ORDER_CYCLE_FREQUENCY FLOAT;

DECLARE VAR_STOP_LOSS_TRIGER_CYCLE_FREQUENCY FLOAT;

declare l_loop int default 0;
                         
declare NO_OF_LOOPS_BEFORE_CURRENT_TIME int default 0; -- consider loop time to be 2 mins

DECLARE INITIAL_FILL_TIME INT;

DECLARE VAR_CURRENT_REFERENCE_TIME DATETIME;

DECLARE VAR_NOW_TIME DATETIME;

DECLARE VAR_IS_DAY_INIT_DONE BOOLEAN DEFAULT FALSE;

DECLARE VAR_IS_MARKET_OPENING_DONE BOOLEAN DEFAULT FALSE;


DECLARE VAR_LOOP_START_TIME DATETIME;

DECLARE VAR_LOOP_END_TIME DATETIME;

DECLARE VAR_SLEEP_TIME INT DEFAULT 0;

DECLARE VAR_TARGET_NEXT_START_TIME DATETIME;

DECLARE TEXT_NEW_BUY_ORDER_TIME VARCHAR(100) DEFAULT '2018-01-21 09:30:00';


DECLARE IS_DUMMY_EXECUTION BOOLEAN DEFAULT FALSE;


DECLARE IS_PROCESS_ALREADY_RUNNING BOOLEAN DEFAULT NULL;







DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CALL RECORD_LOOP_OUTPUT(VAR_CURRENT_REFERENCE_TIME,true);
RESIGNAL; END;


INSERT INTO engine_live.log_messages VALUES(null,NOW(),
                          concat('LIVE_DATA_EXECUTION_MASTER - STARTING - ', NOW())
                          , 'START');


-- HARDCODING BELOW ------ TO BE REMOVED ------ START

SET DATE_REFERENCE = '2018-02-01';

SET IS_DUMMY_EXECUTION = TRUE;

-- HARDCODING BELOW ------ TO BE REMOVED ------ END




SET DAY_START_REFERENCE = CONCAT(DATE(DATE_REFERENCE),' 09:15:00');

SET DAY_END_REFERENCE = CONCAT(DATE(DATE_REFERENCE),' 15:30:00');



-- HARDCODING BELOW ------ TO BE REMOVED ------ START

-- SET VAR_NOW_TIME = CONCAT(DATE(DATE_REFERENCE),concat(' ',time(now())));
SET VAR_NOW_TIME = CONCAT(DATE(DATE_REFERENCE),' 09:25:00');

-- HARDCODING BELOW ------ TO BE REMOVED ------ START



-- REAL VALUE TO BE SET  ------- START

-- SET VAR_NOW_TIME = NOW();

-- REAL VALUE TO BE SET  ------- END


SELECT process_status FROM live_procedure_status
WHERE curr_date = date(VAR_NOW_TIME)
INTO IS_PROCESS_ALREADY_RUNNING;


IF(IS_PROCESS_ALREADY_RUNNING IS NULL) THEN

REPLACE INTO live_procedure_status
VALUES( date(VAR_NOW_TIME),true);

END IF;


IF(IS_PROCESS_ALREADY_RUNNING) THEN

REPLACE INTO log_messages VALUES(null,NOW(),
                          concat('LIVE_DATA_EXECUTION_MASTER - ENDING 1 - ', now())
                          , 'END - DUPLICATE PROCESS');

/*
update live_procedure_status set process_status = false
WHERE curr_date = date(VAR_NOW_TIME);
*/


LEAVE proc_ldem;

END IF;

IF(VAR_NOW_TIME > DAY_END_REFERENCE) THEN

REPLACE INTO log_messages VALUES(null,NOW(),
                          concat('LIVE_DATA_EXECUTION_MASTER - ENDING 2 - ', now())
                          , 'END - INVALID TIME');


update live_procedure_status set process_status = false
WHERE curr_date = date(VAR_NOW_TIME);

LEAVE proc_ldem;

END IF;


update live_procedure_status set process_status = true
WHERE curr_date = date(VAR_NOW_TIME);




SELECT  text_param_value FROM trading_parameters WHERE param_id = 'NEW_BUY_ORDER_TIME'
INTO TEXT_NEW_BUY_ORDER_TIME;



SELECT  param_value FROM trading_parameters WHERE param_id = 'ORDER_CYCLE_FREQUENCY'
INTO VAR_ORDER_CYCLE_FREQUENCY;

SELECT  param_value FROM trading_parameters WHERE param_id = 'STOP_LOSS_TRIGER_CYCLE_FREQUENCY'
INTO VAR_STOP_LOSS_TRIGER_CYCLE_FREQUENCY;






call INIT_DB_DAY_START(VAR_NOW_TIME);


WHILE (!VAR_IS_DAY_INIT_DONE) DO


select is_day_init_done from market_day_events_status where
curr_date = DATE_REFERENCE into VAR_IS_DAY_INIT_DONE;

IF(VAR_IS_DAY_INIT_DONE IS NULL OR !VAR_IS_DAY_INIT_DONE) THEN


  REPLACE INTO `engine_live`.`live_data`

  (select null,CONCAT(DATE(DATE_REFERENCE),' 09:14:59'),a.symbol,0,a.prev_close
  from engine_live.basis_for_calls a);

  SET VAR_IS_DAY_INIT_DONE = 1;

  REPLACE INTO market_day_events_status VALUES(DATE_REFERENCE,1,0);

END IF;


END WHILE;



WHILE ( time(VAR_NOW_TIME) < time('2018-01-21 09:15:00'))
DO

DO SLEEP(5);

SET VAR_NOW_TIME = NOW();

END WHILE;



SELECT TIMESTAMPDIFF(SECOND,VAR_NOW_TIME,DAY_END_REFERENCE) INTO INITIAL_FILL_TIME;

SET NO_OF_LOOPS_BEFORE_CURRENT_TIME  = (INITIAL_FILL_TIME/ 60) + 5;


loop0: loop

       -- SET VAR_LOOP_START_TIME = NOW();

       SET VAR_LOOP_START_TIME = CONCAT(DATE(DATE_REFERENCE),concat(' ',time(now())));

       set l_loop := l_loop + 1;


        -- SET VAR_CURRENT_REFERENCE_TIME = NOW();



        IF(VAR_IS_MARKET_OPENING_DONE IS NULL OR !VAR_IS_MARKET_OPENING_DONE) THEN

          SET VAR_CURRENT_REFERENCE_TIME = CONCAT(DATE(DATE_REFERENCE),concat(' ',time('2018-01-21 09:15:00')));

       ELSE

       SET VAR_CURRENT_REFERENCE_TIME = CONCAT(DATE(DATE_REFERENCE),concat(' ',time(now())));

       END IF;



       IF l_loop > NO_OF_LOOPS_BEFORE_CURRENT_TIME THEN
          leave loop0;
       end if;

       IF(time(VAR_CURRENT_REFERENCE_TIME) >= time('2018-01-21 14:45:00')
       AND time(VAR_CURRENT_REFERENCE_TIME) <= time('2018-01-21 14:50:00')) THEN

       CALL PUT_CANCEL_OPTION_BUY_ORDER_EVENT(VAR_CURRENT_REFERENCE_TIME);

       end if;


       CALL RETRY_ERROR_ORDERS(VAR_CURRENT_REFERENCE_TIME);


       IF(time(VAR_CURRENT_REFERENCE_TIME) >= time('2018-01-21 09:15:00')
       AND time(VAR_CURRENT_REFERENCE_TIME) < time('2018-01-21 09:30:00')) THEN

       IF(VAR_IS_MARKET_OPENING_DONE IS NULL OR !VAR_IS_MARKET_OPENING_DONE) THEN

         select is_market_opening_done from market_day_events_status where
         curr_date = DATE_REFERENCE into VAR_IS_MARKET_OPENING_DONE;


         IF(VAR_IS_MARKET_OPENING_DONE IS NULL OR !VAR_IS_MARKET_OPENING_DONE) THEN

          CALL MARKET_OPENING_MASTER(VAR_CURRENT_REFERENCE_TIME);

          SET VAR_IS_MARKET_OPENING_DONE = 1;

          update market_day_events_status set is_market_opening_done = 1
          where curr_date =  DATE_REFERENCE;

         END IF;

       END IF;

           -- CALL DUMMY_HANDLE_BUY_ORDER_EVENTS();

       END IF;




       IF((l_loop % VAR_ORDER_CYCLE_FREQUENCY) = 0 ) then


       CALL COMPLETE_ORDER_CYCLE(VAR_CURRENT_REFERENCE_TIME,60,IS_DUMMY_EXECUTION);

       -- ITERATE loop0;


       ELSE IF((l_loop % VAR_STOP_LOSS_TRIGER_CYCLE_FREQUENCY) = 0 ) then

           call SLOW_STOP_LOSS_TRIGGER_CYCLE(VAR_CURRENT_REFERENCE_TIME,60,IS_DUMMY_EXECUTION);


       END IF;


       END IF;

       CALL RECORD_LOOP_OUTPUT(VAR_CURRENT_REFERENCE_TIME,0);



       -- SET VAR_LOOP_END_TIME = NOW();

       SET VAR_LOOP_END_TIME = CONCAT(DATE(DATE_REFERENCE),concat(' ',time(now())));




       SET VAR_TARGET_NEXT_START_TIME = DATE_ADD( VAR_LOOP_START_TIME , INTERVAL 60 SECOND);

       SELECT TIMESTAMPDIFF(SECOND,VAR_LOOP_END_TIME,VAR_TARGET_NEXT_START_TIME) INTO VAR_SLEEP_TIME;


       IF(VAR_SLEEP_TIME > 0) THEN

       DO SLEEP(VAR_SLEEP_TIME);

       END IF;


END loop loop0;


CALL FINALIZE_DB_DAY_END(DATE_REFERENCE);


update live_procedure_status set process_status = false
WHERE curr_date = date(VAR_NOW_TIME);

REPLACE INTO log_messages VALUES(null,NOW(),
                          concat('LIVE_DATA_EXECUTION_MASTER - ENDING - ', now())
                          , 'END');


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `MARKET_NEW_ORDER_MASTER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `MARKET_NEW_ORDER_MASTER`(
TIME_IN DATETIME
)
BEGIN

declare NO_OF_ENTRIES int default 0;

declare l_loop int default 0;



DECLARE symbol_CN CURSOR FOR
select symbol,option_type,option_strike_price from option_buy_order;

  OPEN symbol_CN;
  BEGIN
    DECLARE VAR_SYMBOL varchar(20);
    DECLARE VAR_OPTION_TYPE varchar(2);
    DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;

    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE symbol_CN; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE symbol_CN; RESIGNAL; END;
    LOOP
      FETCH symbol_CN INTO VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE;
      -- SET counter = counter + 1;

      call    PUT_NEW_OPTION_BUY_ORDER_EVENT(VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE
                                                                                    ,TIME_IN);

    END LOOP;
  END;





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
DAY_START_REFERENCE DATETIME
)
BEGIN


DECLARE VAR_OPTION_TYPE varchar(2);
DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;

DECLARE VAR_OPTION_CLOSE_PRICE FLOAT;

DECLARE VAR_CONFIDENCE_LEVEL FLOAT DEFAULT 0;

DECLARE VAR_EXPIRY_FACTOR_QUOTIENT FLOAT DEFAULT 0;

DECLARE VAR_EXPIRY_FACTOR FLOAT DEFAULT 0;


DECLARE VAR_LOT_SIZE INT DEFAULT 0;

DECLARE VAR_NO_OF_LOTS INT DEFAULT 0;

DECLARE VAR_QUANTITY INT DEFAULT 0;

DECLARE CALCULATED_BUY_PRICE FLOAT DEFAULT 0;

DECLARE VAR_MARGIN_FOR_STOCK FLOAT;



DECLARE cursor_SELECTED_INSTRUMENTS CURSOR FOR
SELECT option_type,option_strike_price,option_close_price,expiry_factor_quotient,
lot_size,margin_allowance FROM selected_instrument
WHERE symbol = SYMBOL_IN;

  OPEN cursor_SELECTED_INSTRUMENTS;
  BEGIN

    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE cursor_SELECTED_INSTRUMENTS; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE cursor_SELECTED_INSTRUMENTS; RESIGNAL; END;
    LOOP
      FETCH cursor_SELECTED_INSTRUMENTS INTO VAR_OPTION_TYPE,
                        VAR_OPTION_STRIKE_PRICE,VAR_OPTION_CLOSE_PRICE,
                        VAR_EXPIRY_FACTOR_QUOTIENT,VAR_LOT_SIZE,VAR_MARGIN_FOR_STOCK;
      -- SET counter = counter + 1;

SELECT confidence_level FROM basis_for_calls WHERE symbol = SYMBOL_IN INTO VAR_CONFIDENCE_LEVEL;

SELECT  param_value FROM trading_parameters WHERE param_id = 'EXPIRY_FACTOR'
INTO VAR_EXPIRY_FACTOR;

SET CALCULATED_BUY_PRICE =   calculate_price_from_confidence(VAR_OPTION_CLOSE_PRICE,VAR_CONFIDENCE_LEVEL,
                             VAR_EXPIRY_FACTOR_QUOTIENT,VAR_EXPIRY_FACTOR);


SET CALCULATED_BUY_PRICE = round_price_value(CALCULATED_BUY_PRICE);

CALL CALCULATE_QUANTITY_FROM_MARGIN(VAR_MARGIN_FOR_STOCK,CALCULATED_BUY_PRICE,VAR_LOT_SIZE,VAR_NO_OF_LOTS);


SET VAR_QUANTITY = VAR_LOT_SIZE * VAR_NO_OF_LOTS;



SELECT  param_value FROM trading_parameters WHERE param_id = 'EXPIRY_FACTOR' INTO VAR_EXPIRY_FACTOR;



-- SET DAY_START_REFERENCE = CONCAT(DATE(curdate()),' 09:15:00');


CALL PUT_NEW_CALCULATED_OPTION_BUY_ORDER_EVENT(SYMBOL_IN,
                                          VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
                                          VAR_OPTION_CLOSE_PRICE,VAR_NO_OF_LOTS,
                                          VAR_QUANTITY,CALCULATED_BUY_PRICE,
                                          DAY_START_REFERENCE);


    END LOOP;
  END;





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
DAY_START_REFERENCE DATETIME
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

      call    MARKET_OPENING_COMPONENT(VAR_SYMBOL,DAY_START_REFERENCE);

    END LOOP;
  END;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PUT_CANCEL_OPTION_BUY_ORDER_EVENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PUT_CANCEL_OPTION_BUY_ORDER_EVENT`(
time_in datetime
)
BEGIN


/* WRITE LOGIC FOR ORDER CANCELLATION HERE */


REPLACE INTO option_buy_order_event
(
SELECT order_id,symbol,time_in,option_type,option_strike_price,
buy_price,no_of_lots,quantity,'CANCL',0 FROM option_buy_order WHERE isExecuted = 0
);

delete from option_buy_order_cancelled;

REPLACE INTO option_buy_order_cancelled
(
SELECT *
FROM option_buy_order WHERE isExecuted = 0
);

DELETE FROM option_buy_order
WHERE isExecuted = 0;

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
MODIFIED_PRICE FLOAT,
time_in datetime
)
proc_pmoboe : BEGIN

DECLARE VAR_ORDER_ID INT(11) DEFAULT 0;

DECLARE VAR_LOT_SIZE INT DEFAULT 0;

DECLARE VAR_NO_OF_LOTS INT DEFAULT 0;

DECLARE VAR_QUANTITY INT DEFAULT 0;

DECLARE VAR_MARGIN_FOR_STOCK FLOAT;

DECLARE VAR_INITIAL_ORDER_PRICE FLOAT;


DECLARE VAR_EFFICIENT_ORDER_PRICE FLOAT;

DECLARE TEXT_NEW_BUY_ORDER_TIME VARCHAR(100) DEFAULT '2018-01-21 09:30:00';

SELECT  text_param_value FROM trading_parameters WHERE param_id = 'NEW_BUY_ORDER_TIME'
INTO TEXT_NEW_BUY_ORDER_TIME;

SELECT lot_size,margin_allowance FROM selected_instrument
WHERE symbol = SYMBOL_IN
and option_type = OPTION_TYPE_IN
and option_strike_price = OPTION_STRIKE_PRICE_IN
INTO VAR_LOT_SIZE,VAR_MARGIN_FOR_STOCK;

SET MODIFIED_PRICE = round_price_value(MODIFIED_PRICE);


CALL CALCULATE_QUANTITY_FROM_MARGIN(VAR_MARGIN_FOR_STOCK,MODIFIED_PRICE,VAR_LOT_SIZE,VAR_NO_OF_LOTS);

SET VAR_QUANTITY = VAR_LOT_SIZE * VAR_NO_OF_LOTS;



SELECT order_id,buy_price FROM option_buy_order
where symbol = SYMBOL_IN
and option_type = OPTION_TYPE_IN
and option_strike_price = OPTION_STRIKE_PRICE_IN
INTO VAR_ORDER_ID,VAR_INITIAL_ORDER_PRICE;


-- For Logging Purposes - to log that this price was changed to efficient price
INSERT INTO option_buy_order_log
VALUES
(VAR_ORDER_ID,SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,MODIFIED_PRICE,
VAR_NO_OF_LOTS,VAR_QUANTITY,0,time_in,0,VAR_QUANTITY);


IF(time(time_in) > time(TEXT_NEW_BUY_ORDER_TIME)) THEN


CALL CALCULATE_EFFICIENT_BUY_ORDER_PRICE(SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,
MODIFIED_PRICE,VAR_QUANTITY,time_in,VAR_EFFICIENT_ORDER_PRICE);

IF(VAR_EFFICIENT_ORDER_PRICE IS NULL OR VAR_EFFICIENT_ORDER_PRICE = 0) THEN

REPLACE INTO option_buy_order_event
VALUES
(VAR_ORDER_ID,SYMBOL_IN,time_in,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,MODIFIED_PRICE,
                        VAR_NO_OF_LOTS,VAR_QUANTITY,'ERMOD',0);

IF( MODIFIED_PRICE > VAR_INITIAL_ORDER_PRICE) THEN

LEAVE proc_pmoboe;

ELSE

SET  VAR_EFFICIENT_ORDER_PRICE =  MODIFIED_PRICE;

END IF;

END IF;


END IF;



SET VAR_EFFICIENT_ORDER_PRICE = round_price_value(VAR_EFFICIENT_ORDER_PRICE);




IF(VAR_EFFICIENT_ORDER_PRICE != VAR_INITIAL_ORDER_PRICE ) THEN

CALL CALCULATE_QUANTITY_FROM_MARGIN(VAR_MARGIN_FOR_STOCK,VAR_EFFICIENT_ORDER_PRICE,VAR_LOT_SIZE,VAR_NO_OF_LOTS);

SET VAR_QUANTITY = VAR_LOT_SIZE * VAR_NO_OF_LOTS;


update option_buy_order
set buy_price = VAR_EFFICIENT_ORDER_PRICE,
no_of_lots = VAR_NO_OF_LOTS,
quantity = VAR_QUANTITY
where order_id = VAR_ORDER_ID;


INSERT INTO option_buy_order_log
VALUES
(VAR_ORDER_ID,SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,VAR_EFFICIENT_ORDER_PRICE,
VAR_NO_OF_LOTS,VAR_QUANTITY,0,time_in,0,VAR_QUANTITY);

REPLACE INTO option_buy_order_event
VALUES
(VAR_ORDER_ID,SYMBOL_IN,time_in,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,VAR_EFFICIENT_ORDER_PRICE,
                        VAR_NO_OF_LOTS,VAR_QUANTITY,'MOD',0);

END IF;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PUT_MODIFY_OPTION_SELL_ORDER_EVENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PUT_MODIFY_OPTION_SELL_ORDER_EVENT`(
SYMBOL_IN VARCHAR(45),
OPTION_TYPE_IN varchar(2),
OPTION_STRIKE_PRICE_IN FLOAT,
NO_OF_LOTS_IN INT,
QUANTITY_IN INT,
MODIFIED_PRICE FLOAT,
VAR_PRICE_CHANGE_FACTOR FLOAT,
time_in datetime,
IS_SL_ORDER_TRIGGER BOOLEAN
)
proc_pmosoe : BEGIN

DECLARE VAR_ORDER_ID INT(11) DEFAULT 0;

DECLARE VAR_EFFICIENT_ORDER_PRICE FLOAT;

DECLARE VAR_INITIAL_ORDER_PRICE FLOAT;

DECLARE VAR_BUY_PRICE FLOAT;

DECLARE VAR_CONVENTIONAL_SL_PRICE FLOAT;

DECLARE VAR_FINAL_SL_PRICE FLOAT;





IF(MODIFIED_PRICE IS NULL) THEN
LEAVE proc_pmosoe;
END IF;


set MODIFIED_PRICE = round_price_value(MODIFIED_PRICE);


SELECT order_id,sell_price FROM option_sell_order
where symbol = SYMBOL_IN
and option_type = OPTION_TYPE_IN
and option_strike_price = OPTION_STRIKE_PRICE_IN
INTO VAR_ORDER_ID, VAR_INITIAL_ORDER_PRICE ;

IF(IS_SL_ORDER_TRIGGER = 0) THEN

  IF(VAR_PRICE_CHANGE_FACTOR IS NOT NULL OR VAR_PRICE_CHANGE_FACTOR > 0) THEN

    update option_stop_loss_order_price set sl_price = round_price_value(sl_price * VAR_PRICE_CHANGE_FACTOR)
    where symbol = SYMBOL_IN
    and option_type = OPTION_TYPE_IN
    and option_strike_price = OPTION_STRIKE_PRICE_IN;

  END IF;

END IF;


-- For Logging Purposes - to log that this price was changed to efficient price

INSERT INTO option_sell_order_log
VALUES
(VAR_ORDER_ID,SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,MODIFIED_PRICE,
NO_OF_LOTS_IN,QUANTITY_IN,0,time_in,0,QUANTITY_IN);


CALL CALCULATE_EFFICIENT_SELL_ORDER_PRICE(SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,
MODIFIED_PRICE,QUANTITY_IN,time_in,VAR_EFFICIENT_ORDER_PRICE);

IF(VAR_EFFICIENT_ORDER_PRICE IS NULL OR VAR_EFFICIENT_ORDER_PRICE = 0) THEN


REPLACE INTO option_sell_order_event
VALUES
(VAR_ORDER_ID,SYMBOL_IN,time_in,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,MODIFIED_PRICE,
                        NO_OF_LOTS_IN,QUANTITY_IN,'ERMOD',0);


IF( MODIFIED_PRICE < VAR_INITIAL_ORDER_PRICE) THEN

LEAVE proc_pmosoe;

ELSE

SET  VAR_EFFICIENT_ORDER_PRICE =  MODIFIED_PRICE;

END IF;


END IF;


SET VAR_EFFICIENT_ORDER_PRICE = round_price_value(VAR_EFFICIENT_ORDER_PRICE);



-- UPDATE SL PRICE TO AN EFFICIEMT CALCULATED VALUE AS BELOW -- START
IF(IS_SL_ORDER_TRIGGER = 1) THEN


    SELECT buy_price FROM option_position
    where symbol = SYMBOL_IN
    and option_type = OPTION_TYPE_IN
    and option_strike_price = OPTION_STRIKE_PRICE_IN
    INTO VAR_BUY_PRICE;

    SET VAR_CONVENTIONAL_SL_PRICE = VAR_BUY_PRICE * 0.9;

    SET VAR_FINAL_SL_PRICE = GREATEST(VAR_CONVENTIONAL_SL_PRICE, (VAR_EFFICIENT_ORDER_PRICE * 0.9));

    update option_stop_loss_order_price set sl_price = round_price_value(VAR_FINAL_SL_PRICE)
    where symbol = SYMBOL_IN
    and option_type = OPTION_TYPE_IN
    and option_strike_price = OPTION_STRIKE_PRICE_IN;


END IF;

-- UPDATE SL PRICE TO AN EFFICIEMT CALCULATED VALUE AS BELOW -- END


IF(VAR_EFFICIENT_ORDER_PRICE != VAR_INITIAL_ORDER_PRICE ) THEN


update option_sell_order
set sell_price = VAR_EFFICIENT_ORDER_PRICE,
no_of_lots = NO_OF_LOTS_IN,
quantity = QUANTITY_IN
where order_id = VAR_ORDER_ID;

INSERT INTO option_sell_order_log
VALUES
(VAR_ORDER_ID,SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,VAR_EFFICIENT_ORDER_PRICE,
NO_OF_LOTS_IN,QUANTITY_IN,0,time_in,0,QUANTITY_IN);

REPLACE INTO option_sell_order_event
VALUES
(VAR_ORDER_ID,SYMBOL_IN,time_in,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,VAR_EFFICIENT_ORDER_PRICE,
                        NO_OF_LOTS_IN,QUANTITY_IN,'MOD',0);


END IF;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PUT_NEW_CALCULATED_OPTION_BUY_ORDER_EVENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PUT_NEW_CALCULATED_OPTION_BUY_ORDER_EVENT`(
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
                        NO_OF_LOTS_IN,QUANTITY_IN,'CAL',0);





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
time_in datetime
)
proc_pnoboe : BEGIN

DECLARE VAR_ORDER_ID INT(11) DEFAULT 0;

DECLARE VAR_LOT_SIZE INT DEFAULT 0;

DECLARE VAR_NO_OF_LOTS INT DEFAULT 0;

DECLARE VAR_QUANTITY INT DEFAULT 0;

DECLARE VAR_MARGIN_FOR_STOCK FLOAT;

DECLARE VAR_ORDER_PRICE FLOAT;

DECLARE VAR_EFFICIENT_ORDER_PRICE FLOAT;




SELECT order_id,buy_price,no_of_lots,quantity FROM option_buy_order
where symbol = SYMBOL_IN
and option_type = OPTION_TYPE_IN
and option_strike_price = OPTION_STRIKE_PRICE_IN
INTO VAR_ORDER_ID,VAR_ORDER_PRICE,VAR_NO_OF_LOTS,VAR_QUANTITY;

/*
INSERT INTO option_buy_order_log
VALUES
(VAR_ORDER_ID,SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,MODIFIED_PRICE,
VAR_NO_OF_LOTS,VAR_QUANTITY,0,time_in,0,VAR_QUANTITY);

*/

SET VAR_ORDER_PRICE = round_price_value(VAR_ORDER_PRICE);

CALL CALCULATE_EFFICIENT_BUY_ORDER_PRICE(SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,
VAR_ORDER_PRICE,VAR_QUANTITY,time_in,VAR_EFFICIENT_ORDER_PRICE);

IF(VAR_EFFICIENT_ORDER_PRICE IS NULL OR VAR_EFFICIENT_ORDER_PRICE = 0) THEN

REPLACE INTO option_buy_order_event
VALUES
(VAR_ORDER_ID,SYMBOL_IN,time_in,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,VAR_ORDER_PRICE,
                        VAR_NO_OF_LOTS,VAR_QUANTITY,'ERNEW',0);

LEAVE proc_pnoboe;

END IF;

SET VAR_EFFICIENT_ORDER_PRICE = round_price_value(VAR_EFFICIENT_ORDER_PRICE);


IF(VAR_EFFICIENT_ORDER_PRICE < VAR_ORDER_PRICE ) THEN

update option_buy_order
set buy_price = VAR_EFFICIENT_ORDER_PRICE
where order_id =  VAR_ORDER_ID;

INSERT INTO option_buy_order_log
VALUES
(VAR_ORDER_ID,SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,VAR_EFFICIENT_ORDER_PRICE,
VAR_NO_OF_LOTS,VAR_QUANTITY,0,time_in,0,VAR_QUANTITY);

END IF;


REPLACE INTO option_buy_order_event
VALUES
(VAR_ORDER_ID,SYMBOL_IN,time_in,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,VAR_EFFICIENT_ORDER_PRICE,
                        VAR_NO_OF_LOTS,VAR_QUANTITY,'NEW',0);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PUT_NEW_OPTION_SELL_ORDER_EVENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PUT_NEW_OPTION_SELL_ORDER_EVENT`(
SYMBOL_IN VARCHAR(20),
OPTION_TYPE_IN varchar(2),
OPTION_STRIKE_PRICE_IN FLOAT,
NO_OF_LOTS_IN INT,
QUANTITY_IN INT,
BUY_PRICE_IN FLOAT,
time_in datetime)
proc_pnosoe : BEGIN

DECLARE GENERATED_ORDER_ID INT DEFAULT 0;

DECLARE CALCULATED_SELL_PRICE FLOAT DEFAULT 0;

DECLARE VAR_INITIAL_TARGET_PROFIT_FACTOR FLOAT DEFAULT 1.15;

-- DECLARE VAR_EFFICIENT_ORDER_PRICE FLOAT;



SELECT  param_value FROM trading_parameters WHERE param_id = 'INITIAL_TARGET_PROFIT_FACTOR'
INTO VAR_INITIAL_TARGET_PROFIT_FACTOR;

SET CALCULATED_SELL_PRICE = round_price_value(BUY_PRICE_IN * VAR_INITIAL_TARGET_PROFIT_FACTOR);


/*

CALL CALCULATE_EFFICIENT_SELL_ORDER_PRICE(SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,
CALCULATED_SELL_PRICE,QUANTITY_IN,time_in,VAR_EFFICIENT_ORDER_PRICE);

IF(VAR_EFFICIENT_ORDER_PRICE IS NULL OR VAR_EFFICIENT_ORDER_PRICE = 0) THEN

SET GENERATED_ORDER_ID =  999999999 * RAND();

REPLACE INTO option_sell_order_event
VALUES
(GENERATED_ORDER_ID,SYMBOL_IN,time_in,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,CALCULATED_SELL_PRICE,
                        NO_OF_LOTS_IN,QUANTITY_IN,'ERNEW',0);

INSERT INTO option_sell_order_log
VALUES
(GENERATED_ORDER_ID,SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,CALCULATED_SELL_PRICE,
NO_OF_LOTS_IN,QUANTITY_IN,0,time_in,0,QUANTITY_IN);

LEAVE proc_pnosoe;

END IF;

*/

INSERT INTO option_sell_order
VALUES
(NULL,SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,CALCULATED_SELL_PRICE,NO_OF_LOTS_IN,QUANTITY_IN,0,
0,0,QUANTITY_IN);


SET GENERATED_ORDER_ID =  LAST_INSERT_ID();

INSERT INTO option_sell_order_log
VALUES
(GENERATED_ORDER_ID,SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,CALCULATED_SELL_PRICE,
NO_OF_LOTS_IN,QUANTITY_IN,0,time_in,0,QUANTITY_IN);

REPLACE INTO option_sell_order_event
VALUES
(GENERATED_ORDER_ID,SYMBOL_IN,time_in,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,CALCULATED_SELL_PRICE,
                        NO_OF_LOTS_IN,QUANTITY_IN,'NEW',0);


INSERT INTO `option_stop_loss_order_price`

VALUES(NULL,SYMBOL_IN,OPTION_TYPE_IN,OPTION_STRIKE_PRICE_IN,round_price_value(BUY_PRICE_IN),
                                                              round_price_value(BUY_PRICE_IN*0.9));







END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `PUT_ORDERS_WITH_LIVE_DATA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PUT_ORDERS_WITH_LIVE_DATA`(
IS_DUMMY_OPTION_DATA_REQUIRED BOOLEAN)
BEGIN

declare l_loop int default 0;


declare NO_OF_ENTRIES int default 0; -- consider loop time to be 2 mins

declare NO_OF_LOOPS_BEFORE_CURRENT_TIME int default 0; -- consider loop time to be 2 mins

DECLARE DAY_START_REFERENCE DATETIME;

DECLARE DAY_END_REFERENCE DATETIME;

DECLARE DUMMY_NOW_TIME DATETIME;


DECLARE INITIAL_FILL_TIME INT;

DECLARE DUMMY_CURRENT_TIME DATETIME;

-- DECLARE DUMMY_START_TIME DATETIME;


DECLARE VAR_ORDER_CYCLE_FREQUENCY FLOAT;

DECLARE VAR_STOP_LOSS_TRIGER_CYCLE_FREQUENCY FLOAT;

DECLARE DATE_REFERENCE DATE DEFAULT CURDATE();

DECLARE EXPIRY_DAYS_REMAINING INT DEFAULT 5;

DECLARE IS_DUMMY_OPTION_DATA BOOLEAN DEFAULT FALSE;



SET DATE_REFERENCE = '2018-02-01';

SET DAY_START_REFERENCE = CONCAT(DATE(DATE_REFERENCE),' 09:15:00');

SET IS_DUMMY_OPTION_DATA = IS_DUMMY_OPTION_DATA_REQUIRED;
SET DUMMY_NOW_TIME = CONCAT(DATE(DATE_REFERENCE),' 15:30:00');

IF (DUMMY_NOW_TIME = NULL) THEN
SET DUMMY_NOW_TIME = NOW();
END IF;

SET EXPIRY_DAYS_REMAINING = 5;

IF(DATE_REFERENCE = NULL) THEN
SET DATE_REFERENCE =  curdate();
 END IF;

SELECT  param_value FROM trading_parameters WHERE param_id = 'ORDER_CYCLE_FREQUENCY'
INTO VAR_ORDER_CYCLE_FREQUENCY;

SELECT  param_value FROM trading_parameters WHERE param_id = 'STOP_LOSS_TRIGER_CYCLE_FREQUENCY'
INTO VAR_STOP_LOSS_TRIGER_CYCLE_FREQUENCY;






call INIT_DB_WITHOUT_LIVE_DATA(DAY_START_REFERENCE,IS_DUMMY_OPTION_DATA);




delete from live_data where curr_time < DAY_START_REFERENCE;

REPLACE INTO `engine_live`.`live_data`

(select null,CONCAT(DATE(DATE_REFERENCE),' 09:14:55'),a.symbol,0,a.prev_close from engine_live.basis_for_calls a);


IF(time (DAY_START_REFERENCE) = time('2018-01-21 09:15:00')) then

call MARKET_OPENING_MASTER(DAY_START_REFERENCE);

CALL DUMMY_HANDLE_BUY_ORDER_EVENTS();

end if;

-- SET DUMMY_START_TIME = DAY_START_REFERENCE;

SELECT TIMESTAMPDIFF(SECOND,DAY_START_REFERENCE,DUMMY_NOW_TIME) INTO INITIAL_FILL_TIME;

SET NO_OF_LOOPS_BEFORE_CURRENT_TIME  = INITIAL_FILL_TIME/ 60;


REPLACE INTO log_messages VALUES(DAY_START_REFERENCE,
                          concat('PUT_ORDERS_WITH_LIVE_DATA - ', DAY_START_REFERENCE)
                          , 'START');


loop0: loop

       set l_loop := l_loop + 1;

       SET DUMMY_CURRENT_TIME = DATE_ADD(DAY_START_REFERENCE, INTERVAL l_loop MINUTE);

       IF l_loop > NO_OF_LOOPS_BEFORE_CURRENT_TIME THEN
          leave loop0;
       end if;

       if(time(DUMMY_CURRENT_TIME) >= time('2018-01-21 14:45:00')
       AND time(DUMMY_CURRENT_TIME) <= time('2018-01-21 14:50:00')) then

       CALL PUT_CANCEL_OPTION_BUY_ORDER_EVENT(DUMMY_CURRENT_TIME);

       end if;

       IF(IS_DUMMY_OPTION_DATA_REQUIRED) THEN

                   if(time(DUMMY_CURRENT_TIME) > time('2018-01-21 09:28:00')) then

                   CALL DUMMY_CALCULATE_OPTION_PRICE_LIVE_MASTER(DUMMY_CURRENT_TIME, EXPIRY_DAYS_REMAINING);

                   end if;

       END IF;


       IF((l_loop % VAR_ORDER_CYCLE_FREQUENCY) = 0 ) then


       CALL COMPLETE_ORDER_CYCLE(DUMMY_CURRENT_TIME,60, TRUE);

       -- ITERATE loop0;


       ELSE IF((l_loop % VAR_STOP_LOSS_TRIGER_CYCLE_FREQUENCY) = 0 ) then

           call SLOW_STOP_LOSS_TRIGGER_CYCLE(DUMMY_CURRENT_TIME,60,TRUE);


       END IF;


       END IF;

END loop loop0;



/*

set l_loop := 0;

SET DAY_END_REFERENCE = CONCAT(DATE(DATE_REFERENCE),' 15:30:00');

SELECT TIMESTAMPDIFF(SECOND,NOW(),DAY_END_REFERENCE) INTO INITIAL_FILL_TIME;



SET NO_OF_ENTRIES  = INITIAL_FILL_TIME/ (VAR_STOP_LOSS_TRIGER_CYCLE_FREQUENCY * 60);


loop1: loop

       set l_loop := l_loop + 1;

       IF l_loop > NO_OF_ENTRIES THEN
          leave loop1;
       end if;


       CALL CHECK_PRICE_TREND_CYCLE(NULL);


       CALL CHECK_BUY_ORDER_CYCLE(NULL);


       CALL DUMMY_HANDLE_BUY_ORDER_EVENTS();

        SELECT SLEEP((VAR_ORDER_CYCLE_FREQUENCY * 60) - 2);

END loop loop1;

*/


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RECORD_LOOP_OUTPUT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RECORD_LOOP_OUTPUT`(
CURRENT_REFERENCE_TIME_IN DATETIME,
is_failed_flag boolean
)
proc_rlo : BEGIN

DECLARE ORDER_ERR_RECORD_COUNT INT;

IF(is_failed_flag) THEN

REPLACE INTO live_process_status_record

VALUES(CURRENT_REFERENCE_TIME_IN, 'FAILED',1);

update live_procedure_status set  process_status = false
WHERE curr_date = date(CURRENT_REFERENCE_TIME_IN);

-- LEAVE proc_rlo;

END IF;


SELECT COUNT(*) FROM option_buy_order_event

WHERE curr_time = CURRENT_REFERENCE_TIME_IN

AND event_type like 'ER%'

INTO ORDER_ERR_RECORD_COUNT;

IF(ORDER_ERR_RECORD_COUNT > 0) THEN

REPLACE INTO live_process_status_record

VALUES(CURRENT_REFERENCE_TIME_IN, 'ERRORD',0);

END IF;



SET ORDER_ERR_RECORD_COUNT = 0;

SELECT COUNT(*) FROM option_sell_order_event

WHERE curr_time = CURRENT_REFERENCE_TIME_IN

AND event_type like 'ER%'

INTO ORDER_ERR_RECORD_COUNT;

IF(ORDER_ERR_RECORD_COUNT > 0) THEN

REPLACE INTO live_process_status_record

VALUES(CURRENT_REFERENCE_TIME_IN, 'ERRORD',0);

END IF;


SET ORDER_ERR_RECORD_COUNT = 0;

SELECT COUNT(*) FROM live_process_status_record

WHERE curr_time = CURRENT_REFERENCE_TIME_IN

INTO ORDER_ERR_RECORD_COUNT;

IF (ORDER_ERR_RECORD_COUNT IS NULL OR ORDER_ERR_RECORD_COUNT = 0) THEN

REPLACE INTO live_process_status_record

VALUES(CURRENT_REFERENCE_TIME_IN, 'SUCCESS',1);

END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RETRY_ERROR_ORDERS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RETRY_ERROR_ORDERS`(
target_time_in datetime)
proc_reo : BEGIN


DECLARE VAR_MAX_ERROR_TIME DATETIME DEFAULT NULL;

SELECT max(curr_time) FROM live_process_status_record
where is_error_handled = 0
into  VAR_MAX_ERROR_TIME;

IF(VAR_MAX_ERROR_TIME IS NULL) THEN

LEAVE proc_reo;

END IF;



IF(target_time_in IS NULL) THEN

SET target_time_in = now();

END IF;

CALL RETRY_PUT_MODIFY_OPTION_SELL_ORDER_EVENT(VAR_MAX_ERROR_TIME,target_time_in);

CALL RETRY_PUT_NEW_OPTION_BUY_ORDER_EVENT(target_time_in);

CALL RETRY_PUT_MODIFY_OPTION_BUY_ORDER_EVENT(VAR_MAX_ERROR_TIME,target_time_in);


update live_process_status_record
set is_error_handled = 1 where
curr_time = VAR_MAX_ERROR_TIME;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RETRY_PUT_MODIFY_OPTION_BUY_ORDER_EVENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RETRY_PUT_MODIFY_OPTION_BUY_ORDER_EVENT`(
time_in datetime,
target_time_in datetime
)
BEGIN


DECLARE cursor_OPTION_BUY_ERROR_EVENTS CURSOR FOR
SELECT symbol,option_type,option_strike_price,buy_price
FROM option_buy_order_event
where event_type = 'ERMOD'
and curr_time = time_in
and is_event_handled = 0;


  OPEN cursor_OPTION_BUY_ERROR_EVENTS;
  BEGIN
    DECLARE VAR_SYMBOL varchar(20);
    DECLARE VAR_OPTION_TYPE varchar(2);
    DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;

    DECLARE VAR_BUY_PRICE FLOAT(6,2);

    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE cursor_OPTION_BUY_ERROR_EVENTS; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE cursor_OPTION_BUY_ERROR_EVENTS; RESIGNAL; END;
    LOOP
      FETCH cursor_OPTION_BUY_ERROR_EVENTS INTO VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
                                VAR_BUY_PRICE;




      CALL PUT_MODIFY_OPTION_BUY_ORDER_EVENT
                        (VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
                                           VAR_BUY_PRICE,
                                           target_time_in);

    END LOOP;
  END;

update option_buy_order_event set is_event_handled = 1
where event_type = 'ERMOD'
and curr_time = time_in;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RETRY_PUT_MODIFY_OPTION_SELL_ORDER_EVENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RETRY_PUT_MODIFY_OPTION_SELL_ORDER_EVENT`(
time_in datetime,
target_time_in datetime
)
BEGIN


DECLARE cursor_OPTION_SELL_ERROR_EVENTS CURSOR FOR
SELECT symbol,option_type,option_strike_price,
no_of_lots,quantity,sell_price
FROM option_sell_order_event
where event_type = 'ERMOD'
and curr_time = time_in
and is_event_handled = 0;


  OPEN cursor_OPTION_SELL_ERROR_EVENTS;
  BEGIN
    DECLARE VAR_SYMBOL varchar(20);
    DECLARE VAR_OPTION_TYPE varchar(2);
    DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;

    DECLARE VAR_NO_OF_LOTS INT DEFAULT 0;
    DECLARE VAR_QUANTITY INT DEFAULT 0;
    DECLARE VAR_SELL_PRICE FLOAT(6,2);

    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE cursor_OPTION_SELL_ERROR_EVENTS; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE cursor_OPTION_SELL_ERROR_EVENTS; RESIGNAL; END;
    LOOP
      FETCH cursor_OPTION_SELL_ERROR_EVENTS INTO VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
                                VAR_NO_OF_LOTS,VAR_QUANTITY,VAR_SELL_PRICE;




      CALL PUT_MODIFY_OPTION_SELL_ORDER_EVENT
                        (VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
                                           VAR_NO_OF_LOTS,VAR_QUANTITY,
                                           NULL,VAR_SELL_PRICE,
                                           target_time_in,FALSE);

    END LOOP;
  END;

update option_sell_order_event set is_event_handled = 1
where event_type = 'ERMOD'
and curr_time = time_in;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `RETRY_PUT_NEW_OPTION_BUY_ORDER_EVENT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `RETRY_PUT_NEW_OPTION_BUY_ORDER_EVENT`(
target_time_in datetime
)
BEGIN


DECLARE cursor_OPTION_BUY_ERROR_EVENTS CURSOR FOR
SELECT symbol,option_type,option_strike_price,buy_price
FROM option_buy_order_event
where event_type = 'ERNEW'
-- and curr_time = time_in
and is_event_handled = 0;


  OPEN cursor_OPTION_BUY_ERROR_EVENTS;
  BEGIN
    DECLARE VAR_SYMBOL varchar(20);
    DECLARE VAR_OPTION_TYPE varchar(2);
    DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;

    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE cursor_OPTION_BUY_ERROR_EVENTS; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE cursor_OPTION_BUY_ERROR_EVENTS; RESIGNAL; END;
    LOOP
      FETCH cursor_OPTION_BUY_ERROR_EVENTS INTO VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE;




      CALL PUT_NEW_OPTION_BUY_ORDER_EVENT
                        (VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
                                           target_time_in);

    END LOOP;
  END;

update option_buy_order_event set is_event_handled = 1
where event_type = 'ERNEW'
-- and curr_time = time_in
;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SLOW_STOP_LOSS_TRIGGER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SLOW_STOP_LOSS_TRIGGER`(
CURRENT_TIME_IN DATETIME,
INTERVAL_SECONDS_IN INT)
BEGIN



DECLARE VAR_OPTION_TYPE varchar(2);
DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;

DECLARE VAR_SL_PRICE FLOAT;

DECLARE VAR_BUY_PRICE FLOAT;



DECLARE cursor_OPTION_SELL_ORDERS CURSOR FOR
SELECT a.symbol,a.option_type,a.option_strike_price,
a.buy_price,a.sl_price
FROM engine_live.option_stop_loss_order_price a,
option_position b
where (b.sell_price is null or b.sell_price = 0)
and a.symbol = b.symbol
and a.option_type = b.option_type
and a.option_strike_price = b.option_strike_price;


  OPEN cursor_OPTION_SELL_ORDERS;
  BEGIN
    DECLARE VAR_SYMBOL varchar(20);

    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE cursor_OPTION_SELL_ORDERS; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE cursor_OPTION_SELL_ORDERS; RESIGNAL; END;
    LOOP
      FETCH cursor_OPTION_SELL_ORDERS INTO VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
                                VAR_BUY_PRICE,VAR_SL_PRICE;




      call CHECK_SLOW_SL_ORDER_POSITION(VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
                                           VAR_BUY_PRICE,VAR_SL_PRICE
                                           ,CURRENT_TIME_IN,INTERVAL_SECONDS_IN);

    END LOOP;
  END;




END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SLOW_STOP_LOSS_TRIGGER_CYCLE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SLOW_STOP_LOSS_TRIGGER_CYCLE`(
CURRENT_TIME_IN DATETIME,
INTERVAL_SECONDS_IN INT,
IS_DUMMY_CYCLE BOOLEAN)
BEGIN


IF(IS_DUMMY_CYCLE) THEN

  CALL DUMMY_CHECK_POSITIONS(CURRENT_TIME_IN,INTERVAL_SECONDS_IN);

END IF;

CALL SLOW_STOP_LOSS_TRIGGER(CURRENT_TIME_IN,INTERVAL_SECONDS_IN);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TEST_DUMMY_CALCULATE_OPTION_BID_OFFER_LIVE_MASTER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TEST_DUMMY_CALCULATE_OPTION_BID_OFFER_LIVE_MASTER`()
BEGIN

declare l_loop int default 0;


declare NO_OF_ENTRIES int default 0; -- consider loop time to be 2 mins

declare NO_OF_LOOPS_BEFORE_CURRENT_TIME int default 0; -- consider loop time to be 2 mins

DECLARE DAY_START_REFERENCE DATETIME;

DECLARE DAY_END_REFERENCE DATETIME;

DECLARE DUMMY_NOW_TIME DATETIME;


DECLARE INITIAL_FILL_TIME INT;

DECLARE DUMMY_CURRENT_TIME DATETIME;

-- DECLARE DUMMY_START_TIME DATETIME;


DECLARE VAR_ORDER_CYCLE_FREQUENCY FLOAT;

DECLARE VAR_STOP_LOSS_TRIGER_CYCLE_FREQUENCY FLOAT;

DECLARE DATE_REFERENCE DATE DEFAULT CURDATE();

DECLARE EXPIRY_DAYS_REMAINING INT DEFAULT 5;


SET DATE_REFERENCE = '2018-01-29';


IF (DUMMY_NOW_TIME = NULL) THEN
SET DUMMY_NOW_TIME = NOW();
END IF;



SET DAY_START_REFERENCE = CONCAT(DATE(DATE_REFERENCE),' 09:28:00');

SET DUMMY_NOW_TIME = CONCAT(DATE(DATE_REFERENCE),' 15:30:00');




-- SET DUMMY_START_TIME = DAY_START_REFERENCE;

SELECT TIMESTAMPDIFF(SECOND,DAY_START_REFERENCE,DUMMY_NOW_TIME) INTO INITIAL_FILL_TIME;

SET NO_OF_LOOPS_BEFORE_CURRENT_TIME  = INITIAL_FILL_TIME/ 60;


loop0: loop

       set l_loop := l_loop + 1;

       SET DUMMY_CURRENT_TIME = DATE_ADD(DAY_START_REFERENCE, INTERVAL l_loop MINUTE);

       IF l_loop > NO_OF_LOOPS_BEFORE_CURRENT_TIME THEN
          leave loop0;
       end if;

       CALL DUMMY_CALCULATE_OPTION_BID_OFFER_LIVE_MASTER(DUMMY_CURRENT_TIME);

END loop loop0;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `TEST_DUMMY_CALCULATE_OPTION_PRICE_LIVE_MASTER` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `TEST_DUMMY_CALCULATE_OPTION_PRICE_LIVE_MASTER`()
BEGIN

declare l_loop int default 0;

declare NO_OF_LOOPS_BEFORE_CURRENT_TIME int default 0; -- consider loop time to be 2 mins

DECLARE DAY_START_REFERENCE DATETIME;

DECLARE DUMMY_NOW_TIME DATETIME;

DECLARE INITIAL_FILL_TIME INT;

DECLARE DUMMY_CURRENT_TIME DATETIME;

DECLARE DATE_REFERENCE DATE DEFAULT CURDATE();

DECLARE EXPIRY_DAYS_REMAINING INT DEFAULT 5;


SET DATE_REFERENCE = '2018-02-01';


SET EXPIRY_DAYS_REMAINING = 14;

IF(DATE_REFERENCE = NULL) THEN
SET DATE_REFERENCE =  curdate();
 END IF;

SET DAY_START_REFERENCE = CONCAT(DATE(DATE_REFERENCE),' 14:06:38');

SET DUMMY_NOW_TIME = CONCAT(DATE(DATE_REFERENCE),' 14:09:58');


SELECT TIMESTAMPDIFF(SECOND,DAY_START_REFERENCE,DUMMY_NOW_TIME) INTO INITIAL_FILL_TIME;

SET NO_OF_LOOPS_BEFORE_CURRENT_TIME  = INITIAL_FILL_TIME/ 60;


loop0: loop

       set l_loop := l_loop + 1;

       SET DUMMY_CURRENT_TIME = DATE_ADD(DAY_START_REFERENCE, INTERVAL l_loop MINUTE);

       IF l_loop > NO_OF_LOOPS_BEFORE_CURRENT_TIME THEN
          leave loop0;
       end if;

       CALL DUMMY_CALCULATE_OPTION_PRICE_LIVE_MASTER(DUMMY_CURRENT_TIME, EXPIRY_DAYS_REMAINING);

       CALL DUMMY_CALCULATE_OPTION_BID_OFFER_LIVE_MASTER(DUMMY_CURRENT_TIME);


END loop loop0;



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

-- Dump completed on 2018-02-08 12:27:39
