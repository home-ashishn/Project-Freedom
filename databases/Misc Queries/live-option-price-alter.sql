ALTER TABLE `engine_live`.`live_option_price_data` 
DROP COLUMN `low_price`,
DROP COLUMN `high_price`,
DROP COLUMN `open_price`,
ADD COLUMN `bid_price_1` FLOAT NULL AFTER `last_price`,
ADD COLUMN `offer_price_1` FLOAT NULL AFTER `bid_price_1`,
ADD COLUMN `bid_price_2` FLOAT NULL AFTER `offer_price_1`,
ADD COLUMN `offer_price_2` FLOAT NULL AFTER `bid_price_2`;


ALTER TABLE `engine_live`.`live_option_price_data` 
ADD COLUMN `bid_quantity_1` FLOAT NULL AFTER `offer_price_2`,
ADD COLUMN `offer_quantity_1` FLOAT NULL AFTER `bid_quantity_1`,
ADD COLUMN `bid_quantity_2` FLOAT NULL AFTER `offer_quantity_1`,
ADD COLUMN `offer_quantity_2` FLOAT NULL AFTER `bid_quantity_2`;

