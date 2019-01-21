-- MySQL dump 10.13  Distrib 5.6.42, for Win64 (x86_64)
--
-- Host: localhost    Database: engine_live
-- ------------------------------------------------------
-- Server version	5.7.23-log

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
-- Dumping data for table `basis_for_calls`
--

LOCK TABLES `basis_for_calls` WRITE;
/*!40000 ALTER TABLE `basis_for_calls` DISABLE KEYS */;
INSERT INTO `basis_for_calls` VALUES ('BAJFINANCE',1102909,2537.05,-1,'https://www.moneycontrol.com/india/stockpricequote/auto-2-3-wheelers/bajajauto/BA10',90,1),('HDFC',2142336,1958.95,1,'https://www.moneycontrol.com/india/stockpricequote/auto-2-3-wheelers/bajajauto/BA10',90,0),('HDFCBANK',1751466,2103,-1,'https://www.moneycontrol.com/india/stockpricequote/auto-2-3-wheelers/bajajauto/BA10',90,1),('TATAMOTORS',19739257,179.95,1,'https://www.moneycontrol.com/india/stockpricequote/auto-2-3-wheelers/bajajauto/BA10',90,1),('TCS',2609680,1893.55,1,'https://www.moneycontrol.com/india/stockpricequote/auto-2-3-wheelers/bajajauto/BA10',90,0);
/*!40000 ALTER TABLE `basis_for_calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `selected_instrument`
--

LOCK TABLES `selected_instrument` WRITE;
/*!40000 ALTER TABLE `selected_instrument` DISABLE KEYS */;
INSERT INTO `selected_instrument` VALUES ('BAJFINANCE','PE',2400,29.35,250,15000,0,0,'https://nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=BAJFINANCE&instrument=OPTSTK&strike=2600.00&type=CE&expiry=27DEC2018','2018-04-26','19JAN',0.0381135),('HDFC','CE',2000,30.7,500,15000,0,0,'https://nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=BAJFINANCE&instrument=OPTSTK&strike=2600.00&type=CE&expiry=27DEC2018','2018-04-26','19JAN',0.0685523),('HDFCBANK','PE',2000,9.15,250,15000,0,0,'https://nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=BAJFINANCE&instrument=OPTSTK&strike=2600.00&type=CE&expiry=27DEC2018','2018-04-26','19JAN',0.0468906),('TATAMOTORS','CE',185,4.8,2000,15000,0,0,'https://nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=BAJFINANCE&instrument=OPTSTK&strike=2600.00&type=CE&expiry=27DEC2018','2018-04-26','19JAN',0.0457654),('TCS','CE',2040,16.15,250,15000,0,0,'https://nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=BAJFINANCE&instrument=OPTSTK&strike=2600.00&type=CE&expiry=27DEC2018','2018-04-26','19JAN',0.0290835);
/*!40000 ALTER TABLE `selected_instrument` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-20 22:21:24
