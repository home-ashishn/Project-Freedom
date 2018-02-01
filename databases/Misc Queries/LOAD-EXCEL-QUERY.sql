
LOAD DATA LOCAL INFILE 'D:\\Project-Freedom\\databases\\Daily Data\\30-01-2018\\live-stock-data.csv' 
INTO TABLE live_data
		FIELDS TERMINATED BY ','
        OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES


