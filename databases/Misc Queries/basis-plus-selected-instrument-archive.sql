replace into basis_for_calls_archive(
SELECT '2018-01-29',a.* FROM engine_live.basis_for_calls a);

delete from engine_live.basis_for_calls;

replace into selected_instrument_archive(
SELECT '2018-01-29',a.* FROM engine_live.selected_instrument a);

delete from engine_live.selected_instrument;

-- delete from engine_live.basis_for_calls_archive where curr_date = '2018-01-19';

-- delete from engine_live.selected_instrument_archive where curr_date = '2018-01-19';

-- INSERT INTO `basis_for_calls` VALUES ('AXISBANK',9466991,584.8,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/axisbank/AB16',105),('CAPF',2654393,755.2,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-general/capitalfirst/FCH',100),('HDFC',6605642,1896.8,-1,'http://www.moneycontrol.com/india/stockpricequote/finance-housing/housingdevelopmentfinancecorporation/HDF',110),('ICICIBANK',31504668,346.15,-1,'http://www.moneycontrol.com/india/stockpricequote/banks-private-sector/icicibank/ICI02',105),('JINDALSTEL',12623614,264.35,-1,'http://www.moneycontrol.com/india/stockpricequote/steel-sponge-iron/jindalsteelpower/JSP',110),('LT',4966982,1360.8,1,'http://www.moneycontrol.com/india/stockpricequote/infrastructure-general/larsentoubro/LT',110),('MARUTI',686971,9368.7,-1,'http://www.moneycontrol.com/india/stockpricequote/auto-cars-jeeps/marutisuzukiindia/MS24',100),('PCJEWELLER',2782492,581.1,-1,'http://www.moneycontrol.com/india/stockpricequote/diamond-cutting-jewellery-precious-metals/pcjeweller/PJ',110);

-- INSERT INTO `selected_instrument` VALUES ('AXISBANK','PE',580,11.8,1200,20000,46.29,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=AXISBANK&instrument=OPTSTK&strike=580.00&type=PE&expiry=25JAN2018'),('CAPF','PE',740,8.5,800,20000,42.46,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=CAPF&instrument=OPTSTK&strike=800.00&type=CE&expiry=25JAN2018'),('HDFC','PE',1880,14,500,20000,15.79,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=HDFC&instrument=OPTSTK&strike=1880.00&type=CE&expiry=25JAN2018'),('ICICIBANK','PE',340,3.5,2750,20000,36.51,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=ICICIBANK&instrument=OPTSTK&strike=340.00&type=PE&expiry=25JAN2018'),('JINDALSTEL','PE',250,3.9,4500,20000,57.01,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=JINDALSTEL&instrument=OPTSTK&strike=260.00&type=PE&expiry=25JAN2018'),('LT','CE',1400,4.05,750,20000,15.73,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=LT&instrument=OPTSTK&strike=1360.00&type=CE&expiry=25JAN2018'),('MARUTI','PE',9300,103.15,75,20000,26.23,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=MARUTI&instrument=OPTSTK&strike=9300.00&type=PE&expiry=25JAN2018'),('PCJEWELLER','PE',560,8.2,1500,20000,57.2,1,'https://www.nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=PCJEWELLER&instrument=OPTSTK&strike=560.00&type=PE&expiry=25JAN2018#');

