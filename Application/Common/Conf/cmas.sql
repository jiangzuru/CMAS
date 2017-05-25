/*
Navicat MySQL Data Transfer

Source Server         : centos
Source Server Version : 50548
Source Host           : 192.168.4.121:3306
Source Database       : cmas

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2017-05-25 20:52:21
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
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=960 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_link_data
-- ----------------------------
INSERT INTO `think_link_data` VALUES ('162', '', '27.99', '28.99', '3.3', '31', '', '152', '1495618201');
INSERT INTO `think_link_data` VALUES ('163', '', '25.99', '29.99', '3.5', '44', '', '2272', '1495618201');
INSERT INTO `think_link_data` VALUES ('164', '', '27.99', '28.99', '3.3', '31', '', '152', '1495618802');
INSERT INTO `think_link_data` VALUES ('165', '', '25.99', '29.99', '3.5', '44', '', '2272', '1495618802');
INSERT INTO `think_link_data` VALUES ('166', '', '27.99', '28.99', '3.3', '31', '', '152', '1495619401');
INSERT INTO `think_link_data` VALUES ('167', '', '25.99', '29.99', '3.5', '44', '', '2272', '1495619401');
INSERT INTO `think_link_data` VALUES ('168', '', '27.99', '28.99', '3.3', '31', '', '190', '1495620001');
INSERT INTO `think_link_data` VALUES ('169', '', '25.99', '29.99', '3.5', '44', '', '2272', '1495620001');
INSERT INTO `think_link_data` VALUES ('170', '', '27.99', '27.99', '4.1', '37', '', '116', '1495620001');
INSERT INTO `think_link_data` VALUES ('171', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '152', '1495620250');
INSERT INTO `think_link_data` VALUES ('172', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '628', '1495620250');
INSERT INTO `think_link_data` VALUES ('173', 'B01IHGKAPI', '27.99', '27.99', '4.1', '37', '', '134', '1495620250');
INSERT INTO `think_link_data` VALUES ('174', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '190', '1495620316');
INSERT INTO `think_link_data` VALUES ('175', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2272', '1495620316');
INSERT INTO `think_link_data` VALUES ('176', 'B01IHGKAPI', '27.99', '27.99', '4.1', '37', '', '116', '1495620316');
INSERT INTO `think_link_data` VALUES ('177', 'B', '0.00', '0.00', '0.0', '0', '', '0', '1495620316');
INSERT INTO `think_link_data` VALUES ('178', 'B', '0.00', '0.00', '0.0', '0', '', '0', '1495620316');
INSERT INTO `think_link_data` VALUES ('179', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '190', '1495620511');
INSERT INTO `think_link_data` VALUES ('180', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '628', '1495620511');
INSERT INTO `think_link_data` VALUES ('181', 'B01IHGKAPI', '27.99', '27.99', '4.1', '37', '', '134', '1495620511');
INSERT INTO `think_link_data` VALUES ('182', 'B', '0.00', '0.00', '0.0', '0', '', '0', '1495620511');
INSERT INTO `think_link_data` VALUES ('183', 'B', '0.00', '0.00', '0.0', '0', '', '0', '1495620511');
INSERT INTO `think_link_data` VALUES ('184', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '190', '1495620535');
INSERT INTO `think_link_data` VALUES ('185', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '2272', '1495620535');
INSERT INTO `think_link_data` VALUES ('186', 'B01IHGKAPI', '27.99', '27.99', '4.1', '37', '', '134', '1495620535');
INSERT INTO `think_link_data` VALUES ('187', 'B01MQ4FKMQ', '0.00', '0.00', '4.0', '7', '', '2339', '1495620535');
INSERT INTO `think_link_data` VALUES ('188', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2798', '1495620535');
INSERT INTO `think_link_data` VALUES ('189', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '190', '1495620601');
INSERT INTO `think_link_data` VALUES ('190', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '628', '1495620601');
INSERT INTO `think_link_data` VALUES ('191', 'B01IHGKAPI', '27.99', '27.99', '4.1', '37', '', '134', '1495620601');
INSERT INTO `think_link_data` VALUES ('192', 'B01MQ4FKMQ', '0.00', '0.00', '4.0', '7', '', '2339', '1495620601');
INSERT INTO `think_link_data` VALUES ('193', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2798', '1495620601');
INSERT INTO `think_link_data` VALUES ('194', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '190', '1495621201');
INSERT INTO `think_link_data` VALUES ('195', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '628', '1495621201');
INSERT INTO `think_link_data` VALUES ('196', 'B01IHGKAPI', '27.99', '27.99', '4.1', '37', '', '134', '1495621201');
INSERT INTO `think_link_data` VALUES ('197', 'B01MQ4FKMQ', '0.00', '0.00', '4.0', '7', '', '2339', '1495621201');
INSERT INTO `think_link_data` VALUES ('198', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2798', '1495621201');
INSERT INTO `think_link_data` VALUES ('199', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '190', '1495621801');
INSERT INTO `think_link_data` VALUES ('200', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '628', '1495621801');
INSERT INTO `think_link_data` VALUES ('201', 'B01IHGKAPI', '27.99', '27.99', '4.1', '37', '', '134', '1495621801');
INSERT INTO `think_link_data` VALUES ('202', 'B01MQ4FKMQ', '0.00', '0.00', '4.0', '7', '', '2339', '1495621801');
INSERT INTO `think_link_data` VALUES ('203', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2798', '1495621801');
INSERT INTO `think_link_data` VALUES ('204', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '190', '1495622401');
INSERT INTO `think_link_data` VALUES ('205', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '628', '1495622401');
INSERT INTO `think_link_data` VALUES ('206', 'B01IHGKAPI', '27.99', '27.99', '4.1', '37', '', '134', '1495622401');
INSERT INTO `think_link_data` VALUES ('207', 'B01MQ4FKMQ', '0.00', '0.00', '4.0', '7', '', '2339', '1495622401');
INSERT INTO `think_link_data` VALUES ('208', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2798', '1495622401');
INSERT INTO `think_link_data` VALUES ('209', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '190', '1495623001');
INSERT INTO `think_link_data` VALUES ('210', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '628', '1495623001');
INSERT INTO `think_link_data` VALUES ('211', 'B01IHGKAPI', '27.99', '27.99', '4.1', '37', '', '134', '1495623001');
INSERT INTO `think_link_data` VALUES ('212', 'B01MQ4FKMQ', '0.00', '0.00', '4.0', '7', '', '2339', '1495623001');
INSERT INTO `think_link_data` VALUES ('213', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2798', '1495623001');
INSERT INTO `think_link_data` VALUES ('214', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '190', '1495623602');
INSERT INTO `think_link_data` VALUES ('215', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '628', '1495623602');
INSERT INTO `think_link_data` VALUES ('216', 'B01IHGKAPI', '27.99', '27.99', '4.1', '37', '', '134', '1495623602');
INSERT INTO `think_link_data` VALUES ('217', 'B01MQ4FKMQ', '0.00', '0.00', '4.0', '7', '', '2339', '1495623602');
INSERT INTO `think_link_data` VALUES ('218', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2798', '1495623602');
INSERT INTO `think_link_data` VALUES ('219', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '190', '1495624202');
INSERT INTO `think_link_data` VALUES ('220', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '628', '1495624202');
INSERT INTO `think_link_data` VALUES ('221', 'B01IHGKAPI', '27.99', '27.99', '4.1', '37', '', '134', '1495624202');
INSERT INTO `think_link_data` VALUES ('222', 'B01MQ4FKMQ', '0.00', '0.00', '4.0', '7', '', '2339', '1495624202');
INSERT INTO `think_link_data` VALUES ('223', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2798', '1495624202');
INSERT INTO `think_link_data` VALUES ('224', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '190', '1495624801');
INSERT INTO `think_link_data` VALUES ('225', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '628', '1495624801');
INSERT INTO `think_link_data` VALUES ('226', 'B01IHGKAPI', '27.99', '27.99', '4.1', '37', '', '134', '1495624801');
INSERT INTO `think_link_data` VALUES ('227', 'B01MQ4FKMQ', '0.00', '0.00', '4.0', '7', '', '2339', '1495624801');
INSERT INTO `think_link_data` VALUES ('228', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2798', '1495624801');
INSERT INTO `think_link_data` VALUES ('229', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '190', '1495625402');
INSERT INTO `think_link_data` VALUES ('230', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '628', '1495625402');
INSERT INTO `think_link_data` VALUES ('231', 'B01IHGKAPI', '27.99', '27.99', '4.1', '37', '', '134', '1495625402');
INSERT INTO `think_link_data` VALUES ('232', 'B01MQ4FKMQ', '0.00', '0.00', '4.0', '7', '', '2339', '1495625402');
INSERT INTO `think_link_data` VALUES ('233', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2798', '1495625402');
INSERT INTO `think_link_data` VALUES ('234', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '215', '1495626001');
INSERT INTO `think_link_data` VALUES ('235', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '628', '1495626001');
INSERT INTO `think_link_data` VALUES ('236', 'B01IHGKAPI', '27.99', '27.99', '4.1', '37', '', '134', '1495626001');
INSERT INTO `think_link_data` VALUES ('237', 'B01MQ4FKMQ', '0.00', '0.00', '4.0', '7', '', '2674', '1495626001');
INSERT INTO `think_link_data` VALUES ('238', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2953', '1495626001');
INSERT INTO `think_link_data` VALUES ('239', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '215', '1495626419');
INSERT INTO `think_link_data` VALUES ('240', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '739', '1495626419');
INSERT INTO `think_link_data` VALUES ('241', 'B01MQ4FKMQ', '0.00', '0.00', '4.0', '7', '', '2674', '1495626419');
INSERT INTO `think_link_data` VALUES ('242', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2953', '1495626419');
INSERT INTO `think_link_data` VALUES ('243', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '215', '1495626601');
INSERT INTO `think_link_data` VALUES ('244', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '739', '1495626601');
INSERT INTO `think_link_data` VALUES ('245', 'B01MQ4FKMQ', '0.00', '0.00', '4.0', '7', '', '2674', '1495626601');
INSERT INTO `think_link_data` VALUES ('246', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2953', '1495626601');
INSERT INTO `think_link_data` VALUES ('247', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '215', '1495627201');
INSERT INTO `think_link_data` VALUES ('248', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '739', '1495627201');
INSERT INTO `think_link_data` VALUES ('249', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2674', '1495627201');
INSERT INTO `think_link_data` VALUES ('250', 'B01JV6LT7G', '0.00', '0.00', '4.3', '32', '', '2953', '1495627201');
INSERT INTO `think_link_data` VALUES ('251', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '215', '1495627654');
INSERT INTO `think_link_data` VALUES ('252', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '739', '1495627654');
INSERT INTO `think_link_data` VALUES ('253', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2674', '1495627654');
INSERT INTO `think_link_data` VALUES ('254', 'B01JV6LT7G', '0.00', '0.00', '4.3', '32', '', '2953', '1495627654');
INSERT INTO `think_link_data` VALUES ('255', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '215', '1495627744');
INSERT INTO `think_link_data` VALUES ('256', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '739', '1495627744');
INSERT INTO `think_link_data` VALUES ('257', 'B00A7YHIQS', '26.47', '26.47', '0.0', '0', '', '70', '1495627744');
INSERT INTO `think_link_data` VALUES ('258', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2674', '1495627744');
INSERT INTO `think_link_data` VALUES ('259', 'B01JV6LT7G', '0.00', '0.00', '4.3', '32', '', '2953', '1495627744');
INSERT INTO `think_link_data` VALUES ('260', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '215', '1495627801');
INSERT INTO `think_link_data` VALUES ('261', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '739', '1495627801');
INSERT INTO `think_link_data` VALUES ('262', 'B00A7YHIQS', '26.47', '26.47', '0.0', '0', '', '70', '1495627801');
INSERT INTO `think_link_data` VALUES ('263', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2674', '1495627801');
INSERT INTO `think_link_data` VALUES ('264', 'B01JV6LT7G', '0.00', '0.00', '4.3', '32', '', '2953', '1495627801');
INSERT INTO `think_link_data` VALUES ('265', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '215', '1495628402');
INSERT INTO `think_link_data` VALUES ('266', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '739', '1495628402');
INSERT INTO `think_link_data` VALUES ('267', 'B00A7YHIQS', '26.47', '26.47', '0.0', '0', '', '70', '1495628402');
INSERT INTO `think_link_data` VALUES ('268', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2674', '1495628402');
INSERT INTO `think_link_data` VALUES ('269', 'B01JV6LT7G', '0.00', '0.00', '4.3', '32', '', '2953', '1495628402');
INSERT INTO `think_link_data` VALUES ('270', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '215', '1495629001');
INSERT INTO `think_link_data` VALUES ('271', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '739', '1495629001');
INSERT INTO `think_link_data` VALUES ('272', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '70', '1495629001');
INSERT INTO `think_link_data` VALUES ('273', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2674', '1495629001');
INSERT INTO `think_link_data` VALUES ('274', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2953', '1495629001');
INSERT INTO `think_link_data` VALUES ('275', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '215', '1495629601');
INSERT INTO `think_link_data` VALUES ('276', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '739', '1495629601');
INSERT INTO `think_link_data` VALUES ('277', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '70', '1495629601');
INSERT INTO `think_link_data` VALUES ('278', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2674', '1495629601');
INSERT INTO `think_link_data` VALUES ('279', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2953', '1495629601');
INSERT INTO `think_link_data` VALUES ('280', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '215', '1495630201');
INSERT INTO `think_link_data` VALUES ('281', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '739', '1495630201');
INSERT INTO `think_link_data` VALUES ('282', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '70', '1495630201');
INSERT INTO `think_link_data` VALUES ('283', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2674', '1495630201');
INSERT INTO `think_link_data` VALUES ('284', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2953', '1495630201');
INSERT INTO `think_link_data` VALUES ('285', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '215', '1495630801');
INSERT INTO `think_link_data` VALUES ('286', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '739', '1495630801');
INSERT INTO `think_link_data` VALUES ('287', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '70', '1495630801');
INSERT INTO `think_link_data` VALUES ('288', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2674', '1495630801');
INSERT INTO `think_link_data` VALUES ('289', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2953', '1495630801');
INSERT INTO `think_link_data` VALUES ('290', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '271', '1495631402');
INSERT INTO `think_link_data` VALUES ('291', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '967', '1495631402');
INSERT INTO `think_link_data` VALUES ('292', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '76', '1495631402');
INSERT INTO `think_link_data` VALUES ('293', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '843', '1495631402');
INSERT INTO `think_link_data` VALUES ('294', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '3344', '1495631402');
INSERT INTO `think_link_data` VALUES ('295', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '271', '1495632002');
INSERT INTO `think_link_data` VALUES ('296', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '967', '1495632002');
INSERT INTO `think_link_data` VALUES ('297', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '76', '1495632002');
INSERT INTO `think_link_data` VALUES ('298', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '843', '1495632002');
INSERT INTO `think_link_data` VALUES ('299', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '3344', '1495632002');
INSERT INTO `think_link_data` VALUES ('300', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '271', '1495632601');
INSERT INTO `think_link_data` VALUES ('301', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '967', '1495632601');
INSERT INTO `think_link_data` VALUES ('302', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '76', '1495632601');
INSERT INTO `think_link_data` VALUES ('303', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '843', '1495632601');
INSERT INTO `think_link_data` VALUES ('304', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '3344', '1495632601');
INSERT INTO `think_link_data` VALUES ('305', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '271', '1495633202');
INSERT INTO `think_link_data` VALUES ('306', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '967', '1495633202');
INSERT INTO `think_link_data` VALUES ('307', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '76', '1495633202');
INSERT INTO `think_link_data` VALUES ('308', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '843', '1495633202');
INSERT INTO `think_link_data` VALUES ('309', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '3344', '1495633202');
INSERT INTO `think_link_data` VALUES ('310', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '271', '1495633802');
INSERT INTO `think_link_data` VALUES ('311', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '967', '1495633802');
INSERT INTO `think_link_data` VALUES ('312', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '76', '1495633802');
INSERT INTO `think_link_data` VALUES ('313', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '843', '1495633802');
INSERT INTO `think_link_data` VALUES ('314', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '3344', '1495633802');
INSERT INTO `think_link_data` VALUES ('315', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '271', '1495634401');
INSERT INTO `think_link_data` VALUES ('316', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '967', '1495634401');
INSERT INTO `think_link_data` VALUES ('317', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '76', '1495634401');
INSERT INTO `think_link_data` VALUES ('318', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '843', '1495634401');
INSERT INTO `think_link_data` VALUES ('319', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '3344', '1495634401');
INSERT INTO `think_link_data` VALUES ('320', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '271', '1495635001');
INSERT INTO `think_link_data` VALUES ('321', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '967', '1495635001');
INSERT INTO `think_link_data` VALUES ('322', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '76', '1495635001');
INSERT INTO `think_link_data` VALUES ('323', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '843', '1495635001');
INSERT INTO `think_link_data` VALUES ('324', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '3344', '1495635001');
INSERT INTO `think_link_data` VALUES ('325', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '271', '1495635602');
INSERT INTO `think_link_data` VALUES ('326', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '967', '1495635602');
INSERT INTO `think_link_data` VALUES ('327', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '76', '1495635602');
INSERT INTO `think_link_data` VALUES ('328', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '843', '1495635602');
INSERT INTO `think_link_data` VALUES ('329', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '3344', '1495635602');
INSERT INTO `think_link_data` VALUES ('330', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '271', '1495636201');
INSERT INTO `think_link_data` VALUES ('331', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '967', '1495636201');
INSERT INTO `think_link_data` VALUES ('332', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '76', '1495636201');
INSERT INTO `think_link_data` VALUES ('333', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '843', '1495636201');
INSERT INTO `think_link_data` VALUES ('334', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '3344', '1495636201');
INSERT INTO `think_link_data` VALUES ('335', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '196', '1495636802');
INSERT INTO `think_link_data` VALUES ('336', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1128', '1495636802');
INSERT INTO `think_link_data` VALUES ('337', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '74', '1495636802');
INSERT INTO `think_link_data` VALUES ('338', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '843', '1495636802');
INSERT INTO `think_link_data` VALUES ('339', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '3600', '1495636802');
INSERT INTO `think_link_data` VALUES ('340', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '196', '1495637402');
INSERT INTO `think_link_data` VALUES ('341', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1128', '1495637402');
INSERT INTO `think_link_data` VALUES ('342', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '74', '1495637402');
INSERT INTO `think_link_data` VALUES ('343', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1008', '1495637402');
INSERT INTO `think_link_data` VALUES ('344', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '3600', '1495637402');
INSERT INTO `think_link_data` VALUES ('345', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '196', '1495638001');
INSERT INTO `think_link_data` VALUES ('346', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1128', '1495638001');
INSERT INTO `think_link_data` VALUES ('347', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '74', '1495638001');
INSERT INTO `think_link_data` VALUES ('348', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1008', '1495638001');
INSERT INTO `think_link_data` VALUES ('349', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '3600', '1495638001');
INSERT INTO `think_link_data` VALUES ('350', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '196', '1495638602');
INSERT INTO `think_link_data` VALUES ('351', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1128', '1495638602');
INSERT INTO `think_link_data` VALUES ('352', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '74', '1495638602');
INSERT INTO `think_link_data` VALUES ('353', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1008', '1495638602');
INSERT INTO `think_link_data` VALUES ('354', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '3600', '1495638602');
INSERT INTO `think_link_data` VALUES ('355', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '196', '1495639201');
INSERT INTO `think_link_data` VALUES ('356', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1128', '1495639201');
INSERT INTO `think_link_data` VALUES ('357', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '74', '1495639201');
INSERT INTO `think_link_data` VALUES ('358', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1008', '1495639201');
INSERT INTO `think_link_data` VALUES ('359', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '3600', '1495639201');
INSERT INTO `think_link_data` VALUES ('360', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '196', '1495639801');
INSERT INTO `think_link_data` VALUES ('361', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1128', '1495639801');
INSERT INTO `think_link_data` VALUES ('362', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '74', '1495639801');
INSERT INTO `think_link_data` VALUES ('363', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1008', '1495639801');
INSERT INTO `think_link_data` VALUES ('364', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '3600', '1495639801');
INSERT INTO `think_link_data` VALUES ('365', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '196', '1495640401');
INSERT INTO `think_link_data` VALUES ('366', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1128', '1495640401');
INSERT INTO `think_link_data` VALUES ('367', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '74', '1495640401');
INSERT INTO `think_link_data` VALUES ('368', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1008', '1495640401');
INSERT INTO `think_link_data` VALUES ('369', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '3600', '1495640401');
INSERT INTO `think_link_data` VALUES ('370', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '196', '1495641002');
INSERT INTO `think_link_data` VALUES ('371', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1128', '1495641002');
INSERT INTO `think_link_data` VALUES ('372', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '74', '1495641002');
INSERT INTO `think_link_data` VALUES ('373', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1008', '1495641002');
INSERT INTO `think_link_data` VALUES ('374', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '3600', '1495641002');
INSERT INTO `think_link_data` VALUES ('375', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '196', '1495641602');
INSERT INTO `think_link_data` VALUES ('376', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1128', '1495641602');
INSERT INTO `think_link_data` VALUES ('377', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '74', '1495641602');
INSERT INTO `think_link_data` VALUES ('378', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1008', '1495641602');
INSERT INTO `think_link_data` VALUES ('379', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '3600', '1495641602');
INSERT INTO `think_link_data` VALUES ('380', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '264', '1495642201');
INSERT INTO `think_link_data` VALUES ('381', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '602', '1495642201');
INSERT INTO `think_link_data` VALUES ('382', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '74', '1495642201');
INSERT INTO `think_link_data` VALUES ('383', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1285', '1495642201');
INSERT INTO `think_link_data` VALUES ('384', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '955', '1495642201');
INSERT INTO `think_link_data` VALUES ('385', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '264', '1495642801');
INSERT INTO `think_link_data` VALUES ('386', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '602', '1495642801');
INSERT INTO `think_link_data` VALUES ('387', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '38', '1495642801');
INSERT INTO `think_link_data` VALUES ('388', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1285', '1495642801');
INSERT INTO `think_link_data` VALUES ('389', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '955', '1495642801');
INSERT INTO `think_link_data` VALUES ('390', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '264', '1495643402');
INSERT INTO `think_link_data` VALUES ('391', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '602', '1495643402');
INSERT INTO `think_link_data` VALUES ('392', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '38', '1495643402');
INSERT INTO `think_link_data` VALUES ('393', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1285', '1495643402');
INSERT INTO `think_link_data` VALUES ('394', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '955', '1495643402');
INSERT INTO `think_link_data` VALUES ('395', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '264', '1495644001');
INSERT INTO `think_link_data` VALUES ('396', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '602', '1495644001');
INSERT INTO `think_link_data` VALUES ('397', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '38', '1495644001');
INSERT INTO `think_link_data` VALUES ('398', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1285', '1495644001');
INSERT INTO `think_link_data` VALUES ('399', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '955', '1495644001');
INSERT INTO `think_link_data` VALUES ('400', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '264', '1495644602');
INSERT INTO `think_link_data` VALUES ('401', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '602', '1495644602');
INSERT INTO `think_link_data` VALUES ('402', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '38', '1495644602');
INSERT INTO `think_link_data` VALUES ('403', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1285', '1495644602');
INSERT INTO `think_link_data` VALUES ('404', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '955', '1495644602');
INSERT INTO `think_link_data` VALUES ('405', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '264', '1495645201');
INSERT INTO `think_link_data` VALUES ('406', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '602', '1495645201');
INSERT INTO `think_link_data` VALUES ('407', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '38', '1495645201');
INSERT INTO `think_link_data` VALUES ('408', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1285', '1495645201');
INSERT INTO `think_link_data` VALUES ('409', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '955', '1495645201');
INSERT INTO `think_link_data` VALUES ('410', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '264', '1495645801');
INSERT INTO `think_link_data` VALUES ('411', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '602', '1495645801');
INSERT INTO `think_link_data` VALUES ('412', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '38', '1495645801');
INSERT INTO `think_link_data` VALUES ('413', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1285', '1495645801');
INSERT INTO `think_link_data` VALUES ('414', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '955', '1495645801');
INSERT INTO `think_link_data` VALUES ('415', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '264', '1495646401');
INSERT INTO `think_link_data` VALUES ('416', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '602', '1495646401');
INSERT INTO `think_link_data` VALUES ('417', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '38', '1495646401');
INSERT INTO `think_link_data` VALUES ('418', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1285', '1495646401');
INSERT INTO `think_link_data` VALUES ('419', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '955', '1495646401');
INSERT INTO `think_link_data` VALUES ('420', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '264', '1495647002');
INSERT INTO `think_link_data` VALUES ('421', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '602', '1495647002');
INSERT INTO `think_link_data` VALUES ('422', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '38', '1495647002');
INSERT INTO `think_link_data` VALUES ('423', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1285', '1495647002');
INSERT INTO `think_link_data` VALUES ('424', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '955', '1495647002');
INSERT INTO `think_link_data` VALUES ('425', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '279', '1495647601');
INSERT INTO `think_link_data` VALUES ('426', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '602', '1495647601');
INSERT INTO `think_link_data` VALUES ('427', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '38', '1495647601');
INSERT INTO `think_link_data` VALUES ('428', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1285', '1495647601');
INSERT INTO `think_link_data` VALUES ('429', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '955', '1495647601');
INSERT INTO `think_link_data` VALUES ('430', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '279', '1495648201');
INSERT INTO `think_link_data` VALUES ('431', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '602', '1495648201');
INSERT INTO `think_link_data` VALUES ('432', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '38', '1495648201');
INSERT INTO `think_link_data` VALUES ('433', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1447', '1495648201');
INSERT INTO `think_link_data` VALUES ('434', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '955', '1495648201');
INSERT INTO `think_link_data` VALUES ('435', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '279', '1495648802');
INSERT INTO `think_link_data` VALUES ('436', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '676', '1495648802');
INSERT INTO `think_link_data` VALUES ('437', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '51', '1495648802');
INSERT INTO `think_link_data` VALUES ('438', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1447', '1495648802');
INSERT INTO `think_link_data` VALUES ('439', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1059', '1495648802');
INSERT INTO `think_link_data` VALUES ('440', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '279', '1495649401');
INSERT INTO `think_link_data` VALUES ('441', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '676', '1495649401');
INSERT INTO `think_link_data` VALUES ('442', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '51', '1495649401');
INSERT INTO `think_link_data` VALUES ('443', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1447', '1495649401');
INSERT INTO `think_link_data` VALUES ('444', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1059', '1495649401');
INSERT INTO `think_link_data` VALUES ('445', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '279', '1495650001');
INSERT INTO `think_link_data` VALUES ('446', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '676', '1495650001');
INSERT INTO `think_link_data` VALUES ('447', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '51', '1495650001');
INSERT INTO `think_link_data` VALUES ('448', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1447', '1495650001');
INSERT INTO `think_link_data` VALUES ('449', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1059', '1495650001');
INSERT INTO `think_link_data` VALUES ('450', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '279', '1495650602');
INSERT INTO `think_link_data` VALUES ('451', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '676', '1495650602');
INSERT INTO `think_link_data` VALUES ('452', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '51', '1495650602');
INSERT INTO `think_link_data` VALUES ('453', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1447', '1495650602');
INSERT INTO `think_link_data` VALUES ('454', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1059', '1495650602');
INSERT INTO `think_link_data` VALUES ('455', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '279', '1495651201');
INSERT INTO `think_link_data` VALUES ('456', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '676', '1495651201');
INSERT INTO `think_link_data` VALUES ('457', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '51', '1495651201');
INSERT INTO `think_link_data` VALUES ('458', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1447', '1495651201');
INSERT INTO `think_link_data` VALUES ('459', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1059', '1495651201');
INSERT INTO `think_link_data` VALUES ('460', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '279', '1495651801');
INSERT INTO `think_link_data` VALUES ('461', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '676', '1495651801');
INSERT INTO `think_link_data` VALUES ('462', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '51', '1495651801');
INSERT INTO `think_link_data` VALUES ('463', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1447', '1495651801');
INSERT INTO `think_link_data` VALUES ('464', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1059', '1495651801');
INSERT INTO `think_link_data` VALUES ('465', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '279', '1495652401');
INSERT INTO `think_link_data` VALUES ('466', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '676', '1495652401');
INSERT INTO `think_link_data` VALUES ('467', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '51', '1495652401');
INSERT INTO `think_link_data` VALUES ('468', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1447', '1495652401');
INSERT INTO `think_link_data` VALUES ('469', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1059', '1495652401');
INSERT INTO `think_link_data` VALUES ('470', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '323', '1495653001');
INSERT INTO `think_link_data` VALUES ('471', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '676', '1495653001');
INSERT INTO `think_link_data` VALUES ('472', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '51', '1495653001');
INSERT INTO `think_link_data` VALUES ('473', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1447', '1495653001');
INSERT INTO `think_link_data` VALUES ('474', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1059', '1495653001');
INSERT INTO `think_link_data` VALUES ('475', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '323', '1495653601');
INSERT INTO `think_link_data` VALUES ('476', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '835', '1495653601');
INSERT INTO `think_link_data` VALUES ('477', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '56', '1495653601');
INSERT INTO `think_link_data` VALUES ('478', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1795', '1495653601');
INSERT INTO `think_link_data` VALUES ('479', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1256', '1495653601');
INSERT INTO `think_link_data` VALUES ('480', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '323', '1495654201');
INSERT INTO `think_link_data` VALUES ('481', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '835', '1495654201');
INSERT INTO `think_link_data` VALUES ('482', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '56', '1495654201');
INSERT INTO `think_link_data` VALUES ('483', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1795', '1495654201');
INSERT INTO `think_link_data` VALUES ('484', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1256', '1495654201');
INSERT INTO `think_link_data` VALUES ('485', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '323', '1495654801');
INSERT INTO `think_link_data` VALUES ('486', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '835', '1495654801');
INSERT INTO `think_link_data` VALUES ('487', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '56', '1495654801');
INSERT INTO `think_link_data` VALUES ('488', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1795', '1495654801');
INSERT INTO `think_link_data` VALUES ('489', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1256', '1495654801');
INSERT INTO `think_link_data` VALUES ('490', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '323', '1495655401');
INSERT INTO `think_link_data` VALUES ('491', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '835', '1495655401');
INSERT INTO `think_link_data` VALUES ('492', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '56', '1495655401');
INSERT INTO `think_link_data` VALUES ('493', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1795', '1495655401');
INSERT INTO `think_link_data` VALUES ('494', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1256', '1495655401');
INSERT INTO `think_link_data` VALUES ('495', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '323', '1495656001');
INSERT INTO `think_link_data` VALUES ('496', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '835', '1495656001');
INSERT INTO `think_link_data` VALUES ('497', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '56', '1495656001');
INSERT INTO `think_link_data` VALUES ('498', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1795', '1495656001');
INSERT INTO `think_link_data` VALUES ('499', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1256', '1495656001');
INSERT INTO `think_link_data` VALUES ('500', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '323', '1495656601');
INSERT INTO `think_link_data` VALUES ('501', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '835', '1495656601');
INSERT INTO `think_link_data` VALUES ('502', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '56', '1495656601');
INSERT INTO `think_link_data` VALUES ('503', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1795', '1495656601');
INSERT INTO `think_link_data` VALUES ('504', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1256', '1495656601');
INSERT INTO `think_link_data` VALUES ('505', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '323', '1495657201');
INSERT INTO `think_link_data` VALUES ('506', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '835', '1495657201');
INSERT INTO `think_link_data` VALUES ('507', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '56', '1495657201');
INSERT INTO `think_link_data` VALUES ('508', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1795', '1495657201');
INSERT INTO `think_link_data` VALUES ('509', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1256', '1495657201');
INSERT INTO `think_link_data` VALUES ('510', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '323', '1495657801');
INSERT INTO `think_link_data` VALUES ('511', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '835', '1495657801');
INSERT INTO `think_link_data` VALUES ('512', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '56', '1495657801');
INSERT INTO `think_link_data` VALUES ('513', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '1795', '1495657801');
INSERT INTO `think_link_data` VALUES ('514', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1256', '1495657801');
INSERT INTO `think_link_data` VALUES ('515', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '359', '1495658401');
INSERT INTO `think_link_data` VALUES ('516', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '835', '1495658401');
INSERT INTO `think_link_data` VALUES ('517', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '71', '1495658401');
INSERT INTO `think_link_data` VALUES ('518', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2096', '1495658401');
INSERT INTO `think_link_data` VALUES ('519', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '593', '1495658401');
INSERT INTO `think_link_data` VALUES ('520', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '359', '1495659002');
INSERT INTO `think_link_data` VALUES ('521', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '920', '1495659002');
INSERT INTO `think_link_data` VALUES ('522', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '71', '1495659002');
INSERT INTO `think_link_data` VALUES ('523', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2096', '1495659002');
INSERT INTO `think_link_data` VALUES ('524', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '593', '1495659002');
INSERT INTO `think_link_data` VALUES ('525', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '359', '1495659601');
INSERT INTO `think_link_data` VALUES ('526', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '920', '1495659601');
INSERT INTO `think_link_data` VALUES ('527', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '71', '1495659601');
INSERT INTO `think_link_data` VALUES ('528', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2096', '1495659601');
INSERT INTO `think_link_data` VALUES ('529', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '593', '1495659601');
INSERT INTO `think_link_data` VALUES ('530', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '359', '1495660201');
INSERT INTO `think_link_data` VALUES ('531', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '920', '1495660201');
INSERT INTO `think_link_data` VALUES ('532', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '71', '1495660201');
INSERT INTO `think_link_data` VALUES ('533', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2096', '1495660201');
INSERT INTO `think_link_data` VALUES ('534', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '593', '1495660201');
INSERT INTO `think_link_data` VALUES ('535', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '359', '1495660801');
INSERT INTO `think_link_data` VALUES ('536', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '920', '1495660801');
INSERT INTO `think_link_data` VALUES ('537', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '71', '1495660801');
INSERT INTO `think_link_data` VALUES ('538', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2096', '1495660801');
INSERT INTO `think_link_data` VALUES ('539', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '593', '1495660801');
INSERT INTO `think_link_data` VALUES ('540', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '359', '1495661401');
INSERT INTO `think_link_data` VALUES ('541', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '920', '1495661401');
INSERT INTO `think_link_data` VALUES ('542', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '71', '1495661401');
INSERT INTO `think_link_data` VALUES ('543', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2096', '1495661401');
INSERT INTO `think_link_data` VALUES ('544', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '593', '1495661401');
INSERT INTO `think_link_data` VALUES ('545', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '359', '1495662001');
INSERT INTO `think_link_data` VALUES ('546', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '920', '1495662001');
INSERT INTO `think_link_data` VALUES ('547', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '71', '1495662001');
INSERT INTO `think_link_data` VALUES ('548', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2096', '1495662001');
INSERT INTO `think_link_data` VALUES ('549', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '593', '1495662001');
INSERT INTO `think_link_data` VALUES ('550', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '359', '1495662601');
INSERT INTO `think_link_data` VALUES ('551', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '920', '1495662601');
INSERT INTO `think_link_data` VALUES ('552', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '71', '1495662601');
INSERT INTO `think_link_data` VALUES ('553', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2096', '1495662601');
INSERT INTO `think_link_data` VALUES ('554', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '593', '1495662601');
INSERT INTO `think_link_data` VALUES ('555', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '359', '1495663201');
INSERT INTO `think_link_data` VALUES ('556', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '920', '1495663201');
INSERT INTO `think_link_data` VALUES ('557', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '71', '1495663201');
INSERT INTO `think_link_data` VALUES ('558', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2096', '1495663201');
INSERT INTO `think_link_data` VALUES ('559', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '593', '1495663201');
INSERT INTO `think_link_data` VALUES ('560', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '359', '1495663801');
INSERT INTO `think_link_data` VALUES ('561', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '534', '1495663801');
INSERT INTO `think_link_data` VALUES ('562', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '71', '1495663801');
INSERT INTO `think_link_data` VALUES ('563', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2096', '1495663801');
INSERT INTO `think_link_data` VALUES ('564', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '593', '1495663801');
INSERT INTO `think_link_data` VALUES ('565', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '446', '1495664401');
INSERT INTO `think_link_data` VALUES ('566', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '534', '1495664401');
INSERT INTO `think_link_data` VALUES ('567', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '65', '1495664401');
INSERT INTO `think_link_data` VALUES ('568', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2497', '1495664401');
INSERT INTO `think_link_data` VALUES ('569', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1762', '1495664401');
INSERT INTO `think_link_data` VALUES ('570', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '446', '1495665001');
INSERT INTO `think_link_data` VALUES ('571', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '534', '1495665001');
INSERT INTO `think_link_data` VALUES ('572', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '65', '1495665001');
INSERT INTO `think_link_data` VALUES ('573', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2497', '1495665001');
INSERT INTO `think_link_data` VALUES ('574', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1762', '1495665001');
INSERT INTO `think_link_data` VALUES ('575', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '446', '1495665601');
INSERT INTO `think_link_data` VALUES ('576', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '534', '1495665601');
INSERT INTO `think_link_data` VALUES ('577', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '65', '1495665601');
INSERT INTO `think_link_data` VALUES ('578', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2497', '1495665601');
INSERT INTO `think_link_data` VALUES ('579', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1762', '1495665601');
INSERT INTO `think_link_data` VALUES ('580', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '446', '1495666202');
INSERT INTO `think_link_data` VALUES ('581', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '534', '1495666202');
INSERT INTO `think_link_data` VALUES ('582', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '65', '1495666202');
INSERT INTO `think_link_data` VALUES ('583', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2497', '1495666202');
INSERT INTO `think_link_data` VALUES ('584', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1762', '1495666202');
INSERT INTO `think_link_data` VALUES ('585', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '446', '1495666801');
INSERT INTO `think_link_data` VALUES ('586', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '534', '1495666801');
INSERT INTO `think_link_data` VALUES ('587', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '65', '1495666801');
INSERT INTO `think_link_data` VALUES ('588', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2497', '1495666801');
INSERT INTO `think_link_data` VALUES ('589', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1762', '1495666801');
INSERT INTO `think_link_data` VALUES ('590', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '446', '1495667401');
INSERT INTO `think_link_data` VALUES ('591', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '534', '1495667401');
INSERT INTO `think_link_data` VALUES ('592', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '65', '1495667401');
INSERT INTO `think_link_data` VALUES ('593', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2497', '1495667401');
INSERT INTO `think_link_data` VALUES ('594', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1762', '1495667401');
INSERT INTO `think_link_data` VALUES ('595', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '446', '1495668001');
INSERT INTO `think_link_data` VALUES ('596', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '534', '1495668001');
INSERT INTO `think_link_data` VALUES ('597', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '65', '1495668001');
INSERT INTO `think_link_data` VALUES ('598', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2497', '1495668001');
INSERT INTO `think_link_data` VALUES ('599', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1762', '1495668001');
INSERT INTO `think_link_data` VALUES ('600', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '446', '1495668601');
INSERT INTO `think_link_data` VALUES ('601', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '534', '1495668601');
INSERT INTO `think_link_data` VALUES ('602', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '65', '1495668601');
INSERT INTO `think_link_data` VALUES ('603', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2497', '1495668601');
INSERT INTO `think_link_data` VALUES ('604', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1762', '1495668601');
INSERT INTO `think_link_data` VALUES ('605', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '295', '1495669202');
INSERT INTO `think_link_data` VALUES ('606', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '534', '1495669202');
INSERT INTO `think_link_data` VALUES ('607', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '30', '1495669202');
INSERT INTO `think_link_data` VALUES ('608', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2811', '1495669202');
INSERT INTO `think_link_data` VALUES ('609', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1762', '1495669202');
INSERT INTO `think_link_data` VALUES ('610', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '295', '1495669801');
INSERT INTO `think_link_data` VALUES ('611', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '610', '1495669801');
INSERT INTO `think_link_data` VALUES ('612', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '30', '1495669801');
INSERT INTO `think_link_data` VALUES ('613', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2811', '1495669801');
INSERT INTO `think_link_data` VALUES ('614', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2006', '1495669801');
INSERT INTO `think_link_data` VALUES ('615', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '295', '1495670401');
INSERT INTO `think_link_data` VALUES ('616', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '610', '1495670401');
INSERT INTO `think_link_data` VALUES ('617', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '30', '1495670401');
INSERT INTO `think_link_data` VALUES ('618', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2811', '1495670401');
INSERT INTO `think_link_data` VALUES ('619', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2006', '1495670401');
INSERT INTO `think_link_data` VALUES ('620', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '295', '1495671002');
INSERT INTO `think_link_data` VALUES ('621', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '610', '1495671002');
INSERT INTO `think_link_data` VALUES ('622', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '30', '1495671002');
INSERT INTO `think_link_data` VALUES ('623', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2811', '1495671002');
INSERT INTO `think_link_data` VALUES ('624', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2006', '1495671002');
INSERT INTO `think_link_data` VALUES ('625', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '295', '1495671602');
INSERT INTO `think_link_data` VALUES ('626', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '610', '1495671602');
INSERT INTO `think_link_data` VALUES ('627', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '30', '1495671602');
INSERT INTO `think_link_data` VALUES ('628', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2811', '1495671602');
INSERT INTO `think_link_data` VALUES ('629', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2006', '1495671602');
INSERT INTO `think_link_data` VALUES ('630', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '295', '1495672202');
INSERT INTO `think_link_data` VALUES ('631', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '610', '1495672202');
INSERT INTO `think_link_data` VALUES ('632', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '30', '1495672202');
INSERT INTO `think_link_data` VALUES ('633', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2811', '1495672202');
INSERT INTO `think_link_data` VALUES ('634', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2006', '1495672202');
INSERT INTO `think_link_data` VALUES ('635', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '295', '1495672801');
INSERT INTO `think_link_data` VALUES ('636', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '610', '1495672801');
INSERT INTO `think_link_data` VALUES ('637', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '30', '1495672801');
INSERT INTO `think_link_data` VALUES ('638', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2811', '1495672801');
INSERT INTO `think_link_data` VALUES ('639', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2006', '1495672801');
INSERT INTO `think_link_data` VALUES ('640', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '295', '1495673401');
INSERT INTO `think_link_data` VALUES ('641', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '610', '1495673401');
INSERT INTO `think_link_data` VALUES ('642', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '30', '1495673401');
INSERT INTO `think_link_data` VALUES ('643', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2811', '1495673401');
INSERT INTO `think_link_data` VALUES ('644', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2006', '1495673401');
INSERT INTO `think_link_data` VALUES ('645', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '295', '1495674001');
INSERT INTO `think_link_data` VALUES ('646', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '610', '1495674001');
INSERT INTO `think_link_data` VALUES ('647', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '30', '1495674001');
INSERT INTO `think_link_data` VALUES ('648', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2811', '1495674001');
INSERT INTO `think_link_data` VALUES ('649', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2006', '1495674001');
INSERT INTO `think_link_data` VALUES ('650', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '321', '1495674601');
INSERT INTO `think_link_data` VALUES ('651', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '704', '1495674601');
INSERT INTO `think_link_data` VALUES ('652', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495674601');
INSERT INTO `think_link_data` VALUES ('653', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2811', '1495674601');
INSERT INTO `think_link_data` VALUES ('654', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2230', '1495674601');
INSERT INTO `think_link_data` VALUES ('655', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '321', '1495675201');
INSERT INTO `think_link_data` VALUES ('656', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '704', '1495675201');
INSERT INTO `think_link_data` VALUES ('657', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495675201');
INSERT INTO `think_link_data` VALUES ('658', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3068', '1495675201');
INSERT INTO `think_link_data` VALUES ('659', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2230', '1495675201');
INSERT INTO `think_link_data` VALUES ('660', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '321', '1495675801');
INSERT INTO `think_link_data` VALUES ('661', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '704', '1495675801');
INSERT INTO `think_link_data` VALUES ('662', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495675801');
INSERT INTO `think_link_data` VALUES ('663', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3068', '1495675801');
INSERT INTO `think_link_data` VALUES ('664', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2230', '1495675801');
INSERT INTO `think_link_data` VALUES ('665', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '321', '1495676402');
INSERT INTO `think_link_data` VALUES ('666', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '704', '1495676402');
INSERT INTO `think_link_data` VALUES ('667', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495676402');
INSERT INTO `think_link_data` VALUES ('668', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3068', '1495676402');
INSERT INTO `think_link_data` VALUES ('669', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2230', '1495676402');
INSERT INTO `think_link_data` VALUES ('670', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '321', '1495677001');
INSERT INTO `think_link_data` VALUES ('671', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '704', '1495677001');
INSERT INTO `think_link_data` VALUES ('672', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495677001');
INSERT INTO `think_link_data` VALUES ('673', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3068', '1495677001');
INSERT INTO `think_link_data` VALUES ('674', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2230', '1495677001');
INSERT INTO `think_link_data` VALUES ('675', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '321', '1495677602');
INSERT INTO `think_link_data` VALUES ('676', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '704', '1495677602');
INSERT INTO `think_link_data` VALUES ('677', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495677602');
INSERT INTO `think_link_data` VALUES ('678', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3068', '1495677602');
INSERT INTO `think_link_data` VALUES ('679', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2230', '1495677602');
INSERT INTO `think_link_data` VALUES ('680', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '321', '1495678202');
INSERT INTO `think_link_data` VALUES ('681', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '704', '1495678202');
INSERT INTO `think_link_data` VALUES ('682', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495678202');
INSERT INTO `think_link_data` VALUES ('683', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3068', '1495678202');
INSERT INTO `think_link_data` VALUES ('684', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2230', '1495678202');
INSERT INTO `think_link_data` VALUES ('685', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '321', '1495678801');
INSERT INTO `think_link_data` VALUES ('686', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '704', '1495678801');
INSERT INTO `think_link_data` VALUES ('687', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495678801');
INSERT INTO `think_link_data` VALUES ('688', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3068', '1495678801');
INSERT INTO `think_link_data` VALUES ('689', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2230', '1495678801');
INSERT INTO `think_link_data` VALUES ('690', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '321', '1495679401');
INSERT INTO `think_link_data` VALUES ('691', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '704', '1495679401');
INSERT INTO `think_link_data` VALUES ('692', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495679401');
INSERT INTO `think_link_data` VALUES ('693', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3068', '1495679401');
INSERT INTO `think_link_data` VALUES ('694', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2230', '1495679401');
INSERT INTO `think_link_data` VALUES ('695', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '321', '1495680002');
INSERT INTO `think_link_data` VALUES ('696', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '704', '1495680002');
INSERT INTO `think_link_data` VALUES ('697', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495680002');
INSERT INTO `think_link_data` VALUES ('698', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3008', '1495680002');
INSERT INTO `think_link_data` VALUES ('699', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2230', '1495680002');
INSERT INTO `think_link_data` VALUES ('700', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '320', '1495680603');
INSERT INTO `think_link_data` VALUES ('701', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '709', '1495680603');
INSERT INTO `think_link_data` VALUES ('702', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495680603');
INSERT INTO `think_link_data` VALUES ('703', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3008', '1495680603');
INSERT INTO `think_link_data` VALUES ('704', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2132', '1495680603');
INSERT INTO `think_link_data` VALUES ('705', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '320', '1495681207');
INSERT INTO `think_link_data` VALUES ('706', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '709', '1495681207');
INSERT INTO `think_link_data` VALUES ('707', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495681207');
INSERT INTO `think_link_data` VALUES ('708', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3008', '1495681207');
INSERT INTO `think_link_data` VALUES ('709', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2132', '1495681207');
INSERT INTO `think_link_data` VALUES ('710', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '320', '1495681802');
INSERT INTO `think_link_data` VALUES ('711', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '709', '1495681802');
INSERT INTO `think_link_data` VALUES ('712', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495681802');
INSERT INTO `think_link_data` VALUES ('713', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3008', '1495681802');
INSERT INTO `think_link_data` VALUES ('714', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2132', '1495681802');
INSERT INTO `think_link_data` VALUES ('715', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '320', '1495682402');
INSERT INTO `think_link_data` VALUES ('716', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '709', '1495682402');
INSERT INTO `think_link_data` VALUES ('717', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495682402');
INSERT INTO `think_link_data` VALUES ('718', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3008', '1495682402');
INSERT INTO `think_link_data` VALUES ('719', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2132', '1495682402');
INSERT INTO `think_link_data` VALUES ('720', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '320', '1495683001');
INSERT INTO `think_link_data` VALUES ('721', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '709', '1495683001');
INSERT INTO `think_link_data` VALUES ('722', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495683001');
INSERT INTO `think_link_data` VALUES ('723', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3008', '1495683001');
INSERT INTO `think_link_data` VALUES ('724', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2132', '1495683001');
INSERT INTO `think_link_data` VALUES ('725', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '320', '1495683602');
INSERT INTO `think_link_data` VALUES ('726', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '709', '1495683602');
INSERT INTO `think_link_data` VALUES ('727', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495683602');
INSERT INTO `think_link_data` VALUES ('728', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3008', '1495683602');
INSERT INTO `think_link_data` VALUES ('729', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2132', '1495683602');
INSERT INTO `think_link_data` VALUES ('730', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '320', '1495684202');
INSERT INTO `think_link_data` VALUES ('731', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '709', '1495684202');
INSERT INTO `think_link_data` VALUES ('732', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495684202');
INSERT INTO `think_link_data` VALUES ('733', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3008', '1495684202');
INSERT INTO `think_link_data` VALUES ('734', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2132', '1495684202');
INSERT INTO `think_link_data` VALUES ('735', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '320', '1495684801');
INSERT INTO `think_link_data` VALUES ('736', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '709', '1495684801');
INSERT INTO `think_link_data` VALUES ('737', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495684801');
INSERT INTO `think_link_data` VALUES ('738', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3008', '1495684801');
INSERT INTO `think_link_data` VALUES ('739', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2132', '1495684801');
INSERT INTO `think_link_data` VALUES ('740', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '320', '1495685402');
INSERT INTO `think_link_data` VALUES ('741', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '709', '1495685402');
INSERT INTO `think_link_data` VALUES ('742', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495685402');
INSERT INTO `think_link_data` VALUES ('743', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3008', '1495685402');
INSERT INTO `think_link_data` VALUES ('744', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2128', '1495685402');
INSERT INTO `think_link_data` VALUES ('745', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '315', '1495686001');
INSERT INTO `think_link_data` VALUES ('746', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '721', '1495686001');
INSERT INTO `think_link_data` VALUES ('747', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '28', '1495686001');
INSERT INTO `think_link_data` VALUES ('748', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3073', '1495686001');
INSERT INTO `think_link_data` VALUES ('749', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2128', '1495686001');
INSERT INTO `think_link_data` VALUES ('750', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '315', '1495686602');
INSERT INTO `think_link_data` VALUES ('751', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '721', '1495686602');
INSERT INTO `think_link_data` VALUES ('752', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '28', '1495686602');
INSERT INTO `think_link_data` VALUES ('753', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3073', '1495686602');
INSERT INTO `think_link_data` VALUES ('754', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2128', '1495686602');
INSERT INTO `think_link_data` VALUES ('755', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '315', '1495687202');
INSERT INTO `think_link_data` VALUES ('756', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '721', '1495687202');
INSERT INTO `think_link_data` VALUES ('757', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '28', '1495687202');
INSERT INTO `think_link_data` VALUES ('758', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3073', '1495687202');
INSERT INTO `think_link_data` VALUES ('759', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2128', '1495687202');
INSERT INTO `think_link_data` VALUES ('760', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '315', '1495687801');
INSERT INTO `think_link_data` VALUES ('761', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '721', '1495687801');
INSERT INTO `think_link_data` VALUES ('762', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '28', '1495687801');
INSERT INTO `think_link_data` VALUES ('763', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3073', '1495687801');
INSERT INTO `think_link_data` VALUES ('764', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2128', '1495687801');
INSERT INTO `think_link_data` VALUES ('765', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '315', '1495688401');
INSERT INTO `think_link_data` VALUES ('766', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '721', '1495688401');
INSERT INTO `think_link_data` VALUES ('767', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '28', '1495688401');
INSERT INTO `think_link_data` VALUES ('768', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3073', '1495688401');
INSERT INTO `think_link_data` VALUES ('769', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2128', '1495688401');
INSERT INTO `think_link_data` VALUES ('770', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '315', '1495689001');
INSERT INTO `think_link_data` VALUES ('771', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '721', '1495689001');
INSERT INTO `think_link_data` VALUES ('772', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '28', '1495689001');
INSERT INTO `think_link_data` VALUES ('773', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3073', '1495689001');
INSERT INTO `think_link_data` VALUES ('774', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2128', '1495689001');
INSERT INTO `think_link_data` VALUES ('775', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '315', '1495689601');
INSERT INTO `think_link_data` VALUES ('776', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '721', '1495689601');
INSERT INTO `think_link_data` VALUES ('777', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '28', '1495689601');
INSERT INTO `think_link_data` VALUES ('778', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3073', '1495689601');
INSERT INTO `think_link_data` VALUES ('779', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2128', '1495689601');
INSERT INTO `think_link_data` VALUES ('780', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '315', '1495690201');
INSERT INTO `think_link_data` VALUES ('781', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '721', '1495690201');
INSERT INTO `think_link_data` VALUES ('782', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '28', '1495690201');
INSERT INTO `think_link_data` VALUES ('783', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3073', '1495690201');
INSERT INTO `think_link_data` VALUES ('784', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2128', '1495690201');
INSERT INTO `think_link_data` VALUES ('785', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '315', '1495690801');
INSERT INTO `think_link_data` VALUES ('786', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '715', '1495690801');
INSERT INTO `think_link_data` VALUES ('787', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '29', '1495690801');
INSERT INTO `think_link_data` VALUES ('788', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3073', '1495690801');
INSERT INTO `think_link_data` VALUES ('789', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2036', '1495690801');
INSERT INTO `think_link_data` VALUES ('790', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '311', '1495691401');
INSERT INTO `think_link_data` VALUES ('791', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '715', '1495691401');
INSERT INTO `think_link_data` VALUES ('792', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '29', '1495691401');
INSERT INTO `think_link_data` VALUES ('793', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3018', '1495691401');
INSERT INTO `think_link_data` VALUES ('794', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2036', '1495691401');
INSERT INTO `think_link_data` VALUES ('795', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '311', '1495692001');
INSERT INTO `think_link_data` VALUES ('796', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '715', '1495692001');
INSERT INTO `think_link_data` VALUES ('797', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '29', '1495692001');
INSERT INTO `think_link_data` VALUES ('798', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3018', '1495692001');
INSERT INTO `think_link_data` VALUES ('799', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2036', '1495692001');
INSERT INTO `think_link_data` VALUES ('800', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '311', '1495692602');
INSERT INTO `think_link_data` VALUES ('801', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '715', '1495692602');
INSERT INTO `think_link_data` VALUES ('802', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '29', '1495692602');
INSERT INTO `think_link_data` VALUES ('803', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3018', '1495692602');
INSERT INTO `think_link_data` VALUES ('804', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2036', '1495692602');
INSERT INTO `think_link_data` VALUES ('805', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '311', '1495693202');
INSERT INTO `think_link_data` VALUES ('806', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '715', '1495693202');
INSERT INTO `think_link_data` VALUES ('807', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '29', '1495693202');
INSERT INTO `think_link_data` VALUES ('808', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3018', '1495693202');
INSERT INTO `think_link_data` VALUES ('809', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2036', '1495693202');
INSERT INTO `think_link_data` VALUES ('810', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '311', '1495693801');
INSERT INTO `think_link_data` VALUES ('811', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '715', '1495693801');
INSERT INTO `think_link_data` VALUES ('812', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '29', '1495693801');
INSERT INTO `think_link_data` VALUES ('813', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3018', '1495693801');
INSERT INTO `think_link_data` VALUES ('814', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2036', '1495693801');
INSERT INTO `think_link_data` VALUES ('815', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '311', '1495694402');
INSERT INTO `think_link_data` VALUES ('816', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '715', '1495694402');
INSERT INTO `think_link_data` VALUES ('817', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '29', '1495694402');
INSERT INTO `think_link_data` VALUES ('818', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3018', '1495694402');
INSERT INTO `think_link_data` VALUES ('819', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2036', '1495694402');
INSERT INTO `think_link_data` VALUES ('820', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495695001');
INSERT INTO `think_link_data` VALUES ('821', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '715', '1495695001');
INSERT INTO `think_link_data` VALUES ('822', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495695001');
INSERT INTO `think_link_data` VALUES ('823', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495695001');
INSERT INTO `think_link_data` VALUES ('824', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495695001');
INSERT INTO `think_link_data` VALUES ('825', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495695601');
INSERT INTO `think_link_data` VALUES ('826', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495695601');
INSERT INTO `think_link_data` VALUES ('827', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495695601');
INSERT INTO `think_link_data` VALUES ('828', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3018', '1495695601');
INSERT INTO `think_link_data` VALUES ('829', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495695601');
INSERT INTO `think_link_data` VALUES ('830', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '315', '1495696201');
INSERT INTO `think_link_data` VALUES ('831', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495696201');
INSERT INTO `think_link_data` VALUES ('832', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495696201');
INSERT INTO `think_link_data` VALUES ('833', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495696201');
INSERT INTO `think_link_data` VALUES ('834', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '2036', '1495696201');
INSERT INTO `think_link_data` VALUES ('835', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495696801');
INSERT INTO `think_link_data` VALUES ('836', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495696801');
INSERT INTO `think_link_data` VALUES ('837', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495696801');
INSERT INTO `think_link_data` VALUES ('838', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495696801');
INSERT INTO `think_link_data` VALUES ('839', 'B01JV6LT7G', '25.99', '39.99', '4.3', '32', '', '1998', '1495696801');
INSERT INTO `think_link_data` VALUES ('840', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495697401');
INSERT INTO `think_link_data` VALUES ('841', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495697401');
INSERT INTO `think_link_data` VALUES ('842', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495697401');
INSERT INTO `think_link_data` VALUES ('843', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495697401');
INSERT INTO `think_link_data` VALUES ('844', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495697401');
INSERT INTO `think_link_data` VALUES ('845', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495698002');
INSERT INTO `think_link_data` VALUES ('846', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495698002');
INSERT INTO `think_link_data` VALUES ('847', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495698002');
INSERT INTO `think_link_data` VALUES ('848', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495698002');
INSERT INTO `think_link_data` VALUES ('849', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495698002');
INSERT INTO `think_link_data` VALUES ('850', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495698601');
INSERT INTO `think_link_data` VALUES ('851', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495698601');
INSERT INTO `think_link_data` VALUES ('852', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495698601');
INSERT INTO `think_link_data` VALUES ('853', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495698601');
INSERT INTO `think_link_data` VALUES ('854', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495698601');
INSERT INTO `think_link_data` VALUES ('855', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495699201');
INSERT INTO `think_link_data` VALUES ('856', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '730', '1495699201');
INSERT INTO `think_link_data` VALUES ('857', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495699201');
INSERT INTO `think_link_data` VALUES ('858', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495699201');
INSERT INTO `think_link_data` VALUES ('859', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495699201');
INSERT INTO `think_link_data` VALUES ('860', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '315', '1495699802');
INSERT INTO `think_link_data` VALUES ('861', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495699802');
INSERT INTO `think_link_data` VALUES ('862', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495699802');
INSERT INTO `think_link_data` VALUES ('863', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495699802');
INSERT INTO `think_link_data` VALUES ('864', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495699802');
INSERT INTO `think_link_data` VALUES ('865', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495700401');
INSERT INTO `think_link_data` VALUES ('866', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495700401');
INSERT INTO `think_link_data` VALUES ('867', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495700401');
INSERT INTO `think_link_data` VALUES ('868', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495700401');
INSERT INTO `think_link_data` VALUES ('869', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495700401');
INSERT INTO `think_link_data` VALUES ('870', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495701002');
INSERT INTO `think_link_data` VALUES ('871', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495701002');
INSERT INTO `think_link_data` VALUES ('872', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495701002');
INSERT INTO `think_link_data` VALUES ('873', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2926', '1495701002');
INSERT INTO `think_link_data` VALUES ('874', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495701002');
INSERT INTO `think_link_data` VALUES ('875', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495702801');
INSERT INTO `think_link_data` VALUES ('876', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495702801');
INSERT INTO `think_link_data` VALUES ('877', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495702801');
INSERT INTO `think_link_data` VALUES ('878', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495702801');
INSERT INTO `think_link_data` VALUES ('879', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495702801');
INSERT INTO `think_link_data` VALUES ('880', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495703401');
INSERT INTO `think_link_data` VALUES ('881', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495703401');
INSERT INTO `think_link_data` VALUES ('882', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495703401');
INSERT INTO `think_link_data` VALUES ('883', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495703401');
INSERT INTO `think_link_data` VALUES ('884', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495703401');
INSERT INTO `think_link_data` VALUES ('885', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495708201');
INSERT INTO `think_link_data` VALUES ('886', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '927', '1495708201');
INSERT INTO `think_link_data` VALUES ('887', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495708201');
INSERT INTO `think_link_data` VALUES ('888', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495708201');
INSERT INTO `think_link_data` VALUES ('889', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495708201');
INSERT INTO `think_link_data` VALUES ('890', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495708801');
INSERT INTO `think_link_data` VALUES ('891', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495708801');
INSERT INTO `think_link_data` VALUES ('892', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495708801');
INSERT INTO `think_link_data` VALUES ('893', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495708801');
INSERT INTO `think_link_data` VALUES ('894', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495708801');
INSERT INTO `think_link_data` VALUES ('895', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495709402');
INSERT INTO `think_link_data` VALUES ('896', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495709402');
INSERT INTO `think_link_data` VALUES ('897', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495709402');
INSERT INTO `think_link_data` VALUES ('898', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495709402');
INSERT INTO `think_link_data` VALUES ('899', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495709402');
INSERT INTO `think_link_data` VALUES ('900', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495710002');
INSERT INTO `think_link_data` VALUES ('901', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495710002');
INSERT INTO `think_link_data` VALUES ('902', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495710002');
INSERT INTO `think_link_data` VALUES ('903', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495710002');
INSERT INTO `think_link_data` VALUES ('904', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495710002');
INSERT INTO `think_link_data` VALUES ('905', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495710601');
INSERT INTO `think_link_data` VALUES ('906', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '927', '1495710601');
INSERT INTO `think_link_data` VALUES ('907', 'B00A7YHIQS', '28.50', '28.50', '0.0', '0', '', '26', '1495710601');
INSERT INTO `think_link_data` VALUES ('908', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495710601');
INSERT INTO `think_link_data` VALUES ('909', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495710601');
INSERT INTO `think_link_data` VALUES ('910', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '389', '1495711201');
INSERT INTO `think_link_data` VALUES ('911', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495711201');
INSERT INTO `think_link_data` VALUES ('912', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495711201');
INSERT INTO `think_link_data` VALUES ('913', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495711201');
INSERT INTO `think_link_data` VALUES ('914', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495711201');
INSERT INTO `think_link_data` VALUES ('915', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495711802');
INSERT INTO `think_link_data` VALUES ('916', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495711802');
INSERT INTO `think_link_data` VALUES ('917', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495711802');
INSERT INTO `think_link_data` VALUES ('918', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2983', '1495711802');
INSERT INTO `think_link_data` VALUES ('919', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495711802');
INSERT INTO `think_link_data` VALUES ('920', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495712401');
INSERT INTO `think_link_data` VALUES ('921', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '927', '1495712401');
INSERT INTO `think_link_data` VALUES ('922', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495712401');
INSERT INTO `think_link_data` VALUES ('923', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '2983', '1495712401');
INSERT INTO `think_link_data` VALUES ('924', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495712401');
INSERT INTO `think_link_data` VALUES ('925', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495713001');
INSERT INTO `think_link_data` VALUES ('926', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495713001');
INSERT INTO `think_link_data` VALUES ('927', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495713001');
INSERT INTO `think_link_data` VALUES ('928', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495713001');
INSERT INTO `think_link_data` VALUES ('929', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495713001');
INSERT INTO `think_link_data` VALUES ('930', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495713601');
INSERT INTO `think_link_data` VALUES ('931', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495713601');
INSERT INTO `think_link_data` VALUES ('932', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495713601');
INSERT INTO `think_link_data` VALUES ('933', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495713601');
INSERT INTO `think_link_data` VALUES ('934', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495713601');
INSERT INTO `think_link_data` VALUES ('935', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495714201');
INSERT INTO `think_link_data` VALUES ('936', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495714201');
INSERT INTO `think_link_data` VALUES ('937', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495714201');
INSERT INTO `think_link_data` VALUES ('938', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495714201');
INSERT INTO `think_link_data` VALUES ('939', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495714201');
INSERT INTO `think_link_data` VALUES ('940', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495714801');
INSERT INTO `think_link_data` VALUES ('941', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495714801');
INSERT INTO `think_link_data` VALUES ('942', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495714801');
INSERT INTO `think_link_data` VALUES ('943', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3162', '1495714801');
INSERT INTO `think_link_data` VALUES ('944', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495714801');
INSERT INTO `think_link_data` VALUES ('945', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495715401');
INSERT INTO `think_link_data` VALUES ('946', 'B01F6O2MXM', '25.99', '29.99', '3.5', '44', '', '1053', '1495715401');
INSERT INTO `think_link_data` VALUES ('947', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495715401');
INSERT INTO `think_link_data` VALUES ('948', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495715401');
INSERT INTO `think_link_data` VALUES ('949', 'B01JV6LT7G', '0.00', '0.00', '4.3', '32', '', '2544', '1495715401');
INSERT INTO `think_link_data` VALUES ('950', 'B01IHGWS9E', '27.99', '28.99', '3.3', '31', '', '433', '1495716001');
INSERT INTO `think_link_data` VALUES ('951', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495716001');
INSERT INTO `think_link_data` VALUES ('952', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495716001');
INSERT INTO `think_link_data` VALUES ('953', 'B01MQ4FKMQ', '27.11', '27.11', '4.0', '7', '', '3162', '1495716001');
INSERT INTO `think_link_data` VALUES ('954', 'B01JV6LT7G', '0.00', '0.00', '0.0', '0', '', '0', '1495716001');
INSERT INTO `think_link_data` VALUES ('955', 'B01IHGWS9E', '0.00', '0.00', '0.0', '0', '', '0', '1495716601');
INSERT INTO `think_link_data` VALUES ('956', 'B01F6O2MXM', '0.00', '0.00', '0.0', '0', '', '0', '1495716601');
INSERT INTO `think_link_data` VALUES ('957', 'B00A7YHIQS', '0.00', '0.00', '0.0', '0', '', '0', '1495716601');
INSERT INTO `think_link_data` VALUES ('958', 'B01MQ4FKMQ', '0.00', '0.00', '0.0', '0', '', '0', '1495716601');
INSERT INTO `think_link_data` VALUES ('959', 'B01JV6LT7G', '0.00', '0.00', '4.3', '32', '', '2544', '1495716601');

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
