SELECT  a.symbol,a.option_type, a.buy_price,b.last_price,bid_price_1,b.curr_time from option_buy_order a, live_option_price_data b
where 
b.curr_time > date_sub(now(),interval 5 minute)
and a.isExecuted = 0
and a.symbol = b.symbol
and a.option_type = b.option_type
and a.option_strike_price = b.option_strike_price
and a.buy_price > (b.bid_price_1 * 0.8);
