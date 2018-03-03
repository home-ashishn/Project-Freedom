DELIMITER ;


SET @symbol_txt = 'VEDL'; -- RELCAPITAL RELIANCE VEDL
SET @target_date = '2018-02-27';


delete from market_day_events_status;

delete from live_option_price_data;
REPLACE INTO live_option_price_data
(select * from live_option_price_data_archive
where symbol = @symbol_txt
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

update basis_for_calls set is_being_used = 1,confidence_level = 95;

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


delete from basis_for_calls 
where symbol != @symbol_txt;

delete from selected_instrument 
where symbol != @symbol_txt;

