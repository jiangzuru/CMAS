/*
Navicat MySQL Data Transfer

Source Server         : centos
Source Server Version : 50548
Source Host           : 192.168.4.121:3306
Source Database       : cmas

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2017-06-01 18:35:50
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
  `competer_name` varchar(100) NOT NULL COMMENT '竞争对手名称',
  `competer_asin` varchar(100) NOT NULL COMMENT '竞争对手的ASIN码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_asin
-- ----------------------------
INSERT INTO `think_asin` VALUES ('2', 'B01F6O2MXM', '意大利', 'XZ01-F2', '', '');
INSERT INTO `think_asin` VALUES ('3', 'B00A7YHIQS', '意大利', '黄运动鞋', '对手1,对手2', 'B01MQ4FKMQ,B01JV6LT7G');
INSERT INTO `think_asin` VALUES ('4', 'B01IHGWS9E', '意大利', 'XZ17意大利01', '', '');
INSERT INTO `think_asin` VALUES ('5', 'B01IHGJLCG', '意大利', 'XZ17意大利02', '', '');
INSERT INTO `think_asin` VALUES ('6', 'B01IHGKAPI', '意大利', 'XZ17意大利03', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=763 DEFAULT CHARSET=utf8;

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
INSERT INTO `think_link_data` VALUES ('246', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '395', '1495879201');
INSERT INTO `think_link_data` VALUES ('247', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3126', '1495879201');
INSERT INTO `think_link_data` VALUES ('248', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '76', '1495879201');
INSERT INTO `think_link_data` VALUES ('249', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5404', '1495879201');
INSERT INTO `think_link_data` VALUES ('250', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4468', '1495879201');
INSERT INTO `think_link_data` VALUES ('251', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '148', '1495882801');
INSERT INTO `think_link_data` VALUES ('252', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3106', '1495882801');
INSERT INTO `think_link_data` VALUES ('253', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '56', '1495882801');
INSERT INTO `think_link_data` VALUES ('254', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5458', '1495882801');
INSERT INTO `think_link_data` VALUES ('255', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4480', '1495882801');
INSERT INTO `think_link_data` VALUES ('256', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '185', '1495886401');
INSERT INTO `think_link_data` VALUES ('257', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '617', '1495886401');
INSERT INTO `think_link_data` VALUES ('258', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '68', '1495886401');
INSERT INTO `think_link_data` VALUES ('259', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5528', '1495886401');
INSERT INTO `think_link_data` VALUES ('260', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4494', '1495886401');
INSERT INTO `think_link_data` VALUES ('261', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '185', '1495890001');
INSERT INTO `think_link_data` VALUES ('262', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '617', '1495890001');
INSERT INTO `think_link_data` VALUES ('263', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '68', '1495890001');
INSERT INTO `think_link_data` VALUES ('264', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5528', '1495890001');
INSERT INTO `think_link_data` VALUES ('265', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4494', '1495890001');
INSERT INTO `think_link_data` VALUES ('266', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '170', '1495893601');
INSERT INTO `think_link_data` VALUES ('267', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '824', '1495893601');
INSERT INTO `think_link_data` VALUES ('268', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '54', '1495893601');
INSERT INTO `think_link_data` VALUES ('269', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5740', '1495893601');
INSERT INTO `think_link_data` VALUES ('270', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4697', '1495893601');
INSERT INTO `think_link_data` VALUES ('271', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '192', '1495897201');
INSERT INTO `think_link_data` VALUES ('272', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '946', '1495897201');
INSERT INTO `think_link_data` VALUES ('273', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '63', '1495897201');
INSERT INTO `think_link_data` VALUES ('274', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5882', '1495897201');
INSERT INTO `think_link_data` VALUES ('275', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4798', '1495897201');
INSERT INTO `think_link_data` VALUES ('276', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '192', '1495900801');
INSERT INTO `think_link_data` VALUES ('277', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '946', '1495900801');
INSERT INTO `think_link_data` VALUES ('278', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '63', '1495900801');
INSERT INTO `think_link_data` VALUES ('279', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5882', '1495900801');
INSERT INTO `think_link_data` VALUES ('280', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4798', '1495900801');
INSERT INTO `think_link_data` VALUES ('281', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '129', '1495904401');
INSERT INTO `think_link_data` VALUES ('282', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1280', '1495904401');
INSERT INTO `think_link_data` VALUES ('283', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '79', '1495904401');
INSERT INTO `think_link_data` VALUES ('284', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '6107', '1495904401');
INSERT INTO `think_link_data` VALUES ('285', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5041', '1495904401');
INSERT INTO `think_link_data` VALUES ('286', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '143', '1495908001');
INSERT INTO `think_link_data` VALUES ('287', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1447', '1495908001');
INSERT INTO `think_link_data` VALUES ('288', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '88', '1495908001');
INSERT INTO `think_link_data` VALUES ('289', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1057', '1495908001');
INSERT INTO `think_link_data` VALUES ('290', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5144', '1495908001');
INSERT INTO `think_link_data` VALUES ('291', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '143', '1495911601');
INSERT INTO `think_link_data` VALUES ('292', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1447', '1495911601');
INSERT INTO `think_link_data` VALUES ('293', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '88', '1495911601');
INSERT INTO `think_link_data` VALUES ('294', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1057', '1495911601');
INSERT INTO `think_link_data` VALUES ('295', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5144', '1495911601');
INSERT INTO `think_link_data` VALUES ('296', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '137', '1495915202');
INSERT INTO `think_link_data` VALUES ('297', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1778', '1495915202');
INSERT INTO `think_link_data` VALUES ('298', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '86', '1495915202');
INSERT INTO `think_link_data` VALUES ('299', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1394', '1495915202');
INSERT INTO `think_link_data` VALUES ('300', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5380', '1495915202');
INSERT INTO `think_link_data` VALUES ('301', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '157', '1495918801');
INSERT INTO `think_link_data` VALUES ('302', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2004', '1495918801');
INSERT INTO `think_link_data` VALUES ('303', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '72', '1495918801');
INSERT INTO `think_link_data` VALUES ('304', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1625', '1495918801');
INSERT INTO `think_link_data` VALUES ('305', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5493', '1495918801');
INSERT INTO `think_link_data` VALUES ('306', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '157', '1495922401');
INSERT INTO `think_link_data` VALUES ('307', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2004', '1495922401');
INSERT INTO `think_link_data` VALUES ('308', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '72', '1495922401');
INSERT INTO `think_link_data` VALUES ('309', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1625', '1495922401');
INSERT INTO `think_link_data` VALUES ('310', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5493', '1495922401');
INSERT INTO `think_link_data` VALUES ('311', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '187', '1495926001');
INSERT INTO `think_link_data` VALUES ('312', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2221', '1495926001');
INSERT INTO `think_link_data` VALUES ('313', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '77', '1495926001');
INSERT INTO `think_link_data` VALUES ('314', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1938', '1495926001');
INSERT INTO `think_link_data` VALUES ('315', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5639', '1495926001');
INSERT INTO `think_link_data` VALUES ('316', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '201', '1495929601');
INSERT INTO `think_link_data` VALUES ('317', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2315', '1495929601');
INSERT INTO `think_link_data` VALUES ('318', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '83', '1495929601');
INSERT INTO `think_link_data` VALUES ('319', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2150', '1495929601');
INSERT INTO `think_link_data` VALUES ('320', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5713', '1495929601');
INSERT INTO `think_link_data` VALUES ('321', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '201', '1495933201');
INSERT INTO `think_link_data` VALUES ('322', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2315', '1495933201');
INSERT INTO `think_link_data` VALUES ('323', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '83', '1495933201');
INSERT INTO `think_link_data` VALUES ('324', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2150', '1495933201');
INSERT INTO `think_link_data` VALUES ('325', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5713', '1495933201');
INSERT INTO `think_link_data` VALUES ('326', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '117', '1495936801');
INSERT INTO `think_link_data` VALUES ('327', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2401', '1495936801');
INSERT INTO `think_link_data` VALUES ('328', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '68', '1495936801');
INSERT INTO `think_link_data` VALUES ('329', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2364', '1495936801');
INSERT INTO `think_link_data` VALUES ('330', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5826', '1495936801');
INSERT INTO `think_link_data` VALUES ('331', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '121', '1495940401');
INSERT INTO `think_link_data` VALUES ('332', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2388', '1495940401');
INSERT INTO `think_link_data` VALUES ('333', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '70', '1495940401');
INSERT INTO `think_link_data` VALUES ('334', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2455', '1495940401');
INSERT INTO `think_link_data` VALUES ('335', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5881', '1495940401');
INSERT INTO `think_link_data` VALUES ('336', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '121', '1495944001');
INSERT INTO `think_link_data` VALUES ('337', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2388', '1495944001');
INSERT INTO `think_link_data` VALUES ('338', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '70', '1495944001');
INSERT INTO `think_link_data` VALUES ('339', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2455', '1495944001');
INSERT INTO `think_link_data` VALUES ('340', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5881', '1495944001');
INSERT INTO `think_link_data` VALUES ('341', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '125', '1495947601');
INSERT INTO `think_link_data` VALUES ('342', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2340', '1495947601');
INSERT INTO `think_link_data` VALUES ('343', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '73', '1495947601');
INSERT INTO `think_link_data` VALUES ('344', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2513', '1495947601');
INSERT INTO `think_link_data` VALUES ('345', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5886', '1495947601');
INSERT INTO `think_link_data` VALUES ('346', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '128', '1495951201');
INSERT INTO `think_link_data` VALUES ('347', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2191', '1495951201');
INSERT INTO `think_link_data` VALUES ('348', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '72', '1495951201');
INSERT INTO `think_link_data` VALUES ('349', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2495', '1495951201');
INSERT INTO `think_link_data` VALUES ('350', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5846', '1495951201');
INSERT INTO `think_link_data` VALUES ('351', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '128', '1495954801');
INSERT INTO `think_link_data` VALUES ('352', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2191', '1495954801');
INSERT INTO `think_link_data` VALUES ('353', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '72', '1495954801');
INSERT INTO `think_link_data` VALUES ('354', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2495', '1495954801');
INSERT INTO `think_link_data` VALUES ('355', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5846', '1495954801');
INSERT INTO `think_link_data` VALUES ('356', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '133', '1495958401');
INSERT INTO `think_link_data` VALUES ('357', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2081', '1495958401');
INSERT INTO `think_link_data` VALUES ('358', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '52', '1495958401');
INSERT INTO `think_link_data` VALUES ('359', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2490', '1495958401');
INSERT INTO `think_link_data` VALUES ('360', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5819', '1495958401');
INSERT INTO `think_link_data` VALUES ('361', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '140', '1495962001');
INSERT INTO `think_link_data` VALUES ('362', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1985', '1495962001');
INSERT INTO `think_link_data` VALUES ('363', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '55', '1495962001');
INSERT INTO `think_link_data` VALUES ('364', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2485', '1495962001');
INSERT INTO `think_link_data` VALUES ('365', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5804', '1495962001');
INSERT INTO `think_link_data` VALUES ('366', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '140', '1495965601');
INSERT INTO `think_link_data` VALUES ('367', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1985', '1495965601');
INSERT INTO `think_link_data` VALUES ('368', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '55', '1495965601');
INSERT INTO `think_link_data` VALUES ('369', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2485', '1495965601');
INSERT INTO `think_link_data` VALUES ('370', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5804', '1495965601');
INSERT INTO `think_link_data` VALUES ('371', 'B01IHGWS9E', '27.99', '28.99', '3.3', '32', '', '172', '1495969201');
INSERT INTO `think_link_data` VALUES ('372', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2081', '1495969201');
INSERT INTO `think_link_data` VALUES ('373', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '58', '1495969201');
INSERT INTO `think_link_data` VALUES ('374', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2628', '1495969201');
INSERT INTO `think_link_data` VALUES ('375', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5903', '1495969201');
INSERT INTO `think_link_data` VALUES ('376', 'B01IHGWS9E', '27.99', '28.99', '3.3', '32', '', '192', '1495972802');
INSERT INTO `think_link_data` VALUES ('377', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2208', '1495972802');
INSERT INTO `think_link_data` VALUES ('378', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '51', '1495972802');
INSERT INTO `think_link_data` VALUES ('379', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2824', '1495972802');
INSERT INTO `think_link_data` VALUES ('380', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '6013', '1495972802');
INSERT INTO `think_link_data` VALUES ('381', 'B01IHGWS9E', '27.99', '28.99', '3.3', '32', '', '270', '1495976401');
INSERT INTO `think_link_data` VALUES ('382', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2208', '1495976401');
INSERT INTO `think_link_data` VALUES ('383', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '45', '1495976401');
INSERT INTO `think_link_data` VALUES ('384', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2824', '1495976401');
INSERT INTO `think_link_data` VALUES ('385', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '6211', '1495976401');
INSERT INTO `think_link_data` VALUES ('386', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '270', '1495980001');
INSERT INTO `think_link_data` VALUES ('387', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2556', '1495980001');
INSERT INTO `think_link_data` VALUES ('388', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '45', '1495980001');
INSERT INTO `think_link_data` VALUES ('389', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3181', '1495980001');
INSERT INTO `think_link_data` VALUES ('390', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '6211', '1495980001');
INSERT INTO `think_link_data` VALUES ('391', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '293', '1495983601');
INSERT INTO `think_link_data` VALUES ('392', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2801', '1495983601');
INSERT INTO `think_link_data` VALUES ('393', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '54', '1495983601');
INSERT INTO `think_link_data` VALUES ('394', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3415', '1495983601');
INSERT INTO `think_link_data` VALUES ('395', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '6336', '1495983601');
INSERT INTO `think_link_data` VALUES ('396', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '293', '1495987201');
INSERT INTO `think_link_data` VALUES ('397', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2801', '1495987201');
INSERT INTO `think_link_data` VALUES ('398', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '54', '1495987201');
INSERT INTO `think_link_data` VALUES ('399', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3415', '1495987201');
INSERT INTO `think_link_data` VALUES ('400', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '6336', '1495987201');
INSERT INTO `think_link_data` VALUES ('401', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '362', '1495990801');
INSERT INTO `think_link_data` VALUES ('402', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3212', '1495990801');
INSERT INTO `think_link_data` VALUES ('403', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '59', '1495990801');
INSERT INTO `think_link_data` VALUES ('404', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3793', '1495990801');
INSERT INTO `think_link_data` VALUES ('405', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '6559', '1495990801');
INSERT INTO `think_link_data` VALUES ('406', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '412', '1495994401');
INSERT INTO `think_link_data` VALUES ('407', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3498', '1495994401');
INSERT INTO `think_link_data` VALUES ('408', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '56', '1495994401');
INSERT INTO `think_link_data` VALUES ('409', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '4049', '1495994401');
INSERT INTO `think_link_data` VALUES ('410', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '6660', '1495994401');
INSERT INTO `think_link_data` VALUES ('411', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '412', '1495998001');
INSERT INTO `think_link_data` VALUES ('412', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3498', '1495998001');
INSERT INTO `think_link_data` VALUES ('413', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '56', '1495998001');
INSERT INTO `think_link_data` VALUES ('414', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '4049', '1495998001');
INSERT INTO `think_link_data` VALUES ('415', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '6660', '1495998001');
INSERT INTO `think_link_data` VALUES ('416', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '512', '1496001601');
INSERT INTO `think_link_data` VALUES ('417', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3920', '1496001601');
INSERT INTO `think_link_data` VALUES ('418', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '55', '1496001601');
INSERT INTO `think_link_data` VALUES ('419', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '4437', '1496001601');
INSERT INTO `think_link_data` VALUES ('420', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1307', '1496001601');
INSERT INTO `think_link_data` VALUES ('421', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '547', '1496005201');
INSERT INTO `think_link_data` VALUES ('422', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '4210', '1496005201');
INSERT INTO `think_link_data` VALUES ('423', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '51', '1496005201');
INSERT INTO `think_link_data` VALUES ('424', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '4774', '1496005201');
INSERT INTO `think_link_data` VALUES ('425', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1570', '1496005201');
INSERT INTO `think_link_data` VALUES ('426', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '233', '1496008802');
INSERT INTO `think_link_data` VALUES ('427', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '4210', '1496008802');
INSERT INTO `think_link_data` VALUES ('428', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '51', '1496008802');
INSERT INTO `think_link_data` VALUES ('429', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '4774', '1496008802');
INSERT INTO `think_link_data` VALUES ('430', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1570', '1496008802');
INSERT INTO `think_link_data` VALUES ('431', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '233', '1496012401');
INSERT INTO `think_link_data` VALUES ('432', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '953', '1496012401');
INSERT INTO `think_link_data` VALUES ('433', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '70', '1496012401');
INSERT INTO `think_link_data` VALUES ('434', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5191', '1496012401');
INSERT INTO `think_link_data` VALUES ('435', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2038', '1496012401');
INSERT INTO `think_link_data` VALUES ('436', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '262', '1496016001');
INSERT INTO `think_link_data` VALUES ('437', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '486', '1496016001');
INSERT INTO `think_link_data` VALUES ('438', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '68', '1496016001');
INSERT INTO `think_link_data` VALUES ('439', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5520', '1496016001');
INSERT INTO `think_link_data` VALUES ('440', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2414', '1496016001');
INSERT INTO `think_link_data` VALUES ('441', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '262', '1496019602');
INSERT INTO `think_link_data` VALUES ('442', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '486', '1496019602');
INSERT INTO `think_link_data` VALUES ('443', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '68', '1496019602');
INSERT INTO `think_link_data` VALUES ('444', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5520', '1496019602');
INSERT INTO `think_link_data` VALUES ('445', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2414', '1496019602');
INSERT INTO `think_link_data` VALUES ('446', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '212', '1496023202');
INSERT INTO `think_link_data` VALUES ('447', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '569', '1496023202');
INSERT INTO `think_link_data` VALUES ('448', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '86', '1496023202');
INSERT INTO `think_link_data` VALUES ('449', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1150', '1496023202');
INSERT INTO `think_link_data` VALUES ('450', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2755', '1496023202');
INSERT INTO `think_link_data` VALUES ('451', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '217', '1496026801');
INSERT INTO `think_link_data` VALUES ('452', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '597', '1496026801');
INSERT INTO `think_link_data` VALUES ('453', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '87', '1496026801');
INSERT INTO `think_link_data` VALUES ('454', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1204', '1496026801');
INSERT INTO `think_link_data` VALUES ('455', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2873', '1496026801');
INSERT INTO `think_link_data` VALUES ('456', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '217', '1496030401');
INSERT INTO `think_link_data` VALUES ('457', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '597', '1496030401');
INSERT INTO `think_link_data` VALUES ('458', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '87', '1496030401');
INSERT INTO `think_link_data` VALUES ('459', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1204', '1496030401');
INSERT INTO `think_link_data` VALUES ('460', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2873', '1496030401');
INSERT INTO `think_link_data` VALUES ('461', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '219', '1496034001');
INSERT INTO `think_link_data` VALUES ('462', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '611', '1496034001');
INSERT INTO `think_link_data` VALUES ('463', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1496034001');
INSERT INTO `think_link_data` VALUES ('464', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1248', '1496034001');
INSERT INTO `think_link_data` VALUES ('465', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2904', '1496034001');
INSERT INTO `think_link_data` VALUES ('466', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '218', '1496037602');
INSERT INTO `think_link_data` VALUES ('467', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '622', '1496037602');
INSERT INTO `think_link_data` VALUES ('468', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '75', '1496037602');
INSERT INTO `think_link_data` VALUES ('469', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1272', '1496037602');
INSERT INTO `think_link_data` VALUES ('470', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2844', '1496037602');
INSERT INTO `think_link_data` VALUES ('471', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '218', '1496041201');
INSERT INTO `think_link_data` VALUES ('472', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '622', '1496041201');
INSERT INTO `think_link_data` VALUES ('473', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '75', '1496041201');
INSERT INTO `think_link_data` VALUES ('474', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1272', '1496041201');
INSERT INTO `think_link_data` VALUES ('475', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2844', '1496041201');
INSERT INTO `think_link_data` VALUES ('476', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '220', '1496044801');
INSERT INTO `think_link_data` VALUES ('477', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '650', '1496044801');
INSERT INTO `think_link_data` VALUES ('478', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '78', '1496044801');
INSERT INTO `think_link_data` VALUES ('479', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1332', '1496044801');
INSERT INTO `think_link_data` VALUES ('480', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2782', '1496044801');
INSERT INTO `think_link_data` VALUES ('481', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '229', '1496048401');
INSERT INTO `think_link_data` VALUES ('482', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '689', '1496048401');
INSERT INTO `think_link_data` VALUES ('483', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '78', '1496048401');
INSERT INTO `think_link_data` VALUES ('484', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1424', '1496048401');
INSERT INTO `think_link_data` VALUES ('485', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2750', '1496048401');
INSERT INTO `think_link_data` VALUES ('486', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '229', '1496052001');
INSERT INTO `think_link_data` VALUES ('487', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '689', '1496052001');
INSERT INTO `think_link_data` VALUES ('488', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '78', '1496052001');
INSERT INTO `think_link_data` VALUES ('489', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1424', '1496052001');
INSERT INTO `think_link_data` VALUES ('490', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2750', '1496052001');
INSERT INTO `think_link_data` VALUES ('491', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '286', '1496055601');
INSERT INTO `think_link_data` VALUES ('492', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '903', '1496055601');
INSERT INTO `think_link_data` VALUES ('493', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '100', '1496055601');
INSERT INTO `think_link_data` VALUES ('494', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1838', '1496055601');
INSERT INTO `think_link_data` VALUES ('495', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2984', '1496055601');
INSERT INTO `think_link_data` VALUES ('496', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '200', '1496059201');
INSERT INTO `think_link_data` VALUES ('497', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1070', '1496059201');
INSERT INTO `think_link_data` VALUES ('498', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '115', '1496059201');
INSERT INTO `think_link_data` VALUES ('499', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2224', '1496059201');
INSERT INTO `think_link_data` VALUES ('500', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '3203', '1496059201');
INSERT INTO `think_link_data` VALUES ('501', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '200', '1496062801');
INSERT INTO `think_link_data` VALUES ('502', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1070', '1496062801');
INSERT INTO `think_link_data` VALUES ('503', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '115', '1496062801');
INSERT INTO `think_link_data` VALUES ('504', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2224', '1496062801');
INSERT INTO `think_link_data` VALUES ('505', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '3203', '1496062801');
INSERT INTO `think_link_data` VALUES ('506', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '273', '1496066401');
INSERT INTO `think_link_data` VALUES ('507', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1458', '1496066401');
INSERT INTO `think_link_data` VALUES ('508', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '126', '1496066401');
INSERT INTO `think_link_data` VALUES ('509', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2789', '1496066401');
INSERT INTO `think_link_data` VALUES ('510', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '3609', '1496066401');
INSERT INTO `think_link_data` VALUES ('511', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '316', '1496070001');
INSERT INTO `think_link_data` VALUES ('512', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1712', '1496070001');
INSERT INTO `think_link_data` VALUES ('513', 'B00A7YHIQS', '21.57', '21.57', '3.7', '19', '', '73', '1496070001');
INSERT INTO `think_link_data` VALUES ('514', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3270', '1496070001');
INSERT INTO `think_link_data` VALUES ('515', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '3983', '1496070001');
INSERT INTO `think_link_data` VALUES ('516', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '316', '1496073601');
INSERT INTO `think_link_data` VALUES ('517', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1712', '1496073601');
INSERT INTO `think_link_data` VALUES ('518', 'B00A7YHIQS', '21.57', '21.57', '3.7', '19', '', '73', '1496073601');
INSERT INTO `think_link_data` VALUES ('519', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3270', '1496073601');
INSERT INTO `think_link_data` VALUES ('520', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '3983', '1496073601');
INSERT INTO `think_link_data` VALUES ('521', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '481', '1496077201');
INSERT INTO `think_link_data` VALUES ('522', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2140', '1496077201');
INSERT INTO `think_link_data` VALUES ('523', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1496077201');
INSERT INTO `think_link_data` VALUES ('524', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3853', '1496077201');
INSERT INTO `think_link_data` VALUES ('525', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4449', '1496077201');
INSERT INTO `think_link_data` VALUES ('526', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '527', '1496080801');
INSERT INTO `think_link_data` VALUES ('527', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2323', '1496080801');
INSERT INTO `think_link_data` VALUES ('528', 'B00A7YHIQS', '21.57', '21.57', '3.7', '19', '', '42', '1496080801');
INSERT INTO `think_link_data` VALUES ('529', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '4242', '1496080801');
INSERT INTO `think_link_data` VALUES ('530', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4759', '1496080801');
INSERT INTO `think_link_data` VALUES ('531', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '527', '1496084401');
INSERT INTO `think_link_data` VALUES ('532', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2323', '1496084401');
INSERT INTO `think_link_data` VALUES ('533', 'B00A7YHIQS', '21.57', '21.57', '3.7', '19', '', '42', '1496084401');
INSERT INTO `think_link_data` VALUES ('534', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '4242', '1496084401');
INSERT INTO `think_link_data` VALUES ('535', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '4759', '1496084401');
INSERT INTO `think_link_data` VALUES ('536', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '367', '1496088001');
INSERT INTO `think_link_data` VALUES ('537', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2688', '1496088001');
INSERT INTO `think_link_data` VALUES ('538', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '50', '1496088001');
INSERT INTO `think_link_data` VALUES ('539', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '4735', '1496088001');
INSERT INTO `think_link_data` VALUES ('540', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '5202', '1496088001');
INSERT INTO `think_link_data` VALUES ('541', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '405', '1496091601');
INSERT INTO `think_link_data` VALUES ('542', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2863', '1496091601');
INSERT INTO `think_link_data` VALUES ('543', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '47', '1496091601');
INSERT INTO `think_link_data` VALUES ('544', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5085', '1496091601');
INSERT INTO `think_link_data` VALUES ('545', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1449', '1496091601');
INSERT INTO `think_link_data` VALUES ('546', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '405', '1496095201');
INSERT INTO `think_link_data` VALUES ('547', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2863', '1496095201');
INSERT INTO `think_link_data` VALUES ('548', 'B00A7YHIQS', '21.57', '21.57', '3.7', '19', '', '47', '1496095201');
INSERT INTO `think_link_data` VALUES ('549', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5085', '1496095201');
INSERT INTO `think_link_data` VALUES ('550', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1449', '1496095201');
INSERT INTO `think_link_data` VALUES ('551', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '839', '1496098801');
INSERT INTO `think_link_data` VALUES ('552', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3167', '1496098801');
INSERT INTO `think_link_data` VALUES ('553', 'B00A7YHIQS', '21.57', '21.57', '3.7', '19', '', '57', '1496098801');
INSERT INTO `think_link_data` VALUES ('554', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5500', '1496098801');
INSERT INTO `think_link_data` VALUES ('555', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1867', '1496098801');
INSERT INTO `think_link_data` VALUES ('556', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '468', '1496102401');
INSERT INTO `think_link_data` VALUES ('557', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3346', '1496102401');
INSERT INTO `think_link_data` VALUES ('558', 'B00A7YHIQS', '21.57', '21.57', '3.7', '19', '', '69', '1496102401');
INSERT INTO `think_link_data` VALUES ('559', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5770', '1496102401');
INSERT INTO `think_link_data` VALUES ('560', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2163', '1496102401');
INSERT INTO `think_link_data` VALUES ('561', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '468', '1496106001');
INSERT INTO `think_link_data` VALUES ('562', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3346', '1496106001');
INSERT INTO `think_link_data` VALUES ('563', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '69', '1496106001');
INSERT INTO `think_link_data` VALUES ('564', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5770', '1496106001');
INSERT INTO `think_link_data` VALUES ('565', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2163', '1496106001');
INSERT INTO `think_link_data` VALUES ('566', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '517', '1496109601');
INSERT INTO `think_link_data` VALUES ('567', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3357', '1496109601');
INSERT INTO `think_link_data` VALUES ('568', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '82', '1496109601');
INSERT INTO `think_link_data` VALUES ('569', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5867', '1496109601');
INSERT INTO `think_link_data` VALUES ('570', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2364', '1496109601');
INSERT INTO `think_link_data` VALUES ('571', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '535', '1496113201');
INSERT INTO `think_link_data` VALUES ('572', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3436', '1496113201');
INSERT INTO `think_link_data` VALUES ('573', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '69', '1496113201');
INSERT INTO `think_link_data` VALUES ('574', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '6024', '1496113201');
INSERT INTO `think_link_data` VALUES ('575', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2513', '1496113201');
INSERT INTO `think_link_data` VALUES ('576', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '535', '1496116801');
INSERT INTO `think_link_data` VALUES ('577', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3436', '1496116801');
INSERT INTO `think_link_data` VALUES ('578', 'B00A7YHIQS', '21.57', '21.57', '3.7', '19', '', '69', '1496116801');
INSERT INTO `think_link_data` VALUES ('579', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '6024', '1496116801');
INSERT INTO `think_link_data` VALUES ('580', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2513', '1496116801');
INSERT INTO `think_link_data` VALUES ('581', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '521', '1496120401');
INSERT INTO `think_link_data` VALUES ('582', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3245', '1496120401');
INSERT INTO `think_link_data` VALUES ('583', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '71', '1496120401');
INSERT INTO `think_link_data` VALUES ('584', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5911', '1496120401');
INSERT INTO `think_link_data` VALUES ('585', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2425', '1496120401');
INSERT INTO `think_link_data` VALUES ('586', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '501', '1496124002');
INSERT INTO `think_link_data` VALUES ('587', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3084', '1496124002');
INSERT INTO `think_link_data` VALUES ('588', 'B00A7YHIQS', '21.57', '21.57', '3.7', '19', '', '74', '1496124002');
INSERT INTO `think_link_data` VALUES ('589', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5872', '1496124002');
INSERT INTO `think_link_data` VALUES ('590', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2387', '1496124002');
INSERT INTO `think_link_data` VALUES ('591', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '501', '1496127601');
INSERT INTO `think_link_data` VALUES ('592', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3084', '1496127601');
INSERT INTO `think_link_data` VALUES ('593', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '74', '1496127601');
INSERT INTO `think_link_data` VALUES ('594', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5872', '1496127601');
INSERT INTO `think_link_data` VALUES ('595', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2387', '1496127601');
INSERT INTO `think_link_data` VALUES ('596', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '498', '1496131201');
INSERT INTO `think_link_data` VALUES ('597', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2803', '1496131201');
INSERT INTO `think_link_data` VALUES ('598', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '77', '1496131201');
INSERT INTO `think_link_data` VALUES ('599', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5765', '1496131201');
INSERT INTO `think_link_data` VALUES ('600', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2347', '1496131201');
INSERT INTO `think_link_data` VALUES ('601', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '514', '1496134801');
INSERT INTO `think_link_data` VALUES ('602', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2609', '1496134801');
INSERT INTO `think_link_data` VALUES ('603', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '80', '1496134801');
INSERT INTO `think_link_data` VALUES ('604', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5697', '1496134801');
INSERT INTO `think_link_data` VALUES ('605', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2357', '1496134801');
INSERT INTO `think_link_data` VALUES ('606', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '514', '1496138401');
INSERT INTO `think_link_data` VALUES ('607', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2609', '1496138401');
INSERT INTO `think_link_data` VALUES ('608', 'B00A7YHIQS', '21.57', '21.57', '3.7', '19', '', '80', '1496138401');
INSERT INTO `think_link_data` VALUES ('609', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5697', '1496138401');
INSERT INTO `think_link_data` VALUES ('610', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2357', '1496138401');
INSERT INTO `think_link_data` VALUES ('611', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '614', '1496142001');
INSERT INTO `think_link_data` VALUES ('612', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2733', '1496142001');
INSERT INTO `think_link_data` VALUES ('613', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '63', '1496142001');
INSERT INTO `think_link_data` VALUES ('614', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5796', '1496142001');
INSERT INTO `think_link_data` VALUES ('615', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '678', '1496142001');
INSERT INTO `think_link_data` VALUES ('616', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '673', '1496145601');
INSERT INTO `think_link_data` VALUES ('617', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2886', '1496145601');
INSERT INTO `think_link_data` VALUES ('618', 'B00A7YHIQS', '21.57', '21.57', '3.7', '19', '', '76', '1496145601');
INSERT INTO `think_link_data` VALUES ('619', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5879', '1496145601');
INSERT INTO `think_link_data` VALUES ('620', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '798', '1496145601');
INSERT INTO `think_link_data` VALUES ('621', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '673', '1496149201');
INSERT INTO `think_link_data` VALUES ('622', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2886', '1496149201');
INSERT INTO `think_link_data` VALUES ('623', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '76', '1496149201');
INSERT INTO `think_link_data` VALUES ('624', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '5879', '1496149201');
INSERT INTO `think_link_data` VALUES ('625', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '798', '1496149201');
INSERT INTO `think_link_data` VALUES ('626', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '257', '1496152801');
INSERT INTO `think_link_data` VALUES ('627', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3296', '1496152801');
INSERT INTO `think_link_data` VALUES ('628', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '97', '1496152801');
INSERT INTO `think_link_data` VALUES ('629', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1024', '1496152801');
INSERT INTO `think_link_data` VALUES ('630', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1064', '1496152801');
INSERT INTO `think_link_data` VALUES ('631', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '299', '1496156401');
INSERT INTO `think_link_data` VALUES ('632', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3615', '1496156401');
INSERT INTO `think_link_data` VALUES ('633', 'B00A7YHIQS', '21.57', '21.57', '3.7', '19', '', '91', '1496156401');
INSERT INTO `think_link_data` VALUES ('634', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '534', '1496156401');
INSERT INTO `think_link_data` VALUES ('635', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1236', '1496156401');
INSERT INTO `think_link_data` VALUES ('636', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '299', '1496160001');
INSERT INTO `think_link_data` VALUES ('637', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '3615', '1496160001');
INSERT INTO `think_link_data` VALUES ('638', 'B00A7YHIQS', '21.57', '21.57', '3.7', '19', '', '91', '1496160001');
INSERT INTO `think_link_data` VALUES ('639', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '534', '1496160001');
INSERT INTO `think_link_data` VALUES ('640', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1236', '1496160001');
INSERT INTO `think_link_data` VALUES ('641', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '331', '1496163601');
INSERT INTO `think_link_data` VALUES ('642', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '4088', '1496163601');
INSERT INTO `think_link_data` VALUES ('643', 'B00A7YHIQS', '21.57', '21.57', '3.7', '19', '', '120', '1496163601');
INSERT INTO `think_link_data` VALUES ('644', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '683', '1496163601');
INSERT INTO `think_link_data` VALUES ('645', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1625', '1496163601');
INSERT INTO `think_link_data` VALUES ('646', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '179', '1496167201');
INSERT INTO `think_link_data` VALUES ('647', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '4390', '1496167201');
INSERT INTO `think_link_data` VALUES ('648', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '129', '1496167201');
INSERT INTO `think_link_data` VALUES ('649', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '798', '1496167201');
INSERT INTO `think_link_data` VALUES ('650', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1843', '1496167201');
INSERT INTO `think_link_data` VALUES ('651', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '179', '1496170802');
INSERT INTO `think_link_data` VALUES ('652', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '4390', '1496170802');
INSERT INTO `think_link_data` VALUES ('653', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '129', '1496170802');
INSERT INTO `think_link_data` VALUES ('654', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '798', '1496170802');
INSERT INTO `think_link_data` VALUES ('655', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1843', '1496170802');
INSERT INTO `think_link_data` VALUES ('656', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '226', '1496174401');
INSERT INTO `think_link_data` VALUES ('657', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '4760', '1496174401');
INSERT INTO `think_link_data` VALUES ('658', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '118', '1496174401');
INSERT INTO `think_link_data` VALUES ('659', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '500', '1496174401');
INSERT INTO `think_link_data` VALUES ('660', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2227', '1496174401');
INSERT INTO `think_link_data` VALUES ('661', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '259', '1496178001');
INSERT INTO `think_link_data` VALUES ('662', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '4916', '1496178001');
INSERT INTO `think_link_data` VALUES ('663', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '134', '1496178001');
INSERT INTO `think_link_data` VALUES ('664', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '582', '1496178001');
INSERT INTO `think_link_data` VALUES ('665', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2437', '1496178001');
INSERT INTO `think_link_data` VALUES ('666', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '259', '1496181601');
INSERT INTO `think_link_data` VALUES ('667', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '4916', '1496181601');
INSERT INTO `think_link_data` VALUES ('668', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '134', '1496181601');
INSERT INTO `think_link_data` VALUES ('669', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '582', '1496181601');
INSERT INTO `think_link_data` VALUES ('670', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2437', '1496181601');
INSERT INTO `think_link_data` VALUES ('671', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '165', '1496185201');
INSERT INTO `think_link_data` VALUES ('672', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '5180', '1496185201');
INSERT INTO `think_link_data` VALUES ('673', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '128', '1496185201');
INSERT INTO `think_link_data` VALUES ('674', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '745', '1496185201');
INSERT INTO `think_link_data` VALUES ('675', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '2814', '1496185201');
INSERT INTO `think_link_data` VALUES ('676', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '193', '1496188801');
INSERT INTO `think_link_data` VALUES ('677', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '5307', '1496188801');
INSERT INTO `think_link_data` VALUES ('678', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '149', '1496188801');
INSERT INTO `think_link_data` VALUES ('679', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '853', '1496188801');
INSERT INTO `think_link_data` VALUES ('680', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '3101', '1496188801');
INSERT INTO `think_link_data` VALUES ('681', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '193', '1496192401');
INSERT INTO `think_link_data` VALUES ('682', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '5307', '1496192401');
INSERT INTO `think_link_data` VALUES ('683', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '149', '1496192401');
INSERT INTO `think_link_data` VALUES ('684', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '853', '1496192401');
INSERT INTO `think_link_data` VALUES ('685', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '3101', '1496192401');
INSERT INTO `think_link_data` VALUES ('686', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '227', '1496196001');
INSERT INTO `think_link_data` VALUES ('687', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '5424', '1496196001');
INSERT INTO `think_link_data` VALUES ('688', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '170', '1496196001');
INSERT INTO `think_link_data` VALUES ('689', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '962', '1496196001');
INSERT INTO `think_link_data` VALUES ('690', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '3364', '1496196001');
INSERT INTO `think_link_data` VALUES ('691', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '234', '1496199601');
INSERT INTO `think_link_data` VALUES ('692', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '5263', '1496199601');
INSERT INTO `think_link_data` VALUES ('693', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '166', '1496199601');
INSERT INTO `think_link_data` VALUES ('694', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '996', '1496199601');
INSERT INTO `think_link_data` VALUES ('695', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '3369', '1496199601');
INSERT INTO `think_link_data` VALUES ('696', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '234', '1496174401');
INSERT INTO `think_link_data` VALUES ('697', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '5263', '1496174401');
INSERT INTO `think_link_data` VALUES ('698', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '166', '1496174401');
INSERT INTO `think_link_data` VALUES ('699', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '996', '1496174401');
INSERT INTO `think_link_data` VALUES ('700', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '3369', '1496174401');
INSERT INTO `think_link_data` VALUES ('701', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '236', '1496178002');
INSERT INTO `think_link_data` VALUES ('702', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '5097', '1496178002');
INSERT INTO `think_link_data` VALUES ('703', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '167', '1496178002');
INSERT INTO `think_link_data` VALUES ('704', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1006', '1496178002');
INSERT INTO `think_link_data` VALUES ('705', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '3314', '1496178002');
INSERT INTO `think_link_data` VALUES ('706', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '237', '1496181601');
INSERT INTO `think_link_data` VALUES ('707', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '4818', '1496181601');
INSERT INTO `think_link_data` VALUES ('708', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '160', '1496181601');
INSERT INTO `think_link_data` VALUES ('709', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1014', '1496181601');
INSERT INTO `think_link_data` VALUES ('710', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '3158', '1496181601');
INSERT INTO `think_link_data` VALUES ('711', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '237', '1496185201');
INSERT INTO `think_link_data` VALUES ('712', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '4818', '1496185201');
INSERT INTO `think_link_data` VALUES ('713', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '160', '1496185201');
INSERT INTO `think_link_data` VALUES ('714', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1014', '1496185201');
INSERT INTO `think_link_data` VALUES ('715', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '3158', '1496185201');
INSERT INTO `think_link_data` VALUES ('716', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '309', '1496253602');
INSERT INTO `think_link_data` VALUES ('717', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '908', '1496253602');
INSERT INTO `think_link_data` VALUES ('718', 'B00A7YHIQS', '29.00', '29.00', '3.7', '19', '', '79', '1496253602');
INSERT INTO `think_link_data` VALUES ('719', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '623', '1496253602');
INSERT INTO `think_link_data` VALUES ('720', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1004', '1496253602');
INSERT INTO `think_link_data` VALUES ('721', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '932', '1496257201');
INSERT INTO `think_link_data` VALUES ('722', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '72', '1496257201');
INSERT INTO `think_link_data` VALUES ('723', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '642', '1496257201');
INSERT INTO `think_link_data` VALUES ('724', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1027', '1496257201');
INSERT INTO `think_link_data` VALUES ('725', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '307', '1496257201');
INSERT INTO `think_link_data` VALUES ('726', 'B01IHGJLCG', '25.99', '28.99', '3.8', '26', '', '126', '1496257201');
INSERT INTO `think_link_data` VALUES ('727', 'B01IHGKAPI', '25.99', '25.99', '4.1', '38', '', '64', '1496257201');
INSERT INTO `think_link_data` VALUES ('728', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '957', '1496271602');
INSERT INTO `think_link_data` VALUES ('729', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '75', '1496271602');
INSERT INTO `think_link_data` VALUES ('730', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '674', '1496271602');
INSERT INTO `think_link_data` VALUES ('731', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1056', '1496271602');
INSERT INTO `think_link_data` VALUES ('732', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '295', '1496271602');
INSERT INTO `think_link_data` VALUES ('733', 'B01IHGJLCG', '25.99', '28.99', '3.8', '26', '', '134', '1496271602');
INSERT INTO `think_link_data` VALUES ('734', 'B01IHGKAPI', '25.99', '25.99', '4.1', '38', '', '68', '1496271602');
INSERT INTO `think_link_data` VALUES ('735', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '957', '1496275201');
INSERT INTO `think_link_data` VALUES ('736', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '75', '1496275201');
INSERT INTO `think_link_data` VALUES ('737', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '674', '1496275201');
INSERT INTO `think_link_data` VALUES ('738', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1056', '1496275201');
INSERT INTO `think_link_data` VALUES ('739', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '295', '1496275201');
INSERT INTO `think_link_data` VALUES ('740', 'B01IHGJLCG', '25.99', '28.99', '3.8', '26', '', '134', '1496275201');
INSERT INTO `think_link_data` VALUES ('741', 'B01IHGKAPI', '25.99', '25.99', '4.1', '38', '', '68', '1496275201');
INSERT INTO `think_link_data` VALUES ('742', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '994', '1496278801');
INSERT INTO `think_link_data` VALUES ('743', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '80', '1496278801');
INSERT INTO `think_link_data` VALUES ('744', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '711', '1496278801');
INSERT INTO `think_link_data` VALUES ('745', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1112', '1496278801');
INSERT INTO `think_link_data` VALUES ('746', 'B01IHGWS9E', '25.99', '28.99', '3.3', '32', '', '301', '1496278801');
INSERT INTO `think_link_data` VALUES ('747', 'B01IHGJLCG', '25.99', '28.99', '3.8', '26', '', '136', '1496278801');
INSERT INTO `think_link_data` VALUES ('748', 'B01IHGKAPI', '25.99', '25.99', '4.1', '38', '', '69', '1496278801');
INSERT INTO `think_link_data` VALUES ('749', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1066', '1496282402');
INSERT INTO `think_link_data` VALUES ('750', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '85', '1496282402');
INSERT INTO `think_link_data` VALUES ('751', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '765', '1496282402');
INSERT INTO `think_link_data` VALUES ('752', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1196', '1496282402');
INSERT INTO `think_link_data` VALUES ('753', 'B01IHGWS9E', '26.99', '28.99', '3.3', '32', '', '314', '1496282402');
INSERT INTO `think_link_data` VALUES ('754', 'B01IHGJLCG', '26.99', '28.99', '3.8', '26', '', '149', '1496282402');
INSERT INTO `think_link_data` VALUES ('755', 'B01IHGKAPI', '26.99', '26.99', '4.1', '38', '', '75', '1496282402');
INSERT INTO `think_link_data` VALUES ('756', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1066', '1496286001');
INSERT INTO `think_link_data` VALUES ('757', 'B00A7YHIQS', '26.47', '26.47', '3.7', '19', '', '85', '1496286001');
INSERT INTO `think_link_data` VALUES ('758', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '765', '1496286001');
INSERT INTO `think_link_data` VALUES ('759', 'B01JV6LT7G', '19.99', '39.99', '4.3', '32', '', '1196', '1496286001');
INSERT INTO `think_link_data` VALUES ('760', 'B01IHGWS9E', '26.99', '28.99', '3.3', '32', '', '314', '1496286001');
INSERT INTO `think_link_data` VALUES ('761', 'B01IHGJLCG', '26.99', '28.99', '3.8', '26', '', '149', '1496286001');
INSERT INTO `think_link_data` VALUES ('762', 'B01IHGKAPI', '26.99', '26.99', '4.1', '38', '', '75', '1496286001');

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
