DELETE FROM live_option_price_data;

replace into live_option_price_data(
SELECT DISTINCT * FROM engine_live.live_option_price_data_archive
-- where symbol = 'SUNPHARMA'
);

DELETE FROM live_data;

replace into live_data(
SELECT DISTINCT * FROM engine_live.live_data_archive
-- where symbol = 'SUNPHARMA'
);


delete from basis_for_calls;

replace into basis_for_calls(
select symbol,
volume_prev_day,
prev_close,
curr_signal,
url,
confidence_level,is_being_used FROM basis_for_calls_archive
where curr_date = '2018-02-23' );


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
url,expiry_date_full,expiry_date_prefix FROM selected_instrument_archive 
where curr_date = '2018-02-23');

delete from basis_for_calls 
where symbol != 'SUNPHARMA';

delete from selected_instrument 
where symbol != 'SUNPHARMA';