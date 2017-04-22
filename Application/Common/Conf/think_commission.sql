/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : cmas

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-04-22 17:41:29
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of think_commission
-- ----------------------------
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('添加剂制造', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('亚马逊设备配件', '0.4500', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('啤酒、葡萄酒和烈酒 ', '0.1000', '0.0000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('图书、音乐、VHS、DVD ', '0.1500', '0.0000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('商业、工业和科学用品 ', '0.1500', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('汽车和摩托车 ', '0.1500', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('电脑 ', '0.0700', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('电脑配件', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('电视/音响', '0.0700', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('自行车', '0.1000', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('DIY 和工具', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('电视/音响配件', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('食品服务', '0.1500', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('食品', '0.1500', '0', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('工业电气用品 ', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('工业工具和仪器 ', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('珠宝首饰 ', '0.2000', '1.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('大型电器(不包含配件、微波炉以及抽油烟机)', '0.0700', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('工业工具和仪器 ', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('材料处理 ', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('金属加工 ', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('乐器和DJ', '0.1200', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('软件 ', '0.1500', '0', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('运动户外', '0.1500', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('轮胎', '0.1000', '0.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('视频游戏', '0.1500', '0', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('视频游戏机 ', '0.0800', '0', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('钟表 ', '0.1500', '1.5000', '德国');
INSERT INTO `think_commission` (name,value,lowest,sale_domain) VALUES ('所有其他分类 ', '0.1500', '0.5000', '德国');

