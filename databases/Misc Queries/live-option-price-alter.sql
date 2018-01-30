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
) ENGINE=InnoDB AUTO_INCREMENT=401033 DEFAULT CHARSET=utf8;
