SELECT * FROM engine_live.basis_for_calls;

UPDATE `engine_live`.`basis_for_calls` SET `is_being_used`='1'; -- WHERE `symbol`='SUNPHARMA';

update basis_for_calls set confidence_level = 100;

update selected_instrument set expiry_date_prefix = default,
expiry_date_full = default;


SELECT * FROM engine_live.selected_instrument;

SELECT * FROM engine_live.live_process_status_record
order by curr_time desc;

update live_procedure_status set process_status = 0;

SELECT * FROM engine_live.market_day_events_status;

delete from market_day_events_status;

SELECT * FROM engine_live.live_data
-- WHERE symbol = 'JINDALSTEL'
order by curr_time desc;



SELECT * FROM engine_live.live_option_price_data
-- WHERE symbol = 'RELCAPITAL'
order by curr_time desc;


SELECT min(last_price) FROM engine_live.live_option_price_data
-- WHERE symbol = 'JINDALSTEL'
order by curr_time desc;






