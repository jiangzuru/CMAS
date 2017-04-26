ALTER TABLE `cmas`.`think_sku_detail`
ADD COLUMN `is_oversea` VARCHAR(45) NOT NULL AFTER `sort_name`;

ALTER TABLE `cmas`.`think_sku_detail`
ADD COLUMN `commission` VARCHAR(45) NOT NULL AFTER `is_oversea`;