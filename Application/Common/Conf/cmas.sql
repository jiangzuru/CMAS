/*
Navicat MySQL Data Transfer

Source Server         : centos
Source Server Version : 50548
Source Host           : 192.168.4.121:3306
Source Database       : cmas

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2017-05-27 17:51:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `think_asin`
-- ----------------------------
DROP TABLE IF EXISTS `think_asin`;
CREATE TABLE `think_asin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asin` varchar(40) NOT NULL COMMENT 'ASIN码',
  `nation` varchar(40) NOT NULL COMMENT '站点',
  `name` varchar(40) NOT NULL COMMENT '名称',
  `competer_asin` varchar(100) NOT NULL COMMENT '竞争对手的ASIN码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_asin
-- ----------------------------
INSERT INTO `think_asin` VALUES ('1', 'B01IHGWS9E', '意大利', 'XZ17-V1', '');
INSERT INTO `think_asin` VALUES ('2', 'B01F6O2MXM', '意大利', 'XZ01-F2', '');
INSERT INTO `think_asin` VALUES ('3', 'B00A7YHIQS', '意大利', '黄运动鞋', 'B01MQ4FKMQ,B01JV6LT7G');

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
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_change_rate
-- ----------------------------
INSERT INTO `think_change_rate` VALUES ('1', '7.3049', '2017-04-14', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('2', '8.6129', '2017-04-14', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('3', '7.3068', '2017-04-15', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('4', '8.6236', '2017-04-15', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('5', '7.3130', '2017-04-17', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('6', '8.6358', '2017-04-17', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('7', '8.6695', '2017-04-18', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('8', '7.3354', '2017-04-18', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('9', '8.8379', '2017-04-19', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('10', '7.3887', '2017-04-19', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('11', '8.8212', '2017-04-20', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('12', '7.3846', '2017-04-20', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('13', '8.8025', '2017-04-21', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('14', '7.3718', '2017-04-21', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('15', '8.8204', '2017-04-23', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('16', '7.3835', '2017-04-23', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('17', '7.4811', '2017-04-24', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('18', '8.8225', '2017-04-24', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('19', '6.8845', '2017-04-24', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('20', '5.1239', '2017-04-24', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('21', '0.0000', '2017-04-24', 'MXI', 'CNY');
INSERT INTO `think_change_rate` VALUES ('22', '0.0624', '2017-04-24', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('23', '8.8016', '2017-04-25', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('24', '7.4759', '2017-04-25', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('25', '6.8839', '2017-04-25', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('26', '5.0958', '2017-04-25', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('27', '0.0000', '2017-04-25', 'MXI', 'CNY');
INSERT INTO `think_change_rate` VALUES ('28', '0.0627', '2017-04-25', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('29', '8.8433', '2017-04-26', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('30', '7.5299', '2017-04-26', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('31', '6.8870', '2017-04-26', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('32', '5.0737', '2017-04-26', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('33', '0.0000', '2017-04-26', 'MXI', 'CNY');
INSERT INTO `think_change_rate` VALUES ('34', '0.0619', '2017-04-26', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('35', '8.8526', '2017-04-27', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('36', '7.5153', '2017-04-27', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('37', '6.8917', '2017-04-27', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('38', '5.0532', '2017-04-27', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('39', '0.0000', '2017-04-27', 'MXI', 'CNY');
INSERT INTO `think_change_rate` VALUES ('40', '0.0618', '2017-04-27', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('41', '8.9189', '2017-04-28', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('42', '7.5083', '2017-04-28', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('43', '6.8976', '2017-04-28', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('44', '5.0500', '2017-04-28', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('45', '0.0000', '2017-04-28', 'MXI', 'CNY');
INSERT INTO `think_change_rate` VALUES ('46', '0.0619', '2017-04-28', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('47', '8.8800', '2017-05-02', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('48', '7.5272', '2017-05-02', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('49', '6.8963', '2017-05-02', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('50', '5.0412', '2017-05-02', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('51', '0.0000', '2017-05-02', 'MXI', 'CNY');
INSERT INTO `think_change_rate` VALUES ('52', '0.0615', '2017-05-02', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('53', '8.9014', '2017-05-03', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('54', '7.5214', '2017-05-03', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('55', '6.8932', '2017-05-03', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('56', '5.0228', '2017-05-03', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('57', '0.0000', '2017-05-03', 'MXI', 'CNY');
INSERT INTO `think_change_rate` VALUES ('58', '0.0615', '2017-05-03', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('59', '8.8616', '2017-05-04', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('61', '6.8971', '2017-05-04', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('62', '5.0186', '2017-05-04', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('64', '0.0611', '2017-05-04', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('68', '7.5301', '2017-05-04', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('69', '0.3654', '2017-05-04', 'MXN', 'CNY');
INSERT INTO `think_change_rate` VALUES ('70', '8.9127', '2017-05-05', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('71', '7.5700', '2017-05-05', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('72', '6.8966', '2017-05-05', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('73', '5.0226', '2017-05-05', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('74', '0.3616', '2017-05-05', 'MXN', 'CNY');
INSERT INTO `think_change_rate` VALUES ('75', '0.0613', '2017-05-05', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('76', '8.9606', '2017-05-06', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('77', '7.5873', '2017-05-06', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('78', '6.9061', '2017-05-06', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('79', '5.0659', '2017-05-06', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('80', '0.3637', '2017-05-06', 'MXN', 'CNY');
INSERT INTO `think_change_rate` VALUES ('81', '0.0614', '2017-05-06', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('82', '8.9686', '2017-05-08', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('83', '7.5758', '2017-05-08', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('84', '6.9061', '2017-05-08', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('85', '5.0684', '2017-05-08', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('86', '0.3643', '2017-05-08', 'MXN', 'CNY');
INSERT INTO `think_change_rate` VALUES ('87', '0.0614', '2017-05-08', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('88', '8.9445', '2017-05-09', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('89', '7.5415', '2017-05-09', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('90', '6.9109', '2017-05-09', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('91', '5.0556', '2017-05-09', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('92', '0.3592', '2017-05-09', 'MXN', 'CNY');
INSERT INTO `think_change_rate` VALUES ('93', '0.0609', '2017-05-09', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('94', '8.9445', '2017-05-10', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('95', '7.5301', '2017-05-10', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('96', '6.9109', '2017-05-10', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('97', '5.0505', '2017-05-10', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('98', '0.3606', '2017-05-10', 'MXN', 'CNY');
INSERT INTO `think_change_rate` VALUES ('99', '0.0608', '2017-05-10', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('100', '8.9445', '2017-05-11', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('101', '7.5131', '2017-05-11', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('102', '6.9061', '2017-05-11', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('103', '5.0429', '2017-05-11', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('104', '0.3631', '2017-05-11', 'MXN', 'CNY');
INSERT INTO `think_change_rate` VALUES ('105', '0.0606', '2017-05-11', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('106', '8.8968', '2017-05-15', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('107', '7.5415', '2017-05-15', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('108', '6.9013', '2017-05-15', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('109', '5.0454', '2017-05-15', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('110', '0.3671', '2017-05-15', 'MXN', 'CNY');
INSERT INTO `think_change_rate` VALUES ('111', '0.0610', '2017-05-15', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('112', '8.9047', '2017-05-16', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('113', '7.5758', '2017-05-16', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('114', '6.8966', '2017-05-16', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('115', '5.0761', '2017-05-16', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('116', '0.3698', '2017-05-16', 'MXN', 'CNY');
INSERT INTO `think_change_rate` VALUES ('117', '0.0608', '2017-05-16', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('118', '8.9286', '2017-05-18', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('119', '7.6864', '2017-05-18', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('120', '6.8918', '2017-05-18', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('121', '5.0736', '2017-05-18', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('122', '0.3626', '2017-05-18', 'MXN', 'CNY');
INSERT INTO `think_change_rate` VALUES ('123', '0.0621', '2017-05-18', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('124', '8.9286', '2017-05-19', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('125', '7.6570', '2017-05-19', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('126', '6.8918', '2017-05-19', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('127', '5.0761', '2017-05-19', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('128', '0.3655', '2017-05-19', 'MXN', 'CNY');
INSERT INTO `think_change_rate` VALUES ('129', '0.0620', '2017-05-19', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('130', '8.9366', '2017-05-24', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('131', '7.7459', '2017-05-24', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('132', '6.8918', '2017-05-24', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('133', '5.1282', '2017-05-24', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('134', '0.3697', '2017-05-24', 'MXN', 'CNY');
INSERT INTO `think_change_rate` VALUES ('135', '0.0620', '2017-05-24', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('136', '8.9047', '2017-05-26', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('137', '7.7101', '2017-05-26', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('138', '6.8729', '2017-05-26', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('139', '5.1230', '2017-05-26', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('140', '0.3729', '2017-05-26', 'MXN', 'CNY');
INSERT INTO `think_change_rate` VALUES ('141', '0.0615', '2017-05-26', 'JPY', 'CNY');
INSERT INTO `think_change_rate` VALUES ('142', '8.7796', '2017-05-27', 'GBP', 'CNY');
INSERT INTO `think_change_rate` VALUES ('143', '7.6628', '2017-05-27', 'EUR', 'CNY');
INSERT INTO `think_change_rate` VALUES ('144', '6.8540', '2017-05-27', 'USD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('145', '5.1125', '2017-05-27', 'CAD', 'CNY');
INSERT INTO `think_change_rate` VALUES ('146', '0.3702', '2017-05-27', 'MXN', 'CNY');
INSERT INTO `think_change_rate` VALUES ('147', '0.0616', '2017-05-27', 'JPY', 'CNY');

-- ----------------------------
-- Table structure for `think_commission`
-- ----------------------------
DROP TABLE IF EXISTS `think_commission`;
CREATE TABLE `think_commission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL COMMENT '类目名称',
  `value` decimal(5,4) NOT NULL COMMENT '佣金费率',
  `lowest` decimal(5,4) NOT NULL COMMENT '最低佣金',
  `sale_domain` varchar(128) NOT NULL COMMENT '销售站点',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=328 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_commission
-- ----------------------------
INSERT INTO `think_commission` VALUES ('318', '鞋子', '0.1500', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('319', '鞋子', '0.1500', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('320', '鞋子', '0.1500', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('321', '鞋子', '0.1500', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('322', '鞋子', '0.1500', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('323', '玩具', '0.1500', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('324', '玩具', '0.1500', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('325', '玩具', '0.1500', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('326', '玩具', '0.1500', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('327', '玩具', '0.1500', '0.4000', '英国');

-- ----------------------------
-- Table structure for `think_link_data`
-- ----------------------------
DROP TABLE IF EXISTS `think_link_data`;
CREATE TABLE `think_link_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asin` varchar(40) NOT NULL COMMENT 'ASIN码',
  `low_price` decimal(5,2) NOT NULL COMMENT '最低价格',
  `high_price` decimal(5,2) NOT NULL COMMENT '最高价格',
  `star` decimal(2,1) NOT NULL COMMENT '评分',
  `review_count` int(4) NOT NULL COMMENT '评论数',
  `nation` varchar(40) NOT NULL COMMENT '站点',
  `rank` int(8) NOT NULL COMMENT '排名',
  `time` int(11) NOT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_link_data
-- ----------------------------
INSERT INTO `think_link_data` VALUES ('1', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1354', '1495865881');
INSERT INTO `think_link_data` VALUES ('2', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3507', '1495865881');
INSERT INTO `think_link_data` VALUES ('3', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '72', '1495865881');
INSERT INTO `think_link_data` VALUES ('4', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5558', '1495865881');
INSERT INTO `think_link_data` VALUES ('5', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4735', '1495865881');
INSERT INTO `think_link_data` VALUES ('6', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495870468');
INSERT INTO `think_link_data` VALUES ('7', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495870468');
INSERT INTO `think_link_data` VALUES ('8', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495870468');
INSERT INTO `think_link_data` VALUES ('9', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495870468');
INSERT INTO `think_link_data` VALUES ('10', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495870468');
INSERT INTO `think_link_data` VALUES ('11', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495871521');
INSERT INTO `think_link_data` VALUES ('12', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495871521');
INSERT INTO `think_link_data` VALUES ('13', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495871521');
INSERT INTO `think_link_data` VALUES ('14', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495871521');
INSERT INTO `think_link_data` VALUES ('15', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495871521');
INSERT INTO `think_link_data` VALUES ('16', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495871581');
INSERT INTO `think_link_data` VALUES ('17', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495871581');
INSERT INTO `think_link_data` VALUES ('18', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495871581');
INSERT INTO `think_link_data` VALUES ('19', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495871581');
INSERT INTO `think_link_data` VALUES ('20', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495871581');
INSERT INTO `think_link_data` VALUES ('21', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495871642');
INSERT INTO `think_link_data` VALUES ('22', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495871642');
INSERT INTO `think_link_data` VALUES ('23', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495871642');
INSERT INTO `think_link_data` VALUES ('24', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495871642');
INSERT INTO `think_link_data` VALUES ('25', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495871642');
INSERT INTO `think_link_data` VALUES ('26', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495871701');
INSERT INTO `think_link_data` VALUES ('27', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495871701');
INSERT INTO `think_link_data` VALUES ('28', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495871701');
INSERT INTO `think_link_data` VALUES ('29', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495871701');
INSERT INTO `think_link_data` VALUES ('30', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495871701');
INSERT INTO `think_link_data` VALUES ('31', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495871761');
INSERT INTO `think_link_data` VALUES ('32', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495871761');
INSERT INTO `think_link_data` VALUES ('33', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495871761');
INSERT INTO `think_link_data` VALUES ('34', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495871761');
INSERT INTO `think_link_data` VALUES ('35', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495871761');
INSERT INTO `think_link_data` VALUES ('36', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495871821');
INSERT INTO `think_link_data` VALUES ('37', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495871821');
INSERT INTO `think_link_data` VALUES ('38', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495871821');
INSERT INTO `think_link_data` VALUES ('39', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495871821');
INSERT INTO `think_link_data` VALUES ('40', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495871821');
INSERT INTO `think_link_data` VALUES ('41', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495871881');
INSERT INTO `think_link_data` VALUES ('42', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495871881');
INSERT INTO `think_link_data` VALUES ('43', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495871881');
INSERT INTO `think_link_data` VALUES ('44', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495871881');
INSERT INTO `think_link_data` VALUES ('45', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495871881');
INSERT INTO `think_link_data` VALUES ('46', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495871941');
INSERT INTO `think_link_data` VALUES ('47', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495871941');
INSERT INTO `think_link_data` VALUES ('48', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495871941');
INSERT INTO `think_link_data` VALUES ('49', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495871941');
INSERT INTO `think_link_data` VALUES ('50', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495871941');
INSERT INTO `think_link_data` VALUES ('51', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495872001');
INSERT INTO `think_link_data` VALUES ('52', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495872001');
INSERT INTO `think_link_data` VALUES ('53', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495872001');
INSERT INTO `think_link_data` VALUES ('54', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495872001');
INSERT INTO `think_link_data` VALUES ('55', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495872001');
INSERT INTO `think_link_data` VALUES ('56', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495872061');
INSERT INTO `think_link_data` VALUES ('57', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495872061');
INSERT INTO `think_link_data` VALUES ('58', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495872061');
INSERT INTO `think_link_data` VALUES ('59', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495872061');
INSERT INTO `think_link_data` VALUES ('60', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495872061');
INSERT INTO `think_link_data` VALUES ('61', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495872121');
INSERT INTO `think_link_data` VALUES ('62', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495872121');
INSERT INTO `think_link_data` VALUES ('63', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495872121');
INSERT INTO `think_link_data` VALUES ('64', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495872121');
INSERT INTO `think_link_data` VALUES ('65', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495872121');
INSERT INTO `think_link_data` VALUES ('66', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495872181');
INSERT INTO `think_link_data` VALUES ('67', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495872181');
INSERT INTO `think_link_data` VALUES ('68', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495872181');
INSERT INTO `think_link_data` VALUES ('69', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495872181');
INSERT INTO `think_link_data` VALUES ('70', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495872181');
INSERT INTO `think_link_data` VALUES ('71', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495872241');
INSERT INTO `think_link_data` VALUES ('72', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495872241');
INSERT INTO `think_link_data` VALUES ('73', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495872241');
INSERT INTO `think_link_data` VALUES ('74', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495872241');
INSERT INTO `think_link_data` VALUES ('75', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495872241');
INSERT INTO `think_link_data` VALUES ('76', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495872301');
INSERT INTO `think_link_data` VALUES ('77', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495872301');
INSERT INTO `think_link_data` VALUES ('78', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495872301');
INSERT INTO `think_link_data` VALUES ('79', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495872301');
INSERT INTO `think_link_data` VALUES ('80', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495872301');
INSERT INTO `think_link_data` VALUES ('81', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495872361');
INSERT INTO `think_link_data` VALUES ('82', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495872361');
INSERT INTO `think_link_data` VALUES ('83', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495872361');
INSERT INTO `think_link_data` VALUES ('84', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495872361');
INSERT INTO `think_link_data` VALUES ('85', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495872361');
INSERT INTO `think_link_data` VALUES ('86', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495872421');
INSERT INTO `think_link_data` VALUES ('87', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495872421');
INSERT INTO `think_link_data` VALUES ('88', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495872421');
INSERT INTO `think_link_data` VALUES ('89', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495872421');
INSERT INTO `think_link_data` VALUES ('90', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495872421');
INSERT INTO `think_link_data` VALUES ('91', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495872481');
INSERT INTO `think_link_data` VALUES ('92', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495872481');
INSERT INTO `think_link_data` VALUES ('93', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495872481');
INSERT INTO `think_link_data` VALUES ('94', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495872481');
INSERT INTO `think_link_data` VALUES ('95', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495872481');
INSERT INTO `think_link_data` VALUES ('96', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495872541');
INSERT INTO `think_link_data` VALUES ('97', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495872541');
INSERT INTO `think_link_data` VALUES ('98', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495872541');
INSERT INTO `think_link_data` VALUES ('99', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495872541');
INSERT INTO `think_link_data` VALUES ('100', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495872541');
INSERT INTO `think_link_data` VALUES ('101', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495872661');
INSERT INTO `think_link_data` VALUES ('102', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495872661');
INSERT INTO `think_link_data` VALUES ('103', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495872661');
INSERT INTO `think_link_data` VALUES ('104', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495872661');
INSERT INTO `think_link_data` VALUES ('105', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495872661');
INSERT INTO `think_link_data` VALUES ('106', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495872721');
INSERT INTO `think_link_data` VALUES ('107', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495872721');
INSERT INTO `think_link_data` VALUES ('108', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495872721');
INSERT INTO `think_link_data` VALUES ('109', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495872721');
INSERT INTO `think_link_data` VALUES ('110', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495872721');
INSERT INTO `think_link_data` VALUES ('111', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495872781');
INSERT INTO `think_link_data` VALUES ('112', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495872781');
INSERT INTO `think_link_data` VALUES ('113', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495872781');
INSERT INTO `think_link_data` VALUES ('114', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495872781');
INSERT INTO `think_link_data` VALUES ('115', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495872781');
INSERT INTO `think_link_data` VALUES ('116', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495872842');
INSERT INTO `think_link_data` VALUES ('117', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495872842');
INSERT INTO `think_link_data` VALUES ('118', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495872842');
INSERT INTO `think_link_data` VALUES ('119', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495872842');
INSERT INTO `think_link_data` VALUES ('120', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495872842');
INSERT INTO `think_link_data` VALUES ('121', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495872901');
INSERT INTO `think_link_data` VALUES ('122', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495872901');
INSERT INTO `think_link_data` VALUES ('123', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495872901');
INSERT INTO `think_link_data` VALUES ('124', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495872901');
INSERT INTO `think_link_data` VALUES ('125', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495872901');
INSERT INTO `think_link_data` VALUES ('126', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495872961');
INSERT INTO `think_link_data` VALUES ('127', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495872961');
INSERT INTO `think_link_data` VALUES ('128', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495872961');
INSERT INTO `think_link_data` VALUES ('129', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495872961');
INSERT INTO `think_link_data` VALUES ('130', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495872961');
INSERT INTO `think_link_data` VALUES ('131', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495873021');
INSERT INTO `think_link_data` VALUES ('132', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495873021');
INSERT INTO `think_link_data` VALUES ('133', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495873021');
INSERT INTO `think_link_data` VALUES ('134', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495873021');
INSERT INTO `think_link_data` VALUES ('135', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495873021');
INSERT INTO `think_link_data` VALUES ('136', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495873081');
INSERT INTO `think_link_data` VALUES ('137', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495873081');
INSERT INTO `think_link_data` VALUES ('138', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495873081');
INSERT INTO `think_link_data` VALUES ('139', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495873081');
INSERT INTO `think_link_data` VALUES ('140', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495873081');
INSERT INTO `think_link_data` VALUES ('141', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495873141');
INSERT INTO `think_link_data` VALUES ('142', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495873141');
INSERT INTO `think_link_data` VALUES ('143', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495873141');
INSERT INTO `think_link_data` VALUES ('144', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495873141');
INSERT INTO `think_link_data` VALUES ('145', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495873141');
INSERT INTO `think_link_data` VALUES ('146', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495873201');
INSERT INTO `think_link_data` VALUES ('147', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495873201');
INSERT INTO `think_link_data` VALUES ('148', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495873201');
INSERT INTO `think_link_data` VALUES ('149', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495873201');
INSERT INTO `think_link_data` VALUES ('150', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495873201');
INSERT INTO `think_link_data` VALUES ('151', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495873261');
INSERT INTO `think_link_data` VALUES ('152', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495873261');
INSERT INTO `think_link_data` VALUES ('153', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495873261');
INSERT INTO `think_link_data` VALUES ('154', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495873261');
INSERT INTO `think_link_data` VALUES ('155', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495873261');
INSERT INTO `think_link_data` VALUES ('156', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495873321');
INSERT INTO `think_link_data` VALUES ('157', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495873321');
INSERT INTO `think_link_data` VALUES ('158', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495873321');
INSERT INTO `think_link_data` VALUES ('159', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495873321');
INSERT INTO `think_link_data` VALUES ('160', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495873321');
INSERT INTO `think_link_data` VALUES ('161', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495873381');
INSERT INTO `think_link_data` VALUES ('162', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495873381');
INSERT INTO `think_link_data` VALUES ('163', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495873381');
INSERT INTO `think_link_data` VALUES ('164', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495873381');
INSERT INTO `think_link_data` VALUES ('165', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495873381');
INSERT INTO `think_link_data` VALUES ('166', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495873441');
INSERT INTO `think_link_data` VALUES ('167', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495873441');
INSERT INTO `think_link_data` VALUES ('168', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495873441');
INSERT INTO `think_link_data` VALUES ('169', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495873441');
INSERT INTO `think_link_data` VALUES ('170', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495873441');
INSERT INTO `think_link_data` VALUES ('171', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495873501');
INSERT INTO `think_link_data` VALUES ('172', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495873501');
INSERT INTO `think_link_data` VALUES ('173', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495873501');
INSERT INTO `think_link_data` VALUES ('174', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495873501');
INSERT INTO `think_link_data` VALUES ('175', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495873501');
INSERT INTO `think_link_data` VALUES ('176', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495873561');
INSERT INTO `think_link_data` VALUES ('177', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495873561');
INSERT INTO `think_link_data` VALUES ('178', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495873561');
INSERT INTO `think_link_data` VALUES ('179', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495873561');
INSERT INTO `think_link_data` VALUES ('180', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495873561');
INSERT INTO `think_link_data` VALUES ('181', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495873621');
INSERT INTO `think_link_data` VALUES ('182', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495873621');
INSERT INTO `think_link_data` VALUES ('183', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495873621');
INSERT INTO `think_link_data` VALUES ('184', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495873621');
INSERT INTO `think_link_data` VALUES ('185', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495873621');
INSERT INTO `think_link_data` VALUES ('186', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495873681');
INSERT INTO `think_link_data` VALUES ('187', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495873681');
INSERT INTO `think_link_data` VALUES ('188', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495873681');
INSERT INTO `think_link_data` VALUES ('189', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495873681');
INSERT INTO `think_link_data` VALUES ('190', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495873681');
INSERT INTO `think_link_data` VALUES ('191', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495873741');
INSERT INTO `think_link_data` VALUES ('192', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495873741');
INSERT INTO `think_link_data` VALUES ('193', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495873741');
INSERT INTO `think_link_data` VALUES ('194', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495873741');
INSERT INTO `think_link_data` VALUES ('195', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495873741');
INSERT INTO `think_link_data` VALUES ('196', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495873801');
INSERT INTO `think_link_data` VALUES ('197', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495873801');
INSERT INTO `think_link_data` VALUES ('198', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495873801');
INSERT INTO `think_link_data` VALUES ('199', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495873801');
INSERT INTO `think_link_data` VALUES ('200', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495873801');
INSERT INTO `think_link_data` VALUES ('201', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495873861');
INSERT INTO `think_link_data` VALUES ('202', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495873861');
INSERT INTO `think_link_data` VALUES ('203', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495873861');
INSERT INTO `think_link_data` VALUES ('204', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495873861');
INSERT INTO `think_link_data` VALUES ('205', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495873861');
INSERT INTO `think_link_data` VALUES ('206', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495873921');
INSERT INTO `think_link_data` VALUES ('207', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495873921');
INSERT INTO `think_link_data` VALUES ('208', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495873921');
INSERT INTO `think_link_data` VALUES ('209', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495873921');
INSERT INTO `think_link_data` VALUES ('210', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495873921');
INSERT INTO `think_link_data` VALUES ('211', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495873981');
INSERT INTO `think_link_data` VALUES ('212', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495873981');
INSERT INTO `think_link_data` VALUES ('213', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495873981');
INSERT INTO `think_link_data` VALUES ('214', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495873981');
INSERT INTO `think_link_data` VALUES ('215', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495873981');
INSERT INTO `think_link_data` VALUES ('216', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '395', '1495874041');
INSERT INTO `think_link_data` VALUES ('217', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495874041');
INSERT INTO `think_link_data` VALUES ('218', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495874041');
INSERT INTO `think_link_data` VALUES ('219', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5404', '1495874041');
INSERT INTO `think_link_data` VALUES ('220', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495874041');
INSERT INTO `think_link_data` VALUES ('221', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495874102');
INSERT INTO `think_link_data` VALUES ('222', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495874102');
INSERT INTO `think_link_data` VALUES ('223', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495874102');
INSERT INTO `think_link_data` VALUES ('224', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5404', '1495874102');
INSERT INTO `think_link_data` VALUES ('225', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495874102');
INSERT INTO `think_link_data` VALUES ('226', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495874162');
INSERT INTO `think_link_data` VALUES ('227', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3310', '1495874162');
INSERT INTO `think_link_data` VALUES ('228', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495874162');
INSERT INTO `think_link_data` VALUES ('229', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1495874162');
INSERT INTO `think_link_data` VALUES ('230', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495874162');
INSERT INTO `think_link_data` VALUES ('231', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '395', '1495874221');
INSERT INTO `think_link_data` VALUES ('232', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3126', '1495874221');
INSERT INTO `think_link_data` VALUES ('233', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '76', '1495874221');
INSERT INTO `think_link_data` VALUES ('234', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5404', '1495874221');
INSERT INTO `think_link_data` VALUES ('235', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495874221');
INSERT INTO `think_link_data` VALUES ('236', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '1294', '1495874281');
INSERT INTO `think_link_data` VALUES ('237', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3126', '1495874281');
INSERT INTO `think_link_data` VALUES ('238', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1495874281');
INSERT INTO `think_link_data` VALUES ('239', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5404', '1495874281');
INSERT INTO `think_link_data` VALUES ('240', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4594', '1495874281');
INSERT INTO `think_link_data` VALUES ('241', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '395', '1495875601');
INSERT INTO `think_link_data` VALUES ('242', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3126', '1495875601');
INSERT INTO `think_link_data` VALUES ('243', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '76', '1495875601');
INSERT INTO `think_link_data` VALUES ('244', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5404', '1495875601');
INSERT INTO `think_link_data` VALUES ('245', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4468', '1495875601');

-- ----------------------------
-- Table structure for `think_logistics`
-- ----------------------------
DROP TABLE IF EXISTS `think_logistics`;
CREATE TABLE `think_logistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL COMMENT '物流名称',
  `rank` tinyint(1) NOT NULL DEFAULT '1' COMMENT '所在级别',
  `pid` int(11) NOT NULL COMMENT '父级别id',
  `special_type` varchar(20) NOT NULL DEFAULT '0' COMMENT '是否特殊物品。0.普通，1.带电产品 2.粉末 3.液体',
  `only_weight` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否计算体积重 0:不计算, 1:计算',
  `price` decimal(4,2) NOT NULL COMMENT '每kg运输价格',
  `volume_number` int(11) NOT NULL COMMENT '体积重系数',
  `destination` varchar(256) NOT NULL COMMENT '目的地',
  `is_oversea` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是海外仓头程 0:是 1:不是',
  `deal_fee` decimal(4,2) NOT NULL DEFAULT '0.00' COMMENT '处理费',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_logistics
-- ----------------------------
INSERT INTO `think_logistics` VALUES ('1', 'FBA', '1', '0', '0', '0', '0.00', '0', '0', '0', '0.00');
INSERT INTO `think_logistics` VALUES ('2', '直邮', '1', '0', '0', '1', '0.00', '0', '0', '0', '0.00');
INSERT INTO `think_logistics` VALUES ('3', 'FBA-空运', '2', '1', '0', '0', '0.00', '0', '0', '0', '0.00');
INSERT INTO `think_logistics` VALUES ('4', '云途泛欧头程', '3', '3', '0', '0', '40.00', '6000', '德国,英国,法国,意大利,西班牙', '1', '0.00');
INSERT INTO `think_logistics` VALUES ('5', '云途', '2', '2', '0', '1', '0.00', '0', '0', '0', '0.00');
INSERT INTO `think_logistics` VALUES ('8', '云途德国专线挂号', '3', '5', '0', '0', '40.00', '0', '德国', '0', '20.00');
INSERT INTO `think_logistics` VALUES ('9', '云途意大利专线挂号', '3', '5', '0', '0', '45.00', '0', '意大利', '0', '25.00');
INSERT INTO `think_logistics` VALUES ('10', '云途意大利专线平邮', '3', '5', '0', '0', '95.00', '0', '意大利', '0', '4.00');
INSERT INTO `think_logistics` VALUES ('11', '云途西班牙专线挂号', '3', '5', '0', '0', '44.00', '0', '西班牙', '0', '20.00');
INSERT INTO `think_logistics` VALUES ('12', '云途西班牙专线平邮', '3', '5', '0', '0', '75.00', '0', '西班牙', '0', '1.90');
INSERT INTO `think_logistics` VALUES ('13', '云途法国专线挂号', '3', '5', '0', '0', '54.00', '0', '法国', '0', '25.00');
INSERT INTO `think_logistics` VALUES ('14', '云途英国专线挂号', '3', '5', '0', '0', '32.00', '0', '英国', '0', '18.00');
INSERT INTO `think_logistics` VALUES ('15', '云途美国EUB', '3', '5', '0', '0', '67.50', '0', '美国', '0', '8.10');
INSERT INTO `think_logistics` VALUES ('16', '云途加拿大EUB', '3', '5', '0', '0', '58.50', '0', '加拿大', '0', '17.10');
INSERT INTO `think_logistics` VALUES ('17', '云途法国EUB', '3', '5', '0', '0', '54.00', '0', '法国', '0', '17.10');
INSERT INTO `think_logistics` VALUES ('18', '云途小包挂号，美加英法', '3', '5', '0', '0', '76.93', '0', '美国,加拿大,英国,法国', '0', '6.80');
INSERT INTO `think_logistics` VALUES ('19', '云途小包挂号 德西', '3', '5', '0', '0', '68.85', '0', '德国,西班牙', '0', '6.80');

-- ----------------------------
-- Table structure for `think_nation`
-- ----------------------------
DROP TABLE IF EXISTS `think_nation`;
CREATE TABLE `think_nation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL COMMENT '国家名',
  `exchange_name` varchar(10) NOT NULL COMMENT '汇率缩写',
  `dollar_logo` varchar(10) NOT NULL COMMENT '货币符号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_nation
-- ----------------------------
INSERT INTO `think_nation` VALUES ('1', '英国', 'GBP', '£');
INSERT INTO `think_nation` VALUES ('2', '德国', 'EUR', '€');
INSERT INTO `think_nation` VALUES ('3', '法国', 'EUR', '€');
INSERT INTO `think_nation` VALUES ('4', '意大利', 'EUR', '€');
INSERT INTO `think_nation` VALUES ('5', '西班牙', 'EUR', '€');
INSERT INTO `think_nation` VALUES ('6', '美国', 'USD', '$');
INSERT INTO `think_nation` VALUES ('7', '加拿大', 'CAD', '$');
INSERT INTO `think_nation` VALUES ('8', '墨西哥', 'MXN', '$');
INSERT INTO `think_nation` VALUES ('9', '日本', 'JPY', '¥');

-- ----------------------------
-- Table structure for `think_oversea_fee`
-- ----------------------------
DROP TABLE IF EXISTS `think_oversea_fee`;
CREATE TABLE `think_oversea_fee` (
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
  `type_name` varchar(50) NOT NULL DEFAULT 'FBA',
  `high_weight` int(10) NOT NULL COMMENT '重量上限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_oversea_fee
-- ----------------------------
INSERT INTO `think_oversea_fee` VALUES ('1', '0.00', '20.00', '0.00', '15.00', '0.00', '1.00', '0', '20', '1.07', '英国', 'FBA', '100');
INSERT INTO `think_oversea_fee` VALUES ('2', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '0', '40', '1.19', '英国', 'FBA', '100');
INSERT INTO `think_oversea_fee` VALUES ('3', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '101', '40', '1.31', '英国', 'FBA', '250');
INSERT INTO `think_oversea_fee` VALUES ('4', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '251', '40', '1.51', '英国', 'FBA', '500');
INSERT INTO `think_oversea_fee` VALUES ('5', '20.00', '33.00', '15.00', '23.00', '2.50', '5.00', '0', '40', '1.70', '英国', 'FBA', '1000');
INSERT INTO `think_oversea_fee` VALUES ('6', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '0', '100', '1.66', '英国', 'FBA', '250');
INSERT INTO `think_oversea_fee` VALUES ('7', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '251', '100', '1.72', '英国', 'FBA', '500');
INSERT INTO `think_oversea_fee` VALUES ('8', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '501', '100', '1.77', '英国', 'FBA', '1000');
INSERT INTO `think_oversea_fee` VALUES ('9', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1001', '100', '2.19', '英国', 'FBA', '1500');
INSERT INTO `think_oversea_fee` VALUES ('10', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1501', '100', '2.41', ' 英国', 'FBA', '2000');
INSERT INTO `think_oversea_fee` VALUES ('11', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '2001', '100', '3.30', '英国', 'FBA', '3000');
INSERT INTO `think_oversea_fee` VALUES ('12', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '3001', '100', '3.40', '英国', 'FBA', '4000');
INSERT INTO `think_oversea_fee` VALUES ('13', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '4001', '100', '3.40', '英国', 'FBA', '5000');
INSERT INTO `think_oversea_fee` VALUES ('14', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '5001', '100', '3.45', '英国', 'FBA', '6000');
INSERT INTO `think_oversea_fee` VALUES ('15', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '6001', '100', '3.45', '英国', 'FBA', '7000');
INSERT INTO `think_oversea_fee` VALUES ('16', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '7001', '100', '3.53', '英国', 'FBA', '8000');
INSERT INTO `think_oversea_fee` VALUES ('17', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '8001', '100', '3.53', '英国', 'FBA', '9000');
INSERT INTO `think_oversea_fee` VALUES ('18', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '9001', '100', '3.53', '英国', 'FBA', '10000');
INSERT INTO `think_oversea_fee` VALUES ('19', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '10001', '100', '3.53', '英国', 'FBA', '11000');
INSERT INTO `think_oversea_fee` VALUES ('20', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '11001', '100', '3.54', '英国', 'FBA', '12000');
INSERT INTO `think_oversea_fee` VALUES ('21', '0.00', '20.00', '0.00', '15.00', '0.00', '1.00', '0', '20', '1.60', '德国', 'FBA', '100');
INSERT INTO `think_oversea_fee` VALUES ('22', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '0', '40', '1.72', '德国', 'FBA', '100');
INSERT INTO `think_oversea_fee` VALUES ('23', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '101', '40', '1.73', '德国', 'FBA', '250');
INSERT INTO `think_oversea_fee` VALUES ('24', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '251', '40', '1.77', '德国', 'FBA', '500');
INSERT INTO `think_oversea_fee` VALUES ('25', '20.00', '33.00', '15.00', '23.00', '2.50', '5.00', '0', '40', '2.14', '德国', 'FBA', '1000');
INSERT INTO `think_oversea_fee` VALUES ('26', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '0', '100', '2.32', '德国', 'FBA', '250');
INSERT INTO `think_oversea_fee` VALUES ('27', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '251', '100', '2.41', '德国', 'FBA', '500');
INSERT INTO `think_oversea_fee` VALUES ('28', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '501', '100', '2.98', '德国', 'FBA', '1000');
INSERT INTO `think_oversea_fee` VALUES ('29', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1001', '100', '3.04', '德国', 'FBA', '1500');
INSERT INTO `think_oversea_fee` VALUES ('30', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1501', '100', '3.10', '德国', 'FBA', '2000');
INSERT INTO `think_oversea_fee` VALUES ('31', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '2001', '100', '4.18', '德国', 'FBA', '3000');
INSERT INTO `think_oversea_fee` VALUES ('32', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '3001', '100', '4.19', '德国', 'FBA', '4000');
INSERT INTO `think_oversea_fee` VALUES ('33', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '4001', '100', '4.19', '德国', 'FBA', '5000');
INSERT INTO `think_oversea_fee` VALUES ('34', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '5001', '100', '4.27', '德国', 'FBA', '6000');
INSERT INTO `think_oversea_fee` VALUES ('35', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '6001', '100', '4.27', '德国', 'FBA', '7000');
INSERT INTO `think_oversea_fee` VALUES ('36', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '7001', '100', '4.40', '德国', 'FBA', '8000');
INSERT INTO `think_oversea_fee` VALUES ('37', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '8001', '100', '4.40', '德国', 'FBA', '9000');
INSERT INTO `think_oversea_fee` VALUES ('38', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '9001', '100', '4.40', '德国', 'FBA', '10000');
INSERT INTO `think_oversea_fee` VALUES ('39', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '10001', '100', '4.40', '德国', 'FBA', '11000');
INSERT INTO `think_oversea_fee` VALUES ('40', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '11001', '100', '4.41', '德国', 'FBA', '12000');
INSERT INTO `think_oversea_fee` VALUES ('41', '0.00', '20.00', '0.00', '15.00', '0.00', '1.00', '0', '20', '1.98', '法国', 'FBA', '100');
INSERT INTO `think_oversea_fee` VALUES ('42', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '0', '40', '2.08', '法国', 'FBA', '100');
INSERT INTO `think_oversea_fee` VALUES ('43', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '101', '40', '2.08', '法国', 'FBA', '250');
INSERT INTO `think_oversea_fee` VALUES ('44', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '251', '40', '2.24', '法国', 'FBA', '500');
INSERT INTO `think_oversea_fee` VALUES ('45', '20.00', '33.00', '15.00', '23.00', '2.50', '5.00', '0', '40', '2.38', '法国', 'FBA', '1000');
INSERT INTO `think_oversea_fee` VALUES ('46', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '0', '100', '2.55', '法国', 'FBA', '250');
INSERT INTO `think_oversea_fee` VALUES ('47', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '251', '100', '2.74', '法国', 'FBA', '500');
INSERT INTO `think_oversea_fee` VALUES ('48', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '501', '100', '3.50', '法国', 'FBA', '1000');
INSERT INTO `think_oversea_fee` VALUES ('49', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1001', '100', '3.70', '法国', 'FBA', '1500');
INSERT INTO `think_oversea_fee` VALUES ('50', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1501', '100', '3.83', '法国', 'FBA', '2000');
INSERT INTO `think_oversea_fee` VALUES ('51', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '2001', '100', '4.98', '法国', 'FBA', '3000');
INSERT INTO `think_oversea_fee` VALUES ('52', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '3001', '100', '5.14', '法国', 'FBA', '4000');
INSERT INTO `think_oversea_fee` VALUES ('53', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '4001', '100', '5.14', '法国', 'FBA', '5000');
INSERT INTO `think_oversea_fee` VALUES ('54', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '5001', '100', '5.22', '法国', 'FBA', '6000');
INSERT INTO `think_oversea_fee` VALUES ('55', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '6001', '100', '5.22', '法国', 'FBA', '7000');
INSERT INTO `think_oversea_fee` VALUES ('56', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '7001', '100', '5.35', '法国', 'FBA', '8000');
INSERT INTO `think_oversea_fee` VALUES ('57', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '8001', '100', '5.35', '法国', 'FBA', '9000');
INSERT INTO `think_oversea_fee` VALUES ('58', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '9001', '100', '5.35', '法国', 'FBA', '10000');
INSERT INTO `think_oversea_fee` VALUES ('59', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '10001', '100', '5.35', '法国', 'FBA', '11000');
INSERT INTO `think_oversea_fee` VALUES ('60', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '11001', '100', '5.36', '法国', 'FBA', '12000');
INSERT INTO `think_oversea_fee` VALUES ('61', '0.00', '20.00', '0.00', '15.00', '0.00', '1.00', '0', '20', '2.26', '意大利', 'FBA', '100');
INSERT INTO `think_oversea_fee` VALUES ('62', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '0', '40', '2.33', '意大利', 'FBA', '100');
INSERT INTO `think_oversea_fee` VALUES ('63', '20.00', '33.00', '14.00', '23.00', '1.00', '2.50', '101', '40', '2.40', '意大利', 'FBA', '250');
INSERT INTO `think_oversea_fee` VALUES ('64', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '251', '40', '2.66', '意大利', 'FBA', '500');
INSERT INTO `think_oversea_fee` VALUES ('65', '20.00', '33.00', '15.00', '23.00', '2.50', '5.00', '0', '40', '3.01', '意大利', 'FBA', '1000');
INSERT INTO `think_oversea_fee` VALUES ('66', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '0', '100', '3.05', '意大利', 'FBA', '250');
INSERT INTO `think_oversea_fee` VALUES ('67', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '251', '100', '3.18', '意大利', 'FBA', '500');
INSERT INTO `think_oversea_fee` VALUES ('68', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '501', '100', '3.74', '意大利', 'FBA', '1000');
INSERT INTO `think_oversea_fee` VALUES ('69', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1001', '100', '4.04', '意大利', 'FBA', '1500');
INSERT INTO `think_oversea_fee` VALUES ('70', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1501', '100', '4.15', '意大利', 'FBA', '2000');
INSERT INTO `think_oversea_fee` VALUES ('71', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '2001', '100', '4.58', '意大利', 'FBA', '3000');
INSERT INTO `think_oversea_fee` VALUES ('72', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '3001', '100', '4.94', '意大利', 'FBA', '4000');
INSERT INTO `think_oversea_fee` VALUES ('73', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '4001', '100', '5.14', '意大利', 'FBA', '5000');
INSERT INTO `think_oversea_fee` VALUES ('74', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '5001', '100', '5.22', '意大利', 'FBA', '6000');
INSERT INTO `think_oversea_fee` VALUES ('75', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '6001', '100', '5.22', '意大利', 'FBA', '7000');
INSERT INTO `think_oversea_fee` VALUES ('76', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '7001', '100', '5.35', '意大利', 'FBA', '8000');
INSERT INTO `think_oversea_fee` VALUES ('77', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '8001', '100', '5.35', '意大利', 'FBA', '9000');
INSERT INTO `think_oversea_fee` VALUES ('78', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '9001', '100', '5.35', '意大利', 'FBA', '10000');
INSERT INTO `think_oversea_fee` VALUES ('79', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '10001', '100', '5.35', '意大利', 'FBA', '11000');
INSERT INTO `think_oversea_fee` VALUES ('80', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '11001', '100', '5.36', '意大利', 'FBA', '12000');
INSERT INTO `think_oversea_fee` VALUES ('81', '0.00', '20.00', '0.00', '15.00', '0.00', '1.00', '0', '20', '1.74', '西班牙', 'FBA', '100');
INSERT INTO `think_oversea_fee` VALUES ('82', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '0', '40', '1.85', '西班牙', 'FBA', '100');
INSERT INTO `think_oversea_fee` VALUES ('83', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '101', '40', '1.90', '西班牙', 'FBA', '250');
INSERT INTO `think_oversea_fee` VALUES ('84', '20.00', '33.00', '15.00', '23.00', '1.00', '2.50', '251', '40', '1.95', '西班牙', 'FBA', '500');
INSERT INTO `think_oversea_fee` VALUES ('85', '20.00', '33.00', '15.00', '23.00', '2.50', '5.00', '0', '40', '1.99', '西班牙', 'FBA', '1000');
INSERT INTO `think_oversea_fee` VALUES ('86', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '0', '100', '2.17', '西班牙', 'FBA', '250');
INSERT INTO `think_oversea_fee` VALUES ('87', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '251', '100', '2.28', '西班牙', 'FBA', '500');
INSERT INTO `think_oversea_fee` VALUES ('88', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '501', '100', '2.81', '西班牙', 'FBA', '1000');
INSERT INTO `think_oversea_fee` VALUES ('89', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1001', '100', '2.98', '西班牙', 'FBA', '1500');
INSERT INTO `think_oversea_fee` VALUES ('90', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '1501', '100', '3.08', '西班牙', 'FBA', '2000');
INSERT INTO `think_oversea_fee` VALUES ('91', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '2001', '100', '4.40', '西班牙', 'FBA', '3000');
INSERT INTO `think_oversea_fee` VALUES ('92', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '3001', '100', '4.83', '西班牙', 'FBA', '4000');
INSERT INTO `think_oversea_fee` VALUES ('93', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '4001', '100', '5.14', '西班牙', 'FBA', '5000');
INSERT INTO `think_oversea_fee` VALUES ('94', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '5001', '100', '5.22', '西班牙', 'FBA', '6000');
INSERT INTO `think_oversea_fee` VALUES ('95', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '6001', '100', '5.22', '西班牙', 'FBA', '7000');
INSERT INTO `think_oversea_fee` VALUES ('96', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '7001', '100', '5.35', '西班牙', 'FBA', '8000');
INSERT INTO `think_oversea_fee` VALUES ('97', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '8001', '100', '5.35', '西班牙', 'FBA', '9000');
INSERT INTO `think_oversea_fee` VALUES ('98', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '9001', '100', '5.35', '西班牙', 'FBA', '10000');
INSERT INTO `think_oversea_fee` VALUES ('99', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '10001', '100', '5.35', '西班牙', 'FBA', '11000');
INSERT INTO `think_oversea_fee` VALUES ('100', '33.00', '45.00', '23.00', '34.00', '5.00', '26.00', '11001', '100', '5.36', '西班牙', 'FBA', '12000');

-- ----------------------------
-- Table structure for `think_setting`
-- ----------------------------
DROP TABLE IF EXISTS `think_setting`;
CREATE TABLE `think_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL COMMENT '变量名',
  `value` decimal(11,4) NOT NULL COMMENT '变量值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_setting
-- ----------------------------
INSERT INTO `think_setting` VALUES ('1', '退款率', '0.0500');
INSERT INTO `think_setting` VALUES ('2', '体积重系数', '6000.0000');
INSERT INTO `think_setting` VALUES ('3', '提现费用', '0.0100');

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
  `domestic_logistics_price` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '国内运费',
  `package_price` decimal(11,2) NOT NULL DEFAULT '0.00' COMMENT '包装成本',
  `special_type` varchar(20) NOT NULL DEFAULT '0' COMMENT '是否特殊物品。0.普通，1.带电产品 2.粉末 3.液体',
  `sort_name` varchar(50) NOT NULL COMMENT '品类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_sku_detail
-- ----------------------------
INSERT INTO `think_sku_detail` VALUES ('23', 'XZ12BL38-F1', '350.00', '26.00', '11.00', '5.00', '10.00', '3.00', '0.00', '1', '鞋子');
INSERT INTO `think_sku_detail` VALUES ('26', 'XZ17', '610.00', '29.00', '20.00', '11.00', '47.00', '0.70', '0.70', '0', '鞋子');
INSERT INTO `think_sku_detail` VALUES ('31', 'XZ38', '800.00', '0.00', '0.00', '0.00', '45.00', '0.00', '0.00', '0', '鞋子');
INSERT INTO `think_sku_detail` VALUES ('33', 'xz37', '600.00', '25.50', '16.00', '9.50', '29.00', '4.00', '0.70', '0', '鞋子');
INSERT INTO `think_sku_detail` VALUES ('34', 'xz43', '280.00', '27.50', '10.50', '3.50', '30.00', '2.00', '0.70', '0', '鞋子');
