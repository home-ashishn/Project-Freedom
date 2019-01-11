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
INSERT INTO `basis_for_calls` VALUES ('BAJFINANCE',1757456,2493.95,1,'https://www.moneycontrol.com/india/stockpricequote/finance-leasing-hire-purchase/bajajfinance/BAF',87.5,0),('HDFC',2652673,1940.2,1,'https://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',85,0),('HDFCBANK',3432610,2085.3,1,'https://www.moneycontrol.com/india/stockpricequote/banks-private-sector/hdfcbank/HDF01',85,0),('RELIANCE',11827213,1110.5,1,'https://www.moneycontrol.com/india/stockpricequote/refineries/relianceindustries/RI',67.5,1),('TATAMOTORS',16025517,164.1,1,'https://www.moneycontrol.com/india/stockpricequote/auto-lcvs-hcvs/tatamotors/TM03',90,1);
/*!40000 ALTER TABLE `basis_for_calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `selected_instrument`
--

LOCK TABLES `selected_instrument` WRITE;
/*!40000 ALTER TABLE `selected_instrument` DISABLE KEYS */;
INSERT INTO `selected_instrument` VALUES ('BAJFINANCE','CE',2600,30.9,250,17500,0,0,'https://nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=BAJFINANCE&instrument=OPTSTK&strike=2600.00&type=CE&expiry=27DEC2018','2018-04-26','18APR',0.0455209),('HDFC','CE',2000,13.65,500,17500,0,0,'https://nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=2000.00&type=CE&expiry=27DEC2018','2018-03-28','18MAR',0.0661603),('HDFCBANK','CE',2160,9.9,250,17500,0,0,'https://nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFCBANK&instrument=OPTSTK&strike=2160.00&type=CE&expiry=27DEC2018','2018-03-28','18MAR',0.0616664),('RELIANCE','CE',1240,8.55,500,17500,0,0,'https://nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=RELIANCE&instrument=OPTSTK&strike=1240.00&type=CE&expiry=27DEC2018','2018-03-28','18MAR',0.020048),('TATAMOTORS','CE',190,0.55,1500,17500,0,0,'https://nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=TATAMOTORS&instrument=OPTSTK&strike=190.00&type=CE&expiry=27DEC2018','2018-03-28','18MAR',0.0154546);
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

-- Dump completed on 2018-12-17 21:41:33
