/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : cmas

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-04-26 11:46:44
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=318 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_commission
-- ----------------------------
INSERT INTO `think_commission` VALUES ('163', '添加剂制造', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('164', '亚马逊设备配件', '0.4500', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('165', '母婴', '0.1500', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('166', '啤酒、葡萄酒和烈酒 ', '0.1000', '0.0000', '德国');
INSERT INTO `think_commission` VALUES ('167', '图书、音乐、VHS、DVD ', '0.1500', '0.0000', '德国');
INSERT INTO `think_commission` VALUES ('168', '商业、工业和科学用品 ', '0.1500', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('169', '汽车和摩托车 ', '0.1500', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('170', '电脑', '0.0700', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('171', '电脑:笔记本电脑', '0.0700', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('172', '电脑配件', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('173', '电视/音响', '0.0700', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('174', '自行车', '0.1000', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('175', 'DIY 和工具', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('176', '电视/音响配件', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('177', '电子配件', '0.1500', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('178', '食品服务', '0.1500', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('179', '食品', '0.1500', '0.0000', '德国');
INSERT INTO `think_commission` VALUES ('180', '工业电气用品 ', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('181', '工业工具和仪器 ', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('182', '珠宝首饰 ', '0.2000', '1.5000', '德国');
INSERT INTO `think_commission` VALUES ('183', '大型电器(不包含配件、微波炉以及抽油烟机)', '0.0700', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('184', '材料处理 ', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('185', '金属加工 ', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('186', '乐器和DJ', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('187', '软件 ', '0.1500', '0.0000', '德国');
INSERT INTO `think_commission` VALUES ('188', '运动户外', '0.1500', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('189', '轮胎', '0.1000', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('190', '视频游戏', '0.1500', '0.0000', '德国');
INSERT INTO `think_commission` VALUES ('191', '视频游戏机 ', '0.0800', '0.0000', '德国');
INSERT INTO `think_commission` VALUES ('192', '钟表 ', '0.1500', '1.5000', '德国');
INSERT INTO `think_commission` VALUES ('193', '所有其他分类 ', '0.1500', '0.5000', '德国');
INSERT INTO `think_commission` VALUES ('194', '添加剂制造', '0.1200', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('195', '亚马逊设备配件', '0.4500', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('196', '母婴', '0.1500', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('197', '大型电器(不包含配件、微波炉以及抽油烟机)', '0.0700', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('198', '啤酒、葡萄酒和烈酒 ', '0.1000', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('199', '图书、音乐、VHS、DVD ', '0.1500', '0.0000', '法国');
INSERT INTO `think_commission` VALUES ('200', '商业、工业和科学用品 ', '0.1500', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('201', '自行车', '0.1500', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('202', '汽车和摩托车 ', '0.1500', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('203', '电脑', '0.0700', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('204', '电脑:笔记本电脑', '0.0700', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('205', '电脑配件', '0.1200', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('206', '电视/音响', '0.0700', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('207', 'DIY 和工具', '0.1200', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('208', '电视/音响配件', '0.1200', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('209', '电子配件', '0.1500', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('210', '食品服务', '0.1500', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('211', '食品', '0.1500', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('212', '工业电气用品 ', '0.1200', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('213', '工业工具和仪器 ', '0.1200', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('214', '珠宝首饰 ', '0.2000', '1.5000', '法国');
INSERT INTO `think_commission` VALUES ('215', '材料处理 ', '0.1200', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('216', '金属加工 ', '0.1200', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('217', '乐器和DJ', '0.1200', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('218', '运动户外', '0.1500', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('219', '软件 ', '0.1500', '0.0000', '法国');
INSERT INTO `think_commission` VALUES ('220', '轮胎', '0.1000', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('221', '视频游戏', '0.1500', '0.0000', '法国');
INSERT INTO `think_commission` VALUES ('222', '视频游戏机 ', '0.0800', '0.0000', '法国');
INSERT INTO `think_commission` VALUES ('223', '钟表 ', '0.1500', '1.5000', '法国');
INSERT INTO `think_commission` VALUES ('224', '所有其他分类 ', '0.1500', '0.5000', '法国');
INSERT INTO `think_commission` VALUES ('225', '添加剂制造', '0.1200', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('226', '亚马逊设备配件', '0.4500', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('227', '母婴', '0.1500', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('228', '啤酒、葡萄酒和烈酒 ', '0.1000', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('229', '图书、音乐、VHS、DVD ', '0.1500', '0.0000', '意大利');
INSERT INTO `think_commission` VALUES ('230', '商业、工业和科学用品 ', '0.1500', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('231', '汽车和摩托车 ', '0.1500', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('232', '电脑', '0.0700', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('233', '电脑:笔记本电脑', '0.0500', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('234', '电脑配件', '0.1200', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('235', '电视/音响', '0.0700', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('236', '自行车', '0.1500', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('237', 'DIY 和工具', '0.1500', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('238', '电视/音响配件', '0.1200', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('239', '电子配件', '0.1200', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('240', '食品服务', '0.1500', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('241', '食品', '0.1500', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('242', '工业电气用品 ', '0.1200', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('243', '工业工具和仪器 ', '0.1200', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('244', '珠宝首饰 ', '0.2000', '1.5000', '意大利');
INSERT INTO `think_commission` VALUES ('245', '大型电器(不包含配件、微波炉以及抽油烟机)', '0.1500', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('246', '材料处理 ', '0.1200', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('247', '金属加工 ', '0.1200', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('248', '乐器和DJ', '0.1200', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('249', '软件 ', '0.1500', '0.0000', '意大利');
INSERT INTO `think_commission` VALUES ('250', '运动户外', '0.1500', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('251', '轮胎', '0.1000', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('252', '视频游戏', '0.1500', '0.0000', '意大利');
INSERT INTO `think_commission` VALUES ('253', '视频游戏机 ', '0.0800', '0.0000', '意大利');
INSERT INTO `think_commission` VALUES ('254', '钟表 ', '0.1500', '1.5000', '意大利');
INSERT INTO `think_commission` VALUES ('255', '所有其他分类 ', '0.1500', '0.5000', '意大利');
INSERT INTO `think_commission` VALUES ('256', '添加剂制造', '0.1200', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('257', '亚马逊设备配件', '0.4500', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('258', '母婴', '0.1500', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('259', '啤酒、葡萄酒和烈酒 ', '0.1000', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('260', '图书、音乐、VHS、DVD ', '0.1500', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('261', '商业、工业和科学用品 ', '0.1500', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('262', '汽车和摩托车 ', '0.1500', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('263', '电脑', '0.0700', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('264', '电脑:笔记本电脑', '0.0500', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('265', '电脑配件', '0.1200', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('266', '电视/音响', '0.0700', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('267', '自行车', '0.1500', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('268', 'DIY 和工具', '0.1200', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('269', '电视/音响配件', '0.1200', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('270', '电子配件', '0.1500', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('271', '食品服务', '0.1500', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('272', '食品', '0.1500', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('273', '工业电气用品 ', '0.1200', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('274', '工业工具和仪器 ', '0.1200', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('275', '珠宝首饰 ', '0.2000', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('276', '大型电器(不包含配件、微波炉以及抽油烟机)', '0.1500', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('277', '材料处理 ', '0.1200', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('278', '金属加工 ', '0.1200', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('279', '乐器和DJ', '0.1200', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('280', '软件 ', '0.1500', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('281', '运动户外', '0.1500', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('282', '轮胎', '0.1000', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('283', '视频游戏', '0.1500', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('284', '视频游戏机 ', '0.0800', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('285', '钟表 ', '0.1500', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('286', '所有其他分类 ', '0.1500', '0.0000', '西班牙');
INSERT INTO `think_commission` VALUES ('287', '添加剂制造', '0.1200', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('288', '亚马逊设备配件', '0.4500', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('289', '母婴', '0.1500', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('290', '啤酒、葡萄酒和烈酒 ', '0.1000', '0.0000', '英国');
INSERT INTO `think_commission` VALUES ('291', '图书、音乐、VHS、DVD ', '0.1500', '0.0000', '英国');
INSERT INTO `think_commission` VALUES ('292', '商业、工业和科学用品 ', '0.1500', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('293', '汽车和摩托车 ', '0.1500', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('294', '电脑', '0.0700', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('295', '电脑:笔记本电脑', '0.0700', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('296', '电脑配件', '0.1200', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('297', '电视/音响', '0.0700', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('298', '自行车', '0.1500', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('299', 'DIY 和工具', '0.1200', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('300', '电视/音响配件', '0.1200', '0.0000', '英国');
INSERT INTO `think_commission` VALUES ('301', '电子配件', '0.1200', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('302', '食品服务', '0.1500', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('303', '食品', '0.1500', '0.0000', '英国');
INSERT INTO `think_commission` VALUES ('304', '工业电气用品 ', '0.1200', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('305', '工业工具和仪器 ', '0.1200', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('306', '珠宝首饰 ', '0.2500', '1.2500', '英国');
INSERT INTO `think_commission` VALUES ('307', '大型电器(不包含配件、微波炉以及抽油烟机)', '0.0700', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('308', '材料处理 ', '0.1200', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('309', '金属加工 ', '0.1200', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('310', '乐器和DJ', '0.1200', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('311', '软件 ', '0.1500', '0.0000', '英国');
INSERT INTO `think_commission` VALUES ('312', '运动户外', '0.1500', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('313', '轮胎', '0.1000', '0.4000', '英国');
INSERT INTO `think_commission` VALUES ('314', '视频游戏', '0.1500', '0.0000', '英国');
INSERT INTO `think_commission` VALUES ('315', '视频游戏机 ', '0.0800', '0.0000', '英国');
INSERT INTO `think_commission` VALUES ('316', '钟表 ', '0.1500', '1.2500', '英国');
INSERT INTO `think_commission` VALUES ('317', '所有其他分类 ', '0.1500', '0.4000', '英国');

-- ----------------------------
-- Table structure for `think_logistics`
-- ----------------------------
DROP TABLE IF EXISTS `think_logistics`;
CREATE TABLE `think_logistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL COMMENT '物流名称',
  `rank` tinyint(1) NOT NULL DEFAULT '1' COMMENT '所在级别',
  `pid` int(11) NOT NULL COMMENT '父级别id',
  `special_type` varchar(20) NOT NULL COMMENT '是否特殊物品。0.普通，1.带电产品 2.粉末 3.液体',
  `only_weight` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否计算体积重 0:不计算, 1:计算',
  `price` decimal(4,2) NOT NULL COMMENT '每kg运输价格',
  `volume_number` int(11) NOT NULL COMMENT '体积重系数',
  `destination` varchar(256) NOT NULL COMMENT '目的地',
  `is_oversea` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否是海外仓头程 0:是 1:不是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_logistics
-- ----------------------------
INSERT INTO `think_logistics` VALUES ('1', 'FBA', '1', '0', '0', '0', '0.00', '0', '0', '0');
INSERT INTO `think_logistics` VALUES ('2', '直邮', '1', '0', '0', '1', '0.00', '0', '0', '0');
INSERT INTO `think_logistics` VALUES ('3', 'FBA-空运', '2', '1', '0', '0', '0.00', '0', '0', '0');
INSERT INTO `think_logistics` VALUES ('4', '云途泛欧头程', '3', '3', '0', '0', '40.00', '6000', '德国,英国,法国,意大利,西班牙', '1');
INSERT INTO `think_logistics` VALUES ('5', '云途', '2', '2', '0', '1', '0.00', '0', '0', '0');
INSERT INTO `think_logistics` VALUES ('6', 'DHL英国', '3', '5', '0', '1', '60.00', '0', '英国', '0');
INSERT INTO `think_logistics` VALUES ('7', '123', '3', '4', '01', '0', '0.00', '0', '456', '0');

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
INSERT INTO `think_nation` VALUES ('8', '墨西哥', 'MXI', '$');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_sku_detail
-- ----------------------------
INSERT INTO `think_sku_detail` VALUES ('19', 'XZ01HCBK01-F2', '500.00', '22.00', '22.00', '34.00', '11.00', '2.00', '2.00', '0', '所有其他分类');
INSERT INTO `think_sku_detail` VALUES ('20', 'XZ01HCBK01-F3', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0', '所有其他分类');
INSERT INTO `think_sku_detail` VALUES ('23', 'XZ12BL38-F1', '350.00', '26.00', '11.00', '5.00', '10.00', '3.00', '0.00', '1', '所有其他分类');
INSERT INTO `think_sku_detail` VALUES ('24', 'DZZ1111', '500.00', '23.00', '23.00', '11.00', '11.00', '2.00', '1.00', '0', '所有其他分类');
