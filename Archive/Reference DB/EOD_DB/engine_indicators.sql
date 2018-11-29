-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: engine_indicators
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
-- Table structure for table `equity_data_indiactors`
--

DROP TABLE IF EXISTS `equity_data_indiactors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equity_data_indiactors` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equity_data_indiactors_archive`
--

DROP TABLE IF EXISTS `equity_data_indiactors_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equity_data_indiactors_archive` (
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
  PRIMARY KEY (`ROW_ID`,`SYMBOL`)
) ENGINE=InnoDB AUTO_INCREMENT=126 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `final_data`
--

DROP TABLE IF EXISTS `final_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `final_data` (
  `indicator_name` varchar(45) NOT NULL,
  `curr_date` date NOT NULL,
  `symbol` varchar(45) NOT NULL,
  `curr_signal` tinyint(4) NOT NULL,
  `current_market_trend` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`indicator_name`,`curr_date`,`symbol`,`curr_signal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `indicators_union`
--

DROP TABLE IF EXISTS `indicators_union`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `indicators_union` (
  `indicator_name` varchar(45) NOT NULL,
  `curr_date` date NOT NULL,
  `symbol` varchar(45) NOT NULL,
  `curr_signal` tinyint(4) DEFAULT NULL,
  `current_market_trend` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`indicator_name`,`curr_date`,`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `obv_evaluation_run_current_data`
--

DROP TABLE IF EXISTS `obv_evaluation_run_current_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obv_evaluation_run_current_data` (
  `obv_evaluation_run_id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) NOT NULL,
  `curr_date` date NOT NULL,
  `current_market_trend` int(11) NOT NULL COMMENT 'trend for the current symbol/stock',
  `curr_signal` int(11) NOT NULL,
  `one_day_avg_confidence` float DEFAULT NULL,
  `three_day_avg_confidence` float DEFAULT NULL,
  `one_day_success_confidence` float DEFAULT NULL,
  `three_day_success_confidence` float DEFAULT NULL,
  PRIMARY KEY (`obv_evaluation_run_id`,`symbol`,`curr_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `obv_evaluation_run_current_data_archive`
--

DROP TABLE IF EXISTS `obv_evaluation_run_current_data_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obv_evaluation_run_current_data_archive` (
  `obv_evaluation_run_id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) NOT NULL,
  `curr_date` date NOT NULL,
  `current_market_trend` int(11) NOT NULL COMMENT 'trend for the current symbol/stock',
  `curr_signal` int(11) NOT NULL,
  `one_day_avg_confidence` float DEFAULT NULL,
  `three_day_avg_confidence` float DEFAULT NULL,
  `one_day_success_confidence` float DEFAULT NULL,
  `three_day_success_confidence` float DEFAULT NULL,
  PRIMARY KEY (`obv_evaluation_run_id`,`symbol`,`curr_date`)
) ENGINE=InnoDB AUTO_INCREMENT=235 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `percentb_evaluation_run_current_data`
--

DROP TABLE IF EXISTS `percentb_evaluation_run_current_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `percentb_evaluation_run_current_data` (
  `percentb_evaluation_run_id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) NOT NULL,
  `curr_date` date NOT NULL,
  `current_market_trend` int(11) NOT NULL COMMENT 'trend for the current symbol/stock',
  `curr_signal` int(11) NOT NULL,
  `one_day_avg_confidence` float DEFAULT NULL,
  `three_day_avg_confidence` float DEFAULT NULL,
  `one_day_success_confidence` float DEFAULT NULL,
  `three_day_success_confidence` float DEFAULT NULL,
  PRIMARY KEY (`percentb_evaluation_run_id`,`symbol`,`curr_date`)
) ENGINE=InnoDB AUTO_INCREMENT=2144 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `percentb_evaluation_run_current_data_archive`
--

DROP TABLE IF EXISTS `percentb_evaluation_run_current_data_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `percentb_evaluation_run_current_data_archive` (
  `percentb_evaluation_run_id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) NOT NULL,
  `curr_date` date NOT NULL,
  `current_market_trend` int(11) NOT NULL COMMENT 'trend for the current symbol/stock',
  `curr_signal` int(11) NOT NULL,
  `one_day_avg_confidence` float DEFAULT NULL,
  `three_day_avg_confidence` float DEFAULT NULL,
  `one_day_success_confidence` float DEFAULT NULL,
  `three_day_success_confidence` float DEFAULT NULL,
  PRIMARY KEY (`percentb_evaluation_run_id`,`symbol`,`curr_date`)
) ENGINE=InnoDB AUTO_INCREMENT=1519 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rsi_evaluation_audit_data`
--

DROP TABLE IF EXISTS `rsi_evaluation_audit_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsi_evaluation_audit_data` (
  `rsi_evaluation_run_id` int(11) NOT NULL,
  `symbol` varchar(45) DEFAULT NULL,
  `curr_date` date DEFAULT NULL,
  `curr_signal` tinyint(4) DEFAULT NULL,
  `valueRSI` decimal(10,2) DEFAULT NULL,
  `shortEmaValue` decimal(10,2) DEFAULT NULL,
  `longEmaValue` decimal(10,2) DEFAULT NULL,
  `marketTrend` tinyint(4) DEFAULT NULL,
  `signalforSidewaysMarket` tinyint(4) DEFAULT NULL,
  `signalforTrendingMarket` tinyint(4) DEFAULT NULL,
  `rsiGreaterThanCurrentValue` decimal(10,2) DEFAULT NULL,
  `rsiGreaterThanCurrentDate` date DEFAULT NULL,
  `rsiLessThanCurrentValue` decimal(10,2) DEFAULT NULL,
  `rsiLessThanCurrentDate` date DEFAULT NULL,
  `rateOfChange` decimal(10,2) DEFAULT NULL,
  `minPrevValueRSI` decimal(10,2) DEFAULT NULL,
  `minPrevValueRSIDate` date DEFAULT NULL,
  `maxPrevValueRSI` decimal(10,2) DEFAULT NULL,
  `maxPrevValueRSIDate` date DEFAULT NULL,
  PRIMARY KEY (`rsi_evaluation_run_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rsi_evaluation_audit_data_archive`
--

DROP TABLE IF EXISTS `rsi_evaluation_audit_data_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsi_evaluation_audit_data_archive` (
  `rsi_evaluation_run_id` int(11) NOT NULL,
  `symbol` varchar(45) DEFAULT NULL,
  `curr_date` date DEFAULT NULL,
  `curr_signal` tinyint(4) DEFAULT NULL,
  `valueRSI` decimal(10,2) DEFAULT NULL,
  `shortEmaValue` decimal(10,2) DEFAULT NULL,
  `longEmaValue` decimal(10,2) DEFAULT NULL,
  `marketTrend` tinyint(4) DEFAULT NULL,
  `signalforSidewaysMarket` tinyint(4) DEFAULT NULL,
  `signalforTrendingMarket` tinyint(4) DEFAULT NULL,
  `rsiGreaterThanCurrentValue` decimal(10,2) DEFAULT NULL,
  `rsiGreaterThanCurrentDate` date DEFAULT NULL,
  `rsiLessThanCurrentValue` decimal(10,2) DEFAULT NULL,
  `rsiLessThanCurrentDate` date DEFAULT NULL,
  `rateOfChange` decimal(10,2) DEFAULT NULL,
  `minPrevValueRSI` decimal(10,2) DEFAULT NULL,
  `minPrevValueRSIDate` date DEFAULT NULL,
  `maxPrevValueRSI` decimal(10,2) DEFAULT NULL,
  `maxPrevValueRSIDate` date DEFAULT NULL,
  PRIMARY KEY (`rsi_evaluation_run_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rsi_evaluation_run_current_data`
--

DROP TABLE IF EXISTS `rsi_evaluation_run_current_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsi_evaluation_run_current_data` (
  `rsi_evaluation_run_id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) NOT NULL,
  `curr_date` date NOT NULL,
  `current_market_trend` int(11) NOT NULL COMMENT 'trend for the current symbol/stock',
  `curr_signal` int(11) NOT NULL,
  `stop_loss_level` decimal(10,2) DEFAULT NULL,
  `stop_loss_level_price` decimal(10,2) DEFAULT NULL,
  `one_day_avg_confidence` float DEFAULT NULL,
  `three_day_avg_confidence` float DEFAULT NULL,
  `one_day_success_confidence` float DEFAULT NULL,
  `three_day_success_confidence` float DEFAULT NULL,
  PRIMARY KEY (`rsi_evaluation_run_id`,`symbol`,`curr_date`)
) ENGINE=InnoDB AUTO_INCREMENT=3558 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rsi_evaluation_run_current_data_archive`
--

DROP TABLE IF EXISTS `rsi_evaluation_run_current_data_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rsi_evaluation_run_current_data_archive` (
  `rsi_evaluation_run_id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) NOT NULL,
  `curr_date` date NOT NULL,
  `current_market_trend` int(11) NOT NULL COMMENT 'trend for the current symbol/stock',
  `curr_signal` int(11) NOT NULL,
  `stop_loss_level` decimal(10,2) DEFAULT NULL,
  `stop_loss_level_price` decimal(10,2) DEFAULT NULL,
  `one_day_avg_confidence` float DEFAULT NULL,
  `three_day_avg_confidence` float DEFAULT NULL,
  `one_day_success_confidence` float DEFAULT NULL,
  `three_day_success_confidence` float DEFAULT NULL,
  PRIMARY KEY (`rsi_evaluation_run_id`,`symbol`,`curr_date`)
) ENGINE=InnoDB AUTO_INCREMENT=2932 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stochastic_evaluation_audit_data`
--

DROP TABLE IF EXISTS `stochastic_evaluation_audit_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stochastic_evaluation_audit_data` (
  `stochastic_evaluation_run_id` int(11) NOT NULL,
  `symbol` varchar(45) DEFAULT NULL,
  `curr_date` date DEFAULT NULL,
  `curr_signal` tinyint(4) DEFAULT NULL,
  `valueD` decimal(10,2) DEFAULT NULL,
  `valueK` decimal(10,2) DEFAULT NULL,
  `shortEmaValue` decimal(10,2) DEFAULT NULL,
  `longEmaValue` decimal(10,2) DEFAULT NULL,
  `marketTrend` tinyint(4) DEFAULT NULL,
  `signalforSidewaysMarket` tinyint(4) DEFAULT NULL,
  `signalforTrendingMarket` tinyint(4) DEFAULT NULL,
  `valueDLessThanCurrentValue` decimal(10,2) DEFAULT NULL,
  `valueDLessThanCurrentDate` date DEFAULT NULL,
  `prevValueDGreaterThan80` decimal(10,2) DEFAULT NULL,
  `prevValueDGreaterThan80Date` date DEFAULT NULL,
  `valueDGreaterThanCurrentValue` decimal(10,2) DEFAULT NULL,
  `valueDGreaterThanCurrentDate` date DEFAULT NULL,
  `prevValueDLessThan20` decimal(10,2) DEFAULT NULL,
  `prevValueDLessThan20Date` date DEFAULT NULL,
  PRIMARY KEY (`stochastic_evaluation_run_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stochastic_evaluation_audit_data_archive`
--

DROP TABLE IF EXISTS `stochastic_evaluation_audit_data_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stochastic_evaluation_audit_data_archive` (
  `stochastic_evaluation_run_id` int(11) NOT NULL,
  `symbol` varchar(45) DEFAULT NULL,
  `curr_date` date DEFAULT NULL,
  `curr_signal` tinyint(4) DEFAULT NULL,
  `valueD` decimal(10,2) DEFAULT NULL,
  `valueK` decimal(10,2) DEFAULT NULL,
  `shortEmaValue` decimal(10,2) DEFAULT NULL,
  `longEmaValue` decimal(10,2) DEFAULT NULL,
  `marketTrend` tinyint(4) DEFAULT NULL,
  `signalforSidewaysMarket` tinyint(4) DEFAULT NULL,
  `signalforTrendingMarket` tinyint(4) DEFAULT NULL,
  `valueDLessThanCurrentValue` decimal(10,2) DEFAULT NULL,
  `valueDLessThanCurrentDate` date DEFAULT NULL,
  `prevValueDGreaterThan80` decimal(10,2) DEFAULT NULL,
  `prevValueDGreaterThan80Date` date DEFAULT NULL,
  `valueDGreaterThanCurrentValue` decimal(10,2) DEFAULT NULL,
  `valueDGreaterThanCurrentDate` date DEFAULT NULL,
  `prevValueDLessThan20` decimal(10,2) DEFAULT NULL,
  `prevValueDLessThan20Date` date DEFAULT NULL,
  PRIMARY KEY (`stochastic_evaluation_run_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stochastic_evaluation_run_current_data`
--

DROP TABLE IF EXISTS `stochastic_evaluation_run_current_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stochastic_evaluation_run_current_data` (
  `stochastic_evaluation_run_id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) NOT NULL,
  `curr_date` date NOT NULL,
  `current_market_trend` int(11) NOT NULL COMMENT 'trend for the current symbol/stock',
  `curr_signal` int(11) NOT NULL,
  `one_day_avg_confidence` float DEFAULT NULL,
  `three_day_avg_confidence` float DEFAULT NULL,
  `one_day_success_confidence` float DEFAULT NULL,
  `three_day_success_confidence` float DEFAULT NULL,
  PRIMARY KEY (`stochastic_evaluation_run_id`,`symbol`,`curr_date`)
) ENGINE=InnoDB AUTO_INCREMENT=2104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stochastic_evaluation_run_current_data_archive`
--

DROP TABLE IF EXISTS `stochastic_evaluation_run_current_data_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stochastic_evaluation_run_current_data_archive` (
  `stochastic_evaluation_run_id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) NOT NULL,
  `curr_date` date NOT NULL,
  `current_market_trend` int(11) NOT NULL COMMENT 'trend for the current symbol/stock',
  `curr_signal` int(11) NOT NULL,
  `one_day_avg_confidence` float DEFAULT NULL,
  `three_day_avg_confidence` float DEFAULT NULL,
  `one_day_success_confidence` float DEFAULT NULL,
  `three_day_success_confidence` float DEFAULT NULL,
  PRIMARY KEY (`stochastic_evaluation_run_id`,`symbol`,`curr_date`)
) ENGINE=InnoDB AUTO_INCREMENT=1478 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'engine_indicators'
--

--
-- Dumping routines for database 'engine_indicators'
--
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `data_accumulation`(
symbol_in varchar(45),
endDate date,
startDate date)
BEGIN


delete from engine_indicators.equity_data_indiactors_archive
where CURR_DATE <
(select max(curr_date) from engine_ea.equity_data_main);

replace into engine_indicators.equity_data_indiactors_archive
(select * from engine_indicators.equity_data_indiactors);

delete from engine_indicators.equity_data_indiactors;

ALTER TABLE engine_indicators.equity_data_indiactors AUTO_INCREMENT =1;


REPLACE INTO engine_indicators.equity_data_indiactors

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
and CURR_DATE between startDate and  endDate

 );

/*
delete from engine_has_pattern.market_sessions;

replace INTO engine_has_pattern.market_sessions

(select a.ROW_ID,a.CURR_DATE from engine_has_pattern.equity_data_has_pattern a);

delete from engine_has_pattern.equity_data_has_pattern  where  CURR_DATE >  endDate;

call validate_market_sessions_data(endDate,duration_days);

*/

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

delete from engine_indicators.equity_data_indiactors_archive
where CURR_DATE <
(select max(curr_date) from engine_ea.equity_data_main);


replace into engine_indicators.stochastic_evaluation_run_current_data_archive
(select * FROM engine_indicators.stochastic_evaluation_run_current_data);

DELETE FROM engine_indicators.stochastic_evaluation_run_current_data;

replace into engine_indicators.stochastic_evaluation_audit_data_archive
(select * FROM engine_indicators.stochastic_evaluation_audit_data);

DELETE FROM engine_indicators.stochastic_evaluation_audit_data;


replace into engine_indicators.rsi_evaluation_run_current_data_archive
(select * FROM engine_indicators.rsi_evaluation_run_current_data);

DELETE FROM engine_indicators.rsi_evaluation_run_current_data;

replace into engine_indicators.rsi_evaluation_audit_data_archive
(select * FROM engine_indicators.rsi_evaluation_audit_data);

DELETE FROM engine_indicators.rsi_evaluation_audit_data;


replace into engine_indicators.obv_evaluation_run_current_data_archive
(select * FROM engine_indicators.obv_evaluation_run_current_data);

DELETE FROM engine_indicators.obv_evaluation_run_current_data;

replace into engine_indicators.percentb_evaluation_run_current_data_archive
(select * FROM engine_indicators.percentb_evaluation_run_current_data);

DELETE FROM engine_indicators.percentb_evaluation_run_current_data;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `POPULATE_FINAL_DATA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `POPULATE_FINAL_DATA`()
BEGIN

DELETE FROM indicators_union;

replace into indicators_union
(select * from 
(
select 
'RSI_CALL',
a.curr_date,a.symbol,a.curr_signal,a.current_market_trend from 
engine_indicators.rsi_evaluation_run_current_data a
where a.curr_signal != 0 
union

select 
'STOCHASTIC_CALL',
a.curr_date,a.symbol,a.curr_signal,a.current_market_trend from
engine_indicators.stochastic_evaluation_run_current_data a
where a.curr_signal != 0 
union

select 
'PERCENTB_CALL',
a.curr_date,a.symbol,a.curr_signal,a.current_market_trend from
engine_indicators.percentb_evaluation_run_current_data a
where a.curr_signal != 0
) b
order by b.symbol,b.curr_date
);


delete from final_data;

replace into final_data
(select a.* from indicators_union a, indicators_union b
where a.symbol = b.symbol
and a.curr_date = b. curr_date
and a.curr_signal = b. curr_signal
and
(a.indicator_name != b.indicator_name
-- or  a.indicator_name like  '%PERCENTB_CALL%'
)
);
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

-- Dump completed on 2018-02-06 21:25:15
