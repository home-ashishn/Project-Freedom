delete from engine_live.live_option_price_data
where year(curr_time) <> year(curdate())
;


replace into live_option_price_data_archive
(select * from live_option_price_data)
