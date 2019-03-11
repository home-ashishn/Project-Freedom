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
INSERT INTO `basis_for_calls` VALUES ('BAJFINANCE',1446129,2587.15,-1,'https://www.moneycontrol.com/india/stockpricequote/finance-leasing-hire-purchase/bajajfinance/BAF',70,1),('HDFC',1796428,1948.85,-1,'https://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',95,1),('HDFCBANK',2070272,2105.05,1,'https://www.moneycontrol.com/india/stockpricequote/banks-private-sector/hdfcbank/HDF01',95,1),('RELIANCE',7944198,1120.2,1,'https://www.moneycontrol.com/india/stockpricequote/refineries/relianceindustries/RI',95,1),('TATAMOTORS',12883413,168.25,1,'https://www.moneycontrol.com/india/stockpricequote/auto-lcvs-hcvs/tatamotors/TM03',95,1),('TCS',3092977,1908.95,1,'https://www.moneycontrol.com/india/stockpricequote/computers-software/tataconsultancyservices/TCS',95,1),('YESBANK',41528948,178.1,1,'https://www.moneycontrol.com/india/stockpricequote/banks-private-sector/yesbank/YB',95,1);
/*!40000 ALTER TABLE `basis_for_calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `selected_instrument`
--

LOCK TABLES `selected_instrument` WRITE;
/*!40000 ALTER TABLE `selected_instrument` DISABLE KEYS */;
INSERT INTO `selected_instrument` VALUES ('BAJFINANCE','PE',2400,32.1,250,15000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=BAJFINANCE&instrument=OPTSTK&strike=2400.00&type=PE&expiry=31JAN2019','2018-04-26','19JAN',0.0294919),('HDFC','PE',1900,26.7,500,15000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=1900.00&type=PE&expiry=31JAN2019','2018-03-28','19JAN',0.0647273),('HDFCBANK','CE',2200,19.85,250,15000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFCBANK&instrument=OPTSTK&strike=2200.00&type=CE&expiry=31JAN2019','2018-03-28','19JAN',0.0458908),('RELIANCE','CE',1200,10.7,500,15000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=RELIANCE&instrument=OPTSTK&strike=1200.00&type=CE&expiry=31JAN2019','2018-04-26','18APR',0.030937),('TATAMOTORS','CE',185,3.05,2000,15000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=TATAMOTORS&instrument=OPTSTK&strike=185.00&type=CE&expiry=31JAN2019','2018-03-28','19JAN',0.0212297),('TCS','CE',2400,26.35,250,15000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=TCS&instrument=OPTSTK&strike=2040.00&type=CE&expiry=31JAN2019','2018-03-28','19JAN',0.00921123),('YESBANK','CE',200,6.9,1750,15000,0,0,'https://nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=YESBANK&instrument=OPTSTK&strike=200.00&type=CE&expiry=31JAN2019','2018-04-26','19JAN',0.0154509);
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

-- Dump completed on 2018-12-29 11:52:24
