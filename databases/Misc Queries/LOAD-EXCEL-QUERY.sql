 -- declare date_ref varchar(20);
 -- BEGIN

-- declare date_ref varchar(20);

-- set @date_ref = '09-02-2018';

LOAD DATA LOCAL INFILE 'D:\\Project-Freedom\\databases\\Daily Data\\20-02-2018\\live-stock-data.csv' 
INTO TABLE live_data
		FIELDS TERMINATED BY ','
        OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;



LOAD DATA LOCAL INFILE 'D:\\Project-Freedom\\databases\\Daily Data\\02-02-2018\\live-option-data.csv' 
INTO TABLE live_option_price_data
		FIELDS TERMINATED BY ','
        OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;

delete from basis_for_calls;

LOAD DATA LOCAL INFILE 'D:\\Project-Freedom\\databases\\Daily Data\\27-02-2018\\basis-for-calls.csv' 
INTO TABLE basis_for_calls
		FIELDS TERMINATED BY ','
        OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;



delete from selected_instrument;

LOAD DATA LOCAL INFILE 'D:\\Project-Freedom\\databases\\Daily Data\\27-02-2018\\selected-instrument.csv' 
INTO TABLE selected_instrument
		FIELDS TERMINATED BY ','
        OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;


update selected_instrument set expiry_date_prefix = default,
expiry_date_full = default;



-- END




