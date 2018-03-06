
SELECT A.VOLUME, B.VOLUME,
A.PRICE,B.PRICE,
A.curr_time,B.curr_time FROM live_data_archive A,live_data_archive B
WHERE
A.symbol = 'RELIANCE'  AND B.symbol = 'RELIANCE' AND
(B.CURR_TIME < '2018-03-05 14:03:58' 
-- AND B.CURR_TIME >= DATE_SUB(LATEST_TIME_POINT_IN, INTERVAL (ORDER_CYCLE_FREQUENCY_IN * 60) SECOND)
)
AND
(A.curr_time < B.curr_time
AND A.curr_time >= DATE_SUB(B.curr_time, INTERVAL (3600 * 0.25) SECOND))
AND B.price >= (A.price * (1 + 0.025))

order by (B.volume - A.volume) desc
limit 250;
