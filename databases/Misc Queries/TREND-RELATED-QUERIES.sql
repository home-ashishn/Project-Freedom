DELIMITER ;


SET @symbol_txt = 'SUNPHARMA'; -- MARUTI RELCAPITAL RELIANCE VEDL SUNPHARMA

SET @plus_data = 0;

SET @minus_data = 0;

select symbol, sum(max_strength) from engine_live.positive_price_trend_data a
where 1=1 and symbol = @symbol_txt and 
id not in 
( select id_enclosed_strength from engine_live.positive_price_trend_data b 
where a.symbol = b.symbol and id_enclosed_strength is not null)
group by symbol
-- order by curr_time desc
into @symbol_txt,@plus_data;

select symbol, sum(max_strength) from engine_live.negative_price_trend_data a
where 1=1 and symbol = @symbol_txt and 
id not in 
( select id_enclosed_strength from engine_live.negative_price_trend_data b 
where a.symbol = b.symbol and id_enclosed_strength is not null)
group by symbol
-- order by curr_time desc
into @symbol_txt,@minus_data;


select @symbol_txt, @plus_data, @minus_data, (@plus_data - @minus_data + 2.5);


/*
SELECT * FROM engine_live.positive_price_trend_data
-- where symbol = 'MARUTI'
order by curr_time desc;


SELECT * FROM engine_live.negative_price_trend_data
-- where symbol = 'MARUTI'
order by curr_time desc;

*/

/*
select symbol, sum(max_strength) from engine_live.positive_price_trend_data
where 1=1
-- and id_enclosed_strength is null
and symbol = 'SUNPHARMA'
group by symbol
order by curr_time desc;

select symbol, sum(max_strength) from engine_live.negative_price_trend_data
where 1=1
-- and id_enclosed_strength is null
and symbol = 'SUNPHARMA'
group by symbol
order by curr_time desc;



SELECT * FROM engine_live.positive_price_trend_data_log
order by curr_time desc;


SELECT * FROM engine_live.negative_price_trend_data_log
order by curr_time desc;


*/