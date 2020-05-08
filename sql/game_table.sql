/*
Navicat MySQL Data Transfer

Source Server         : blog
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : games

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2020-05-08 11:15:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `game_table`
-- ----------------------------
DROP TABLE IF EXISTS `game_table`;
CREATE TABLE `game_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `recent` varchar(50) DEFAULT NULL,
  `hot` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game_table
-- ----------------------------
INSERT INTO `game_table` VALUES ('1', '诛仙3', '客户端游戏', 'game1.png', '', 'hot');
INSERT INTO `game_table` VALUES ('2', '完美国际2', '客户端游戏', 'game2.png', '', '');
INSERT INTO `game_table` VALUES ('3', '笑傲江湖OL', '客户端游戏', 'game3.png', '', '');
INSERT INTO `game_table` VALUES ('4', '梦幻诛仙2', '客户端游戏', 'game4.png', '', '');
INSERT INTO `game_table` VALUES ('5', '武林外传', '客户端游戏', 'game5.png', '', '');
INSERT INTO `game_table` VALUES ('6', '神鬼传奇', '客户端游戏', 'game6.png', '', '');
INSERT INTO `game_table` VALUES ('7', '神鬼世界', '客户端游戏', 'game7.png', '', '');
INSERT INTO `game_table` VALUES ('8', '完美世界', '客户端游戏', 'game8.png', '', '');
INSERT INTO `game_table` VALUES ('9', '赤壁', '客户端游戏', 'game9.png', '', '');
INSERT INTO `game_table` VALUES ('10', '热舞派对Ⅱ', '客户端游戏', 'game10.png', '', '');
INSERT INTO `game_table` VALUES ('11', '神魔大陆2', '客户端游戏', 'game11.png', '', '');
INSERT INTO `game_table` VALUES ('12', '口袋西游', '客户端游戏', 'game12.png', '', '');
INSERT INTO `game_table` VALUES ('13', '神雕侠侣', '客户端游戏', 'game13.png', '', '');
INSERT INTO `game_table` VALUES ('14', 'DOTA2', '电竞游戏', 'game14.png', '', 'hot');
INSERT INTO `game_table` VALUES ('15', 'CS:GO', '电竞游戏', 'game15.png', 'new', 'hot');
INSERT INTO `game_table` VALUES ('16', '创世战车', '电竞游戏', 'game16.png', 'new', '');
INSERT INTO `game_table` VALUES ('17', 'TOUCH', '网页游戏', 'game17.png', 'new', 'hot');
INSERT INTO `game_table` VALUES ('18', 'PGP游戏平台', '平台产品', 'game18.png', '', '');
INSERT INTO `game_table` VALUES ('19', '完美商城', '平台产品', 'game19.png', '', '');
INSERT INTO `game_table` VALUES ('20', 'DOTA2神秘商店', '平台产品', 'game14.png', '', '');
INSERT INTO `game_table` VALUES ('21', 'CS:GO军需商店', '平台产品', 'game15.png', '', '');
INSERT INTO `game_table` VALUES ('22', '深海迷航', '单机游戏', '', '', '');
INSERT INTO `game_table` VALUES ('23', '隐龙传：影踪', '单机游戏', '', '', '');
INSERT INTO `game_table` VALUES ('24', '洪潮之焰', '单机游戏', '', '', '');
