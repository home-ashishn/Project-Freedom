DELIMITER ;


SET @symbol_txt = 'BPCL'; -- MARUTI RELCAPITAL RELIANCE VEDL SUNPHARMA

SET @option_type_txt = 'CE'; -- RELCAPITAL RELIANCE VEDL

SET @target_date = '2018-03-01';

SET @confidence_level_in = 90;



delete from market_day_events_status;

delete from live_option_price_data;
REPLACE INTO live_option_price_data
(select * from live_option_price_data_archive
where symbol = @symbol_txt
and option_type = @option_type_txt
and date(curr_time) = @target_date);

delete from live_data;
REPLACE INTO live_data
(select * from live_data_archive
where symbol = @symbol_txt
and date(curr_time) = @target_date);



delete from basis_for_calls;

replace into basis_for_calls(
select symbol,
volume_prev_day,
prev_close,
curr_signal,
url,
confidence_level,is_being_used FROM basis_for_calls_archive
where curr_date = @target_date );
update basis_for_calls set is_being_used = 1,confidence_level = @confidence_level_in;


delete from selected_instrument;

replace into selected_instrument(
SELECT symbol,
option_type,
option_strike_price,
option_close_price,
lot_size,
margin_allowance,
last_implied_volatility,
expiry_factor_quotient,
url,expiry_date_full,expiry_date_prefix,order_factor
 FROM selected_instrument_archive 
where curr_date = @target_date);


update selected_instrument set expiry_date_prefix = default,
expiry_date_full = default;

update selected_instrument set margin_allowance = 15000;

/*
delete from basis_for_calls 
where symbol != @symbol_txt;

delete from selected_instrument 
where symbol != @symbol_txt
or option_type != @option_type_txt;

*/

/*

delete from live_option_price_data_copy;
replace into live_option_price_data_copy
(select * from live_option_price_data);

update live_option_price_data a
set a.high_price = 
(select max(last_price) from live_option_price_data_copy b
where a.curr_time >= b.curr_time);

replace into live_option_price_data_archive
(select * from live_option_price_data); 

*/
-- CALL OFFLINE_DATA_EXECUTION_MASTER(@target_date);
