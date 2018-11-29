-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: engine_ea
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
-- Table structure for table `equity_analysis_rules`
--

DROP TABLE IF EXISTS `equity_analysis_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equity_analysis_rules` (
  `rule_id` int(11) NOT NULL,
  `rule_name` varchar(45) DEFAULT NULL,
  `rule_value` float NOT NULL,
  `rule_desc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`rule_id`),
  UNIQUE KEY `rule_name_UNIQUE` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equity_data_main`
--

DROP TABLE IF EXISTS `equity_data_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equity_data_main` (
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
  PRIMARY KEY (`SYMBOL`,`CURR_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equity_data_main_archive`
--

DROP TABLE IF EXISTS `equity_data_main_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equity_data_main_archive` (
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
  PRIMARY KEY (`SYMBOL`,`CURR_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equity_data_main_temporary`
--

DROP TABLE IF EXISTS `equity_data_main_temporary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equity_data_main_temporary` (
  `SYMBOL` varchar(45) NOT NULL,
  `SERIES` varchar(5) NOT NULL,
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
  PRIMARY KEY (`SYMBOL`,`SERIES`,`CURR_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `equity_data_main_top50`
--

DROP TABLE IF EXISTS `equity_data_main_top50`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equity_data_main_top50` (
  `SYMBOL` varchar(45) NOT NULL,
  `done` int(11) DEFAULT NULL,
  PRIMARY KEY (`SYMBOL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `expiry_master`
--

DROP TABLE IF EXISTS `expiry_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expiry_master` (
  `EXPIRY_DATE` date NOT NULL,
  `DAYS_TO_EXPIRY` int(11) DEFAULT NULL,
  PRIMARY KEY (`EXPIRY_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
) ENGINE=InnoDB AUTO_INCREMENT=28631 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `market_holidays`
--

DROP TABLE IF EXISTS `market_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `market_holidays` (
  `SR NO` int(11) DEFAULT NULL,
  `HOLIDAY_DATE` date NOT NULL,
  PRIMARY KEY (`HOLIDAY_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `market_sessions`
--

DROP TABLE IF EXISTS `market_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `market_sessions` (
  `SR_NO` int(11) NOT NULL,
  `SESSION_DATE` date NOT NULL,
  `IS_EXPIRY` tinyint(4) NOT NULL,
  `PREV_SESSION_DATE` date NOT NULL,
  PRIMARY KEY (`SESSION_DATE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `market_sessions_new`
--

DROP TABLE IF EXISTS `market_sessions_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `market_sessions_new` (
  `SR_NO` int(11) NOT NULL AUTO_INCREMENT,
  `SESSION_DATE` date NOT NULL,
  `IS_EXPIRY` tinyint(4) NOT NULL,
  `PREV_SESSION_DATE` date NOT NULL,
  PRIMARY KEY (`SR_NO`,`SESSION_DATE`)
) ENGINE=InnoDB AUTO_INCREMENT=868 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `top_25_equity`
--

DROP TABLE IF EXISTS `top_25_equity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_25_equity` (
  `CURR_DATE` date NOT NULL,
  `symbol` varchar(45) NOT NULL,
  `count_symbol` int(11) DEFAULT NULL,
  `total_turnover` double DEFAULT NULL,
  PRIMARY KEY (`CURR_DATE`,`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `top_25_equity_count`
--

DROP TABLE IF EXISTS `top_25_equity_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_25_equity_count` (
  `symbol` varchar(45) NOT NULL,
  `count_symbol` int(11) DEFAULT NULL,
  `total_turnover` double DEFAULT NULL,
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `top_25_equity_gap`
--

DROP TABLE IF EXISTS `top_25_equity_gap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `top_25_equity_gap` (
  `CURR_DATE` date DEFAULT NULL,
  `symbol` varchar(45) NOT NULL,
  `min_date` date DEFAULT NULL,
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'engine_ea'
--

--
-- Dumping routines for database 'engine_ea'
--
/*!50003 DROP PROCEDURE IF EXISTS `archive_data_main` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `archive_data_main`()
BEGIN

declare backdate_range int;

select rule_value from engine_ea.equity_analysis_rules
where trim(rule_name) = 'backdate_range'
into   backdate_range;

delete from engine_ea.equity_data_main_archive
where CURR_DATE < date_sub(now(),interval 2*backdate_range month);

replace into engine_ea.equity_data_main_archive(
SELECT * FROM engine_ea.equity_data_main a
where a.CURR_DATE < date_sub(now(),interval backdate_range month)
);

delete from engine_ea.equity_data_main
where CURR_DATE < date_sub(now(),interval backdate_range month);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculate_top_25_for_date` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_top_25_for_date`(
inputDate Date)
BEGIN

  -- Declare variables used just for cursor and loop control
  DECLARE no_more_rows int DEFAULT 0;
  DECLARE loop_cntr INT DEFAULT 1;

  DECLARE var_symbol VARCHAR(45) DEFAULT 0;

  DECLARE var_turnover double DEFAULT 0;

  DECLARE var_count_symbol int DEFAULT 0;

  DECLARE var_turnover_symbol double DEFAULT 0;

  declare user_cnt int;

  DECLARE counter INT DEFAULT 0;




    DECLARE daily_top_turnover CURSOR FOR
    select distinct symbol,TURNOVER from engine_ea.equity_data_main
    where trim(CURR_DATE) = trim(inputDate)
    -- AND SYMBOL = 'TITAN'
    order by TURNOVER DESC
    limit 25;


  -- Declare 'handlers' for exceptions
    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE daily_top_turnover; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE daily_top_turnover; RESIGNAL; END;

set counter = 1;

OPEN daily_top_turnover;


	INSERT INTO logs_engine (sample_msg) VALUES
		(CONCAT('for input date = ',inputDate,', user_cnt  = ',user_cnt));

WHILE true
DO

	INSERT INTO logs_engine (sample_msg) VALUES  ('000000000');

 set counter = counter+1;

/*
 IF no_more_rows = 1 THEN
leave loop_label;
 END IF;
*/

FETCH daily_top_turnover INTO var_symbol,var_turnover;



	INSERT INTO logs_engine (sample_msg) VALUES
		(CONCAT('for input date = ',inputDate,', symbol fetched = ',var_symbol));




	INSERT INTO logs_engine (sample_msg) VALUES  ('1111');


select count_symbol,total_turnover from  engine_ea.top_25_equity_count
where symbol =  var_symbol
into var_count_symbol,var_turnover_symbol;

	INSERT INTO logs_engine (sample_msg) VALUES  ('2222');


/*
if( var_count_symbol >=4) then
set var_count_symbol = 4 ;
end if;

*/

/*
if( var_symbol = 'AUROPHARMA') then
SET var_count_symbol = var_count_symbol;
end if;
*/

set var_count_symbol = var_count_symbol + 1;

	INSERT INTO logs_engine (sample_msg) VALUES  ('3333');


set var_turnover =  var_turnover_symbol+var_turnover;

	INSERT INTO logs_engine (sample_msg) VALUES  ('4444');


replace into  engine_ea.top_25_equity_count
values (var_symbol,var_count_symbol,var_turnover);

	INSERT INTO logs_engine (sample_msg) VALUES  ('5555');


commit;


SET var_count_symbol = 0;
SET var_turnover_symbol = 0;

set var_turnover = 0;


	INSERT INTO logs_engine (sample_msg) VALUES  ('6666');

  -- do sleep(5);

END WHILE;


	INSERT INTO logs_engine (sample_msg) VALUES  ('7777');


CLOSE  daily_top_turnover;





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `calculate_top_25_turnover` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `calculate_top_25_turnover`(

)
BEGIN

declare date_counter date;

declare max_date date;

declare start_date date;

declare end_date_row_id int;

delete from engine_ea.logs_engine;

SELECT max(b.curr_date) FROM engine_ea.equity_data_main b
into  max_date;

select a.SR_NO from engine_ea.market_sessions a
where a.SESSION_DATE = max_date
into end_date_row_id;

select a.SESSION_DATE from engine_ea.market_sessions a
where a.SR_NO = (end_date_row_id - 4 )
into start_date;


set date_counter =  start_date;

delete from engine_ea.top_25_equity;

delete from engine_ea.top_25_equity_count;



while  date_counter <=  max_date

do

call calculate_top_25_for_date(date_counter);

commit;

set date_counter = date_add(date_counter,interval 1 day);


end while;

replace into  engine_ea.top_25_equity
(SELECT max_date,a.* FROM engine_ea.top_25_equity_count  a
order by count_symbol desc,total_turnover desc
limit 25);



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `keep_top50` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `keep_top50`()
BEGIN

declare max_date date default now();

declare start_date date default now();

declare end_date_row_id int;



SELECT max(b.curr_date) FROM engine_ea.equity_data_main b
into  max_date;

delete from equity_data_main_top50;

replace into  equity_data_main_top50(
SELECT SYMBOL,0 FROM engine_ea.equity_data_main a
WHERE a.CURR_DATE = max_date
order by a.TURNOVER desc
limit 50
);


delete from  engine_ea.equity_data_main
where symbol not in
(SELECT SYMBOL FROM engine_ea.equity_data_main_top50)
and curr_date = max_date;



-- call engine_ea.calculate_top_25_turnover(start_date,max_date);

-- call engine_ea.verify_top25_data();

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `populate_market_sessions` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `populate_market_sessions`(
NO_SESSIONS INT)
BEGIN


      DECLARE dayCounter INT Default 0 ;
      
      DECLARE srCounter INT Default 0 ;

      DECLARE maxSr INT Default 0 ;
      
      DECLARE currCounterDate DATE DEFAULT curdate();

	  DECLARE prevCounterDate DATE;

      
    DECLARE maxSessionDate DATE DEFAULT curdate();

    DECLARE isExpiryDate TINYINT DEFAULT 0;
      
	  DECLARE dayOfWeek INT DEFAULT 0;


   DECLARE countHolidayCheck INT DEFAULT 0;





	 SELECT max(sr_no) from market_sessions into maxSr;
      
   SELECT max(SESSION_DATE) from market_sessions into maxSessionDate;
      
	 SET prevCounterDate = maxSessionDate;


      
      simple_loop: LOOP
         
         SET dayCounter=dayCounter+1;
		
	 SET currCounterDate = DATE_ADD(maxSessionDate,INTERVAL dayCounter DAY);
     
    select DAYOFWEEK(currCounterDate) into dayOfWeek;

     IF(dayOfWeek = 1 OR dayOfWeek = 7) THEN
     
		ITERATE simple_loop;

        
	 END IF;

     	SELECT count(*) from market_holidays
      where HOLIDAY_DATE = currCounterDate into countHolidayCheck;

    IF(countHolidayCheck > 0) THEN
     
		ITERATE simple_loop;

   	 END IF;
          
   	  SELECT count(*) from expiry_master
      where EXPIRY_DATE = currCounterDate into isExpiryDate;


  SET srCounter=srCounter+1;
     
	 REPLACE INTO market_sessions values(
	 maxSr+srCounter, currCounterDate, isExpiryDate,prevCounterDate);
    
    SET prevCounterDate = currCounterDate; 

         IF dayCounter>=NO_SESSIONS THEN
            LEAVE simple_loop;
         END IF;
   END LOOP simple_loop;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `transfer_equity_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `transfer_equity_data`()
BEGIN

update engine_ea.equity_data_main_temporary
set SERIES = trim(SERIES);

delete from engine_ea.equity_data_main_temporary
where trim(SERIES) != 'EQ' ;



replace into  engine_ea.equity_data_main

( select
SYMBOL,
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

from

engine_ea.equity_data_main_temporary
);

update engine_ea.equity_data_main
set CURR_DATE = trim(CURR_DATE);

update engine_ea.equity_data_main
set SYMBOL = trim(SYMBOL);


delete from engine_ea.equity_data_main_temporary;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `verify_top25_data` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `verify_top25_data`()
BEGIN


  -- Declare variables used just for cursor and loop control
  DECLARE no_more_rows int;
  DECLARE num_rows INT DEFAULT 0;

  DECLARE var_symbol varchar(45);

  DECLARE min_gap_date varchar(45);

  DECLARE max_equity_main_date varchar(45);

  declare backdate_range int;






      DECLARE top_25_symbol CURSOR FOR
    SELECT DISTINCT
        symbol
    FROM engine_ea.top_25_equity;

  -- Declare 'handlers' for exceptions
  DECLARE CONTINUE HANDLER FOR NOT FOUND
    SET no_more_rows = 1;

select max(curr_date) from engine_ea.equity_data_main
into max_equity_main_date;

select rule_value from engine_ea.equity_analysis_rules
where trim(rule_name) = 'backdate_range'
into   backdate_range;

delete from top_25_equity_gap;

open top_25_symbol;

rally_loop : LOOP

 IF no_more_rows = 1 THEN
 LEAVE rally_loop;
 END IF;



FETCH top_25_symbol INTO var_symbol;


 IF no_more_rows = 1 THEN
 LEAVE rally_loop;
 END IF;

SELECT min(SESSION_DATE) FROM engine_ea.market_sessions
where SESSION_DATE not in
(select curr_date from engine_ea.equity_data_main
where symbol = var_symbol)
and session_date <=
(select max(curr_date) from engine_ea.equity_data_main)

into min_gap_date ;

if( max_equity_main_date >  min_gap_date) then

replace INTO `engine_ea`.`top_25_equity_gap`
VALUES (max_equity_main_date,var_symbol,min_gap_date);

end if;

end loop;

close top_25_symbol;


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

-- Dump completed on 2018-02-06 21:24:45
