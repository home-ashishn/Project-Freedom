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
INSERT INTO `basis_for_calls` VALUES ('AXISBANK',11593643,543.7,0,NULL,70),('HDFC',3382968,1829.5,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',70),('INFY',3993368,1114.45,1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',70),('LT',1861841,1350.35,0,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',70),('MARUTI',250781,9020.25,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',70),('TATAMOTORS',10225880,375.8,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',70),('TCS',1232618,2925.85,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',70);
/*!40000 ALTER TABLE `basis_for_calls` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `basis_for_calls_archive`
--

LOCK TABLES `basis_for_calls_archive` WRITE;
/*!40000 ALTER TABLE `basis_for_calls_archive` DISABLE KEYS */;
INSERT INTO `basis_for_calls_archive` VALUES ('2018-01-19','AXISBANK',9466991,584.8,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/axisbank/AB16',105),('2018-01-25','AXISBANK',6158610,607.95,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/axisbank/AB16',95),('2018-01-29','AXISBANK',6749846,616.1,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/axisbank/AB16',75),('2018-01-30','AXISBANK',7108060,593.6,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/axisbank/AB16',77.5),('2018-02-01','AXISBANK',7108060,593.6,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/axisbank/AB16',70.5717),('2018-02-02','AXISBANK',7839731,592.8,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/axisbank/AB16',70),('2018-02-09','AXISBANK',21790400,0,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/axisbank/AB16',70),('2018-02-12','AXISBANK',5865587,557.55,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/axisbank/AB16',76.8875),('2018-02-14','AXISBANK',4765319,564.2,1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/axisbank/AB16',75),('2018-02-16','AXISBANK',11593643,543.7,0,NULL,70),('2018-01-19','CAPF',2654393,755.2,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-general/capitalfirst/FCH',100),('2018-01-19','HDFC',6605642,1896.8,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',110),('2018-01-25','HDFC',3401495,1911.2,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',100),('2018-01-29','HDFC',4622281,1908.3,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',75),('2018-01-30','HDFC',3665385,1956.3,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',77.5),('2018-02-01','HDFC',3665385,1956.3,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',77.1024),('2018-02-02','HDFC',3838192,1967.55,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',75),('2018-02-12','HDFC',2773971,1773.05,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',75.6776),('2018-02-14','HDFC',3194895,1805.45,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',75),('2018-02-16','HDFC',3382968,1829.5,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',70),('2018-01-25','HDFCBANK',1197642,1957.65,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/hdfcbank/HDF01',90),('2018-01-29','HDFCBANK',2180917,1974.95,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/hdfcbank/HDF01',75),('2018-01-30','HDFCBANK',1735837,2005.7,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/hdfcbank/HDF01',82.5),('2018-02-01','HDFCBANK',1735837,2005.7,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/hdfcbank/HDF01',76.2967),('2018-02-02','HDFCBANK',1630355,1991.15,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/hdfcbank/HDF01',65),('2018-02-12','HDFCBANK',1602238,1849.5,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/hdfcbank/HDF01',70.2257),('2018-01-29','HDIL',12306840,59.35,0,'http://www.moneycontrol.com/india/stockpricequote/construction-contracting-real-estate/housingdevelopmentinfrastructure/HDI',75),('2018-01-30','HDIL',10431969,57.85,0,'http://www.moneycontrol.com/india/stockpricequote/construction-contracting-real-estate/housingdevelopmentinfrastructure/HDI',77.5),('2018-02-01','HDIL',10431969,57.85,0,'http://www.moneycontrol.com/india/stockpricequote/construction-contracting-real-estate/housingdevelopmentinfrastructure/HDI',72.6764),('2018-02-02','HDIL',13431374,56.65,0,'http://www.moneycontrol.com/india/stockpricequote/construction-contracting-real-estate/housingdevelopmentinfrastructure/HDI',70),('2018-01-19','ICICIBANK',31504668,346.15,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/icicibank/ICI02',105),('2018-01-25','ICICIBANK',12815095,352.75,1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/icicibank/ICI02',95),('2018-01-29','ICICIBANK',30183656,360.8,1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/icicibank/ICI02',75),('2018-01-30','ICICIBANK',22638320,352.95,1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/icicibank/ICI02',82.5),('2018-02-01','ICICIBANK',22638320,352.95,1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/icicibank/ICI02',76.9918),('2018-02-02','ICICIBANK',29472296,346.2,1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/icicibank/ICI02',70),('2018-02-12','ICICIBANK',9493398,326.75,1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/icicibank/ICI02',74.8011),('2018-01-29','IDFCBANK',12008960,58.2,0,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/idfcbank/IDF01',75),('2018-01-30','IDFCBANK',7929504,57.95,0,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/idfcbank/IDF01',80),('2018-02-01','IDFCBANK',7085491,56.8,0,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/idfcbank/IDF01',67.6597),('2018-02-02','IDFCBANK',8773135,56.1,0,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/idfcbank/IDF01',70),('2018-01-25','INFY',10302359,1185.8,-1,'http://www.moneycontrol.com/india/stockpricequote/computers-software/infosys/IT',95),('2018-01-29','INFY',6774457,1175.4,-1,'http://www.moneycontrol.com/india/stockpricequote/computers-software/infosys/IT',75),('2018-01-30','INFY',5411501,1182.9,-1,'http://www.moneycontrol.com/india/stockpricequote/computers-software/infosys/IT',80),('2018-02-01','INFY',4606849,1150.25,-1,'http://www.moneycontrol.com/india/stockpricequote/computers-software/infosys/IT',71.7146),('2018-02-02','INFY',6502727,1144.6,-1,'http://www.moneycontrol.com/india/stockpricequote/computers-software/infosys/IT',70),('2018-02-12','INFY',2191345,1109.15,-1,'http://www.moneycontrol.com/india/stockpricequote/computers-software/infosys/IT',71.69),('2018-02-16','INFY',3993368,1114.45,1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',70),('2018-01-29','ITC',13124518,281.25,0,'http://www.moneycontrol.com/india/stockpricequote/cigarettes/itc/ITC',75),('2018-01-30','ITC',9569723,275.65,0,'http://www.moneycontrol.com/india/stockpricequote/cigarettes/itc/ITC',80),('2018-02-01','ITC',18945944,271.4,0,'http://www.moneycontrol.com/india/stockpricequote/cigarettes/itc/ITC',68.0941),('2018-02-02','ITC',59362152,275.3,0,'http://www.moneycontrol.com/india/stockpricequote/cigarettes/itc/ITC',70),('2018-02-12','ITC',14204123,271.35,0,'http://www.moneycontrol.com/india/stockpricequote/cigarettes/itc/ITC',70.7941),('2018-01-19','JINDALSTEL',12623614,264.35,-1,'http://www.moneycontrol.com/india/stockpricequote/steel-sponge-iron/jindalsteelpower/JSP',110),('2018-01-29','JINDALSTEL',19512588,280.2,0,'http://www.moneycontrol.com/india/stockpricequote/steel-sponge-iron/jindalsteelpower/JSP',75),('2018-01-30','JINDALSTEL',15891835,266.05,0,'http://www.moneycontrol.com/india/stockpricequote/steel-sponge-iron/jindalsteelpower/JSP',80),('2018-02-01','JINDALSTEL',11086304,266.45,0,'http://www.moneycontrol.com/india/stockpricequote/steel-sponge-iron/jindalsteelpower/JSP',67.8267),('2018-02-02','JINDALSTEL',9365791,265.95,0,'http://www.moneycontrol.com/india/stockpricequote/steel-sponge-iron/jindalsteelpower/JSP',70),('2018-02-12','JINDALSTEL',15474462,272.65,0,'http://www.moneycontrol.com/india/stockpricequote/steel-sponge-iron/jindalsteelpower/JSP',71.4005),('2018-01-25','KOTAKBANK',1168000,1080.1,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/kotakmahindrabank/KMB',95),('2018-01-29','KOTAKBANK',4061319,1092.35,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/kotakmahindrabank/KMB',75),('2018-01-30','KOTAKBANK',2215014,1115.1,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/kotakmahindrabank/KMB',75),('2018-02-01','KOTAKBANK',3143011,1108.95,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/kotakmahindrabank/KMB',77.3512),('2018-02-02','KOTAKBANK',3856283,1120.95,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/kotakmahindrabank/KMB',70),('2018-02-12','KOTAKBANK',1898563,1032,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/kotakmahindrabank/KMB',77.12),('2018-01-19','LT',4966982,1360.8,1,'http://www.moneycontrol.com/india/stockpricequote/infrastructure-general/larsentoubro/LT',110),('2018-01-25','LT',2147973,1401.2,-1,'http://www.moneycontrol.com/india/stockpricequote/infrastructure-general/larsentoubro/LT',95),('2018-01-29','LT',6113475,1416.5,0,'http://www.moneycontrol.com/india/stockpricequote/infrastructure-general/larsentoubro/LT',75),('2018-01-30','LT',2945415,1431.95,0,'http://www.moneycontrol.com/india/stockpricequote/infrastructure-general/larsentoubro/LT',80),('2018-02-01','LT',2614515,1416.5,0,'http://www.moneycontrol.com/india/stockpricequote/infrastructure-general/larsentoubro/LT',76.9711),('2018-02-02','LT',8187730,1455.6,0,'http://www.moneycontrol.com/india/stockpricequote/infrastructure-general/larsentoubro/LT',0),('2018-02-12','LT',2029257,1329.25,0,'http://www.moneycontrol.com/india/stockpricequote/infrastructure-general/larsentoubro/LT',73.8987),('2018-02-16','LT',1861841,1350.35,0,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',70),('2018-01-19','MARUTI',686971,9368.7,-1,'http://www.moneycontrol.com/india/stockpricequote/auto-cars-jeeps/marutisuzukiindia/MS24',100),('2018-01-25','MARUTI',568489,9434.95,1,'http://www.moneycontrol.com/india/stockpricequote/auto-cars-jeeps/marutisuzukiindia/MS24',100),('2018-01-29','MARUTI',705224,9278.2,1,'http://www.moneycontrol.com/india/stockpricequote/auto-cars-jeeps/marutisuzukiindia/MS24',75),('2018-01-30','MARUTI',1546624,9630.7,1,'http://www.moneycontrol.com/india/stockpricequote/auto-cars-jeeps/marutisuzukiindia/MS24',80),('2018-02-01','MARUTI',462650,9509.7,1,'http://www.moneycontrol.com/india/stockpricequote/auto-cars-jeeps/marutisuzukiindia/MS24',68.0168),('2018-02-02','MARUTI',550971,9401.85,1,'http://www.moneycontrol.com/india/stockpricequote/auto-cars-jeeps/marutisuzukiindia/MS24',75),('2018-02-12','MARUTI',364892,8936.1,1,'http://www.moneycontrol.com/india/stockpricequote/auto-cars-jeeps/marutisuzukiindia/MS24',70.6336),('2018-02-14','MARUTI',408523,9117.85,1,'http://www.moneycontrol.com/india/stockpricequote/auto-cars-jeeps/marutisuzukiindia/MS24',80),('2018-02-16','MARUTI',250781,9020.25,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',70),('2018-01-19','PCJEWELLER',2782492,581.1,-1,'http://www.moneycontrol.com/india/stockpricequote/diamond-cutting-jewellery-precious-metals/pcjeweller/PJ',110),('2018-01-25','RELIANCE',6532672,966.35,1,'http://www.moneycontrol.com/india/stockpricequote/refineries/relianceindustries/RI',95),('2018-01-29','RELIANCE',6249419,965.9,-1,'http://www.moneycontrol.com/india/stockpricequote/refineries/relianceindustries/RI',75),('2018-01-30','RELIANCE',4524605,964.5,-1,'http://www.moneycontrol.com/india/stockpricequote/refineries/relianceindustries/RI',80),('2018-02-01','RELIANCE',5738209,961.3,-1,'http://www.moneycontrol.com/india/stockpricequote/refineries/relianceindustries/RI',71.6706),('2018-02-02','RELIANCE',7554587,943.85,-1,'http://www.moneycontrol.com/india/stockpricequote/refineries/relianceindustries/RI',70),('2018-02-12','RELIANCE',5294279,897.85,-1,'http://www.moneycontrol.com/india/stockpricequote/refineries/relianceindustries/RI',73.9718),('2018-02-14','RELIANCE',5429792,915.5,-1,'http://www.moneycontrol.com/india/stockpricequote/refineries/relianceindustries/RI',65),('2018-01-29','SBIN',42466152,313.15,0,'http://www.moneycontrol.com/india/stockpricequote/banks-public-sector/statebankindia/SBI',75),('2018-01-30','SBIN',23600898,312.1,0,'http://www.moneycontrol.com/india/stockpricequote/banks-public-sector/statebankindia/SBI',80),('2018-02-01','SBIN',16409938,313.25,0,'http://www.moneycontrol.com/india/stockpricequote/banks-public-sector/statebankindia/SBI',76.8028),('2018-02-02','SBIN',19515992,306.05,0,'http://www.moneycontrol.com/india/stockpricequote/banks-public-sector/statebankindia/SBI',70),('2018-02-12','SBIN',15750824,296.4,0,'http://www.moneycontrol.com/india/stockpricequote/banks-public-sector/statebankindia/SBI',70.4582),('2018-02-14','SBIN',50839664,288.75,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-public-sector/statebankindia/SBI',70),('2018-02-14','TATAMOTORS',6002369,371.8,-1,'http://www.moneycontrol.com/india/stockpricequote/auto-lcvs-hcvs/tatamotors/TM03',70),('2018-02-16','TATAMOTORS',10225880,375.8,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',70),('2018-01-29','TATASTEEL',8397681,769.15,0,'http://www.moneycontrol.com/india/stockpricequote/steel-large/tatasteel/TIS',75),('2018-01-30','TATASTEEL',6508012,783.15,0,'http://www.moneycontrol.com/india/stockpricequote/steel-large/tatasteel/TIS',80),('2018-02-14','TATASTEEL',12036307,713.1,1,'http://www.moneycontrol.com/india/stockpricequote/steellarge/tatasteel/TIS',70),('2018-02-16','TCS',1232618,2925.85,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',70);
/*!40000 ALTER TABLE `basis_for_calls_archive` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_data`
--

LOCK TABLES `live_data` WRITE;
/*!40000 ALTER TABLE `live_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_data` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `live_data_archive`
--

LOCK TABLES `live_data_archive` WRITE;
/*!40000 ALTER TABLE `live_data_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_data_archive` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_option_price_data`
--

LOCK TABLES `live_option_price_data` WRITE;
/*!40000 ALTER TABLE `live_option_price_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_option_price_data` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `live_option_price_data_archive`
--

LOCK TABLES `live_option_price_data_archive` WRITE;
/*!40000 ALTER TABLE `live_option_price_data_archive` DISABLE KEYS */;
/*!40000 ALTER TABLE `live_option_price_data_archive` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `live_procedure_status`
--

LOCK TABLES `live_procedure_status` WRITE;
/*!40000 ALTER TABLE `live_procedure_status` DISABLE KEYS */;
INSERT INTO `live_procedure_status` VALUES ('2018-02-01',0),('2018-02-06',0),('2018-02-12',0),('2018-02-14',0),('2018-02-16',0);
/*!40000 ALTER TABLE `live_procedure_status` ENABLE KEYS */;
UNLOCK TABLES;

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
  `is_orders_handled` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`curr_time`,`process_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `live_process_status_record`
--

LOCK TABLES `live_process_status_record` WRITE;
/*!40000 ALTER TABLE `live_process_status_record` DISABLE KEYS */;
INSERT INTO `live_process_status_record` VALUES ('2018-02-16 09:15:00','SUCCESS',1,0),('2018-02-16 09:34:33','SUCCESS',1,0),('2018-02-16 09:35:33','ERRORD',1,0),('2018-02-16 09:36:33','SUCCESS',1,0),('2018-02-16 09:37:33','SUCCESS',1,0),('2018-02-16 09:38:34','SUCCESS',1,0),('2018-02-16 09:39:34','SUCCESS',1,0),('2018-02-16 09:40:34','SUCCESS',1,0),('2018-02-16 09:41:34','SUCCESS',1,0),('2018-02-16 09:42:34','SUCCESS',1,0),('2018-02-16 09:43:34','SUCCESS',1,0),('2018-02-16 09:44:34','SUCCESS',1,0),('2018-02-16 09:45:34','SUCCESS',1,0),('2018-02-16 09:46:34','SUCCESS',1,0),('2018-02-16 09:47:34','SUCCESS',1,0),('2018-02-16 09:48:34','SUCCESS',1,0),('2018-02-16 09:49:34','SUCCESS',1,0),('2018-02-16 09:50:34','SUCCESS',1,0),('2018-02-16 09:51:34','SUCCESS',1,0),('2018-02-16 09:52:34','SUCCESS',1,0),('2018-02-16 09:53:34','SUCCESS',1,0),('2018-02-16 09:54:34','SUCCESS',1,0),('2018-02-16 09:55:34','SUCCESS',1,0),('2018-02-16 09:56:34','SUCCESS',1,0),('2018-02-16 09:57:34','SUCCESS',1,0),('2018-02-16 09:58:34','SUCCESS',1,0),('2018-02-16 09:59:34','SUCCESS',1,0),('2018-02-16 10:00:34','SUCCESS',1,0),('2018-02-16 10:01:34','SUCCESS',1,0),('2018-02-16 10:02:34','SUCCESS',1,0),('2018-02-16 10:03:34','SUCCESS',1,0),('2018-02-16 10:04:34','SUCCESS',1,0),('2018-02-16 10:05:34','SUCCESS',1,0),('2018-02-16 10:06:34','SUCCESS',1,0),('2018-02-16 10:07:34','SUCCESS',1,0),('2018-02-16 10:08:34','SUCCESS',1,0),('2018-02-16 10:09:34','SUCCESS',1,0),('2018-02-16 10:10:34','SUCCESS',1,0),('2018-02-16 10:11:34','SUCCESS',1,0),('2018-02-16 10:12:34','SUCCESS',1,0),('2018-02-16 10:13:34','SUCCESS',1,0),('2018-02-16 10:14:34','SUCCESS',1,0),('2018-02-16 10:15:34','SUCCESS',1,0),('2018-02-16 10:16:34','SUCCESS',1,0),('2018-02-16 10:17:34','SUCCESS',1,0),('2018-02-16 10:18:34','SUCCESS',1,0),('2018-02-16 10:19:34','SUCCESS',1,0),('2018-02-16 10:20:34','SUCCESS',1,0),('2018-02-16 10:21:34','SUCCESS',1,0),('2018-02-16 10:22:34','SUCCESS',1,0),('2018-02-16 10:23:34','ERRORD',1,0),('2018-02-16 10:24:34','ERRORD',1,0),('2018-02-16 10:25:34','ERRORD',1,0),('2018-02-16 10:26:34','SUCCESS',1,0),('2018-02-16 10:27:34','SUCCESS',1,0),('2018-02-16 10:28:34','SUCCESS',1,0),('2018-02-16 10:29:34','SUCCESS',1,0),('2018-02-16 10:30:34','SUCCESS',1,0),('2018-02-16 10:31:34','SUCCESS',1,0),('2018-02-16 10:32:34','SUCCESS',1,0),('2018-02-16 10:33:34','SUCCESS',1,0),('2018-02-16 10:34:34','SUCCESS',1,0),('2018-02-16 10:35:34','SUCCESS',1,0),('2018-02-16 10:36:34','SUCCESS',1,0),('2018-02-16 10:37:34','SUCCESS',1,0),('2018-02-16 10:38:34','SUCCESS',1,0),('2018-02-16 10:39:34','SUCCESS',1,0),('2018-02-16 10:40:34','SUCCESS',1,0),('2018-02-16 10:41:34','SUCCESS',1,0),('2018-02-16 10:42:34','SUCCESS',1,0),('2018-02-16 10:43:34','SUCCESS',1,0),('2018-02-16 10:44:34','SUCCESS',1,0),('2018-02-16 10:45:34','SUCCESS',1,0),('2018-02-16 10:46:34','SUCCESS',1,0),('2018-02-16 10:47:34','SUCCESS',1,0),('2018-02-16 10:48:34','SUCCESS',1,0),('2018-02-16 10:49:34','SUCCESS',1,0),('2018-02-16 10:50:34','SUCCESS',1,0),('2018-02-16 10:51:34','SUCCESS',1,0),('2018-02-16 10:52:34','SUCCESS',1,0),('2018-02-16 10:53:34','SUCCESS',1,0),('2018-02-16 10:54:34','SUCCESS',1,0),('2018-02-16 10:55:34','SUCCESS',1,0),('2018-02-16 10:56:34','SUCCESS',1,0),('2018-02-16 10:57:34','SUCCESS',1,0),('2018-02-16 10:58:34','SUCCESS',1,0),('2018-02-16 10:59:34','SUCCESS',1,0),('2018-02-16 11:00:34','SUCCESS',1,0),('2018-02-16 11:01:34','SUCCESS',1,0),('2018-02-16 11:02:34','SUCCESS',1,0),('2018-02-16 11:04:07','SUCCESS',1,0),('2018-02-16 11:06:12','SUCCESS',1,0),('2018-02-16 11:07:12','SUCCESS',1,0),('2018-02-16 11:08:12','SUCCESS',1,0),('2018-02-16 11:09:12','SUCCESS',1,0),('2018-02-16 11:10:12','SUCCESS',1,0),('2018-02-16 11:11:12','SUCCESS',1,0),('2018-02-16 11:12:12','SUCCESS',1,0),('2018-02-16 11:13:12','SUCCESS',1,0),('2018-02-16 11:13:28','SUCCESS',1,0),('2018-02-16 11:13:33','SUCCESS',1,0),('2018-02-16 11:13:39','SUCCESS',1,0),('2018-02-16 11:13:44','SUCCESS',1,0),('2018-02-16 11:13:50','SUCCESS',1,0),('2018-02-16 11:13:56','SUCCESS',1,0),('2018-02-16 11:14:01','SUCCESS',1,0),('2018-02-16 11:14:07','SUCCESS',1,0),('2018-02-16 11:14:13','SUCCESS',1,0),('2018-02-16 11:14:18','SUCCESS',1,0),('2018-02-16 11:14:24','SUCCESS',1,0),('2018-02-16 11:14:29','SUCCESS',1,0),('2018-02-16 11:14:34','SUCCESS',1,0),('2018-02-16 11:15:24','SUCCESS',1,0),('2018-02-16 11:15:32','SUCCESS',1,0),('2018-02-16 11:15:37','SUCCESS',1,0),('2018-02-16 11:15:43','SUCCESS',1,0),('2018-02-16 11:15:48','SUCCESS',1,0),('2018-02-16 11:15:53','SUCCESS',1,0),('2018-02-16 11:15:58','SUCCESS',1,0),('2018-02-16 11:16:03','SUCCESS',1,0),('2018-02-16 11:16:08','SUCCESS',1,0),('2018-02-16 11:16:14','SUCCESS',1,0),('2018-02-16 11:16:19','SUCCESS',1,0),('2018-02-16 11:16:24','SUCCESS',1,0),('2018-02-16 11:16:29','SUCCESS',1,0),('2018-02-16 11:16:35','SUCCESS',1,0),('2018-02-16 11:16:40','SUCCESS',1,0),('2018-02-16 11:16:45','SUCCESS',1,0),('2018-02-16 11:16:50','SUCCESS',1,0),('2018-02-16 11:16:55','SUCCESS',1,0),('2018-02-16 11:17:00','SUCCESS',1,0),('2018-02-16 11:17:06','SUCCESS',1,0),('2018-02-16 11:17:12','SUCCESS',1,0),('2018-02-16 11:17:18','SUCCESS',1,0),('2018-02-16 11:17:23','SUCCESS',1,0),('2018-02-16 11:17:29','SUCCESS',1,0),('2018-02-16 11:17:34','SUCCESS',1,0),('2018-02-16 11:17:40','SUCCESS',1,0),('2018-02-16 11:17:45','SUCCESS',1,0),('2018-02-16 11:17:51','SUCCESS',1,0),('2018-02-16 11:17:56','SUCCESS',1,0),('2018-02-16 11:18:02','SUCCESS',1,0),('2018-02-16 11:18:07','SUCCESS',1,0),('2018-02-16 11:18:13','SUCCESS',1,0),('2018-02-16 11:18:18','SUCCESS',1,0),('2018-02-16 11:18:25','SUCCESS',1,0),('2018-02-16 11:18:30','SUCCESS',1,0),('2018-02-16 11:18:36','SUCCESS',1,0),('2018-02-16 11:18:41','SUCCESS',1,0),('2018-02-16 11:18:47','SUCCESS',1,0),('2018-02-16 11:18:52','SUCCESS',1,0),('2018-02-16 11:18:58','SUCCESS',1,0),('2018-02-16 11:19:03','SUCCESS',1,0),('2018-02-16 11:19:09','SUCCESS',1,0),('2018-02-16 11:19:14','SUCCESS',1,0),('2018-02-16 11:19:20','SUCCESS',1,0),('2018-02-16 11:19:25','SUCCESS',1,0),('2018-02-16 11:19:31','SUCCESS',1,0),('2018-02-16 11:19:36','SUCCESS',1,0),('2018-02-16 11:19:42','SUCCESS',1,0),('2018-02-16 11:19:47','SUCCESS',1,0),('2018-02-16 11:27:46','SUCCESS',1,0),('2018-02-16 11:27:54','SUCCESS',1,0),('2018-02-16 11:27:59','SUCCESS',1,0),('2018-02-16 11:28:05','SUCCESS',1,0),('2018-02-16 11:28:10','SUCCESS',1,0),('2018-02-16 11:28:15','SUCCESS',1,0),('2018-02-16 11:28:20','SUCCESS',1,0),('2018-02-16 11:28:25','SUCCESS',1,0),('2018-02-16 11:28:31','SUCCESS',1,0),('2018-02-16 11:28:36','SUCCESS',1,0),('2018-02-16 11:30:50','SUCCESS',1,0),('2018-02-16 11:30:56','SUCCESS',1,0),('2018-02-16 11:31:01','SUCCESS',1,0),('2018-02-16 11:31:06','SUCCESS',1,0),('2018-02-16 11:31:12','SUCCESS',1,0),('2018-02-16 11:31:17','SUCCESS',1,0),('2018-02-16 11:31:22','SUCCESS',1,0),('2018-02-16 11:31:27','SUCCESS',1,0),('2018-02-16 11:31:33','SUCCESS',1,0),('2018-02-16 11:31:38','SUCCESS',1,0),('2018-02-16 11:31:43','SUCCESS',1,0),('2018-02-16 11:31:48','SUCCESS',1,0),('2018-02-16 11:31:53','SUCCESS',1,0),('2018-02-16 11:31:58','SUCCESS',1,0),('2018-02-16 11:32:04','SUCCESS',1,0),('2018-02-16 11:32:09','SUCCESS',1,0),('2018-02-16 11:32:14','SUCCESS',1,0),('2018-02-16 11:32:19','SUCCESS',1,0),('2018-02-16 11:32:24','SUCCESS',1,0),('2018-02-16 11:32:30','SUCCESS',1,0),('2018-02-16 11:32:36','SUCCESS',1,0),('2018-02-16 11:32:41','SUCCESS',1,0),('2018-02-16 11:32:47','SUCCESS',1,0),('2018-02-16 11:32:52','SUCCESS',1,0),('2018-02-16 11:32:58','SUCCESS',1,0),('2018-02-16 11:33:03','SUCCESS',1,0),('2018-02-16 11:33:09','SUCCESS',1,0),('2018-02-16 11:33:14','SUCCESS',1,0),('2018-02-16 11:33:21','SUCCESS',1,0),('2018-02-16 11:33:26','SUCCESS',1,0),('2018-02-16 11:33:32','SUCCESS',1,0),('2018-02-16 11:33:37','SUCCESS',1,0),('2018-02-16 11:33:43','SUCCESS',1,0),('2018-02-16 11:33:48','SUCCESS',1,0),('2018-02-16 11:33:54','SUCCESS',1,0),('2018-02-16 11:33:59','SUCCESS',1,0),('2018-02-16 11:34:05','SUCCESS',1,0),('2018-02-16 11:34:10','SUCCESS',1,0),('2018-02-16 11:34:16','SUCCESS',1,0),('2018-02-16 11:34:22','SUCCESS',1,0),('2018-02-16 11:34:28','SUCCESS',1,0),('2018-02-16 11:34:33','SUCCESS',1,0),('2018-02-16 11:34:39','SUCCESS',1,0),('2018-02-16 11:34:44','SUCCESS',1,0),('2018-02-16 11:34:50','SUCCESS',1,0),('2018-02-16 11:34:55','SUCCESS',1,0),('2018-02-16 11:35:01','SUCCESS',1,0),('2018-02-16 11:35:06','SUCCESS',1,0),('2018-02-16 11:35:12','SUCCESS',1,0),('2018-02-16 11:35:17','SUCCESS',1,0),('2018-02-16 11:35:23','SUCCESS',1,0),('2018-02-16 11:35:29','SUCCESS',1,0),('2018-02-16 11:35:35','SUCCESS',1,0),('2018-02-16 11:35:40','SUCCESS',1,0),('2018-02-16 11:35:46','SUCCESS',1,0),('2018-02-16 11:35:51','SUCCESS',1,0),('2018-02-16 11:35:57','SUCCESS',1,0),('2018-02-16 11:36:02','SUCCESS',1,0),('2018-02-16 11:36:08','SUCCESS',1,0),('2018-02-16 11:36:13','SUCCESS',1,0),('2018-02-16 11:36:19','SUCCESS',1,0),('2018-02-16 11:36:24','SUCCESS',1,0),('2018-02-16 11:36:30','SUCCESS',1,0),('2018-02-16 11:36:35','SUCCESS',1,0),('2018-02-16 11:36:41','SUCCESS',1,0),('2018-02-16 11:36:46','SUCCESS',1,0),('2018-02-16 11:36:52','SUCCESS',1,0),('2018-02-16 11:36:57','SUCCESS',1,0),('2018-02-16 11:37:03','SUCCESS',1,0),('2018-02-16 11:37:08','SUCCESS',1,0),('2018-02-16 11:37:14','SUCCESS',1,0),('2018-02-16 11:37:20','SUCCESS',1,0),('2018-02-16 11:37:26','SUCCESS',1,0),('2018-02-16 11:37:31','SUCCESS',1,0),('2018-02-16 11:37:37','SUCCESS',1,0),('2018-02-16 11:37:42','SUCCESS',1,0),('2018-02-16 11:37:48','SUCCESS',1,0),('2018-02-16 11:37:53','SUCCESS',1,0),('2018-02-16 11:37:59','SUCCESS',1,0),('2018-02-16 11:38:04','SUCCESS',1,0),('2018-02-16 11:38:10','SUCCESS',1,0),('2018-02-16 11:38:15','SUCCESS',1,0),('2018-02-16 11:38:21','SUCCESS',1,0),('2018-02-16 11:38:26','SUCCESS',1,0),('2018-02-16 11:38:32','SUCCESS',1,0),('2018-02-16 11:38:37','SUCCESS',1,0),('2018-02-16 11:38:43','SUCCESS',1,0),('2018-02-16 11:38:48','SUCCESS',1,0),('2018-02-16 11:38:54','SUCCESS',1,0),('2018-02-16 11:38:59','SUCCESS',1,0),('2018-02-16 11:39:05','SUCCESS',1,0),('2018-02-16 11:39:10','SUCCESS',1,0),('2018-02-16 11:39:16','SUCCESS',1,0),('2018-02-16 11:39:21','SUCCESS',1,0),('2018-02-16 11:39:27','SUCCESS',1,0),('2018-02-16 11:39:32','SUCCESS',1,0),('2018-02-16 11:39:38','SUCCESS',1,0),('2018-02-16 11:39:43','SUCCESS',1,0),('2018-02-16 11:39:49','SUCCESS',1,0),('2018-02-16 11:39:55','SUCCESS',1,0),('2018-02-16 11:40:01','SUCCESS',1,0),('2018-02-16 11:40:06','SUCCESS',1,0),('2018-02-16 11:40:12','SUCCESS',1,0),('2018-02-16 11:40:17','SUCCESS',1,0),('2018-02-16 11:40:23','SUCCESS',1,0),('2018-02-16 11:40:28','SUCCESS',1,0),('2018-02-16 11:40:34','SUCCESS',1,0),('2018-02-16 11:40:39','SUCCESS',1,0),('2018-02-16 11:40:45','SUCCESS',1,0),('2018-02-16 11:40:50','SUCCESS',1,0),('2018-02-16 11:40:56','SUCCESS',1,0),('2018-02-16 11:41:01','SUCCESS',1,0),('2018-02-16 11:41:07','SUCCESS',1,0),('2018-02-16 11:41:12','SUCCESS',1,0),('2018-02-16 11:41:18','SUCCESS',1,0),('2018-02-16 11:41:23','SUCCESS',1,0),('2018-02-16 11:41:28','SUCCESS',1,0),('2018-02-16 11:41:33','SUCCESS',1,0),('2018-02-16 11:41:39','SUCCESS',1,0),('2018-02-16 11:41:44','SUCCESS',1,0),('2018-02-16 11:41:50','SUCCESS',1,0),('2018-02-16 11:41:55','SUCCESS',1,0),('2018-02-16 11:42:01','SUCCESS',1,0),('2018-02-16 11:42:06','SUCCESS',1,0),('2018-02-16 11:42:12','SUCCESS',1,0),('2018-02-16 11:42:17','SUCCESS',1,0),('2018-02-16 11:42:23','SUCCESS',1,0),('2018-02-16 11:42:28','SUCCESS',1,0),('2018-02-16 11:42:36','SUCCESS',1,0),('2018-02-16 11:42:41','SUCCESS',1,0),('2018-02-16 11:42:48','SUCCESS',1,0),('2018-02-16 11:42:53','SUCCESS',1,0),('2018-02-16 11:43:01','SUCCESS',1,0),('2018-02-16 11:43:06','SUCCESS',1,0),('2018-02-16 11:43:14','SUCCESS',1,0),('2018-02-16 11:43:19','SUCCESS',1,0),('2018-02-16 11:43:27','SUCCESS',1,0),('2018-02-16 11:43:32','SUCCESS',1,0),('2018-02-16 11:43:40','SUCCESS',1,0),('2018-02-16 11:43:45','SUCCESS',1,0),('2018-02-16 11:43:55','SUCCESS',1,0),('2018-02-16 11:44:00','SUCCESS',1,0),('2018-02-16 11:44:09','SUCCESS',1,0),('2018-02-16 11:44:14','SUCCESS',1,0),('2018-02-16 11:44:23','SUCCESS',1,0),('2018-02-16 11:44:28','SUCCESS',1,0),('2018-02-16 11:44:37','SUCCESS',1,0),('2018-02-16 11:44:42','SUCCESS',1,0),('2018-02-16 11:44:52','SUCCESS',1,0),('2018-02-16 11:44:57','SUCCESS',1,0),('2018-02-16 11:45:08','SUCCESS',1,0),('2018-02-16 11:45:13','SUCCESS',1,0),('2018-02-16 11:45:24','SUCCESS',1,0),('2018-02-16 11:45:29','SUCCESS',1,0),('2018-02-16 11:45:39','SUCCESS',1,0),('2018-02-16 11:45:44','SUCCESS',1,0),('2018-02-16 11:45:55','SUCCESS',1,0),('2018-02-16 11:46:00','SUCCESS',1,0),('2018-02-16 11:46:10','SUCCESS',1,0),('2018-02-16 11:46:15','SUCCESS',1,0),('2018-02-16 11:46:26','SUCCESS',1,0),('2018-02-16 11:46:31','SUCCESS',1,0),('2018-02-16 11:46:40','SUCCESS',1,0),('2018-02-16 11:46:45','SUCCESS',1,0),('2018-02-16 11:46:55','SUCCESS',1,0),('2018-02-16 11:47:00','SUCCESS',1,0),('2018-02-16 11:47:10','SUCCESS',1,0),('2018-02-16 11:47:15','SUCCESS',1,0),('2018-02-16 11:47:23','SUCCESS',1,0),('2018-02-16 11:47:28','SUCCESS',1,0),('2018-02-16 11:47:38','SUCCESS',1,0),('2018-02-16 11:47:43','SUCCESS',1,0),('2018-02-16 11:47:52','SUCCESS',1,0),('2018-02-16 11:47:57','SUCCESS',1,0),('2018-02-16 11:48:06','SUCCESS',1,0),('2018-02-16 11:48:11','SUCCESS',1,0),('2018-02-16 11:48:21','SUCCESS',1,0),('2018-02-16 11:48:26','SUCCESS',1,0),('2018-02-16 11:48:34','SUCCESS',1,0),('2018-02-16 11:48:39','SUCCESS',1,0),('2018-02-16 11:48:48','SUCCESS',1,0),('2018-02-16 11:48:53','SUCCESS',1,0),('2018-02-16 11:49:02','SUCCESS',1,0),('2018-02-16 11:49:07','SUCCESS',1,0),('2018-02-16 11:49:17','SUCCESS',1,0),('2018-02-16 11:49:34','SUCCESS',1,0),('2018-02-16 11:49:42','SUCCESS',1,0),('2018-02-16 11:49:47','SUCCESS',1,0),('2018-02-16 12:53:22','SUCCESS',1,0),('2018-02-16 12:54:22','SUCCESS',1,0),('2018-02-16 12:55:22','SUCCESS',1,0),('2018-02-16 12:56:22','SUCCESS',1,0),('2018-02-16 12:57:22','SUCCESS',1,0),('2018-02-16 12:58:22','SUCCESS',1,0),('2018-02-16 12:59:22','SUCCESS',1,0),('2018-02-16 13:00:22','SUCCESS',1,0),('2018-02-16 13:01:22','SUCCESS',1,0),('2018-02-16 13:02:22','SUCCESS',1,0),('2018-02-16 13:03:22','SUCCESS',1,0),('2018-02-16 13:04:22','SUCCESS',1,0),('2018-02-16 13:05:22','SUCCESS',1,0),('2018-02-16 13:06:22','SUCCESS',1,0),('2018-02-16 13:07:22','SUCCESS',1,0),('2018-02-16 13:08:22','SUCCESS',1,0),('2018-02-16 13:09:22','SUCCESS',1,0),('2018-02-16 13:10:22','SUCCESS',1,0),('2018-02-16 13:11:22','SUCCESS',1,0),('2018-02-16 13:12:22','SUCCESS',1,0),('2018-02-16 13:13:22','SUCCESS',1,0),('2018-02-16 13:14:22','SUCCESS',1,0),('2018-02-16 13:15:22','SUCCESS',1,0),('2018-02-16 13:16:22','SUCCESS',1,0),('2018-02-16 13:17:22','SUCCESS',1,0),('2018-02-16 13:18:22','SUCCESS',1,0),('2018-02-16 13:19:22','SUCCESS',1,0),('2018-02-16 13:20:22','SUCCESS',1,0),('2018-02-16 13:21:22','SUCCESS',1,0),('2018-02-16 13:22:22','SUCCESS',1,0),('2018-02-16 13:23:22','SUCCESS',1,0),('2018-02-16 13:24:22','SUCCESS',1,0),('2018-02-16 13:25:22','SUCCESS',1,0),('2018-02-16 13:26:22','SUCCESS',1,0),('2018-02-16 13:27:22','SUCCESS',1,0),('2018-02-16 13:28:22','SUCCESS',1,0),('2018-02-16 13:29:22','SUCCESS',1,0),('2018-02-16 13:30:22','SUCCESS',1,0),('2018-02-16 13:31:22','SUCCESS',1,0),('2018-02-16 13:32:22','SUCCESS',1,0),('2018-02-16 13:33:22','SUCCESS',1,0),('2018-02-16 13:34:22','SUCCESS',1,0),('2018-02-16 13:35:22','SUCCESS',1,0),('2018-02-16 13:36:22','SUCCESS',1,0),('2018-02-16 13:37:22','SUCCESS',1,0),('2018-02-16 13:38:22','SUCCESS',1,0),('2018-02-16 13:39:22','SUCCESS',1,0),('2018-02-16 13:40:22','SUCCESS',1,0),('2018-02-16 13:41:22','SUCCESS',1,0),('2018-02-16 13:42:22','SUCCESS',1,0),('2018-02-16 13:43:22','SUCCESS',1,0),('2018-02-16 13:44:22','SUCCESS',1,0),('2018-02-16 13:45:22','SUCCESS',1,0),('2018-02-16 13:46:22','SUCCESS',1,0),('2018-02-16 13:47:22','SUCCESS',1,0),('2018-02-16 13:48:22','SUCCESS',1,0),('2018-02-16 13:49:22','SUCCESS',1,0),('2018-02-16 13:50:22','SUCCESS',1,0),('2018-02-16 13:51:22','SUCCESS',1,0),('2018-02-16 13:52:22','SUCCESS',1,0),('2018-02-16 13:53:22','SUCCESS',1,0),('2018-02-16 13:54:22','SUCCESS',1,0),('2018-02-16 13:55:22','SUCCESS',1,0),('2018-02-16 13:56:22','SUCCESS',1,0),('2018-02-16 13:57:22','SUCCESS',1,0),('2018-02-16 13:58:22','SUCCESS',1,0),('2018-02-16 13:59:22','SUCCESS',1,0),('2018-02-16 14:00:22','SUCCESS',1,0),('2018-02-16 14:01:22','SUCCESS',1,0),('2018-02-16 14:02:22','SUCCESS',1,0),('2018-02-16 14:03:22','SUCCESS',1,0),('2018-02-16 14:04:22','SUCCESS',1,0),('2018-02-16 14:05:22','SUCCESS',1,0),('2018-02-16 14:06:22','SUCCESS',1,0),('2018-02-16 14:07:22','SUCCESS',1,0),('2018-02-16 14:08:22','SUCCESS',1,0),('2018-02-16 14:09:22','SUCCESS',1,0),('2018-02-16 14:10:22','SUCCESS',1,0),('2018-02-16 14:11:22','SUCCESS',1,0),('2018-02-16 14:12:22','SUCCESS',1,0),('2018-02-16 14:13:22','SUCCESS',1,0),('2018-02-16 14:14:22','SUCCESS',1,0),('2018-02-16 14:15:22','SUCCESS',1,0),('2018-02-16 14:16:22','SUCCESS',1,0),('2018-02-16 14:17:22','SUCCESS',1,0),('2018-02-16 14:18:22','SUCCESS',1,0),('2018-02-16 14:19:22','SUCCESS',1,0),('2018-02-16 14:20:22','SUCCESS',1,0),('2018-02-16 14:21:22','SUCCESS',1,0),('2018-02-16 14:22:22','SUCCESS',1,0),('2018-02-16 14:23:22','SUCCESS',1,0),('2018-02-16 14:24:22','SUCCESS',1,0),('2018-02-16 14:25:22','SUCCESS',1,0),('2018-02-16 14:26:22','SUCCESS',1,0),('2018-02-16 14:27:22','SUCCESS',1,0),('2018-02-16 14:28:22','SUCCESS',1,0),('2018-02-16 14:29:22','SUCCESS',1,0),('2018-02-16 14:30:22','SUCCESS',1,0),('2018-02-16 14:31:22','SUCCESS',1,0),('2018-02-16 14:32:22','SUCCESS',1,0),('2018-02-16 14:33:22','SUCCESS',1,0),('2018-02-16 14:33:27','SUCCESS',1,0),('2018-02-16 14:33:32','SUCCESS',1,0),('2018-02-16 14:33:37','SUCCESS',1,0),('2018-02-16 14:33:42','SUCCESS',1,0),('2018-02-16 14:33:47','SUCCESS',1,0),('2018-02-16 14:33:52','SUCCESS',1,0),('2018-02-16 14:33:58','SUCCESS',1,0),('2018-02-16 14:34:03','SUCCESS',1,0),('2018-02-16 14:34:08','SUCCESS',1,0),('2018-02-16 14:34:13','SUCCESS',1,0),('2018-02-16 14:34:18','SUCCESS',1,0),('2018-02-16 14:34:23','SUCCESS',1,0),('2018-02-16 14:34:28','SUCCESS',1,0),('2018-02-16 14:34:33','SUCCESS',1,0),('2018-02-16 14:34:38','SUCCESS',1,0),('2018-02-16 14:34:43','SUCCESS',1,0),('2018-02-16 14:34:49','SUCCESS',1,0),('2018-02-16 14:34:54','SUCCESS',1,0),('2018-02-16 14:34:59','SUCCESS',1,0),('2018-02-16 14:35:04','SUCCESS',1,0),('2018-02-16 14:35:09','SUCCESS',1,0),('2018-02-16 14:35:14','SUCCESS',1,0),('2018-02-16 14:35:19','SUCCESS',1,0),('2018-02-16 14:35:24','SUCCESS',1,0),('2018-02-16 14:35:29','SUCCESS',1,0),('2018-02-16 14:35:34','SUCCESS',1,0),('2018-02-16 14:35:39','SUCCESS',1,0),('2018-02-16 14:35:45','SUCCESS',1,0),('2018-02-16 14:35:50','SUCCESS',1,0),('2018-02-16 14:35:55','SUCCESS',1,0),('2018-02-16 14:36:00','SUCCESS',1,0),('2018-02-16 14:36:05','SUCCESS',1,0),('2018-02-16 14:36:10','SUCCESS',1,0),('2018-02-16 14:36:15','SUCCESS',1,0),('2018-02-16 14:36:20','SUCCESS',1,0),('2018-02-16 14:36:25','SUCCESS',1,0),('2018-02-16 14:36:31','SUCCESS',1,0),('2018-02-16 14:36:36','SUCCESS',1,0),('2018-02-16 14:36:41','SUCCESS',1,0),('2018-02-16 14:36:46','SUCCESS',1,0),('2018-02-16 14:36:51','SUCCESS',1,0),('2018-02-16 14:36:56','SUCCESS',1,0),('2018-02-16 14:37:01','SUCCESS',1,0),('2018-02-16 14:37:06','SUCCESS',1,0),('2018-02-16 14:37:12','SUCCESS',1,0),('2018-02-16 14:37:17','SUCCESS',1,0),('2018-02-16 14:37:22','SUCCESS',1,0),('2018-02-16 14:37:27','SUCCESS',1,0),('2018-02-16 14:37:32','SUCCESS',1,0),('2018-02-16 14:37:37','SUCCESS',1,0),('2018-02-16 14:37:42','SUCCESS',1,0),('2018-02-16 14:37:47','SUCCESS',1,0),('2018-02-16 14:37:52','SUCCESS',1,0),('2018-02-16 14:37:57','SUCCESS',1,0),('2018-02-16 14:38:03','SUCCESS',1,0),('2018-02-16 14:38:08','SUCCESS',1,0),('2018-02-16 14:38:13','SUCCESS',1,0),('2018-02-16 14:38:18','SUCCESS',1,0),('2018-02-16 14:53:28','SUCCESS',1,0),('2018-02-16 14:54:28','SUCCESS',1,0),('2018-02-16 14:55:28','SUCCESS',1,0),('2018-02-16 14:56:28','SUCCESS',1,0),('2018-02-16 14:57:28','SUCCESS',1,0),('2018-02-16 14:58:28','SUCCESS',1,0),('2018-02-16 14:59:28','SUCCESS',1,0),('2018-02-16 15:00:28','SUCCESS',1,0),('2018-02-16 15:01:28','SUCCESS',1,0),('2018-02-16 15:02:28','SUCCESS',1,0),('2018-02-16 15:03:28','SUCCESS',1,0),('2018-02-16 15:04:28','SUCCESS',1,0),('2018-02-16 15:05:28','SUCCESS',1,0),('2018-02-16 15:06:28','SUCCESS',1,0),('2018-02-16 15:07:28','SUCCESS',1,0),('2018-02-16 15:08:28','SUCCESS',1,0),('2018-02-16 15:09:28','SUCCESS',1,0),('2018-02-16 15:10:28','SUCCESS',1,0),('2018-02-16 15:11:28','SUCCESS',1,0),('2018-02-16 15:12:28','SUCCESS',1,0),('2018-02-16 15:13:28','SUCCESS',1,0),('2018-02-16 15:14:28','SUCCESS',1,0),('2018-02-16 15:15:28','SUCCESS',1,0),('2018-02-16 15:16:28','SUCCESS',1,0),('2018-02-16 15:17:28','SUCCESS',1,0),('2018-02-16 15:18:28','SUCCESS',1,0),('2018-02-16 15:19:28','SUCCESS',1,0),('2018-02-16 15:20:28','SUCCESS',1,0),('2018-02-16 15:21:28','SUCCESS',1,0),('2018-02-16 15:22:28','SUCCESS',1,0),('2018-02-16 15:23:28','SUCCESS',1,0),('2018-02-16 15:24:28','SUCCESS',1,0),('2018-02-16 15:25:28','SUCCESS',1,0),('2018-02-16 15:26:28','SUCCESS',1,0),('2018-02-16 15:27:28','SUCCESS',1,0),('2018-02-16 15:28:28','SUCCESS',1,0),('2018-02-16 15:29:28','SUCCESS',1,0),('2018-02-16 15:30:28','SUCCESS',1,0),('2018-02-16 15:31:28','SUCCESS',1,1);
/*!40000 ALTER TABLE `live_process_status_record` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_messages`
--

LOCK TABLES `log_messages` WRITE;
/*!40000 ALTER TABLE `log_messages` DISABLE KEYS */;
INSERT INTO `log_messages` VALUES (110,'2018-02-16 09:33:24','LIVE_DATA_EXECUTION_MASTER - STARTING - 2018-02-16 09:33:24','START'),(111,'2018-02-16 11:50:09','LIVE_DATA_EXECUTION_MASTER - ENDING - 2018-02-16 11:50:09','END'),(112,'2018-02-16 12:53:21','LIVE_DATA_EXECUTION_MASTER - STARTING - 2018-02-16 12:53:21','START'),(113,'2018-02-16 14:38:29','LIVE_DATA_EXECUTION_MASTER - ENDING - 2018-02-16 14:38:29','END'),(114,'2018-02-16 14:53:27','LIVE_DATA_EXECUTION_MASTER - STARTING - 2018-02-16 14:53:27','START'),(115,'2018-02-16 15:32:34','LIVE_DATA_EXECUTION_MASTER - ENDING - 2018-02-16 15:32:34','END');
/*!40000 ALTER TABLE `log_messages` ENABLE KEYS */;
UNLOCK TABLES;

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
  `is_new_orders_done` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`curr_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market_day_events_status`
--

LOCK TABLES `market_day_events_status` WRITE;
/*!40000 ALTER TABLE `market_day_events_status` DISABLE KEYS */;
INSERT INTO `market_day_events_status` VALUES ('2018-02-12',1,1,1),('2018-02-14',1,1,1),('2018-02-16',1,1,1);
/*!40000 ALTER TABLE `market_day_events_status` ENABLE KEYS */;
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
  `original_max_strength` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=177 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negative_price_trend_data`
--

LOCK TABLES `negative_price_trend_data` WRITE;
/*!40000 ALTER TABLE `negative_price_trend_data` DISABLE KEYS */;
INSERT INTO `negative_price_trend_data` VALUES (166,'HDFC','2018-02-16 09:20:35','2018-02-16 09:34:10','2018-02-16 09:35:33',67198,330384,1830,1820.85,1.89304,1,NULL,NULL),(167,'INFY','2018-02-16 09:29:58','2018-02-16 09:36:26','2018-02-16 09:37:33',508576,869465,1141,1135.25,5.40985,1,NULL,NULL),(168,'TATAMOTORS','2018-02-16 09:24:16','2018-02-16 09:43:26','2018-02-16 09:43:34',327358,670301,378.9,377,1.7431,1,NULL,NULL),(169,'TATAMOTORS','2018-02-16 09:24:15','2018-02-16 09:45:25','2018-02-16 09:45:34',326336,730630,378.7,376.8,1.85975,1,168,NULL),(170,'TATAMOTORS','2018-02-16 09:53:22','2018-02-16 10:04:28','2018-02-16 10:05:34',1080547,2548367,376.65,374.7,12.4776,1,NULL,NULL),(171,'MARUTI','2018-02-16 09:59:41','2018-02-16 10:11:26','2018-02-16 10:11:34',46924,73976,9000.05,8955,3.4389,1,NULL,NULL),(172,'TCS','2018-02-16 09:49:49','2018-02-16 10:09:38','2018-02-16 10:11:34',264936,356963,2990,2975,1.40811,1,NULL,NULL),(173,'LT','2018-02-16 10:10:27','2018-02-16 10:20:25','2018-02-16 10:21:34',220633,286076,1358,1351.2,1.32056,1,NULL,NULL),(174,'TCS','2018-02-16 10:18:31','2018-02-16 10:23:15','2018-02-16 10:23:34',432678,476765,2996.05,2981.05,2.67899,1,NULL,2.82992),(175,'INFY','2018-02-16 10:32:32','2018-02-16 10:34:49','2018-02-16 10:35:34',1431840,1461199,1137.85,1132,1.17426,1,NULL,NULL),(176,'INFY','2018-02-16 10:30:53','2018-02-16 10:50:54','2018-02-16 10:51:34',1410799,1679172,1137.05,1131.35,1.25576,1,175,NULL);
/*!40000 ALTER TABLE `negative_price_trend_data` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `negative_price_trend_data_for_sell_order`
--

LOCK TABLES `negative_price_trend_data_for_sell_order` WRITE;
/*!40000 ALTER TABLE `negative_price_trend_data_for_sell_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `negative_price_trend_data_for_sell_order` ENABLE KEYS */;
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
-- Dumping data for table `negative_price_trend_data_log`
--

LOCK TABLES `negative_price_trend_data_log` WRITE;
/*!40000 ALTER TABLE `negative_price_trend_data_log` DISABLE KEYS */;
INSERT INTO `negative_price_trend_data_log` VALUES ('HDFC','2018-02-16 09:18:08','2018-02-16 09:39:28','2018-02-16 09:39:34',49703,382301,1831.2,1822,1.51595,0,0),('HDFC','2018-02-16 09:18:15','2018-02-16 09:39:38','2018-02-16 09:41:34',51537,383054,1830.85,1821.6,1.49905,0,0),('HDFC','2018-02-16 09:20:35','2018-02-16 09:34:10','2018-02-16 09:35:33',67198,330384,1830,1820.85,1.89304,1,NULL),('HDFC','2018-02-16 09:20:52','2018-02-16 09:36:43','2018-02-16 09:37:33',68408,359232,1829.8,1820.65,1.79249,0,0),('INFY','2018-02-16 09:29:43','2018-02-16 09:45:45','2018-02-16 09:47:34',481278,1001351,1139.9,1134.2,3.16885,0,0),('INFY','2018-02-16 09:29:46','2018-02-16 09:41:55','2018-02-16 09:43:34',491219,946378,1140.4,1134.6,3.59821,0,0),('INFY','2018-02-16 09:29:52','2018-02-16 09:55:31','2018-02-16 09:55:34',502173,1089483,1141.1,1135.35,2.21978,0,0),('INFY','2018-02-16 09:29:53','2018-02-16 09:40:38','2018-02-16 09:41:34',503154,929542,1141.6,1135.8,3.81384,0,0),('INFY','2018-02-16 09:29:53','2018-02-16 09:47:55','2018-02-16 09:49:34',503154,1028112,1141.6,1135.85,2.82338,0,0),('INFY','2018-02-16 09:29:53','2018-02-16 09:55:34','2018-02-16 09:57:34',503154,1090909,1141.6,1135.75,2.18162,0,0),('INFY','2018-02-16 09:29:53','2018-02-16 09:57:59','2018-02-16 09:59:34',503154,1104743,1141.6,1135.85,2.07642,0,0),('INFY','2018-02-16 09:29:53','2018-02-16 09:59:41','2018-02-16 10:01:34',503154,1120502,1141.6,1135.85,2.00925,0,0),('INFY','2018-02-16 09:29:55','2018-02-16 09:43:43','2018-02-16 09:45:34',504070,959652,1140.85,1135.1,3.1998,0,0),('INFY','2018-02-16 09:29:58','2018-02-16 09:36:26','2018-02-16 09:37:33',508576,869465,1141,1135.25,5.40985,1,NULL),('INFY','2018-02-16 09:29:58','2018-02-16 09:49:45','2018-02-16 09:51:34',508576,1052140,1141,1135.25,2.66344,0,0),('INFY','2018-02-16 09:32:07','2018-02-16 10:02:04','2018-02-16 10:03:34',696783,1147960,1138.7,1133,1.47015,0,0),('INFY','2018-02-16 09:33:38','2018-02-16 10:03:36','2018-02-16 10:05:34',769112,1169684,1138.75,1133,1.29323,0,0),('INFY','2018-02-16 10:30:53','2018-02-16 10:50:54','2018-02-16 10:51:34',1410799,1679172,1137.05,1131.35,1.25576,1,175),('INFY','2018-02-16 10:32:13','2018-02-16 10:58:23','2018-02-16 10:59:34',1428900,1760787,1138,1132.3,1.18898,0,0),('INFY','2018-02-16 10:32:32','2018-02-16 10:34:49','2018-02-16 10:35:34',1431840,1461199,1137.85,1132,1.17426,1,NULL),('INFY','2018-02-16 10:32:32','2018-02-16 10:56:07','2018-02-16 10:57:34',1431840,1745571,1137.85,1132.15,1.24689,0,0),('INFY','2018-02-16 10:32:41','2018-02-16 10:55:03','2018-02-16 10:55:34',1434989,1737587,1137.7,1131.95,1.25686,0,0),('INFY','2018-02-16 10:32:46','2018-02-16 10:51:34','2018-02-16 10:53:34',1438447,1686426,1137.6,1131.9,1.23605,0,0),('INFY','2018-02-16 10:33:17','2018-02-16 10:48:48','2018-02-16 10:49:34',1441505,1647759,1135.7,1130,1.24354,0,0),('LT','2018-02-16 10:02:18','2018-02-16 10:21:43','2018-02-16 10:23:34',187487,290820,1360.95,1354,1.0495,0,0),('LT','2018-02-16 10:02:23','2018-02-16 10:23:54','2018-02-16 10:25:34',187617,296238,1360.5,1353.6,1.00241,0,0),('LT','2018-02-16 10:09:43','2018-02-16 10:26:34','2018-02-16 10:27:34',218955,307229,1359,1352.2,1.05438,0,0),('LT','2018-02-16 10:10:27','2018-02-16 10:20:25','2018-02-16 10:21:34',220633,286076,1358,1351.2,1.32056,1,NULL),('MARUTI','2018-02-16 09:58:00','2018-02-16 10:13:46','2018-02-16 10:15:34',43542,76836,9008.45,8963.35,3.15356,0,0),('MARUTI','2018-02-16 09:58:13','2018-02-16 10:16:36','2018-02-16 10:17:34',43650,80826,9005.15,8960,3.01561,0,0),('MARUTI','2018-02-16 09:58:13','2018-02-16 10:18:03','2018-02-16 10:19:34',43650,83164,9005.15,8960,2.97092,0,0),('MARUTI','2018-02-16 09:58:17','2018-02-16 10:20:48','2018-02-16 10:21:34',43696,90290,9002.5,8957.4,3.08832,0,0),('MARUTI','2018-02-16 09:59:40','2018-02-16 10:11:36','2018-02-16 10:13:34',46895,74234,9003.45,8958.15,3.4044,0,0),('MARUTI','2018-02-16 09:59:41','2018-02-16 10:11:26','2018-02-16 10:11:34',46924,73976,9000.05,8955,3.4389,1,NULL),('MARUTI','2018-02-16 09:59:56','2018-02-16 10:26:50','2018-02-16 10:27:34',49309,99699,8983.6,8938.5,2.78982,0,0),('MARUTI','2018-02-16 10:00:10','2018-02-16 10:29:52','2018-02-16 10:31:34',50174,103673,8985.3,8940.3,2.68916,0,0),('MARUTI','2018-02-16 10:05:34','2018-02-16 10:34:24','2018-02-16 10:35:34',60688,109730,8986,8941,2.53942,0,0),('MARUTI','2018-02-16 10:05:51','2018-02-16 10:31:44','2018-02-16 10:33:34',61266,105087,8989.95,8945,2.5316,0,0),('MARUTI','2018-02-16 10:07:00','2018-02-16 10:35:35','2018-02-16 10:37:34',62594,110353,8982.75,8937,2.45283,0,0),('MARUTI','2018-02-16 10:07:11','2018-02-16 10:22:11','2018-02-16 10:23:34',62664,92776,8979.9,8935,3.00176,0,0),('MARUTI','2018-02-16 10:07:11','2018-02-16 10:24:00','2018-02-16 10:25:34',62664,95514,8979.9,8935,2.92095,0,0),('MARUTI','2018-02-16 10:07:11','2018-02-16 10:27:50','2018-02-16 10:29:34',62664,100581,8979.9,8935,2.74563,0,0),('TATAMOTORS','2018-02-16 09:24:15','2018-02-16 09:45:25','2018-02-16 09:45:34',326336,730630,378.7,376.8,1.85975,1,168),('TATAMOTORS','2018-02-16 09:24:16','2018-02-16 09:43:26','2018-02-16 09:43:34',327358,670301,378.9,377,1.7431,1,NULL),('TATAMOTORS','2018-02-16 09:41:25','2018-02-16 09:53:36','2018-02-16 09:55:34',613492,2092015,378.45,376.55,11.8083,0,0),('TATAMOTORS','2018-02-16 09:41:36','2018-02-16 09:47:28','2018-02-16 09:47:34',615270,805646,378.3,376.4,3.15631,0,0),('TATAMOTORS','2018-02-16 09:41:36','2018-02-16 09:49:15','2018-02-16 09:49:34',615270,901054,378.3,376.4,3.63358,0,0),('TATAMOTORS','2018-02-16 09:41:49','2018-02-16 09:51:46','2018-02-16 09:53:34',621063,1061636,378,376.1,4.30337,0,0),('TATAMOTORS','2018-02-16 09:42:04','2018-02-16 09:50:06','2018-02-16 09:51:34',624759,1032202,377.5,375.6,4.92278,0,0),('TATAMOTORS','2018-02-16 09:42:44','2018-02-16 09:56:20','2018-02-16 09:57:34',660312,2408194,377.8,375.85,12.1641,0,0),('TATAMOTORS','2018-02-16 09:44:28','2018-02-16 10:02:01','2018-02-16 10:03:34',695575,2486017,377.4,375.5,9.89937,0,0),('TATAMOTORS','2018-02-16 09:44:36','2018-02-16 09:58:25','2018-02-16 09:59:34',695747,2433809,377.35,375.45,12.2047,0,0),('TATAMOTORS','2018-02-16 09:44:54','2018-02-16 10:00:06','2018-02-16 10:01:34',702973,2460848,377.2,375.3,11.2158,0,0),('TATAMOTORS','2018-02-16 09:50:06','2018-02-16 10:19:36','2018-02-16 10:21:34',1032202,3022121,375.6,373.55,2.26611,0,0),('TATAMOTORS','2018-02-16 09:50:55','2018-02-16 10:11:35','2018-02-16 10:13:34',1045177,2768938,375.75,373.85,3.0245,0,0),('TATAMOTORS','2018-02-16 09:50:55','2018-02-16 10:15:30','2018-02-16 10:15:34',1045177,2938616,375.75,373.85,2.79292,0,0),('TATAMOTORS','2018-02-16 09:51:58','2018-02-16 10:21:58','2018-02-16 10:23:34',1063766,3095185,375.95,373,1.58229,0,0),('TATAMOTORS','2018-02-16 09:52:09','2018-02-16 10:09:42','2018-02-16 10:11:34',1068084,2668843,376.05,374.15,3.31011,0,0),('TATAMOTORS','2018-02-16 09:52:09','2018-02-16 10:17:52','2018-02-16 10:19:34',1068084,2979936,376.05,374.15,2.69795,0,0),('TATAMOTORS','2018-02-16 09:52:10','2018-02-16 10:16:25','2018-02-16 10:17:34',1068384,2958194,376,374.1,2.82776,0,0),('TATAMOTORS','2018-02-16 09:52:17','2018-02-16 10:07:57','2018-02-16 10:09:34',1068844,2640580,376.2,374.3,9.7037,0,0),('TATAMOTORS','2018-02-16 09:53:22','2018-02-16 10:04:28','2018-02-16 10:05:34',1080547,2548367,376.65,374.7,12.4776,1,NULL),('TATAMOTORS','2018-02-16 09:53:22','2018-02-16 10:05:34','2018-02-16 10:07:34',1080547,2568794,376.65,374.75,11.8134,0,0),('TATAMOTORS','2018-02-16 09:53:35','2018-02-16 10:23:35','2018-02-16 10:25:34',1299890,3122028,376.3,373.2,1.35188,0,0),('TATAMOTORS','2018-02-16 09:56:20','2018-02-16 10:26:20','2018-02-16 10:27:34',2146101,3158676,375.55,373.5,1.13376,0,0),('TCS','2018-02-16 09:49:49','2018-02-16 10:09:38','2018-02-16 10:11:34',264936,356963,2990,2975,1.40811,1,NULL),('TCS','2018-02-16 10:18:31','2018-02-16 10:23:15','2018-02-16 10:23:34',432678,476765,2996.05,2981.05,2.82992,1,NULL),('TCS','2018-02-16 10:18:31','2018-02-16 10:23:35','2018-02-16 10:25:34',432678,478053,2996.05,2980.8,2.67637,0,0),('TCS','2018-02-16 10:18:31','2018-02-16 10:28:25','2018-02-16 10:29:34',431951,495357,2995.2,2980.1,1.93251,0,0),('TCS','2018-02-16 10:18:31','2018-02-16 10:29:41','2018-02-16 10:31:34',432678,498194,2996.05,2981,1.77667,0,0),('TCS','2018-02-16 10:18:31','2018-02-16 10:31:39','2018-02-16 10:33:34',431951,506702,2995.2,2980,1.70608,0,0),('TCS','2018-02-16 10:18:34','2018-02-16 10:26:38','2018-02-16 10:27:34',434625,488466,2997,2981.1,1.91375,0,0),('TCS','2018-02-16 10:18:34','2018-02-16 10:34:09','2018-02-16 10:35:34',434625,511412,2997,2982,1.4976,0,0),('TCS','2018-02-16 10:18:34','2018-02-16 10:45:24','2018-02-16 10:45:34',434625,564916,2997,2982,1.47573,0,0),('TCS','2018-02-16 10:18:36','2018-02-16 10:48:33','2018-02-16 10:49:34',435971,580570,2997.8,2982.6,1.44844,0,0),('TCS','2018-02-16 10:18:46','2018-02-16 10:45:48','2018-02-16 10:47:34',440885,569512,2999,2984,1.44707,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=786877 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_buy_order`
--

LOCK TABLES `option_buy_order` WRITE;
/*!40000 ALTER TABLE `option_buy_order` DISABLE KEYS */;
INSERT INTO `option_buy_order` VALUES (89798,'TCS','PE',2900,8,2,1200,1,879797897,1200,0);
/*!40000 ALTER TABLE `option_buy_order` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=786877 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_buy_order_cancelled`
--

LOCK TABLES `option_buy_order_cancelled` WRITE;
/*!40000 ALTER TABLE `option_buy_order_cancelled` DISABLE KEYS */;
INSERT INTO `option_buy_order_cancelled` VALUES (786876,'TCS','PE',2800,6,2,1800,0,8768687,1200,600);
/*!40000 ALTER TABLE `option_buy_order_cancelled` ENABLE KEYS */;
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
  `event_type` varchar(5) NOT NULL COMMENT 'CAL- CALCULATED\nNEW - IMPLIES NEW ORDER TO BE INSERTED\nMOD - IMPLIES ORDER TO BE MODIFIED',
  `is_event_handled` tinyint(4) NOT NULL,
  PRIMARY KEY (`order_id`,`event_type`,`curr_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_buy_order_event`
--

LOCK TABLES `option_buy_order_event` WRITE;
/*!40000 ALTER TABLE `option_buy_order_event` DISABLE KEYS */;
INSERT INTO `option_buy_order_event` VALUES (181,'HDFC','2018-02-16 09:36:33','PE',1800,9.7,3,1500,'MOD',1),(182,'INFY','2018-02-16 09:36:33','CE',1160,2.65,10,6000,'MOD',1),(183,'MARUTI','2018-02-16 09:36:33','PE',9000,87.05,2,150,'MOD',1),(184,'TATAMOTORS','2018-02-16 09:36:33','PE',360,1.6,6,9000,'MOD',1),(185,'TCS','2018-02-16 09:36:33','PE',2900,10.1,6,1500,'MOD',1),(786876,'TCS','2018-02-19 23:43:18','PE',2800,6,2,1800,'CANCL',0);
/*!40000 ALTER TABLE `option_buy_order_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_buy_order_information`
--

DROP TABLE IF EXISTS `option_buy_order_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_buy_order_information` (
  `order_id` varchar(15) NOT NULL,
  `symbol` varchar(45) NOT NULL,
  `option_type` varchar(2) NOT NULL,
  `option_strike_price` float NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_buy_order_information`
--

LOCK TABLES `option_buy_order_information` WRITE;
/*!40000 ALTER TABLE `option_buy_order_information` DISABLE KEYS */;
INSERT INTO `option_buy_order_information` VALUES ('180218000008716','HDFC','PE',1800),('180218000008717','INFY','CE',1160),('180218000008719','MARUTI','PE',9000),('180218000008721','TATAMOTORS','PE',360),('180218000008722','TCS','PE',2900);
/*!40000 ALTER TABLE `option_buy_order_information` ENABLE KEYS */;
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
  `remaining_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_buy_order_log`
--

LOCK TABLES `option_buy_order_log` WRITE;
/*!40000 ALTER TABLE `option_buy_order_log` DISABLE KEYS */;
INSERT INTO `option_buy_order_log` VALUES (181,'HDFC','PE',1800,8.5,4,2000,0,'2018-02-16 09:15:00',0,2000),(182,'INFY','CE',1160,2.3,11,6600,0,'2018-02-16 09:15:00',0,6600),(183,'MARUTI','PE',9000,69.2,3,225,0,'2018-02-16 09:15:00',0,225),(184,'TATAMOTORS','PE',360,1.35,8,12000,0,'2018-02-16 09:15:00',0,12000),(185,'TCS','PE',2900,18.8,3,750,0,'2018-02-16 09:15:00',0,750),(181,'HDFC','PE',1800,9.7,3,1500,0,'2018-02-16 09:35:33',0,1500),(182,'INFY','CE',1160,3.7,7,4200,0,'2018-02-16 09:35:33',0,4200),(185,'TCS','PE',2900,17.1,4,1000,0,'2018-02-16 09:35:33',0,1000),(185,'TCS','PE',2900,17.1,4,1000,0,'2018-02-16 09:35:33',0,1000),(184,'TATAMOTORS','PE',360,1.25,8,12000,0,'2018-02-16 09:36:33',0,12000),(185,'TCS','PE',2900,13.3,4,1000,0,'2018-02-16 09:36:33',0,1000),(181,'HDFC','PE',1800,9.7,3,1500,0,'2018-02-16 09:36:33',0,1500),(181,'HDFC','PE',1800,9.7,3,1500,0,'2018-02-16 09:36:33',0,1500),(182,'INFY','CE',1160,3.7,7,4200,0,'2018-02-16 09:36:33',0,4200),(182,'INFY','CE',1160,3.7,7,4200,0,'2018-02-16 09:36:33',0,4200),(185,'TCS','PE',2900,17.1,4,1000,0,'2018-02-16 09:36:33',0,1000),(182,'INFY','CE',1160,2.65,10,6000,0,'2018-02-16 09:37:33',0,6000),(182,'INFY','CE',1160,2.65,10,6000,0,'2018-02-16 09:37:33',0,6000),(185,'TCS','PE',2900,12,5,1250,0,'2018-02-16 09:39:34',0,1250),(185,'TCS','PE',2900,11.85,5,1250,0,'2018-02-16 09:39:34',0,1250),(184,'TATAMOTORS','PE',360,1.4,7,10500,0,'2018-02-16 09:43:34',0,10500),(184,'TATAMOTORS','PE',360,1.35,8,12000,0,'2018-02-16 09:43:34',0,12000),(184,'TATAMOTORS','PE',360,1.35,8,12000,0,'2018-02-16 09:45:34',0,12000),(184,'TATAMOTORS','PE',360,2.6,4,6000,0,'2018-02-16 10:05:34',0,6000),(184,'TATAMOTORS','PE',360,1.6,6,9000,0,'2018-02-16 10:05:34',0,9000),(183,'MARUTI','PE',9000,87.05,2,150,0,'2018-02-16 10:11:34',0,150),(183,'MARUTI','PE',9000,87.05,2,150,0,'2018-02-16 10:11:34',0,150),(185,'TCS','PE',2900,13.1,5,1250,0,'2018-02-16 10:11:34',0,1250),(185,'TCS','PE',2900,12.1,5,1250,0,'2018-02-16 10:11:34',0,1250),(185,'TCS','PE',2900,10.45,6,1500,0,'2018-02-16 10:15:34',0,1500),(185,'TCS','PE',2900,10.45,6,1500,0,'2018-02-16 10:15:34',0,1500),(182,'INFY','CE',1160,2.85,9,5400,0,'2018-02-16 10:17:34',0,5400),(182,'INFY','CE',1160,2.85,9,5400,0,'2018-02-16 10:17:34',0,5400),(182,'INFY','CE',1160,2.9,9,5400,0,'2018-02-16 10:19:34',0,5400),(182,'INFY','CE',1160,2.9,9,5400,0,'2018-02-16 10:19:34',0,5400),(185,'TCS','PE',2900,8.4,7,1750,0,'2018-02-16 10:19:34',0,1750),(185,'TCS','PE',2900,8.4,7,1750,0,'2018-02-16 10:19:34',0,1750),(185,'TCS','PE',2900,10.1,6,1500,0,'2018-02-16 10:23:34',0,1500),(185,'TCS','PE',2900,10.1,6,1500,0,'2018-02-16 10:24:34',0,1500),(185,'TCS','PE',2900,10.1,6,1500,0,'2018-02-16 10:25:34',0,1500),(185,'TCS','PE',2900,10.1,6,1500,0,'2018-02-16 10:26:34',0,1500),(185,'TCS','PE',2900,10.1,6,1500,0,'2018-02-16 10:26:34',0,1500),(182,'INFY','CE',1160,2.65,10,6000,0,'2018-02-16 10:35:34',0,6000),(182,'INFY','CE',1160,2.65,10,6000,0,'2018-02-16 10:35:34',0,6000),(182,'INFY','CE',1160,2.65,10,6000,0,'2018-02-16 10:51:34',0,6000);
/*!40000 ALTER TABLE `option_buy_order_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_position`
--

DROP TABLE IF EXISTS `option_position`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_position` (
  `position_id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(45) NOT NULL,
  `option_type` varchar(2) NOT NULL,
  `option_strike_price` float NOT NULL,
  `buy_price` float NOT NULL,
  `no_of_lots` int(11) DEFAULT NULL,
  `buy_quantity` int(11) DEFAULT '0',
  `exchange_order_id` varchar(20) DEFAULT NULL,
  `sell_quantity` int(11) DEFAULT '0',
  `total_buy_price` double NOT NULL,
  `sell_price` float DEFAULT '0',
  `total_sell_price` double DEFAULT '0',
  `buy_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sell_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`position_id`,`buy_time`,`sell_time`)
) ENGINE=InnoDB AUTO_INCREMENT=567575786 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_position`
--

LOCK TABLES `option_position` WRITE;
/*!40000 ALTER TABLE `option_position` DISABLE KEYS */;
INSERT INTO `option_position` VALUES (14313404,'TCS','PE',2900,7.2,2,1200,'156516',600,8640,8,4800,'2018-02-16 10:13:55','2018-02-16 10:13:55'),(567575785,'TCS','PE',2800,6,3,1200,'7987897',1200,7200,7.5,9000,'2018-02-19 23:13:12','2018-02-19 23:13:12');
/*!40000 ALTER TABLE `option_position` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_sell_order`
--

LOCK TABLES `option_sell_order` WRITE;
/*!40000 ALTER TABLE `option_sell_order` DISABLE KEYS */;
INSERT INTO `option_sell_order` VALUES (112,'TCS','PE',2900,9.2,2,1200,0,0,600,600),(113,'TCS','PE',2800,6.9,3,1200,1,0,0,600);
/*!40000 ALTER TABLE `option_sell_order` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `option_sell_order_event`
--

LOCK TABLES `option_sell_order_event` WRITE;
/*!40000 ALTER TABLE `option_sell_order_event` DISABLE KEYS */;
INSERT INTO `option_sell_order_event` VALUES (112,'TCS','2018-02-19 23:21:30','PE',2900,8.3,2,1200,'ERMOD',0),(112,'TCS','2018-02-19 23:31:34','PE',2900,8.3,2,1200,'ERMOD',0),(112,'TCS','2018-02-19 23:33:28','PE',2900,8.3,2,1200,'ERMOD',0),(112,'TCS','2018-02-19 23:36:19','PE',2900,8.3,2,1200,'ERMOD',0),(112,'TCS','2018-02-19 23:38:14','PE',2900,8.3,2,1200,'ERMOD',0),(112,'TCS','2018-02-19 23:16:42','PE',2900,9.2,2,600,'NEW',0),(113,'TCS','2018-02-19 23:23:19','PE',2800,6.9,3,1200,'ERMOD',0),(113,'TCS','2018-02-19 23:16:42','PE',2800,6.9,3,600,'NEW',0);
/*!40000 ALTER TABLE `option_sell_order_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `option_sell_order_information`
--

DROP TABLE IF EXISTS `option_sell_order_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `option_sell_order_information` (
  `order_id` varchar(15) NOT NULL,
  `symbol` varchar(45) NOT NULL,
  `option_type` varchar(2) NOT NULL,
  `option_strike_price` float NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_sell_order_information`
--

LOCK TABLES `option_sell_order_information` WRITE;
/*!40000 ALTER TABLE `option_sell_order_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `option_sell_order_information` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `option_sell_order_log`
--

LOCK TABLES `option_sell_order_log` WRITE;
/*!40000 ALTER TABLE `option_sell_order_log` DISABLE KEYS */;
INSERT INTO `option_sell_order_log` VALUES (11,'TCS','PE',2900,0.05,5,1250,0,'2018-02-16 10:19:34',0,1250),(11,'TCS','PE',2900,11.25,5,1250,0,'2018-02-16 10:19:34',0,1250),(11,'TCS','PE',2900,13.5,5,1250,0,'2018-02-16 10:23:34',0,1250),(11,'TCS','PE',2900,13.5,5,1250,0,'2018-02-16 10:23:34',0,1250),(112,'TCS','PE',2900,9.2,2,600,0,'2018-02-19 23:16:42',0,600),(113,'TCS','PE',2800,6.9,3,600,0,'2018-02-19 23:16:42',0,600),(112,'TCS','PE',2900,8.3,2,1200,0,'2018-02-19 23:21:30',0,1200),(113,'TCS','PE',2800,6.9,3,1200,0,'2018-02-19 23:23:19',0,1200),(112,'TCS','PE',2900,8.3,2,1200,0,'2018-02-19 23:31:34',0,1200),(112,'TCS','PE',2900,8.3,2,1200,0,'2018-02-19 23:33:28',0,1200),(112,'TCS','PE',2900,8.3,2,1200,0,'2018-02-19 23:36:19',0,1200),(112,'TCS','PE',2900,8.3,2,1200,0,'2018-02-19 23:38:14',0,1200);
/*!40000 ALTER TABLE `option_sell_order_log` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=1120 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `option_stop_loss_order_price`
--

LOCK TABLES `option_stop_loss_order_price` WRITE;
/*!40000 ALTER TABLE `option_stop_loss_order_price` DISABLE KEYS */;
INSERT INTO `option_stop_loss_order_price` VALUES (1117,'TCS','PE',2900,11.85,6.5),(1118,'TCS','PE',2900,8,6.5),(1119,'TCS','PE',2800,6,0.05);
/*!40000 ALTER TABLE `option_stop_loss_order_price` ENABLE KEYS */;
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
  `original_max_strength` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2994 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positive_price_trend_data`
--

LOCK TABLES `positive_price_trend_data` WRITE;
/*!40000 ALTER TABLE `positive_price_trend_data` DISABLE KEYS */;
INSERT INTO `positive_price_trend_data` VALUES (2987,'INFY','2018-02-16 09:27:52','2018-02-16 09:33:42','2018-02-16 09:35:33',293081,777837,1133.55,1139.25,8.07329,1,NULL,NULL),(2988,'TCS','2018-02-16 09:29:53','2018-02-16 09:33:39','2018-02-16 09:35:33',73646,125186,2959.3,2974.25,1.32316,1,NULL,NULL),(2989,'TCS','2018-02-16 09:36:08','2018-02-16 09:38:35','2018-02-16 09:39:34',138613,174920,2968.85,2983.75,1.44246,1,NULL,NULL),(2990,'TCS','2018-02-16 10:10:51','2018-02-16 10:13:55','2018-02-16 10:15:34',359895,381348,2974.7,2990,2.06892,1,NULL,NULL),(2991,'INFY','2018-02-16 10:11:15','2018-02-16 10:17:21','2018-02-16 10:17:34',1212208,1284244,1131.45,1137.15,1.10062,1,NULL,NULL),(2992,'INFY','2018-02-16 10:11:03','2018-02-16 10:19:25','2018-02-16 10:19:34',1208687,1322370,1131.5,1137.2,1.26645,1,2991,NULL),(2993,'TCS','2018-02-16 10:15:30','2018-02-16 10:18:44','2018-02-16 10:19:34',385905,440488,2983.6,2998.7,3.28116,1,NULL,5.07397);
/*!40000 ALTER TABLE `positive_price_trend_data` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=2994 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `positive_price_trend_data_for_sell_order`
--

LOCK TABLES `positive_price_trend_data_for_sell_order` WRITE;
/*!40000 ALTER TABLE `positive_price_trend_data_for_sell_order` DISABLE KEYS */;
INSERT INTO `positive_price_trend_data_for_sell_order` VALUES (2993,'TCS','2018-02-16 10:15:30','2018-02-16 10:18:44','2018-02-16 10:19:34',385905,440488,2983.6,2998.7,3.28116,1,NULL,5.07397);
/*!40000 ALTER TABLE `positive_price_trend_data_for_sell_order` ENABLE KEYS */;
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
-- Dumping data for table `positive_price_trend_data_log`
--

LOCK TABLES `positive_price_trend_data_log` WRITE;
/*!40000 ALTER TABLE `positive_price_trend_data_log` DISABLE KEYS */;
INSERT INTO `positive_price_trend_data_log` VALUES ('INFY','2018-02-16 09:26:33','2018-02-16 09:45:50','2018-02-16 09:47:34',237757,1001908,1128.6,1134.25,3.86689,0,0),('INFY','2018-02-16 09:26:39','2018-02-16 09:55:37','2018-02-16 09:57:34',241542,1091276,1129.9,1135.55,2.86582,0,0),('INFY','2018-02-16 09:26:50','2018-02-16 09:47:34','2018-02-16 09:49:34',247018,1023878,1129.95,1135.6,3.66064,0,0),('INFY','2018-02-16 09:26:50','2018-02-16 09:49:35','2018-02-16 09:51:34',247018,1050133,1129.95,1135.6,3.44889,0,0),('INFY','2018-02-16 09:26:51','2018-02-16 09:41:41','2018-02-16 09:43:34',247736,939498,1129.95,1135.6,4.55619,0,0),('INFY','2018-02-16 09:26:52','2018-02-16 09:43:34','2018-02-16 09:45:34',248176,959086,1129.8,1135.5,4.12195,0,0),('INFY','2018-02-16 09:27:01','2018-02-16 09:51:35','2018-02-16 09:53:34',265141,1067162,1130.6,1136.3,3.16332,0,0),('INFY','2018-02-16 09:27:25','2018-02-16 09:53:34','2018-02-16 09:55:34',278629,1077999,1130.65,1136.35,2.96215,0,0),('INFY','2018-02-16 09:27:29','2018-02-16 09:37:34','2018-02-16 09:39:34',280054,897530,1130.7,1136.4,5.93414,0,0),('INFY','2018-02-16 09:27:30','2018-02-16 09:39:39','2018-02-16 09:41:34',280921,922540,1130.9,1136.6,5.11833,0,0),('INFY','2018-02-16 09:27:43','2018-02-16 09:35:58','2018-02-16 09:37:33',286362,831010,1132.05,1137.75,6.40517,0,0),('INFY','2018-02-16 09:27:52','2018-02-16 09:33:42','2018-02-16 09:35:33',293081,777837,1133.55,1139.25,8.07329,1,NULL),('INFY','2018-02-16 10:08:46','2018-02-16 10:21:53','2018-02-16 10:23:34',1195643,1347754,1131.15,1136.85,1.08056,0,0),('INFY','2018-02-16 10:08:49','2018-02-16 10:19:59','2018-02-16 10:21:34',1195913,1327723,1131.2,1136.9,1.09988,0,0),('INFY','2018-02-16 10:08:49','2018-02-16 10:25:07','2018-02-16 10:25:34',1195913,1376851,1131.2,1137,1.01651,0,0),('INFY','2018-02-16 10:11:03','2018-02-16 10:19:25','2018-02-16 10:19:34',1208687,1322370,1131.5,1137.2,1.26645,1,2991),('INFY','2018-02-16 10:11:15','2018-02-16 10:17:21','2018-02-16 10:17:34',1212208,1284244,1131.45,1137.15,1.10062,1,NULL),('INFY','2018-02-16 10:11:15','2018-02-16 10:27:57','2018-02-16 10:29:34',1212208,1393939,1131.45,1137.15,1.01421,0,0),('TCS','2018-02-16 09:29:44','2018-02-16 09:36:37','2018-02-16 09:37:33',72946,148564,2958.6,2973.45,1.06922,0,0),('TCS','2018-02-16 09:29:53','2018-02-16 09:33:39','2018-02-16 09:35:33',73646,125186,2959.3,2974.25,1.32316,1,NULL),('TCS','2018-02-16 09:30:39','2018-02-16 09:43:36','2018-02-16 09:45:34',80684,222969,2963,2978,1.06024,0,0),('TCS','2018-02-16 09:35:52','2018-02-16 09:41:39','2018-02-16 09:43:34',137567,214537,2968.5,2983.4,1.2953,0,0),('TCS','2018-02-16 09:36:08','2018-02-16 09:38:35','2018-02-16 09:39:34',138613,174920,2968.85,2983.75,1.44246,1,NULL),('TCS','2018-02-16 09:36:08','2018-02-16 09:41:25','2018-02-16 09:41:34',138613,214088,2968.85,2983.7,1.3952,0,0),('TCS','2018-02-16 10:08:54','2018-02-16 10:21:43','2018-02-16 10:23:34',352838,467969,2973.5,2988.4,2.72693,0,0),('TCS','2018-02-16 10:10:43','2018-02-16 10:36:30','2018-02-16 10:37:34',359599,517206,2974.05,2989,1.84977,0,0),('TCS','2018-02-16 10:10:43','2018-02-16 10:38:56','2018-02-16 10:39:34',359599,530078,2974.05,2989,1.8283,0,0),('TCS','2018-02-16 10:10:43','2018-02-16 10:40:30','2018-02-16 10:41:34',359599,540038,2974.05,2989,1.83332,0,0),('TCS','2018-02-16 10:10:51','2018-02-16 10:13:55','2018-02-16 10:15:34',359895,381348,2974.7,2990,2.06892,1,NULL),('TCS','2018-02-16 10:12:31','2018-02-16 10:17:33','2018-02-16 10:17:34',364972,406754,2978.95,2993.85,2.52452,0,0),('TCS','2018-02-16 10:13:05','2018-02-16 10:19:46','2018-02-16 10:21:34',367679,452220,2979.1,2994.7,3.67461,0,0),('TCS','2018-02-16 10:15:30','2018-02-16 10:18:44','2018-02-16 10:19:34',385905,440488,2983.6,2998.7,5.07397,1,NULL);
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
  `margin_allowance` int(11) DEFAULT NULL,
  `last_implied_volatility` float DEFAULT NULL,
  `expiry_factor_quotient` float NOT NULL DEFAULT '1',
  `url` varchar(500) NOT NULL,
  `expiry_date_full` varchar(45) DEFAULT '2018-02-22',
  `expiry_date_prefix` varchar(45) DEFAULT '18FEB',
  PRIMARY KEY (`symbol`,`option_type`,`option_strike_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selected_instrument`
--

LOCK TABLES `selected_instrument` WRITE;
/*!40000 ALTER TABLE `selected_instrument` DISABLE KEYS */;
INSERT INTO `selected_instrument` VALUES ('HDFC','PE',1800,12.15,500,15000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=650.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('INFY','CE',1160,3.25,600,15000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=650.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('MARUTI','PE',9000,98.85,75,15000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=650.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('TATAMOTORS','PE',360,1.9,1500,15000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=650.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('TCS','PE',2900,26.85,250,15000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=650.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB');
/*!40000 ALTER TABLE `selected_instrument` ENABLE KEYS */;
UNLOCK TABLES;

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
  `expiry_date_full` varchar(45) DEFAULT '2018-02-22',
  `expiry_date_prefix` varchar(45) DEFAULT '18FEB',
  PRIMARY KEY (`curr_date`,`symbol`,`option_type`,`option_strike_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `selected_instrument_archive`
--

LOCK TABLES `selected_instrument_archive` WRITE;
/*!40000 ALTER TABLE `selected_instrument_archive` DISABLE KEYS */;
INSERT INTO `selected_instrument_archive` VALUES ('2018-01-19','AXISBANK','PE',580,11.8,1200,20000,46.29,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=580.00&type=PE&expiry=25JAN2018','2018-02-22','18FEB'),('2018-01-19','CAPF','PE',740,8.5,800,20000,42.46,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=CAPF&instrument=OPTSTK&strike=800.00&type=CE&expiry=25JAN2018','2018-02-22','18FEB'),('2018-01-19','HDFC','PE',1880,14,500,20000,15.79,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=1880.00&type=CE&expiry=25JAN2018','2018-02-22','18FEB'),('2018-01-19','ICICIBANK','PE',340,3.5,2750,20000,36.51,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ICICIBANK&instrument=OPTSTK&strike=340.00&type=PE&expiry=25JAN2018','2018-02-22','18FEB'),('2018-01-19','JINDALSTEL','PE',250,3.9,4500,20000,57.01,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=JINDALSTEL&instrument=OPTSTK&strike=260.00&type=PE&expiry=25JAN2018','2018-02-22','18FEB'),('2018-01-19','LT','CE',1400,4.05,750,20000,15.73,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=LT&instrument=OPTSTK&strike=1360.00&type=CE&expiry=25JAN2018','2018-02-22','18FEB'),('2018-01-19','MARUTI','PE',9300,103.15,75,20000,26.23,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=MARUTI&instrument=OPTSTK&strike=9300.00&type=PE&expiry=25JAN2018','2018-02-22','18FEB'),('2018-01-19','PCJEWELLER','PE',560,8.2,1500,20000,57.2,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=PCJEWELLER&instrument=OPTSTK&strike=560.00&type=PE&expiry=25JAN2018#','2018-02-22','18FEB'),('2018-01-25','AXISBANK','CE',630,18.75,1200,50000,0,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=630.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-25','HDFC','CE',1940,41.55,500,50000,0,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=1940.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-25','HDFC','PE',1880,34.4,500,50000,0,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=1880.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-25','HDFCBANK','CE',2000,33.75,500,50000,0,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFCBANK&instrument=OPTSTK&strike=2000.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-25','HDFCBANK','PE',1940,36.45,500,50000,0,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFCBANK&instrument=OPTSTK&strike=1940.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-25','ICICIBANK','CE',360,14.55,2750,50000,0,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ICICIBANK&instrument=OPTSTK&strike=360.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-25','ICICIBANK','PE',345,12.7,2750,50000,0,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ICICIBANK&instrument=OPTSTK&strike=345.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-25','INFY','CE',1200,34,600,50000,0,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=INFY&instrument=OPTSTK&strike=1200.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-25','INFY','PE',1140,20.2,600,50000,0,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=INFY&instrument=OPTSTK&strike=1140.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-25','KOTAKBANK','PE',1020,6,800,50000,0,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=KOTAKBANK&instrument=OPTSTK&strike=1020.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-25','LT','CE',1440,36.65,750,50000,0,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=LT&instrument=OPTSTK&strike=1440.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-25','LT','PE',1300,15.05,750,50000,0,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=LT&instrument=OPTSTK&strike=1300.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-25','MARUTI','CE',9400,369.8,75,50000,0,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=MARUTI&instrument=OPTSTK&strike=9400.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-25','MARUTI','PE',9200,196.2,75,50000,0,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=MARUTI&instrument=OPTSTK&strike=9200.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-25','RELIANCE','CE',1020,16.2,1000,50000,0,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=RELIANCE&instrument=OPTSTK&strike=1020.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-25','RELIANCE','PE',960,28.3,1000,50000,0,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=RELIANCE&instrument=OPTSTK&strike=960.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','AXISBANK','CE',650,11.25,1200,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=650.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','AXISBANK','PE',590,12.2,1200,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=590.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','HDFC','CE',1940,36.1,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=1940.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','HDFC','PE',1900,41.05,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=1900.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','HDFCBANK','CE',2000,25.4,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFCBANK&instrument=OPTSTK&strike=2000.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','HDFCBANK','PE',1940,22.8,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFCBANK&instrument=OPTSTK&strike=1940.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','HDIL','CE',65,2.15,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDIL&instrument=OPTSTK&strike=65.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','HDIL','PE',55,2.3,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDIL&instrument=OPTSTK&strike=55.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','ICICIBANK','CE',360,15.15,2750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ICICIBANK&instrument=OPTSTK&strike=360.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','ICICIBANK','PE',345,10.8,2750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ICICIBANK&instrument=OPTSTK&strike=345.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','IDFCBANK','CE',62.5,0.8,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=IDFCBANK&instrument=OPTSTK&strike=62.50&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','IDFCBANK','PE',55,0.65,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=IDFCBANK&instrument=OPTSTK&strike=55.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','INFY','CE',1200,24.2,600,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=INFY&instrument=OPTSTK&strike=1200.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','INFY','PE',1140,19.1,600,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=INFY&instrument=OPTSTK&strike=1140.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','ITC','CE',290,7.2,2400,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ITC&instrument=OPTSTK&strike=290.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','ITC','PE',275,7.05,2400,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ITC&instrument=OPTSTK&strike=275.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','JINDALSTEL','CE',290,12.35,4500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=JINDALSTEL&instrument=OPTSTK&strike=290.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','JINDALSTEL','PE',270,9.75,4500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=JINDALSTEL&instrument=OPTSTK&strike=270.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','KOTAKBANK','CE',1100,23.35,800,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=KOTAKBANK&instrument=OPTSTK&strike=1100.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','KOTAKBANK','PE',1080,19.7,800,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=KOTAKBANK&instrument=OPTSTK&strike=1080.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','LT','CE',1460,31.5,750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=LT&instrument=OPTSTK&strike=1460.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','LT','PE',1340,21.9,750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=LT&instrument=OPTSTK&strike=1340.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','MARUTI','CE',9400,270.95,75,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=MARUTI&instrument=OPTSTK&strike=9400.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','MARUTI','PE',9200,224.45,75,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=MARUTI&instrument=OPTSTK&strike=9200.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','RELIANCE','CE',1020,13.4,1000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=RELIANCE&instrument=OPTSTK&strike=1020.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','RELIANCE','PE',900,6,1000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=RELIANCE&instrument=OPTSTK&strike=900.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','SBIN','CE',325,10.75,3000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=SBIN&instrument=OPTSTK&strike=325.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','SBIN','PE',300,8.35,3000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=SBIN&instrument=OPTSTK&strike=300.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','TATASTEEL','CE',800,15.8,1000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=TATASTEEL&instrument=OPTSTK&strike=800.00&type=CE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-29','TATASTEEL','PE',760,23.2,1000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=TATASTEEL&instrument=OPTSTK&strike=760.00&type=PE&expiry=22FEB2018','2018-02-22','18FEB'),('2018-01-30','AXISBANK','CE',650,4.45,1200,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=650.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','AXISBANK','PE',570,8.55,1200,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=570.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','AXISBANK','PE',590,13.55,1200,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=570.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','HDFC','CE',1940,63.35,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=1980.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','HDFC','CE',1980,36.5,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=1980.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','HDFC','PE',1900,18,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=1900.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','HDFCBANK','CE',2000,41.95,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFCBANK&instrument=OPTSTK&strike=2040.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','HDFCBANK','CE',2040,26,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFCBANK&instrument=OPTSTK&strike=2040.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','HDFCBANK','PE',1940,11.25,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFCBANK&instrument=OPTSTK&strike=1940.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','HDIL','CE',60,2.95,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDIL&instrument=OPTSTK&strike=60.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','HDIL','CE',65,2.25,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDIL&instrument=OPTSTK&strike=60.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','HDIL','PE',55,2.3,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDIL&instrument=OPTSTK&strike=55.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','ICICIBANK','CE',360,11.05,2750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ICICIBANK&instrument=OPTSTK&strike=360.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','ICICIBANK','PE',345,10,2750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ICICIBANK&instrument=OPTSTK&strike=345.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','IDFCBANK','CE',62.5,0.65,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=IDFCBANK&instrument=OPTSTK&strike=60.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','IDFCBANK','PE',55,0.8,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=IDFCBANK&instrument=OPTSTK&strike=55.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','INFY','CE',1200,27.5,600,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=INFY&instrument=OPTSTK&strike=1200.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','INFY','PE',1140,16.1,600,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=INFY&instrument=OPTSTK&strike=1140.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','ITC','CE',290,5.65,2400,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ITC&instrument=OPTSTK&strike=290.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','ITC','PE',275,9,2400,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ITC&instrument=OPTSTK&strike=270.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','JINDALSTEL','CE',290,7,4500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=JINDALSTEL&instrument=OPTSTK&strike=280.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','JINDALSTEL','PE',270,16.15,4500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=JINDALSTEL&instrument=OPTSTK&strike=260.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','KOTAKBANK','CE',1100,33.5,800,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=KOTAKBANK&instrument=OPTSTK&strike=1100.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','KOTAKBANK','PE',1080,13.6,800,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=KOTAKBANK&instrument=OPTSTK&strike=1060.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','LT','CE',1460,36.45,750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=LT&instrument=OPTSTK&strike=1460.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','LT','PE',1340,16,750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=LT&instrument=OPTSTK&strike=1400.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','MARUTI','CE',9400,404.1,75,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=MARUTI&instrument=OPTSTK&strike=9700.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','MARUTI','PE',9200,97.9,75,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=MARUTI&instrument=OPTSTK&strike=9400.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','RELIANCE','CE',1020,12.4,1000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=RELIANCE&instrument=OPTSTK&strike=1020.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','RELIANCE','PE',900,5.5,1000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=RELIANCE&instrument=OPTSTK&strike=900.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','SBIN','CE',325,8.8,3000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=SBIN&instrument=OPTSTK&strike=325.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','SBIN','PE',300,8,3000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=SBIN&instrument=OPTSTK&strike=300.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','TATASTEEL','CE',800,19.3,1000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=TATASTEEL&instrument=OPTSTK&strike=800.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-01-30','TATASTEEL','PE',760,17.55,1000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=TATASTEEL&instrument=OPTSTK&strike=760.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','AXISBANK','CE',650,4.45,1200,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=650.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','AXISBANK','PE',570,8.55,1200,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=570.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','HDFC','CE',1980,36.5,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=1980.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','HDFC','PE',1900,18,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=1900.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','HDFCBANK','CE',2040,26,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFCBANK&instrument=OPTSTK&strike=2040.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','HDFCBANK','PE',1940,11.25,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFCBANK&instrument=OPTSTK&strike=1940.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','HDIL','CE',60,2.95,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDIL&instrument=OPTSTK&strike=60.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','HDIL','PE',55,2.3,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDIL&instrument=OPTSTK&strike=55.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','ICICIBANK','CE',360,11.05,2750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ICICIBANK&instrument=OPTSTK&strike=360.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','ICICIBANK','PE',345,10,2750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ICICIBANK&instrument=OPTSTK&strike=345.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','IDFCBANK','CE',60,0.9,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=IDFCBANK&instrument=OPTSTK&strike=60.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','IDFCBANK','PE',55,1,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=IDFCBANK&instrument=OPTSTK&strike=55.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','INFY','CE',1200,14.6,600,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=INFY&instrument=OPTSTK&strike=1200.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','INFY','PE',1100,9.05,600,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=INFY&instrument=OPTSTK&strike=1140.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','ITC','CE',280,6.9,2400,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ITC&instrument=OPTSTK&strike=290.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','ITC','PE',270,7.95,2400,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ITC&instrument=OPTSTK&strike=270.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','JINDALSTEL','CE',280,9.8,4500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=JINDALSTEL&instrument=OPTSTK&strike=280.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','JINDALSTEL','PE',260,10.4,4500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=JINDALSTEL&instrument=OPTSTK&strike=260.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','KOTAKBANK','CE',1100,32.6,800,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=KOTAKBANK&instrument=OPTSTK&strike=1100.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','KOTAKBANK','PE',1060,8.15,800,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=KOTAKBANK&instrument=OPTSTK&strike=1060.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','LT','CE',1460,36.45,750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=LT&instrument=OPTSTK&strike=1460.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','LT','PE',1340,16,750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=LT&instrument=OPTSTK&strike=1400.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','MARUTI','CE',9400,404.1,75,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=MARUTI&instrument=OPTSTK&strike=9700.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','MARUTI','PE',9200,97.9,75,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=MARUTI&instrument=OPTSTK&strike=9400.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','RELIANCE','CE',1020,12.4,1000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=RELIANCE&instrument=OPTSTK&strike=1020.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','RELIANCE','PE',900,5.5,1000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=RELIANCE&instrument=OPTSTK&strike=900.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','SBIN','CE',325,8.8,3000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=SBIN&instrument=OPTSTK&strike=325.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-01','SBIN','PE',300,8,3000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=SBIN&instrument=OPTSTK&strike=300.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','AXISBANK','CE',650,7.95,1200,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=650.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','AXISBANK','PE',590,13.55,1200,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=570.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','HDFC','CE',1940,63.35,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=1980.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','HDFC','PE',1900,21,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=1900.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','HDFCBANK','CE',2000,41.95,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFCBANK&instrument=OPTSTK&strike=2040.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','HDFCBANK','PE',1940,14.45,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFCBANK&instrument=OPTSTK&strike=1940.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','HDIL','CE',65,2.25,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDIL&instrument=OPTSTK&strike=60.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','HDIL','PE',55,2.1,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDIL&instrument=OPTSTK&strike=55.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','ICICIBANK','CE',360,14.75,2750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ICICIBANK&instrument=OPTSTK&strike=360.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','ICICIBANK','PE',345,11.15,2750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ICICIBANK&instrument=OPTSTK&strike=345.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','IDFCBANK','CE',62.5,0.65,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=IDFCBANK&instrument=OPTSTK&strike=60.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','IDFCBANK','PE',55,0.8,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=IDFCBANK&instrument=OPTSTK&strike=55.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','INFY','CE',1200,27.5,600,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=INFY&instrument=OPTSTK&strike=1200.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','INFY','PE',1140,16.1,600,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=INFY&instrument=OPTSTK&strike=1140.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','ITC','CE',290,5.65,2400,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ITC&instrument=OPTSTK&strike=290.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','ITC','PE',275,9,2400,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ITC&instrument=OPTSTK&strike=270.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','JINDALSTEL','CE',290,7,4500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=JINDALSTEL&instrument=OPTSTK&strike=280.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','JINDALSTEL','PE',270,16.15,4500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=JINDALSTEL&instrument=OPTSTK&strike=260.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','KOTAKBANK','CE',1100,33.5,800,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=KOTAKBANK&instrument=OPTSTK&strike=1100.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','KOTAKBANK','PE',1080,13.6,800,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=KOTAKBANK&instrument=OPTSTK&strike=1060.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','LT','CE',1460,36.45,750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=LT&instrument=OPTSTK&strike=1460.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','MARUTI','CE',9400,404.1,75,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=MARUTI&instrument=OPTSTK&strike=9700.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','MARUTI','PE',9200,97.9,75,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=MARUTI&instrument=OPTSTK&strike=9400.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','RELIANCE','CE',1020,12.4,1000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=RELIANCE&instrument=OPTSTK&strike=1020.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','RELIANCE','PE',900,5.5,1000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=RELIANCE&instrument=OPTSTK&strike=900.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','SBIN','CE',325,8.8,3000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=SBIN&instrument=OPTSTK&strike=325.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','SBIN','PE',300,8,3000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=SBIN&instrument=OPTSTK&strike=300.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','TATASTEEL','CE',800,19.3,1000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=TATASTEEL&instrument=OPTSTK&strike=800.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-02','TATASTEEL','PE',760,17.55,1000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=TATASTEEL&instrument=OPTSTK&strike=760.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','AXISBANK','CE',580,5.3,1200,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=580.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','AXISBANK','PE',550,7.35,1200,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=550.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','HDFC','CE',1840,11.95,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=1840.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','HDFC','PE',1780,25.05,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=1780.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','HDFCBANK','CE',1940,6,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFCBANK&instrument=OPTSTK&strike=1940.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','HDFCBANK','PE',1840,12.75,500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFCBANK&instrument=OPTSTK&strike=1840.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','HDIL','CE',55,1.9,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDIL&instrument=OPTSTK&strike=55.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','HDIL','PE',50,0.75,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDIL&instrument=OPTSTK&strike=50.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','ICICIBANK','CE',340,2.15,2750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ICICIBANK&instrument=OPTSTK&strike=340.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','ICICIBANK','PE',320,4.05,2750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ICICIBANK&instrument=OPTSTK&strike=320.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','IDFCBANK','CE',52.5,1.95,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=IDFCBANK&instrument=OPTSTK&strike=52.50&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','IDFCBANK','PE',52.5,0.45,9000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=IDFCBANK&instrument=OPTSTK&strike=52.50&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','INFY','CE',1160,5.35,600,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=INFY&instrument=OPTSTK&strike=1160.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','INFY','PE',1060,6.35,600,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=INFY&instrument=OPTSTK&strike=1060.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','ITC','CE',285,1.3,2400,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ITC&instrument=OPTSTK&strike=285.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','ITC','PE',265,2.15,2400,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ITC&instrument=OPTSTK&strike=265.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','JINDALSTEL','CE',275,12,4500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=JINDALSTEL&instrument=OPTSTK&strike=275.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','JINDALSTEL','PE',260,5.55,4500,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=JINDALSTEL&instrument=OPTSTK&strike=260.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','KOTAKBANK','CE',1060,9.15,800,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=KOTAKBANK&instrument=OPTSTK&strike=1060.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','KOTAKBANK','PE',1000,5.15,800,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=KOTAKBANK&instrument=OPTSTK&strike=1000.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','LT','CE',1400,9.05,750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=LT&instrument=OPTSTK&strike=1400.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','LT','PE',1340,19.15,750,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=LT&instrument=OPTSTK&strike=1340.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','MARUTI','CE',9300,75.7,75,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=MARUTI&instrument=OPTSTK&strike=9300.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','MARUTI','PE',8900,77.1,75,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=MARUTI&instrument=OPTSTK&strike=8900.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','RELIANCE','CE',940,6.6,1000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=RELIANCE&instrument=OPTSTK&strike=940.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','RELIANCE','PE',880,6.55,1000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=RELIANCE&instrument=OPTSTK&strike=880.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','SBIN','CE',305,2.8,3000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=SBIN&instrument=OPTSTK&strike=305.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-12','SBIN','PE',290,7.1,3000,50000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=SBIN&instrument=OPTSTK&strike=290.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-14','AXISBANK','CE',560,13.85,1200,25000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=550.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-14','HDFC','PE',1780,18,500,25000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=1780.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-14','MARUTI','PE',9000,93.95,75,25000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=MARUTI&instrument=OPTSTK&strike=8900.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-14','RELIANCE','PE',920,18.8,1000,25000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=RELIANCE&instrument=OPTSTK&strike=880.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-14','SBIN','PE',285,5.6,3000,25000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=SBIN&instrument=OPTSTK&strike=290.00&type=PE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-14','TATAMOTORS','PE',370,7.8,1500,25000,0,0,'LL','2018-02-22','18FEB'),('2018-02-14','TATASTEEL','CE',720,13.05,1061,25000,0,0,'LL','2018-02-22','18FEB'),('2018-02-16','HDFC','PE',1800,12.15,500,15000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=650.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-16','INFY','CE',1160,3.25,600,15000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=650.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-16','MARUTI','PE',9000,98.85,75,15000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=650.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-16','TATAMOTORS','PE',360,1.9,1500,15000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=650.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB'),('2018-02-16','TCS','PE',2900,26.85,250,15000,0,0,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=650.00&type=CE&expiry=22FEB2018\r','2018-02-22','18FEB');
/*!40000 ALTER TABLE `selected_instrument_archive` ENABLE KEYS */;
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
  `text_param_value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`param_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trading_parameters`
--

LOCK TABLES `trading_parameters` WRITE;
/*!40000 ALTER TABLE `trading_parameters` DISABLE KEYS */;
INSERT INTO `trading_parameters` VALUES ('EXPIRY_FACTOR','A FACTOR MULTIPLIED WITH THE EXPIRY FACTOR QUOTIENT FOR THE SELECTED INSTRUMENT. IT IS USEFUL IN CALCULATING THE DEPRECIATION OF THE OPTION PRICE AT THE START OF THE CURRENT DAY',0.05,NULL),('INITIAL_TARGET_PROFIT_FACTOR','FACTOR BY WHICH INITIAL SELL PRICE IS PLACED W.R.T THE BUY PRICE',1.15,NULL),('NEW_BUY_ORDER_TIME','TIME WHEN BUY ORDERS WILL BE APPLIED IN MARKET IN THE MORNING. (SAMPLE TIME - IGNORE THE DATE)',0,'2018-01-21 09:30:00'),('ORDER_CYCLE_FREQUENCY','FREQUENCY OF TREND AND ORDER CYCLES IN MINUTES',2,NULL),('PRICE_CHANGE_THRESHOLD_TIME','THRESHOLD FOR PRICE CHANGE IN PERCENTAGE, CROSSING WHICH, GIVEN CORRESPONDING VOLUME, THERE IS A TREND REGISTERED. SAME IS APPLICABLE TO THE TIME AS THRESHOLD, IN HOURS',0.5,NULL),('SPURT_CONTROL_THRESHOLD','MINIMUM TIME, IN MINUTES, REQUIRED TO REGISTER THE TREND STRENGTH AS VALID. OTHERWISE IT IS NORMALISED.',5,NULL),('STOP_LOSS_TRIGER_CYCLE_FREQUENCY','FREQUENCY OF CYCLE(IN MINUTES) WHICH CALCULATES IF STOP LOSS LEVEL HAS BEEN REACHED AND APPROPRIATE SELL ORDERS ARE TO BE PLACES',1,NULL),('STRENGTH_TO_BUY_ORDER_FACTOR','FACTOR BY WHICH THE STRENGTH WILL BE APPLIED TO THE CURRENT BUY ORDER. SAME DIRECTION STRENGTH WILL INCREASE ORDER PRICE AND VICE VERSA. NEW PRICE = OLD PRICE +/-  (STRENGTH_TO_BUY_ORDER_FACTOR * STRENGTH) ;',0.075,NULL),('STRENGTH_TO_SELL_ORDER_FACTOR','FACTOR BY WHICH THE STRENGTH WILL BE APPLIED TO THE CURRENT SELL ORDER. SAME DIRECTION STRENGTH WILL INCREASE ORDER PRICE AND VICE VERSA. NEW PRICE = OLD PRICE +/-  (STRENGTH_TO_BUY_ORDER_FACTOR * STRENGTH) ;',0.075,NULL);
/*!40000 ALTER TABLE `trading_parameters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tokens`
--

DROP TABLE IF EXISTS `user_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_tokens` (
  `curr_date` date NOT NULL,
  `user_id` varchar(45) NOT NULL,
  `request_token` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`curr_date`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tokens`
--

LOCK TABLES `user_tokens` WRITE;
/*!40000 ALTER TABLE `user_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tokens` ENABLE KEYS */;
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
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_AND_SYNC_POSITIONS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_AND_SYNC_POSITIONS`(
CURRENT_TIME_IN DATETIME)
BEGIN


DECLARE TEXT_NEW_BUY_ORDER_TIME VARCHAR(100) DEFAULT '2018-01-21 09:30:00';

SELECT  text_param_value FROM trading_parameters WHERE param_id = 'NEW_BUY_ORDER_TIME'
INTO TEXT_NEW_BUY_ORDER_TIME;

if(time(CURRENT_TIME_IN) > time(TEXT_NEW_BUY_ORDER_TIME)) then


CALL SYNC_NEW_BUY_ORDER_POSITIONS(CURRENT_TIME_IN);

CALL SYNC_OLD_BUY_ORDER_POSITIONS(CURRENT_TIME_IN);

CALL SYNC_SELL_ORDER_POSITIONS(CURRENT_TIME_IN);


END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_NEGATIVE_PRICE_TREND_FOR_SET_RANGE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_NEGATIVE_PRICE_TREND_FOR_SET_RANGE`(
SYMBOL_IN VARCHAR(20),
LATEST_TIME_POINT_IN DATETIME,
PER_HOUR_VOLUME_PREV_DAY_IN FLOAT,
ORDER_CYCLE_FREQUENCY_IN FLOAT,
THRESHOLD_VALUE_PCT_IN FLOAT,
THRESHOLD_VALUE_REAL_IN FLOAT)
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
AND A.curr_time >= DATE_SUB(B.curr_time, INTERVAL (3600 * THRESHOLD_VALUE_PCT_IN) SECOND))
AND B.price <= (A.price * (1 - THRESHOLD_VALUE_REAL_IN));

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
                             * ((3600 * THRESHOLD_VALUE_PCT_IN) /   TIME_DIFF) ;

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

DECLARE VAR_SPURT_CONTROL_THRESHOLD FLOAT;


SELECT  param_value FROM trading_parameters WHERE param_id = 'SPURT_CONTROL_THRESHOLD'
INTO VAR_SPURT_CONTROL_THRESHOLD;


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


IF( VAR_TIME_DIFF_MINUTES < VAR_SPURT_CONTROL_THRESHOLD AND STRENGTH_TO_BE_APPLIED > 2.5) THEN

update negative_price_trend_data
set  original_max_strength = STRENGTH_TO_BE_APPLIED
where id = VAR_TREND_RECORD_ID;

SET STRENGTH_TO_BE_APPLIED = STRENGTH_TO_BE_APPLIED * (VAR_TIME_DIFF_MINUTES / VAR_SPURT_CONTROL_THRESHOLD );

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

DECLARE VAR_SPURT_CONTROL_THRESHOLD FLOAT;


SELECT  param_value FROM trading_parameters WHERE param_id = 'SPURT_CONTROL_THRESHOLD'
INTO VAR_SPURT_CONTROL_THRESHOLD;




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

IF( VAR_TIME_DIFF_MINUTES < VAR_SPURT_CONTROL_THRESHOLD AND STRENGTH_TO_BE_APPLIED > 2.5) THEN

update positive_price_trend_data
set  original_max_strength = STRENGTH_TO_BE_APPLIED
where id = VAR_TREND_RECORD_ID;

SET STRENGTH_TO_BE_APPLIED = STRENGTH_TO_BE_APPLIED * (VAR_TIME_DIFF_MINUTES / VAR_SPURT_CONTROL_THRESHOLD );

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
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_POSITIVE_PRICE_TREND_FOR_SET_RANGE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_POSITIVE_PRICE_TREND_FOR_SET_RANGE`(
SYMBOL_IN VARCHAR(20),
LATEST_TIME_POINT_IN DATETIME,
PER_HOUR_VOLUME_PREV_DAY_IN FLOAT,
ORDER_CYCLE_FREQUENCY_IN FLOAT,
THRESHOLD_VALUE_PCT_IN FLOAT,
THRESHOLD_VALUE_REAL_IN FLOAT)
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
AND A.curr_time >= DATE_SUB(B.curr_time, INTERVAL (3600 * THRESHOLD_VALUE_PCT_IN) SECOND))
AND B.price >= (A.price * (1 + THRESHOLD_VALUE_REAL_IN));

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
                             * ((3600 * THRESHOLD_VALUE_PCT_IN) /   TIME_DIFF) ;

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
/*!50003 DROP PROCEDURE IF EXISTS `CHECK_PRICE_TREND_FOR_SET_RANGE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `CHECK_PRICE_TREND_FOR_SET_RANGE`(
SYMBOL_IN VARCHAR(20),
LATEST_TIME_POINT_IN DATETIME,
PREV_DAY_VOLUME_IN INT(11))
BEGIN


DECLARE VAR_ORDER_CYCLE_FREQUENCY FLOAT;

DECLARE PER_HOUR_VOLUME_PREV_DAY FLOAT DEFAULT 0;

DECLARE VAR_THRESHOLD_VALUE_PCT FLOAT DEFAULT 0.5;

DECLARE VAR_THRESHOLD_VALUE_REAL FLOAT DEFAULT 0.005;



SELECT  param_value FROM trading_parameters WHERE param_id = 'ORDER_CYCLE_FREQUENCY'
INTO VAR_ORDER_CYCLE_FREQUENCY;

SET PER_HOUR_VOLUME_PREV_DAY = PREV_DAY_VOLUME_IN * 4/25;

SELECT  param_value FROM trading_parameters WHERE param_id = 'PRICE_CHANGE_THRESHOLD_TIME'
INTO VAR_THRESHOLD_VALUE_PCT;

SET  VAR_THRESHOLD_VALUE_REAL =  VAR_THRESHOLD_VALUE_PCT / 100;


CALL CHECK_POSITIVE_PRICE_TREND_FOR_SET_RANGE(SYMBOL_IN,LATEST_TIME_POINT_IN,PER_HOUR_VOLUME_PREV_DAY
                                                                      ,VAR_ORDER_CYCLE_FREQUENCY
                                                                      ,VAR_THRESHOLD_VALUE_PCT,VAR_THRESHOLD_VALUE_REAL);

CALL CHECK_NEGATIVE_PRICE_TREND_FOR_SET_RANGE(SYMBOL_IN,LATEST_TIME_POINT_IN,PER_HOUR_VOLUME_PREV_DAY
                                                                      ,VAR_ORDER_CYCLE_FREQUENCY
                                                                      ,VAR_THRESHOLD_VALUE_PCT,VAR_THRESHOLD_VALUE_REAL);

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


CALL CHECK_PRICE_TREND_FOR_SET_RANGE(SYMBOL_IN, LATEST_TIME_POINT,PREV_DAY_VOLUME);


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

DECLARE VAR_IS_NEW_ORDERS_DONE BOOLEAN DEFAULT FALSE;


SELECT  text_param_value FROM trading_parameters WHERE param_id = 'NEW_BUY_ORDER_TIME'
INTO TEXT_NEW_BUY_ORDER_TIME;

select is_new_orders_done from market_day_events_status where
curr_date = date(DUMMY_CURRENT_TIME) into VAR_IS_NEW_ORDERS_DONE;



       CALL CHECK_PRICE_TREND_CYCLE(DUMMY_CURRENT_TIME);

       CALL SLOW_STOP_LOSS_TRIGGER_CYCLE(DUMMY_CURRENT_TIME,INTERVAL_SECONDS_IN,IS_DUMMY_CYCLE);

       CALL CHECK_ORDER_CYCLE(DUMMY_CURRENT_TIME);

       CALL FAST_STOP_LOSS_TRIGGER_CYCLE(DUMMY_CURRENT_TIME,INTERVAL_SECONDS_IN);


       IF(time(DUMMY_CURRENT_TIME) >= time(TEXT_NEW_BUY_ORDER_TIME) AND (!VAR_IS_NEW_ORDERS_DONE)) THEN

       CALL  MARKET_NEW_ORDER_MASTER(DUMMY_CURRENT_TIME);

          update market_day_events_status set is_new_orders_done = 1
          where curr_date =  date(DUMMY_CURRENT_TIME);

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
    exchange_order_id,quantity, FINAL_BUY_PRICE*quantity,0,0,
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
SELECT DATE_REFERENCE_IN,a.* FROM basis_for_calls a);


replace into selected_instrument_archive(
SELECT DATE_REFERENCE_IN,a.* FROM selected_instrument a);

replace into live_data_archive( SELECT * FROM live_data);

replace into live_option_price_data_archive( SELECT * FROM live_option_price_data);

-- replace into live_process_status_record_archive( SELECT * FROM live_process_status_record);


delete from  live_data_archive
where date(curr_time) < date_sub(DATE_REFERENCE_IN,interval 8 day);

delete from  live_option_price_data_archive
where date(curr_time) < date_sub(DATE_REFERENCE_IN,interval 8 day);


/*
delete from  live_process_status_record_archive
where date(curr_time) < date_sub(DATE_REFERENCE_IN,interval 6 day);

*/

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


SELECT MAX(order_id) from option_buy_order into MAX_ID;

delete from option_buy_order;

IF(MAX_ID > 9999999999) THEN

ALTER TABLE option_buy_order AUTO_INCREMENT =1;

END IF;


SELECT MAX(order_id) from option_sell_order into MAX_ID;

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

DECLARE VAR_IS_MARKET_OPENING_DONE BOOLEAN DEFAULT FALSE;



/*
replace into basis_for_calls_archive(
SELECT date(START_TIME_IN),a.* FROM basis_for_calls a);

replace into selected_instrument_archive(
SELECT date(START_TIME_IN),a.* FROM selected_instrument a);
*/

update basis_for_calls
set symbol = trim(symbol),
url = trim(url),
prev_close = trim(prev_close),
confidence_level = trim(confidence_level),
volume_prev_day = trim(volume_prev_day);


update selected_instrument
set symbol = trim(symbol),
option_type = trim(option_type),
option_strike_price = trim(option_strike_price),
expiry_date_full = trim(expiry_date_full),
expiry_date_prefix = trim(expiry_date_prefix),
lot_size = trim(lot_size),
option_close_price = trim(option_close_price),
last_implied_volatility = trim(last_implied_volatility),
expiry_factor_quotient = trim(expiry_factor_quotient);

DELETE FROM live_data where curr_time < CONCAT(DATE(START_TIME_IN),' 09:15:00');

DELETE FROM live_data where date(curr_time) < date(START_TIME_IN);

DELETE FROM live_option_price_data where date(curr_time) < date(START_TIME_IN);


select is_market_opening_done from market_day_events_status where
curr_date = date(START_TIME_IN) into VAR_IS_MARKET_OPENING_DONE;

IF (VAR_IS_MARKET_OPENING_DONE = 0) THEN


 DELETE FROM  option_buy_order;

 DELETE FROM  option_sell_order;

 DELETE FROM option_stop_loss_order_price;

 DELETE FROM option_buy_order_information;

 DELETE FROM option_sell_order_information;




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

-- SET IS_DUMMY_EXECUTION = TRUE;


-- HARDCODING BELOW ------ TO BE REMOVED ------ START

/*
SET DATE_REFERENCE = '2018-02-01';

SET IS_DUMMY_EXECUTION = TRUE;

SET VAR_NOW_TIME = CONCAT(DATE(DATE_REFERENCE),' 09:25:00');
*/

-- HARDCODING BELOW ------ TO BE REMOVED ------ END




SET DAY_START_REFERENCE = CONCAT(DATE(DATE_REFERENCE),' 09:15:00');

SET DAY_END_REFERENCE = CONCAT(DATE(DATE_REFERENCE),' 15:30:00');



-- REAL VALUE TO BE SET  ------- START

SET VAR_NOW_TIME = NOW();

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



WHILE ( time(VAR_NOW_TIME) < time('2018-01-21 09:15:00'))
DO

DO SLEEP(5);

SET VAR_NOW_TIME = NOW();

END WHILE;



call INIT_DB_DAY_START(VAR_NOW_TIME);


WHILE (!VAR_IS_DAY_INIT_DONE) DO


select is_day_init_done from market_day_events_status where
curr_date = DATE_REFERENCE into VAR_IS_DAY_INIT_DONE;

IF(VAR_IS_DAY_INIT_DONE IS NULL OR !VAR_IS_DAY_INIT_DONE) THEN


  REPLACE INTO `engine_live`.`live_data`

  (select null,CONCAT(DATE(DATE_REFERENCE),' 09:14:59'),a.symbol,0,a.prev_close
  from engine_live.basis_for_calls a);

  SET VAR_IS_DAY_INIT_DONE = 1;

  REPLACE INTO market_day_events_status VALUES(DATE_REFERENCE,1,0,0);

END IF;


END WHILE;







SELECT TIMESTAMPDIFF(SECOND,VAR_NOW_TIME,DAY_END_REFERENCE) INTO INITIAL_FILL_TIME;

SET NO_OF_LOOPS_BEFORE_CURRENT_TIME  = (INITIAL_FILL_TIME/ 60) + 1;


loop0: loop

       SET VAR_LOOP_START_TIME = NOW();

       -- SET VAR_LOOP_START_TIME = CONCAT(DATE(DATE_REFERENCE),concat(' ',time(now())));

        SET VAR_CURRENT_REFERENCE_TIME = NOW();


         select is_market_opening_done from market_day_events_status where
         curr_date = DATE_REFERENCE into VAR_IS_MARKET_OPENING_DONE;

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


 --       IF(true) then

       IF(time(VAR_CURRENT_REFERENCE_TIME) >= time('2018-01-21 09:15:00')
       AND time(VAR_CURRENT_REFERENCE_TIME) < time(TEXT_NEW_BUY_ORDER_TIME)) THEN



       IF(VAR_IS_MARKET_OPENING_DONE IS NULL OR !VAR_IS_MARKET_OPENING_DONE) THEN

          CALL MARKET_OPENING_MASTER(VAR_CURRENT_REFERENCE_TIME);

          SET VAR_IS_MARKET_OPENING_DONE = 1;

          update market_day_events_status set is_market_opening_done = 1
          where curr_date =  DATE_REFERENCE;

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



       SET VAR_LOOP_END_TIME = NOW();

       -- SET VAR_LOOP_END_TIME = CONCAT(DATE(DATE_REFERENCE),concat(' ',time(now())));


       -- Loop incremented at end so that 1st cycle is always complete order cycle  - COMPLETE_ORDER_CYCLE
       set l_loop := l_loop + 1;

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

-- For Logging Partial Order Fulfilment


update option_sell_order
set no_of_lots = NO_OF_LOTS_IN,
quantity = QUANTITY_IN
where order_id = VAR_ORDER_ID;

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

DECLARE VAR_ORDER_PRICE FLOAT DEFAULT 0;

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



SET DATE_REFERENCE = '2018-02-02';

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

/*
REPLACE INTO log_messages VALUES(DAY_START_REFERENCE,
                          concat('PUT_ORDERS_WITH_LIVE_DATA - ', DAY_START_REFERENCE)
                          , 'START');

*/


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

VALUES(CURRENT_REFERENCE_TIME_IN, 'ERRORD',0,0);

END IF;



SET ORDER_ERR_RECORD_COUNT = 0;

SELECT COUNT(*) FROM option_sell_order_event

WHERE curr_time = CURRENT_REFERENCE_TIME_IN

AND event_type like 'ER%'

INTO ORDER_ERR_RECORD_COUNT;

IF(ORDER_ERR_RECORD_COUNT > 0) THEN

REPLACE INTO live_process_status_record

VALUES(CURRENT_REFERENCE_TIME_IN, 'ERRORD',0,0);

END IF;


SET ORDER_ERR_RECORD_COUNT = 0;

SELECT COUNT(*) FROM live_process_status_record

WHERE curr_time = CURRENT_REFERENCE_TIME_IN

INTO ORDER_ERR_RECORD_COUNT;

IF (ORDER_ERR_RECORD_COUNT IS NULL OR ORDER_ERR_RECORD_COUNT = 0) THEN

REPLACE INTO live_process_status_record

VALUES(CURRENT_REFERENCE_TIME_IN, 'SUCCESS',1,0);

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
SELECT symbol,option_type,option_strike_price
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

ELSE

CALL CHECK_AND_SYNC_POSITIONS(CURRENT_TIME_IN);

END IF;

CALL SLOW_STOP_LOSS_TRIGGER(CURRENT_TIME_IN,INTERVAL_SECONDS_IN);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SYNC_NEW_BUY_ORDER_POSITIONS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SYNC_NEW_BUY_ORDER_POSITIONS`(
CURRENT_TIME_IN DATETIME)
BEGIN


DECLARE VAR_OPTION_TYPE varchar(2);
DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;
DECLARE VAR_NO_OF_LOTS INT;
DECLARE VAR_QUANTITY INT;

DECLARE VAR_BUY_PRICE FLOAT;

DECLARE VAR_ORIGINAL_QUANTITY INT;



DECLARE cursor_OPTION_POSITIONS_TO_SYNC CURSOR FOR
SELECT a.symbol,a.option_type,a.option_strike_price,a.no_of_lots,
a.buy_quantity,a.buy_price FROM option_position a
where not exists
(select * from option_sell_order b
where a.symbol = b.symbol
and a.option_type = b.option_type
and a.option_strike_price = b.option_strike_price);

  OPEN cursor_OPTION_POSITIONS_TO_SYNC;
  BEGIN
    DECLARE VAR_SYMBOL varchar(20);

    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE cursor_OPTION_POSITIONS_TO_SYNC; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE cursor_OPTION_POSITIONS_TO_SYNC; RESIGNAL; END;
    LOOP
      FETCH cursor_OPTION_POSITIONS_TO_SYNC INTO VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
                      VAR_NO_OF_LOTS,VAR_QUANTITY,VAR_BUY_PRICE;


    IF(VAR_NO_OF_LOTS = NULL) THEN

           SET VAR_NO_OF_LOTS = 0;

    END IF;

    select quantity from option_buy_order
    where  symbol = VAR_SYMBOL
    and option_type = VAR_OPTION_TYPE
    and option_strike_price =  VAR_OPTION_STRIKE_PRICE
    into VAR_ORIGINAL_QUANTITY;

    If( VAR_QUANTITY >= VAR_ORIGINAL_QUANTITY) then


    update option_buy_order set isExecuted = 1
    where symbol = VAR_SYMBOL
    and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE;

    ELSE

    update option_buy_order set filled_quantity = VAR_QUANTITY,
    remaining_quantity =  (VAR_ORIGINAL_QUANTITY -  VAR_QUANTITY)
    where symbol = VAR_SYMBOL
    and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE;

    end if;

    /* ALSO SET NEW LOT SIZE AND QUANTITY FROM FILLED QUANTITY */

    CALL PUT_NEW_OPTION_SELL_ORDER_EVENT(VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,VAR_NO_OF_LOTS,
    VAR_QUANTITY,VAR_BUY_PRICE,CURRENT_TIME_IN);


    END LOOP;
  END;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SYNC_OLD_BUY_ORDER_POSITIONS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SYNC_OLD_BUY_ORDER_POSITIONS`(
CURRENT_TIME_IN DATETIME)
BEGIN


DECLARE VAR_OPTION_TYPE varchar(2);
DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;
DECLARE VAR_NO_OF_LOTS INT;
DECLARE VAR_QUANTITY INT;

DECLARE VAR_BUY_PRICE FLOAT;

DECLARE VAR_ORIGINAL_QUANTITY INT;

DECLARE VAR_ORIGINAL_FILLED_QUANTITY INT;

DECLARE CALCULATED_SELL_PRICE FLOAT DEFAULT 0;

DECLARE VAR_INITIAL_TARGET_PROFIT_FACTOR FLOAT DEFAULT 1.15;

-- DECLARE VAR_EFFICIENT_ORDER_PRICE FLOAT;



DECLARE cursor_OPTION_POSITIONS_TO_SYNC CURSOR FOR
SELECT a.symbol,a.option_type,a.option_strike_price,a.no_of_lots,
a.buy_quantity,a.buy_price FROM option_position a,option_buy_order b
where a.symbol = b.symbol
and a.option_type = b.option_type
and a.option_strike_price = b.option_strike_price
and b.isExecuted = 0;

  OPEN cursor_OPTION_POSITIONS_TO_SYNC;
  BEGIN
    DECLARE VAR_SYMBOL varchar(20);

    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE cursor_OPTION_POSITIONS_TO_SYNC; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE cursor_OPTION_POSITIONS_TO_SYNC; RESIGNAL; END;
    LOOP
      FETCH cursor_OPTION_POSITIONS_TO_SYNC INTO VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
                      VAR_NO_OF_LOTS,VAR_QUANTITY,VAR_BUY_PRICE;


    IF(VAR_NO_OF_LOTS = NULL) THEN

           SET VAR_NO_OF_LOTS = 0;

    END IF;

    select quantity from option_buy_order
    where  symbol = VAR_SYMBOL
    and option_type = VAR_OPTION_TYPE
    and option_strike_price =  VAR_OPTION_STRIKE_PRICE
    into VAR_ORIGINAL_QUANTITY;


    If( VAR_QUANTITY >= VAR_ORIGINAL_QUANTITY) then


    update option_buy_order set isExecuted = 1,
    filled_quantity = VAR_QUANTITY,
    remaining_quantity =  0
    where symbol = VAR_SYMBOL
    and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE;


    SELECT  param_value FROM trading_parameters WHERE param_id = 'INITIAL_TARGET_PROFIT_FACTOR'
    INTO VAR_INITIAL_TARGET_PROFIT_FACTOR;

    SET CALCULATED_SELL_PRICE = round_price_value(VAR_BUY_PRICE * VAR_INITIAL_TARGET_PROFIT_FACTOR);

    CALL PUT_MODIFY_OPTION_SELL_ORDER_EVENT(VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,VAR_NO_OF_LOTS,
    VAR_QUANTITY,CALCULATED_SELL_PRICE,0,CURRENT_TIME_IN,0);

        update option_stop_loss_order_price set sl_price = round_price_value(VAR_BUY_PRICE * 0.9)
    where symbol = VAR_SYMBOL
    and option_type = VAR_OPTION_TYPE
    and option_strike_price = VAR_OPTION_STRIKE_PRICE;


    else


    select filled_quantity from option_buy_order
    where  symbol = VAR_SYMBOL
    and option_type = VAR_OPTION_TYPE
    and option_strike_price =  VAR_OPTION_STRIKE_PRICE
    into VAR_ORIGINAL_FILLED_QUANTITY;

    If( VAR_QUANTITY > VAR_ORIGINAL_FILLED_QUANTITY) then

     update option_buy_order set filled_quantity = VAR_QUANTITY,
    remaining_quantity =  (VAR_ORIGINAL_QUANTITY -  VAR_QUANTITY)
    where symbol = VAR_SYMBOL
    and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE;

    SELECT  param_value FROM trading_parameters WHERE param_id = 'INITIAL_TARGET_PROFIT_FACTOR'
    INTO VAR_INITIAL_TARGET_PROFIT_FACTOR;


     SET CALCULATED_SELL_PRICE = round_price_value(VAR_BUY_PRICE * VAR_INITIAL_TARGET_PROFIT_FACTOR);

    CALL PUT_MODIFY_OPTION_SELL_ORDER_EVENT(VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,VAR_NO_OF_LOTS,
    VAR_QUANTITY,CALCULATED_SELL_PRICE,0,CURRENT_TIME_IN,0);

        update option_stop_loss_order_price set sl_price = round_price_value(VAR_BUY_PRICE * 0.9)
    where symbol = VAR_SYMBOL
    and option_type = VAR_OPTION_TYPE
    and option_strike_price = VAR_OPTION_STRIKE_PRICE;


    end if;




    end if;




    END LOOP;
  END;



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SYNC_SELL_ORDER_POSITIONS` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SYNC_SELL_ORDER_POSITIONS`(
CURRENT_TIME_IN DATETIME)
BEGIN


DECLARE VAR_OPTION_TYPE varchar(2);
DECLARE VAR_OPTION_STRIKE_PRICE FLOAT;
DECLARE VAR_NO_OF_LOTS INT;
DECLARE VAR_QUANTITY INT;

DECLARE VAR_SELL_PRICE FLOAT;

DECLARE VAR_ORIGINAL_QUANTITY INT;

DECLARE PENDING_BUY_ORDER_ID INT;




DECLARE cursor_OPTION_POSITIONS_TO_SYNC CURSOR FOR
SELECT a.symbol,a.option_type,a.option_strike_price,a.no_of_lots,
a.sell_quantity,a.sell_price FROM option_position a
,option_sell_order b
where 
a.sell_quantity > 0
and a.symbol = b.symbol
and a.option_type = b.option_type
and a.option_strike_price = b.option_strike_price
and b.isExecuted = 0;

  OPEN cursor_OPTION_POSITIONS_TO_SYNC;
  BEGIN
    DECLARE VAR_SYMBOL varchar(20);

    DECLARE EXIT HANDLER FOR NOT FOUND BEGIN CLOSE cursor_OPTION_POSITIONS_TO_SYNC; END;
    DECLARE EXIT HANDLER FOR SQLEXCEPTION BEGIN CLOSE cursor_OPTION_POSITIONS_TO_SYNC; RESIGNAL; END;
    LOOP
      FETCH cursor_OPTION_POSITIONS_TO_SYNC INTO VAR_SYMBOL,VAR_OPTION_TYPE,VAR_OPTION_STRIKE_PRICE,
                      VAR_NO_OF_LOTS,VAR_QUANTITY,VAR_SELL_PRICE;


    IF(VAR_NO_OF_LOTS = NULL) THEN

           SET VAR_NO_OF_LOTS = 0;

    END IF;


    select quantity from option_sell_order
    where  symbol = VAR_SYMBOL
    and option_type = VAR_OPTION_TYPE
    and option_strike_price =  VAR_OPTION_STRIKE_PRICE
    into VAR_ORIGINAL_QUANTITY;

    If( VAR_QUANTITY >= VAR_ORIGINAL_QUANTITY) then


    update option_sell_order set isExecuted = 1
    where symbol = VAR_SYMBOL
    and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE;

    select order_id from  option_buy_order
    where symbol = VAR_SYMBOL
    and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE
    and isExecuted = 0
    INTO PENDING_BUY_ORDER_ID;


    IF(PENDING_BUY_ORDER_ID IS NOT NULL) THEN


      REPLACE INTO option_buy_order_event
      (
        SELECT order_id,symbol,CURRENT_TIME_IN,option_type,option_strike_price,
        buy_price,no_of_lots,quantity,'CANCL',0 FROM option_buy_order WHERE
        order_id = PENDING_BUY_ORDER_ID
      );



      REPLACE INTO option_buy_order_cancelled
      (
      SELECT *
        FROM option_buy_order WHERE order_id = PENDING_BUY_ORDER_ID
        );


/*
      delete from option_buy_order
      where order_id = PENDING_BUY_ORDER_ID;
*/

    END IF;



    ELSE

    update option_sell_order set filled_quantity = VAR_QUANTITY,
    remaining_quantity =  (VAR_ORIGINAL_QUANTITY -  VAR_QUANTITY)
    where symbol = VAR_SYMBOL
    and option_type = VAR_OPTION_TYPE and option_strike_price = VAR_OPTION_STRIKE_PRICE;

    end if;

    END LOOP;
  END;



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

-- Dump completed on 2018-02-20  8:48:06
