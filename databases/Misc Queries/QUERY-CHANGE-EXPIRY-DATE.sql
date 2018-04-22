ALTER TABLE `engine_live`.`selected_instrument` 
CHANGE COLUMN `expiry_date_full` `expiry_date_full` VARCHAR(45) NULL DEFAULT '2018-05-31' ,
CHANGE COLUMN `expiry_date_prefix` `expiry_date_prefix` VARCHAR(45) NULL DEFAULT '18MAY' ;

ALTER TABLE `engine_live`.`selected_instrument_archive` 
CHANGE COLUMN `expiry_date_full` `expiry_date_full` VARCHAR(45) NULL DEFAULT '2018-05-31' ,
CHANGE COLUMN `expiry_date_prefix` `expiry_date_prefix` VARCHAR(45) NULL DEFAULT '18MAY' ;