CREATE TABLE `think_sku_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sku` varchar(255) NOT NULL,
  `weight` decimal(11,2) NOT NULL COMMENT '重量',
  `length` decimal(11,2) NOT NULL COMMENT '长度',
  `width` decimal(11,2) NOT NULL COMMENT '宽度',
  `height` decimal(11,2)  NOT NULL COMMENT '高度',
  `buy_price` decimal(11,2) NOT NULL COMMENT '进货价',
  `logistics_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '物流方式，1：直邮，2：海外FBA',
  `package_price` decimal(11,2) NOT NULL DEFAULT 0 COMMENT '包装成本',
  `domestic_logistics_price` decimal(11,2) NOT NULL DEFAULT 0 COMMENT '国内运费',
  `special_type` varchar(20) NOT NULL DEFAULT 0 COMMENT '是否特殊物品。0.普通，1.带电产品 2.粉末 3.液体',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `think_fba_fee`(
	`id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
	`low_length` decimal(11,2) NOT NULL COMMENT '长度下限',
	`high_length` decimal(11,2) NOT NULL COMMENT '长度上限',  
	`low_width` decimal(11,2) NOT NULL COMMENT '宽度下限',
	`high_width` decimal(11,2) NOT NULL COMMENT '宽度上限', 
	`low_height` decimal(11,2) NOT NULL COMMENT '高度下限',
	`high_height` decimal(11,2) NOT NULL COMMENT '高度上限', 
	`low_weight` int(10) NOT NULL COMMENT '重量下限',
	`high_weight` int(10) NOT NULL COMMENT '重量下限',
	`package_weight` int(10) NOT NULL COMMENT 'FBA包装重量',
	`sale_domain` varchar(128) NOT NULL COMMENT '销售站点',
	`price`  decimal(11,2) NOT NULL COMMENT '基础服务费价格',
	PRIMARY KEY (`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `think_change_rate`(
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`change_rate` decimal(11,4) NOT NULL COMMENT '汇率',
	`date` varchar(11) NOT NULL COMMENT '日期',
	`from_Currency` varchar(11) NOT NULL COMMENT '本币',
	`to_Currency` varchar(11) NOT NULL COMMENT '要兑换的币种',
	PRIMARY KEY(`id`)
)ENGINE=innoDB DEFAULT CHARSET=utf8;

CREATE TABLE `think_logistics`(
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(256) NOT NULL COMMENT '物流名称',
	`rank` tinyint(1) NOT NULL DEFAULT 1 COMMENT '所在级别',
	`pid` int(11) NOT NULL DEFAULT 0 COMMENT '父级别id',
	`special_type` varchar(20) NOT NULL COMMENT '是否特殊物品。0.普通，1.带电产品 2.粉末 3.液体',
	`only_weight` tinyint(1) NOT NULL DEFAULT 0 COMMENT '是否计算体积重 0:不计算, 1:计算',
	`price` decimal(4,2) NOT NULL DEFAULT 0 COMMENT '每kg运输价格',
	`volume_number` int(11) NOT NULL DEFAULT 0 COMMENT '体积重系数',
	`destination` varchar(256) NOT NULL COMMENT '目的地',
	PRIMARY KEY(`id`)
)ENGINE=innoDB DEFAULT CHARSET=utf8;

CREATE TABLE `think_setting`(
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(128) NOT NULL COMMENT '变量名',
	`value` decimal(11,4) NOT NULL COMMENT '变量值',
	PRIMARY KEY(`id`)
)ENGINE=innoDB DEFAULT CHARSET=utf8;

CREATE TABLE `think_commission`(
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(128) NOT NULL COMMENT '类目名称',
	`value` decimal(5,4) NOT NULL COMMENT '佣金费率',
	`lowest` decimal(5,4) NOT NULL DEFAULT 0 COMMENT '最低佣金',
	`sale_domain` varchar(128) NOT NULL COMMENT '销售站点',
	PRIMARY KEY(`id`)
)ENGINE=innoDB DEFAULT CHARSET=utf8;
