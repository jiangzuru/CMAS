/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : cmas

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-04-15 15:10:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `think_change_rate`
-- ----------------------------
DROP TABLE IF EXISTS `think_change_rate`;
CREATE TABLE `think_change_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `change_rate` decimal(11,4) NOT NULL COMMENT '汇率',
  `date` varchar(11) NOT NULL COMMENT '日期',
  `from_Currency` varchar(11) NOT NULL COMMENT '本币',
  `to_Currency` varchar(11) NOT NULL COMMENT '要兑换的币种',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_change_rate
-- ----------------------------
INSERT INTO `think_change_rate` VALUES ('1', '7.3049', '2017-04-14', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('2', '8.6129', '2017-04-14', 'GBP', 'CNY');

-- ----------------------------
-- Table structure for `think_fba_fee`
-- ----------------------------
DROP TABLE IF EXISTS `think_fba_fee`;
CREATE TABLE `think_fba_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `low_length` decimal(11,2) NOT NULL COMMENT '长度下限',
  `high_length` decimal(11,2) NOT NULL COMMENT '长度上限',
  `low_width` decimal(11,2) NOT NULL COMMENT '宽度下限',
  `high_width` decimal(11,2) NOT NULL COMMENT '宽度上限',
  `low_height` decimal(11,2) NOT NULL COMMENT '高度下限',
  `high_height` decimal(11,2) NOT NULL COMMENT '重量上限',
  `low_weight` int(10) NOT NULL COMMENT '重量下限',
  `package_weight` int(10) NOT NULL COMMENT 'FBA包装重量',
  `price` decimal(11,2) NOT NULL COMMENT '基础服务费价格',
  `sale_domain` varchar(128) NOT NULL COMMENT '销售站点',
  `high_weight` int(10) NOT NULL COMMENT '重量上限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_fba_fee
