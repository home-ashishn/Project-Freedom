SELECT * FROM engine_live.basis_for_calls;

SELECT * FROM engine_live.selected_instrument;

update live_procedure_status set process_status = 0;

SELECT * FROM engine_live.market_day_events_status;

delete from market_day_events_status;

SELECT * FROM engine_live.live_process_status_record
order by curr_time desc;

SELECT * FROM engine_live.live_data 
order by curr_time desc;

SELECT * FROM engine_live.live_option_price_data
order by curr_time desc;



SELECT min(bid_price_1) FROM engine_live.live_option_price_data
-- WHERE symbol = 'MARUTI'
-- and date(curr_time) = curdate()
-- where date(curr_time) = '2018-03-01'

order by curr_time DESC;
