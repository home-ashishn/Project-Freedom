delete from engine_live.live_option_price_data
where date(curr_time) > date(curdate())
;


replace into live_option_price_data_archive
(select * from live_option_price_data);


update engine_live.live_data
set curr_time  = date_add(curr_time,INTERVAL 330 MINUTE);

replace into engine_live.live_data_archive
(select  * from engine_live.live_data);