-- ----------------------------
INSERT INTO `think_fba_fee` VALUES ('1', '0.00', '20.00', '0.00', '15.00', '0.00', '1.00', '0', '20', '1.07', '英国', '100');
INSERT INTO `think_fba_fee` VALUES ('2', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '0', '40', '1.19', '英国', '100');
INSERT INTO `think_fba_fee` VALUES ('3', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '101', '40', '1.31', '英国', '250');
INSERT INTO `think_fba_fee` VALUES ('4', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '251', '40', '1.51', '英国', '500');
INSERT INTO `think_fba_fee` VALUES ('5', '20.00', '33.00', '15.00', '23.00', '2.50', '5.00', '0', '40', '1.70', '英国', '1000');
INSERT INTO `think_fba_fee` VALUES ('6', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '0', '100', '1.66', '英国', '250');
INSERT INTO `think_fba_fee` VALUES ('7', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '251', '100', '1.72', '英国', '500');
INSERT INTO `think_fba_fee` VALUES ('8', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '501', '100', '1.77', '英国', '1000');
INSERT INTO `think_fba_fee` VALUES ('9', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1001', '100', '2.19', '英国', '1500');
INSERT INTO `think_fba_fee` VALUES ('10', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1501', '100', '2.41', ' 英国', '2000');
INSERT INTO `think_fba_fee` VALUES ('11', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '2001', '100', '3.30', '英国', '3000');
INSERT INTO `think_fba_fee` VALUES ('12', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '3001', '100', '3.40', '英国', '4000');
INSERT INTO `think_fba_fee` VALUES ('13', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '4001', '100', '3.40', '英国', '5000');
INSERT INTO `think_fba_fee` VALUES ('14', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '5001', '100', '3.45', '英国', '6000');
INSERT INTO `think_fba_fee` VALUES ('15', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '6001', '100', '3.45', '英国', '7000');
INSERT INTO `think_fba_fee` VALUES ('16', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '7001', '100', '3.53', '英国', '8000');
INSERT INTO `think_fba_fee` VALUES ('17', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '8001', '100', '3.53', '英国', '9000');
INSERT INTO `think_fba_fee` VALUES ('18', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '9001', '100', '3.53', '英国', '10000');
INSERT INTO `think_fba_fee` VALUES ('19', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '10001', '100', '3.53', '英国', '11000');
INSERT INTO `think_fba_fee` VALUES ('20', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '11001', '100', '3.54', '英国', '12000');
INSERT INTO `think_fba_fee` VALUES ('21', '0.00', '20.00', '0.00', '15.00', '0.00', '1.00', '0', '20', '1.60', '德国', '100');
INSERT INTO `think_fba_fee` VALUES ('22', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '0', '40', '1.72', '德国', '100');
INSERT INTO `think_fba_fee` VALUES ('23', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '101', '40', '1.73', '德国', '250');
INSERT INTO `think_fba_fee` VALUES ('24', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '251', '40', '1.77', '德国', '500');
INSERT INTO `think_fba_fee` VALUES ('25', '20.00', '33.00', '15.00', '23.00', '2.50', '5.00', '0', '40', '2.14', '德国', '1000');
INSERT INTO `think_fba_fee` VALUES ('26', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '0', '100', '2.32', '德国', '250');
INSERT INTO `think_fba_fee` VALUES ('27', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '251', '100', '2.41', '德国', '500');
INSERT INTO `think_fba_fee` VALUES ('28', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '501', '100', '2.98', '德国', '1000');
INSERT INTO `think_fba_fee` VALUES ('29', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1001', '100', '3.04', '德国', '1500');
INSERT INTO `think_fba_fee` VALUES ('30', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1501', '100', '3.10', '德国', '2000');
INSERT INTO `think_fba_fee` VALUES ('31', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '2001', '100', '4.18', '德国', '3000');
INSERT INTO `think_fba_fee` VALUES ('32', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '3001', '100', '4.19', '德国', '4000');
INSERT INTO `think_fba_fee` VALUES ('33', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '4001', '100', '4.19', '德国', '5000');
INSERT INTO `think_fba_fee` VALUES ('34', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '5001', '100', '4.27', '德国', '6000');
INSERT INTO `think_fba_fee` VALUES ('35', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '6001', '100', '4.27', '德国', '7000');
INSERT INTO `think_fba_fee` VALUES ('36', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '7001', '100', '4.40', '德国', '8000');
INSERT INTO `think_fba_fee` VALUES ('37', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '8001', '100', '4.40', '德国', '9000');
INSERT INTO `think_fba_fee` VALUES ('38', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '9001', '100', '4.40', '德国', '10000');
INSERT INTO `think_fba_fee` VALUES ('39', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '10001', '100', '4.40', '德国', '11000');
INSERT INTO `think_fba_fee` VALUES ('40', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '11001', '100', '4.41', '德国', '12000');
INSERT INTO `think_fba_fee` VALUES ('41', '0.00', '20.00', '0.00', '15.00', '0.00', '1.00', '0', '20', '1.98', '法国', '100');
INSERT INTO `think_fba_fee` VALUES ('42', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '0', '40', '2.08', '法国', '100');
INSERT INTO `think_fba_fee` VALUES ('43', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '101', '40', '2.08', '法国', '250');
INSERT INTO `think_fba_fee` VALUES ('44', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '251', '40', '2.24', '法国', '500');
INSERT INTO `think_fba_fee` VALUES ('45', '20.00', '33.00', '15.00', '23.00', '2.50', '5.00', '0', '40', '2.38', '法国', '1000');
INSERT INTO `think_fba_fee` VALUES ('46', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '0', '100', '2.55', '法国', '250');
INSERT INTO `think_fba_fee` VALUES ('47', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '251', '100', '2.74', '法国', '500');
INSERT INTO `think_fba_fee` VALUES ('48', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '501', '100', '3.50', '法国', '1000');
INSERT INTO `think_fba_fee` VALUES ('49', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1001', '100', '3.70', '法国', '1500');
INSERT INTO `think_fba_fee` VALUES ('50', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1501', '100', '3.83', '法国', '2000');
INSERT INTO `think_fba_fee` VALUES ('51', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '2001', '100', '4.98', '法国', '3000');
INSERT INTO `think_fba_fee` VALUES ('52', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '3001', '100', '5.14', '法国', '4000');
INSERT INTO `think_fba_fee` VALUES ('53', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '4001', '100', '5.14', '法国', '5000');
INSERT INTO `think_fba_fee` VALUES ('54', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '5001', '100', '5.22', '法国', '6000');
INSERT INTO `think_fba_fee` VALUES ('55', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '6001', '100', '5.22', '法国', '7000');
INSERT INTO `think_fba_fee` VALUES ('56', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '7001', '100', '5.35', '法国', '8000');
INSERT INTO `think_fba_fee` VALUES ('57', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '8001', '100', '5.35', '法国', '9000');
INSERT INTO `think_fba_fee` VALUES ('58', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '9001', '100', '5.35', '法国', '10000');
INSERT INTO `think_fba_fee` VALUES ('59', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '10001', '100', '5.35', '法国', '11000');
INSERT INTO `think_fba_fee` VALUES ('60', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '11001', '100', '5.36', '法国', '12000');
INSERT INTO `think_fba_fee` VALUES ('61', '0.00', '20.00', '0.00', '15.00', '0.00', '1.00', '0', '20', '2.26', '意大利', '100');
INSERT INTO `think_fba_fee` VALUES ('62', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '0', '40', '2.33', '意大利', '100');
INSERT INTO `think_fba_fee` VALUES ('63', '20.00', '33.00', '14.00', '23.00', '1.00', '2.50', '101', '40', '2.40', '意大利', '250');
INSERT INTO `think_fba_fee` VALUES ('64', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '251', '40', '2.66', '意大利', '500');
INSERT INTO `think_fba_fee` VALUES ('65', '20.00', '33.00', '15.00', '23.00', '2.50', '5.00', '0', '40', '3.01', '意大利', '1000');
INSERT INTO `think_fba_fee` VALUES ('66', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '0', '100', '3.05', '意大利', '250');
INSERT INTO `think_fba_fee` VALUES ('67', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '251', '100', '3.18', '意大利', '500');
INSERT INTO `think_fba_fee` VALUES ('68', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '501', '100', '3.74', '意大利', '1000');
INSERT INTO `think_fba_fee` VALUES ('69', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1001', '100', '4.04', '意大利', '1500');
INSERT INTO `think_fba_fee` VALUES ('70', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1501', '100', '4.15', '意大利', '2000');
INSERT INTO `think_fba_fee` VALUES ('71', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '2001', '100', '4.58', '意大利', '3000');
INSERT INTO `think_fba_fee` VALUES ('72', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '3001', '100', '4.94', '意大利', '4000');
INSERT INTO `think_fba_fee` VALUES ('73', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '4001', '100', '5.14', '意大利', '5000');
INSERT INTO `think_fba_fee` VALUES ('74', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '5001', '100', '5.22', '意大利', '6000');
INSERT INTO `think_fba_fee` VALUES ('75', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '6001', '100', '5.22', '意大利', '7000');
INSERT INTO `think_fba_fee` VALUES ('76', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '7001', '100', '5.35', '意大利', '8000');
INSERT INTO `think_fba_fee` VALUES ('77', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '8001', '100', '5.35', '意大利', '9000');
INSERT INTO `think_fba_fee` VALUES ('78', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '9001', '100', '5.35', '意大利', '10000');
INSERT INTO `think_fba_fee` VALUES ('79', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '10001', '100', '5.35', '意大利', '11000');
INSERT INTO `think_fba_fee` VALUES ('80', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '11001', '100', '5.36', '意大利', '12000');
INSERT INTO `think_fba_fee` VALUES ('81', '0.00', '20.00', '0.00', '15.00', '0.00', '1.00', '0', '20', '1.74', '西班牙', '100');
INSERT INTO `think_fba_fee` VALUES ('82', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '0', '40', '1.85', '西班牙', '100');
INSERT INTO `think_fba_fee` VALUES ('83', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '101', '40', '1.90', '西班牙', '250');
INSERT INTO `think_fba_fee` VALUES ('84', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '251', '40', '1.95', '西班牙', '500');
INSERT INTO `think_fba_fee` VALUES ('85', '20.00', '33.00', '15.00', '23.00', '2.50', '5.00', '0', '40', '1.99', '西班牙', '1000');
INSERT INTO `think_fba_fee` VALUES ('86', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '0', '100', '2.17', '西班牙', '250');
INSERT INTO `think_fba_fee` VALUES ('87', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '251', '100', '2.28', '西班牙', '500');
INSERT INTO `think_fba_fee` VALUES ('88', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '501', '100', '2.81', '西班牙', '1000');
INSERT INTO `think_fba_fee` VALUES ('89', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1001', '100', '2.98', '西班牙', '1500');
INSERT INTO `think_fba_fee` VALUES ('90', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1501', '100', '3.08', '西班牙', '2000');
INSERT INTO `think_fba_fee` VALUES ('91', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '2001', '100', '4.40', '西班牙', '3000');
INSERT INTO `think_fba_fee` VALUES ('92', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '3001', '100', '4.83', '西班牙', '4000');
INSERT INTO `think_fba_fee` VALUES ('93', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '4001', '100', '5.14', '西班牙', '5000');
INSERT INTO `think_fba_fee` VALUES ('94', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '5001', '100', '5.22', '西班牙', '6000');
INSERT INTO `think_fba_fee` VALUES ('95', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '6001', '100', '5.22', '西班牙', '7000');
INSERT INTO `think_fba_fee` VALUES ('96', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '7001', '100', '5.35', '西班牙', '8000');
INSERT INTO `think_fba_fee` VALUES ('97', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '8001', '100', '5.35', '西班牙', '9000');
INSERT INTO `think_fba_fee` VALUES ('98', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '9001', '100', '5.35', '西班牙', '10000');
INSERT INTO `think_fba_fee` VALUES ('99', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '10001', '100', '5.35', '西班牙', '11000');
INSERT INTO `think_fba_fee` VALUES ('100', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '11001', '100', '5.36', '西班牙', '12000');

-- ----------------------------
-- Table structure for `think_sku_detail`
-- ----------------------------
DROP TABLE IF EXISTS `think_sku_detail`;
CREATE TABLE `think_sku_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `sku` varchar(255) NOT NULL,
  `weight` decimal(11,2) NOT NULL COMMENT '重量',
  `length` decimal(11,2) NOT NULL COMMENT '长度',
  `width` decimal(11,2) NOT NULL COMMENT '宽度',
  `height` decimal(11,2) NOT NULL COMMENT '高度',
  `buy_price` decimal(11,2) NOT NULL COMMENT '进货价',
  `logistics_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '物流方式，1：直邮，2：海外FBA',
  `domestic_logistics_price` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '国内运费',
  `package_price` decimal(11,2) NOT NULL COMMENT '包装成本',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_sku_detail
-- ----------------------------
INSERT INTO `think_sku_detail` VALUES ('19', 'XZ01HCBK01-F2', '500.00', '22.00', '22.00', '34.00', '11.00', '2', '2.00', '2.00');
INSERT INTO `think_sku_detail` VALUES ('20', 'XZ01HCBK01-F3', '0.00', '0.00', '0.00', '0.00', '0.00', '1', '0.00', '0.00');
INSERT INTO `think_sku_detail` VALUES ('21', 'xz11f8dd', '1.00', '22.00', '22.00', '11.00', '11.00', '1', '2.00', '0.00');
INSERT INTO `think_sku_detail` VALUES ('22', 'zjqe01fba', '500.00', '44.00', '44.00', '22.00', '10.00', '2', '0.00', '0.00');
