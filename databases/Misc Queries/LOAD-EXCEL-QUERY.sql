

-- set @date_ref_txt = '05-03-2018';
delete from basis_for_calls;

LOAD DATA LOCAL INFILE 'C:\\Users\\capiot\\Documents\\GitHub\\Project-Freedom\\databases\\Daily Data\\06-03-2018\\basis-for-calls.csv' 
INTO TABLE basis_for_calls
		FIELDS TERMINATED BY ','
        OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;

update basis_for_calls set confidence_level = confidence_level + 7.5;

delete from selected_instrument;

LOAD DATA LOCAL INFILE 'C:\\Users\\capiot\\Documents\\GitHub\\Project-Freedom\\databases\\Daily Data\\06-03-2018\\selected-instrument.csv' 
INTO TABLE selected_instrument
		FIELDS TERMINATED BY ','
        OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;


update selected_instrument set expiry_date_prefix = default,
expiry_date_full = default;



-- END










delete from live_data;

LOAD DATA LOCAL INFILE 'C:\\Users\\capiot\\Documents\\GitHub\\Project-Freedom\\databases\\Daily Data\\06-03-2018\\live-stock-data.csv' 
INTO TABLE live_data
		FIELDS TERMINATED BY ','
        OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;


delete from live_option_price_data;

LOAD DATA LOCAL INFILE 'C:\\Users\\capiot\\Documents\\GitHub\\Project-Freedom\\databases\\Daily Data\\06-03-2018\\live-option-data.csv' 
INTO TABLE live_option_price_data
		FIELDS TERMINATED BY ','
        OPTIONALLY ENCLOSED BY '"'
IGNORE 1 LINES;

delete a.* from selected_instrument a
where a.option_type != 
(select if(b.curr_signal = 1,'CE','PE') from basis_for_calls b
where a.symbol = b.symbol);

delete a.* from live_option_price_data a
where a.option_type != 
(select if(b.curr_signal = 1,'CE','PE') from basis_for_calls b
where a.symbol = b.symbol);