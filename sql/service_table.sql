/*
Navicat MySQL Data Transfer

Source Server         : blog
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : games

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2020-05-08 11:15:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `service_table`
-- ----------------------------
DROP TABLE IF EXISTS `service_table`;
CREATE TABLE `service_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of service_table
-- ----------------------------
INSERT INTO `service_table` VALUES ('1', 'DOTA2', '《DOTA2》充值成功，能看到自己的账户余额，但看不到刀币？', '建议您确认自己的电竞账号是否和steam账号对应。 检查方法：在游戏内点商店，然后点刀币选框，既能看到自己的电竞账号，和自己充值的电竞账号做一下核对是否是同一账号。如果正确但依然看不到刀币，建议耐心等待一段时间，可能会有系统延迟。');
INSERT INTO `service_table` VALUES ('2', 'DOTA2', '《DOTA2》忘记dota2账号怎样找回？', '1、登陆客户端输入账号界面最下方有“忘记您的登录信息 取回丢失的账号”选项，选择后根据提示进行找回。 2、如果您记得账号名，可输入后修改账号密码。 3、如果您不记得账号名，可通过绑定电子邮箱验证信的方式来找回账号名。 4、如果您忘记了绑定电子邮箱，将无法进行找回。');
INSERT INTO `service_table` VALUES ('3', 'DOTA2', '《DOTA2》登陆游戏是让我输入验证码是什么意思？', '在开启安全令牌的状态下，当您第一次通过一台未识别的电脑或浏览器登陆时，DOTA2会向您的联系电子邮件地址发送一则信息，该信息里将包含一枚特殊的验证码，您在登陆DOTA2账号时会被要求输入次验证码。 安全令牌可以在客户端登陆界面的设置里进行管理（开启或禁用），禁用后，每次登陆不同电脑将不再需要输入验证码，但DOTA2账号也面临风险，且不能进行交易等操作。');
INSERT INTO `service_table` VALUES ('4', 'DOTA2', '《DOTA2》完美电竞账号怎么注册？', '登陆完美DOTA2官网http://www.dota2.com.cn/，选择账号注册，按照页面步骤操作即可。额外说明：目前仅开放手机账号注册以及邮箱注册。');
INSERT INTO `service_table` VALUES ('5', '《诛仙3》', '《诛仙3》生产快捷键是哪个？如果打不开怎么处理？', '生产快捷键是“O”，或者点系统全部界面-点生活，也可以打开生产界面；如果仍然打不开，请用户进行版本验证尝试。如有变更，请您以游戏线上内容为准~');
INSERT INTO `service_table` VALUES ('6', '诛仙3', '《诛仙3》飞升后我的人物等级是否就变成1级了？', '飞升后人物等级会变成15级，角色当前的所有技能点和天书点将会被重置。如有变更，请您以游戏线上内容为准~');
INSERT INTO `service_table` VALUES ('7', '诛仙3', '《诛仙3》飞升前地图的怪都不主动攻击了？', '2018.3.21更新后，飞升前1-150级升级地图中所有主动怪物调整为被动怪。升级地图指：所有主线任务所在地图，即从草庙村开始到修罗为止，中间所有主线地图都是升级地图，其中部分怪物（集中在天间、流波...');
INSERT INTO `service_table` VALUES ('8', '诛仙3', '《诛仙3》魔阵营，如何进入仙、佛阵营地图呢？', '每周六17：00至22：00可以参加三界乱斗任务。仙魔佛三个阵营可以在任务期间互相进入。活动地点：仙界、魔界、佛界、混沌。如有变更，请您以游戏线上内容为准~');
INSERT INTO `service_table` VALUES ('9', '完美国际2', '《完美国际2》帮派基地管理者是否只有帮主1个人？', '是的，只有帮主有帮派基地的管理权限');
INSERT INTO `service_table` VALUES ('10', '完美国际2', '《完美国际2》同1账号是否可以同时登陆多个服务器？', '同1账号完美国际可以同时登陆多个服务器，并且不限制大区（相同或不同大区下的不同服务器均可）');
INSERT INTO `service_table` VALUES ('11', '神雕侠侣', '《神雕侠侣》角色11级经验满了但是没有升级提示？', '角色等级超过10级以后系统不会再有升级提示，需要进入人物属性界面手动点经验条旁的“升级”按钮进行升级。');
INSERT INTO `service_table` VALUES ('12', '赤壁', '《赤壁》武器之间的转换11阶武器附加属性会有变化吗？', '不会改变。');
INSERT INTO `service_table` VALUES ('13', '梦幻诛仙2', '《梦幻诛仙2》账号登陆相关', '2020.1.9更新后，账号登录新增版本号验证。新增ipv6登录。如有变更，请您以游戏线上内容为准~');
INSERT INTO `service_table` VALUES ('14', '武林外传', '《武林外传》注册账号是否一定要填写推广ID？', '注册账号时不一定要填写推广ID，没有推广ID也可以不填。如果填写了错误的推广ID导致无法创建角色，请将客户端关闭后重新打开后再创建。');
