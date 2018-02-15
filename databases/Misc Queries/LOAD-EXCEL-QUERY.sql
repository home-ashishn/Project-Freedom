 -- declare date_ref varchar(20);
 -- BEGIN

-- declare date_ref varchar(20);

-- set @date_ref = '09-02-2018';

LOAD DATA LOCAL INFILE 'D:\\Project-Freedom\\databases\\Daily Data\\02-02-2018\\live-stock-data.csv' 
INTO TABLE live_data
		FIELDS TERMINATED BY ','
        OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;



LOAD DATA LOCAL INFILE 'D:\\Project-Freedom\\databases\\Daily Data\\02-02-2018\\live-option-data.csv' 
INTO TABLE live_option_price_data
		FIELDS TERMINATED BY ','
        OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;


LOAD DATA LOCAL INFILE 'D:\\Project-Freedom\\databases\\Daily Data\\02-02-2018\\basis-for-calls.csv' 
INTO TABLE basis_for_calls
		FIELDS TERMINATED BY ','
        OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;



LOAD DATA LOCAL INFILE 'D:\\Project-Freedom\\databases\\Daily Data\\02-02-2018\\selected-instrument.csv' 
INTO TABLE selected_instrument
		FIELDS TERMINATED BY ','
        OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;

-- END




