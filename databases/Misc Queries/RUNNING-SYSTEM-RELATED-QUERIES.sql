SELECT * FROM engine_live.selected_instrument;

SELECT * FROM engine_live.live_process_status_record
order by curr_time desc;

SELECT * FROM engine_live.live_procedure_status;

update live_procedure_status set process_status = 0;