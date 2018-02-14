 SELECT * FROM basis_for_calls;

update basis_for_calls a, engine_ea.equity_data_main b
set a.prev_close = b.close_price
, a.volume_prev_day = b.total_traded_quantity
where a.symbol = b.symbol
and b.curr_date = '2018-02-12';


update  selected_instrument a, selected_instrument_archive b
set a.lot_size = b.lot_size
where 
b.curr_date = '2018-01-30'
and a.symbol = b.symbol
and  a.option_type = b.option_type
-- and a.option_strike_price = b.option_strike_price
;

update  selected_instrument a
set a.option_strike_price =
(select distinct option_strike_price from live_option_price_data b
where a.symbol = b.symbol
and a.option_type = b.option_type
order by option_strike_price
limit 1);

replace into basis_for_calls_archive(
SELECT '2018-01-30',a.* FROM basis_for_calls a);


replace into selected_instrument_archive(
SELECT '2018-01-30',a.* FROM selected_instrument a);

replace into live_data_archive( SELECT * FROM live_data);
replace into live_option_price_data_archive( SELECT * FROM live_option_price_data);


delete from basis_for_calls;

replace into basis_for_calls(
select symbol,
volume_prev_day,
prev_close,
curr_signal,
url,
confidence_level FROM basis_for_calls_archive
where curr_date = '2018-01-30' );


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
url FROM selected_instrument_archive 
where curr_date = '2018-01-30');


delete from basis_for_calls where symbol not in 
(
'AXISBANK',
'HDFC',
'HDFCBANK',
'HDIL',
'ICICIBANK');

delete from selected_instrument where symbol not in 
(
'AXISBANK',
'HDFC',
'HDFCBANK',
'HDIL',
'ICICIBANK');




delete from basis_for_calls
where symbol not in
('IDFCBANK',
'INFY',
'ITC',
'JINDALSTEL',
'KOTAKBANK');

delete from selected_instrument
where symbol not in
('IDFCBANK',
'INFY',
'ITC',
'JINDALSTEL',
'KOTAKBANK');


delete from basis_for_calls
where symbol not in
('LT',
'MARUTI',
'RELIANCE',
'SBIN',
'TATASTEEL');

delete from selected_instrument
where symbol not in
('LT',
'MARUTI',
'RELIANCE',
'SBIN',
'TATASTEEL');


--   -------------------------------------------------------------


delete from basis_for_calls;

replace into basis_for_calls
( select symbol, volume_prev_day, prev_close, curr_signal, url, confidence_level 
FROM basis_for_calls_archive where curr_date = '2018-01-30' );

delete from selected_instrument;

replace into selected_instrument
( SELECT symbol, option_type, option_strike_price, option_close_price, lot_size, margin_allowance, 
last_implied_volatility, expiry_factor_quotient, url 
FROM selected_instrument_archive  where curr_date = '2018-01-30');


delete from basis_for_calls
where symbol not in
('LT',
'MARUTI',
'RELIANCE',
'SBIN',
'TATASTEEL');

delete from selected_instrument
where symbol not in
('LT',
'MARUTI',
'RELIANCE',
'SBIN',
'TATASTEEL');



