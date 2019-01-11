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
INSERT INTO `basis_for_calls` VALUES ('BAJFINANCE',1853169,2564.9,1,'https://www.moneycontrol.com/india/stockpricequote/finance-leasing-hire-purchase/bajajfinance/BAF',90,1),('HDFC',2684498,1902.15,1,'https://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',90,1),('HDFCBANK',1983522,2080.65,-1,'https://www.moneycontrol.com/india/stockpricequote/banks-private-sector/hdfcbank/HDF01',90,1),('TATAMOTORS',16978651,172.5,1,'https://www.moneycontrol.com/india/stockpricequote/auto-lcvs-hcvs/tatamotors/TM03',90,1),('TCS',2511449,1918.5,1,'https://www.moneycontrol.com/india/stockpricequote/computers-software/tataconsultancyservices/TCS',90,1),('YESBANK',45232261,182.3,1,'https://www.moneycontrol.com/india/stockpricequote/banks-private-sector/yesbank/YB',90,1);
/*!40000 ALTER TABLE `basis_for_calls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `selected_instrument`
--

LOCK TABLES `selected_instrument` WRITE;
/*!40000 ALTER TABLE `selected_instrument` DISABLE KEYS */;
INSERT INTO `selected_instrument` VALUES ('BAJFINANCE','CE',2600,18.6,250,15000,0,0,'https://nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=BAJFINANCE&instrument=OPTSTK&strike=2600.00&type=CE&expiry=27DEC2018','2018-04-26','19JAN',0),('HDFC','CE',1900,20.15,500,15000,0,0,'https://nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=1900.00&type=CE&expiry=27DEC2018','2018-03-28','19JAN',0),('HDFCBANK','PE',2060,4.9,250,15000,0,0,'https://nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFCBANK&instrument=OPTSTK&strike=2060.00&type=PE&expiry=27DEC2018','2018-03-28','19JAN',0),('TATAMOTORS','CE',175,1.35,1500,15000,0,0,'https://nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=TATAMOTORS&instrument=OPTSTK&strike=175.00&type=CE&expiry=27DEC2018','2018-03-28','19JAN',0),('TCS','CE',2000,2.6,250,15000,0,0,'https://nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=TCS&instrument=OPTSTK&strike=2000.00&type=CE&expiry=27DEC2018','2018-03-28','19JAN',0),('YESBANK','CE',180,5.75,1750,15000,0,0,'https://nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=YESBANK&instrument=OPTSTK&strike=180.00&type=CE&expiry=27DEC2018','2018-04-26','19JAN',0);
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

-- Dump completed on 2018-12-30 13:33:45
