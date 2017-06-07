ALTER TABLE `think_logistics` ADD COLUMN `fee_model` tinyint(2) NOT NULL DEFAULT 1 COMMENT '收费类型:1.普通模式，2.分段收费';
ALTER TABLE `think_logistics` ADD COLUMN `first_price` decimal(4,2) NOT NULL DEFAULT 0 COMMENT '首重收费';
ALTER TABLE `think_logistics` ADD COLUMN `continue_price` decimal(4,2) NOT NULL DEFAULT 0 COMMENT '续重收费';
ALTER TABLE `think_logistics` ADD COLUMN `units` int(4) NOT NULL DEFAULT 0 COMMENT '收费的单位。如:每50g收费';