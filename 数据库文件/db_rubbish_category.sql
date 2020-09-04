/*
Navicat MySQL Data Transfer

Source Server         : 本地连接
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_rubbish_category

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-09-26 17:19:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `authority`
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` int(11) NOT NULL,
  `menuId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  KEY `menuId` (`menuId`),
  CONSTRAINT `authority_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`),
  CONSTRAINT `authority_ibfk_2` FOREIGN KEY (`menuId`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES ('148', '2', '35');
INSERT INTO `authority` VALUES ('149', '2', '36');
INSERT INTO `authority` VALUES ('150', '2', '25');
INSERT INTO `authority` VALUES ('151', '2', '1');
INSERT INTO `authority` VALUES ('152', '2', '14');
INSERT INTO `authority` VALUES ('153', '2', '15');
INSERT INTO `authority` VALUES ('181', '1', '1');
INSERT INTO `authority` VALUES ('182', '1', '5');
INSERT INTO `authority` VALUES ('183', '1', '17');
INSERT INTO `authority` VALUES ('184', '1', '18');
INSERT INTO `authority` VALUES ('185', '1', '19');
INSERT INTO `authority` VALUES ('186', '1', '20');
INSERT INTO `authority` VALUES ('187', '1', '13');
INSERT INTO `authority` VALUES ('188', '1', '21');
INSERT INTO `authority` VALUES ('189', '1', '22');
INSERT INTO `authority` VALUES ('190', '1', '23');
INSERT INTO `authority` VALUES ('191', '1', '35');
INSERT INTO `authority` VALUES ('192', '1', '36');
INSERT INTO `authority` VALUES ('193', '1', '14');
INSERT INTO `authority` VALUES ('194', '1', '15');
INSERT INTO `authority` VALUES ('195', '1', '24');
INSERT INTO `authority` VALUES ('196', '1', '25');
INSERT INTO `authority` VALUES ('197', '1', '26');
INSERT INTO `authority` VALUES ('198', '1', '31');
INSERT INTO `authority` VALUES ('199', '1', '32');
INSERT INTO `authority` VALUES ('200', '1', '33');
INSERT INTO `authority` VALUES ('201', '1', '34');
INSERT INTO `authority` VALUES ('202', '1', '37');
INSERT INTO `authority` VALUES ('203', '1', '38');
INSERT INTO `authority` VALUES ('204', '1', '43');
INSERT INTO `authority` VALUES ('205', '1', '45');
INSERT INTO `authority` VALUES ('206', '1', '46');
INSERT INTO `authority` VALUES ('207', '1', '39');
INSERT INTO `authority` VALUES ('208', '1', '40');
INSERT INTO `authority` VALUES ('209', '1', '41');
INSERT INTO `authority` VALUES ('210', '1', '42');

-- ----------------------------
-- Table structure for `c3p0testtable`
-- ----------------------------
DROP TABLE IF EXISTS `c3p0testtable`;
CREATE TABLE `c3p0testtable` (
  `a` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c3p0testtable
-- ----------------------------

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('13', '用户名为admin的用户登录时输入验证码错误!', '2018-12-16 18:17:30');
INSERT INTO `log` VALUES ('14', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 18:22:56');
INSERT INTO `log` VALUES ('15', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 18:37:15');
INSERT INTO `log` VALUES ('16', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 18:40:21');
INSERT INTO `log` VALUES ('17', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-16 19:11:49');
INSERT INTO `log` VALUES ('18', '用户名为{admin}，的用户成功修改密码!', '2018-12-16 19:13:32');
INSERT INTO `log` VALUES ('19', '用户名为{admin}，的用户成功修改密码!', '2018-12-16 19:14:01');
INSERT INTO `log` VALUES ('20', '用户名为{猿来入此}，角色为{普通用户}的用户登录成功!', '2018-12-16 19:17:46');
INSERT INTO `log` VALUES ('21', '用户名为admin的用户登录时输入验证码错误!', '2018-12-21 09:46:39');
INSERT INTO `log` VALUES ('22', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 09:46:48');
INSERT INTO `log` VALUES ('23', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 10:50:36');
INSERT INTO `log` VALUES ('24', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 10:56:05');
INSERT INTO `log` VALUES ('25', '用户名为admin的用户登录时输入验证码错误!', '2018-12-21 13:30:56');
INSERT INTO `log` VALUES ('26', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 13:31:04');
INSERT INTO `log` VALUES ('27', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 13:38:34');
INSERT INTO `log` VALUES ('28', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 14:33:24');
INSERT INTO `log` VALUES ('29', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 14:58:31');
INSERT INTO `log` VALUES ('30', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 15:00:44');
INSERT INTO `log` VALUES ('31', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 15:15:15');
INSERT INTO `log` VALUES ('32', '用户名为admin的用户登录时输入验证码错误!', '2018-12-21 15:19:27');
INSERT INTO `log` VALUES ('33', '用户名为admin的用户登录时输入验证码错误!', '2018-12-21 15:19:35');
INSERT INTO `log` VALUES ('34', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 15:19:42');
INSERT INTO `log` VALUES ('35', '用户名为admin的用户登录时输入验证码错误!', '2018-12-21 16:06:57');
INSERT INTO `log` VALUES ('36', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2018-12-21 16:07:09');
INSERT INTO `log` VALUES ('38', '用户名为admin的用户登录时输入验证码错误!', '2019-03-04 16:15:06');
INSERT INTO `log` VALUES ('39', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-03-04 16:15:23');
INSERT INTO `log` VALUES ('40', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-09-25 17:19:55');
INSERT INTO `log` VALUES ('41', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-09-25 17:25:01');
INSERT INTO `log` VALUES ('42', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-09-26 10:17:39');
INSERT INTO `log` VALUES ('43', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-09-26 10:41:00');
INSERT INTO `log` VALUES ('44', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-09-26 11:16:12');
INSERT INTO `log` VALUES ('45', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-09-26 12:42:48');
INSERT INTO `log` VALUES ('46', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-09-26 13:01:47');
INSERT INTO `log` VALUES ('47', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-09-26 13:07:18');
INSERT INTO `log` VALUES ('48', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-09-26 13:31:25');
INSERT INTO `log` VALUES ('49', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-09-26 14:58:13');
INSERT INTO `log` VALUES ('50', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-09-26 16:34:31');
INSERT INTO `log` VALUES ('51', '用户名为{admin}，角色为{超级管理员}的用户登录成功!', '2019-09-26 16:46:47');

-- ----------------------------
-- Table structure for `menu`
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) NOT NULL DEFAULT '-1',
  `name` varchar(32) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `icon` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '0', '系统设置', '', 'icon-advancedsettings');
INSERT INTO `menu` VALUES ('5', '1', '菜单管理', '../admin/menu/list', 'icon-chart-organisation');
INSERT INTO `menu` VALUES ('13', '1', '角色管理', '../admin/role/list', 'icon-group-key');
INSERT INTO `menu` VALUES ('14', '0', '用户管理', '', 'icon-group-gear');
INSERT INTO `menu` VALUES ('15', '14', '用户列表', '../admin/user/list', 'icon-group');
INSERT INTO `menu` VALUES ('17', '5', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('18', '5', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('19', '5', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('20', '5', '添加按钮', 'openAddMenu()', 'icon-add');
INSERT INTO `menu` VALUES ('21', '13', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('22', '13', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('23', '13', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('24', '15', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('25', '15', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('26', '15', '删除', 'remove()', 'icon-cross');
INSERT INTO `menu` VALUES ('31', '0', '系统日志', '', 'icon-table-cell');
INSERT INTO `menu` VALUES ('32', '31', '日志列表', '../admin/log/list', 'icon-page-white-text');
INSERT INTO `menu` VALUES ('33', '32', '添加日志', 'openAdd()', 'icon-add1');
INSERT INTO `menu` VALUES ('34', '32', '删除', 'remove()', 'icon-cancel');
INSERT INTO `menu` VALUES ('35', '1', '修改密码', 'edit_password', 'icon-lock-edit');
INSERT INTO `menu` VALUES ('36', '35', '修改密码', 'openAdd()', 'icon-lock-edit');
INSERT INTO `menu` VALUES ('37', '0', '垃圾分类管理', '', 'icon-delete');
INSERT INTO `menu` VALUES ('38', '37', '分类管理', '../admin/rubbish_category/list', 'icon-sitemap-color');
INSERT INTO `menu` VALUES ('39', '37', '垃圾管理', '../admin/rubbish/list', 'icon-bin-closed');
INSERT INTO `menu` VALUES ('40', '39', '添加', 'openAdd()', 'icon-add');
INSERT INTO `menu` VALUES ('41', '39', '编辑', 'openEdit()', 'icon-application-edit');
INSERT INTO `menu` VALUES ('42', '39', '删除', 'remove()', 'icon-cross-octagon');
INSERT INTO `menu` VALUES ('43', '38', '添加', 'openAdd()', 'icon-add1');
INSERT INTO `menu` VALUES ('45', '38', '编辑', 'openEdit()', 'icon-bullet-edit');
INSERT INTO `menu` VALUES ('46', '38', '删除', 'remove()', 'icon-bullet-cross');

-- ----------------------------
-- Table structure for `role`
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `remark` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '超级管理员', '超级管理员拥有一切权限！');
INSERT INTO `role` VALUES ('2', '普通用户', '普通用户，请自由授权！');

-- ----------------------------
-- Table structure for `rubbish`
-- ----------------------------
DROP TABLE IF EXISTS `rubbish`;
CREATE TABLE `rubbish` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `categoryId` bigint(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categoryId` (`categoryId`),
  CONSTRAINT `rubbish_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `rubbish_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rubbish
-- ----------------------------
INSERT INTO `rubbish` VALUES ('1', '眼药水', '3');
INSERT INTO `rubbish` VALUES ('2', '一次性电池', '5');
INSERT INTO `rubbish` VALUES ('5', '车厘子核', '4');
INSERT INTO `rubbish` VALUES ('6', '木筷子', '2');
INSERT INTO `rubbish` VALUES ('7', '铁盒', '2');
INSERT INTO `rubbish` VALUES ('8', '锡箔', '5');
INSERT INTO `rubbish` VALUES ('9', '过期饼干', '4');
INSERT INTO `rubbish` VALUES ('10', '瓜子皮', '4');
INSERT INTO `rubbish` VALUES ('11', '口红', '5');

-- ----------------------------
-- Table structure for `rubbish_category`
-- ----------------------------
DROP TABLE IF EXISTS `rubbish_category`;
CREATE TABLE `rubbish_category` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `explain` varchar(256) DEFAULT NULL,
  `require` varchar(256) DEFAULT NULL,
  `common` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rubbish_category
-- ----------------------------
INSERT INTO `rubbish_category` VALUES ('2', '可回收物', '废纸张、废塑料、废玻璃制品、废金属、废织物等适宜回收、可循环利用的生活废弃物。', '轻投轻放；清洁干燥，避免污染；废纸尽量平整；立体包装物请清空内容物，清洁后压扁投放；有尖锐边角的，应包裹后投放。', '报纸、纸箱、书本、纸袋、塑料瓶、玩具、油桶、乳液罐、食品保鲜盒、衣架、酒瓶、玻璃杯、易拉罐、锅、螺丝刀、皮鞋、衣物、包、毛绒玩具、电路板、砧板、插座。');
INSERT INTO `rubbish_category` VALUES ('3', '有害垃圾', '对人体健康或自然环境造成直接或潜在的危害废弃物。', '充电电池、纽扣电池、蓄电池投放时应注意轻放；油漆桶、杀虫剂如有残留请密闭后投放；荧光灯、节能灯易破损连带包装或包裹后投放；废药品及其包装一并投放。', '电池类、荧光灯管类、过期药物、药品包装、过期指甲油、指甲水、染发剂壳、废油漆桶、水银体温计\\/血压计、消毒剂、老鼠药、杀虫喷雾、X光片、相片底片。');
INSERT INTO `rubbish_category` VALUES ('4', '湿垃圾', '部分地区又称”厨余垃圾”，日常生活垃圾产生的容易腐烂的生物质废物。', '餐厨垃圾应沥干水分后再投放，有包装物的应取出后分类投放；大块骨头和椰子壳，榴莲壳等不易生化降解，作为干垃圾进行投放；纯液体（如牛奶等），可直接倒入下水口。', '剩饭剩菜、面包、鸡肉、干果仁、蔬菜、花卉、蛋糕饼干、动物内脏、苹果核、鸡蛋及蛋壳、大米及豆类、中药药渣、宠物饲料。');
INSERT INTO `rubbish_category` VALUES ('5', '干垃圾', '部分地区又称”其他垃圾”，除有害垃圾、可回收物、湿垃圾以外的生活废弃物。', '尽量沥干水分；难以辨别的生活垃圾应投入干垃圾容器内。', '餐巾纸、纸巾、纸尿裤、烟蒂、陶瓷花盆、胶带、橡皮泥、创可贴、笔、灰土、眼镜、头发、内衣裤、防碎气泡膜、旧毛巾、污损纸张、塑料袋。');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `roleId` int(11) NOT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `sex` int(1) NOT NULL DEFAULT '0',
  `age` int(3) NOT NULL DEFAULT '0',
  `address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '1', '/RubbishCategory/resources/upload/1569489341404.png', '1', '1', '上海市浦东新区浦东南路1835号');
INSERT INTO `user` VALUES ('13', '猿来入此', '123456', '2', '/RubbishCategory/resources/upload/1569489439237.jpg', '1', '1', '猿来入此');
