 SELECT * FROM engine_live.basis_for_calls;

update basis_for_calls a, engine_ea.equity_data_main b
set a.prev_close = b.close_price
, a.volume_prev_day = b.total_traded_quantity
where a.symbol = b.symbol
and b.curr_date = '2018-01-25' 