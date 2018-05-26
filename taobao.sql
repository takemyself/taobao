/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : taobao

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-05-26 17:37:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `res_admin`
-- ----------------------------
DROP TABLE IF EXISTS `res_admin`;
CREATE TABLE `res_admin` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) DEFAULT '',
  `password` varchar(32) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of res_admin
-- ----------------------------
INSERT INTO `res_admin` VALUES ('1', 'admin', 'c81e728d9d4c2f636f067f89cc14862c');

-- ----------------------------
-- Table structure for `res_banner`
-- ----------------------------
DROP TABLE IF EXISTS `res_banner`;
CREATE TABLE `res_banner` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `pic` varchar(50) DEFAULT '',
  `sort` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='banner表';

-- ----------------------------
-- Records of res_banner
-- ----------------------------
INSERT INTO `res_banner` VALUES ('1', '20180526/020797f09d66df5b8cde800cb34a637a.png', '0');
INSERT INTO `res_banner` VALUES ('2', '20180526/c0add287cb0fa4bc76336f52ba63508e.png', '0');
INSERT INTO `res_banner` VALUES ('3', '20180526/8ae288fa20aa94f98f8ddc1557fd6861.png', '0');

-- ----------------------------
-- Table structure for `res_category`
-- ----------------------------
DROP TABLE IF EXISTS `res_category`;
CREATE TABLE `res_category` (
  `cid` mediumint(9) NOT NULL AUTO_INCREMENT,
  `cname` varchar(6) DEFAULT '' COMMENT 'category name',
  `sort` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of res_category
-- ----------------------------
INSERT INTO `res_category` VALUES ('1', '女装', '0');
INSERT INTO `res_category` VALUES ('2', '男装', '0');
INSERT INTO `res_category` VALUES ('3', '鞋子', '0');
INSERT INTO `res_category` VALUES ('4', '水果', '0');
INSERT INTO `res_category` VALUES ('5', '蔬菜', '0');
INSERT INTO `res_category` VALUES ('7', '零食', '1');
INSERT INTO `res_category` VALUES ('8', '电子', '0');

-- ----------------------------
-- Table structure for `res_goods`
-- ----------------------------
DROP TABLE IF EXISTS `res_goods`;
CREATE TABLE `res_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` mediumint(9) DEFAULT NULL,
  `introduction` varchar(50) DEFAULT '',
  `oldprice` varchar(11) DEFAULT NULL,
  `price` varchar(11) DEFAULT NULL,
  `hadbuy` int(11) DEFAULT NULL,
  `ticket` int(11) DEFAULT NULL,
  `content` text,
  `code` varchar(100) DEFAULT '',
  `pic` varchar(60) DEFAULT '',
  `name` varchar(50) DEFAULT '',
  `sta` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of res_goods
-- ----------------------------
INSERT INTO `res_goods` VALUES ('1', '8', '940显卡', '999.00', '888.00', '320', '100', '【颜色】黑色,【材质】金属', '￥3PhR0uv2Whe￥', '20180526/7379c6857e8105d7b21ee86758442595.png', '电脑', '0');
INSERT INTO `res_goods` VALUES ('2', '8', '1024显卡', '9999.00', '88888.00', '555', '1100', '【颜色】红色', '￥3PhR0uv2Whe￥', '20180526/0b482742d47fba177e9029dae0d6b9f8.png', '电脑2', '0');
INSERT INTO `res_goods` VALUES ('3', '7', '100g', '55.00', '44.00', '111', '11', '【经典】美味', '￥3PhR0uv2Whe￥', '20180526/f651efabba73865dcdce9f0dd6c2d04b.png', '鱼豆腐', '0');
