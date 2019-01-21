delete from engine_live.live_option_price_data
where date(curr_time) <> '2019-01-09'
;


replace into live_option_price_data_archive
(select * from live_option_price_data);

delete from engine_live.live_data
where date(curr_time) <> '2019-01-09';


update engine_live.live_data
set curr_time  = date_add(curr_time,INTERVAL 330 MINUTE);

replace into engine_live.live_data_archive
(select  * from engine_live.live_data);





---------------------- TO LOAD BASIS AND SELECTED_INSTRUMENT TABLES START --------------------------------


delete from basis_for_calls;

insert into basis_for_calls
(select distinct symbol, '9353295', '401.3', '-1', 'https://www.moneycontrol.com/india/stockpricequote/auto-2-3-wheelers/bajajauto/BA10', '82.5', '1'
from live_data
where date(curr_time) = '2019-01-09');


delete from selected_instrument;

insert into selected_instrument
(select distinct symbol,option_type,option_strike_price, 
'36.1', '250', '15000', '0', '0', 
'https://nseindia.com/live_market/dynaContent/live_watch/get_quote/GetQuoteFO.jsp?underlying=BAJFINANCE&instrument=OPTSTK&strike=2600.00&type=CE&expiry=27DEC2018',
 '2018-04-26', '19JAN', '0'
from live_option_price_data
where date(curr_time) = '2019-01-09');





---------------------- TO LOAD BASIS AND SELECTED_INSTRUMENT TABLES END --------------------------------






------------------- FOR DOING NEW ITERATION START -----------------------


replace into live_option_price_data
(select * from live_option_price_data_archive);


replace into engine_live.live_data
(select  * from engine_live.live_data_archive);

------------------- FOR DOING NEW ITERATION END -----------------------


