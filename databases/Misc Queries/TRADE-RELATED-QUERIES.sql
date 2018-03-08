SELECT  distinct a.symbol,a.option_type,a.option_strike_price,
 a.buy_price,b.last_price,bid_price_1,b.curr_time, 
 (100 * (a.buy_price/bid_price_1)) 
 from option_buy_order a, live_option_price_data b
where 
b.curr_time > date_sub((select max(curr_time) from live_process_status_record),interval 5 minute)
and b.curr_time < date_sub((select max(curr_time) from live_process_status_record),interval 0 minute)
and a.isExecuted = 0
and a.symbol = b.symbol
and a.option_type = b.option_type
and a.option_strike_price = b.option_strike_price
and a.buy_price > (b.bid_price_1 * 0.6)
-- group by a.symbol
order by curr_time desc;

update option_buy_order 
set buy_price = buy_price * (1/ 1.1)
where symbol = 'TCS';

select distinct a.symbol, a.option_type,a.option_strike_price,a.option_close_price, b.last_price from selected_instrument a,live_option_price_data b
where a.symbol = b.symbol and a.option_type = b.option_type and a.option_strike_price = b.option_strike_price 
and b.curr_time > date_sub((select max(curr_time) from live_process_status_record),interval 1 minute)
and b.curr_time < date_sub((select max(curr_time) from live_process_status_record),interval 0 minute) 
group by a.symbol order by curr_time desc;


SELECT * FROM engine_live.live_data 
-- where symbol = 'MARUTI'
order by curr_time desc;

SELECT * FROM engine_live.live_option_price_data
-- where symbol = 'MARUTI'
-- and date(curr_time) = curdate()
order by curr_time desc;









SELECT  a.symbol,a.option_type,a.option_strike_price,
 a.buy_price,b.last_price,bid_price_1,a.curr_time,b.curr_time 
 from option_buy_order_event a, 
 live_option_price_data_archive b
where 1=1
and date(b.curr_time) = curdate()
-- b.curr_time > date_sub((select max(curr_time) from live_process_status_record),interval 5 minute)
and a.curr_time > date_sub(b.curr_time,interval 10 second)
and a.curr_time < date_add(b.curr_time,interval 10 second)

and a.symbol = b.symbol
and a.option_type = b.option_type
and a.option_strike_price = b.option_strike_price
and a.buy_price > (b.bid_price_1 * 0.95)
order by a.curr_time desc;




UPDATE selected_instrument set margin_allowance = 16000
where 1=1 
and symbol = 'RELIANCE'
-- AND symbol IN ('','','','',);