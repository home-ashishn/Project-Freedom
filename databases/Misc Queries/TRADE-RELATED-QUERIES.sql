SELECT  a.symbol,a.option_type,a.option_strike_price,
 a.buy_price,b.last_price,bid_price_1,b.curr_time from option_buy_order a, live_option_price_data b
where 
b.curr_time > date_sub((select max(curr_time) from live_process_status_record),interval 5 minute)
and b.curr_time < date_sub((select max(curr_time) from live_process_status_record),interval 0 minute)
and a.isExecuted = 0
and a.symbol = b.symbol
and a.option_type = b.option_type
and a.option_strike_price = b.option_strike_price
and a.buy_price > (b.bid_price_1 * 0.8)
order by curr_time desc;


SELECT  a.symbol,a.option_type,a.option_strike_price,
 a.buy_price,b.last_price,bid_price_1,b.curr_time from option_buy_order_event a, live_option_price_data b
where 1=1
-- b.curr_time > date_sub((select max(curr_time) from live_process_status_record),interval 5 minute)
and a.curr_time > date_sub(b.curr_time,interval 10 second)
and a.curr_time < date_add(b.curr_time,interval 10 second)
and a.symbol = b.symbol
and a.option_type = b.option_type
and a.option_strike_price = b.option_strike_price
and a.buy_price > (b.bid_price_1 * 0.8)
order by curr_time desc;


select a.symbol, a.option_type,a.option_strike_price,
a.buy_price, b.option_close_price 
from option_position a,selected_instrument b
where a.symbol = b.symbol
and a.option_type = b.option_type
and a.option_strike_price = b.option_strike_price
and a.buy_price > b.option_close_price;





