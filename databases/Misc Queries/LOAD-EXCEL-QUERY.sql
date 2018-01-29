delete from live_option_price_data;

LOAD DATA LOCAL INFILE 'C:\\Users\\ASHISH\\Downloads\\option-live.csv' INTO TABLE live_option_price_data
		FIELDS TERMINATED BY ','
        OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES


