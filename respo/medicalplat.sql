/*
Navicat MySQL Data Transfer

Source Server         : 10.164.81.206
Source Server Version : 50720
Source Host           : 10.164.81.206:3306
Source Database       : medicalplat

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-04-21 16:46:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(16) NOT NULL COMMENT '账户ID',
  `phone` varchar(11) DEFAULT '' COMMENT '手机号',
  `password` varchar(64) DEFAULT '' COMMENT '密码',
  `login_status` tinyint(2) unsigned DEFAULT '0' COMMENT '1:已登录 2:未登录',
  `running_status` tinyint(2) DEFAULT '0' COMMENT '1:正常 2:异常 3:黑名单  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) DEFAULT NULL,
  `is_delete` tinyint(2) DEFAULT '0' COMMENT '0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `accountId_phone_token` (`account_id`,`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('69', 'admin', '13666666666', '123456', '0', '0', '2018-03-30 16:51:43', 'admin', '0', '2018-04-02 13:57:19');
INSERT INTO `account` VALUES ('70', 'test', '13888888888', '123456', '0', '0', '2018-03-30 16:51:43', null, '0', '2018-03-30 16:51:43');
INSERT INTO `account` VALUES ('71', 'root', '15999999999', '123456', '0', '0', '2018-03-30 16:51:43', null, '0', '2018-03-30 16:51:43');
INSERT INTO `account` VALUES ('73', 'hm_69xj42jxgmqki', '15565125335', '123456', null, null, '2018-04-03 14:06:05', 'admin', '0', '2018-04-17 11:33:38');
INSERT INTO `account` VALUES ('74', 'hm_2agnmuy2znt8k', '17708494021', '123456789', null, null, '2018-04-03 14:09:51', 'admin', '0', '2018-04-19 17:52:47');
INSERT INTO `account` VALUES ('75', 'hm_f3ven29q6j7cx', '18701785384', null, null, null, '2018-04-03 14:52:32', 'admin', '0', null);
INSERT INTO `account` VALUES ('76', 'hm_mi9zm785zq8nx', '13646205270', '123456', null, null, '2018-04-03 16:55:25', 'admin', '0', null);
INSERT INTO `account` VALUES ('77', 'hm_s9kpcie2i9369', '17708494023', '123456', null, null, '2018-04-18 15:49:55', 'admin', '0', null);
INSERT INTO `account` VALUES ('78', 'hm_a2ksmvsr8ip5x', '15608470049', '123456', null, null, '2018-04-18 17:07:21', 'admin', '0', null);
INSERT INTO `account` VALUES ('83', 'hm_dmj7gkgd58qkj', '18994710039', '123456', null, null, '2018-04-18 17:46:13', 'admin', '0', null);
INSERT INTO `account` VALUES ('84', 'hm_2g8gskicuf69r', '15821890403', null, null, null, '2018-04-19 11:22:35', 'admin', '0', null);

-- ----------------------------
-- Table structure for account_detail
-- ----------------------------
DROP TABLE IF EXISTS `account_detail`;
CREATE TABLE `account_detail` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(16) NOT NULL DEFAULT '' COMMENT '账户ID',
  `account_profile_photo` varchar(128) DEFAULT '' COMMENT '头像',
  `account_nickname` varchar(64) DEFAULT '' COMMENT '昵称',
  `real_name` varchar(32) DEFAULT '' COMMENT '真实姓名',
  `sex` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0:未知 1:男 2：女',
  `identity_card` varchar(20) DEFAULT '' COMMENT '身份证号',
  `region_code` varchar(16) DEFAULT '' COMMENT '地理地域ID',
  `symbolic_animals` varchar(8) DEFAULT '' COMMENT '生肖',
  `blood_type` varchar(8) DEFAULT '' COMMENT '血型',
  `phone` varchar(8) DEFAULT '' COMMENT '电话号码',
  `birthday` varchar(16) DEFAULT '' COMMENT '生日',
  `introduction` varchar(128) DEFAULT '' COMMENT '简介',
  `email` varchar(32) DEFAULT '' COMMENT '邮箱',
  `address` varchar(128) DEFAULT '' COMMENT '地址',
  `profession` varchar(64) DEFAULT '' COMMENT '职业',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `creator` varchar(32) NOT NULL DEFAULT '',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `marital_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0:未知 1:已婚 2：未婚 3：离异 4：丧偶',
  `emergency_contact` varchar(16) DEFAULT '' COMMENT '紧急联系人',
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_detail
-- ----------------------------
INSERT INTO `account_detail` VALUES ('58', 'admin', '1522583593711.V0001.png', '管理员', '管理员', '1', '', '', '', '', '', '', '', '', '苏州工业园区', '', '2018-03-30 16:51:44', 'admin', '0', '2018-04-08 17:42:56', '0', '110');
INSERT INTO `account_detail` VALUES ('59', 'test', '1522583593711.V0001.png', '管理员', '管理员', '2', '', '', '', '', '', '', '', '', '苏州工业园区', '', '2018-03-30 16:51:44', 'admin', '0', '2018-04-08 17:42:57', '0', '110');
INSERT INTO `account_detail` VALUES ('60', 'root', '1522583593711.V0001.png', '管理员', '管理员', '1', '', '', '', '', '', '', '', '', '苏州工业园区', '', '2018-03-30 16:51:44', 'admin', '0', '2018-04-08 17:42:58', '0', '110');
INSERT INTO `account_detail` VALUES ('62', 'hm_69xj42jxgmqki', '1522812807777.V0004.jpg', '管理员', '黄得朝', '1', '410521199006054517', '', '', '', '', '', '', '', '上海', '', '2018-04-20 13:41:48', 'admin', '0', '2018-04-08 17:42:59', '4', '15636254261');
INSERT INTO `account_detail` VALUES ('63', 'hm_2agnmuy2znt8k', '1522812807777.V0002.jpg', '管理员', '吃饭比较', '1', '', '', '', '', '', '', '', '', '', '', '2018-04-08 22:14:46', 'admin', '0', '2018-04-08 17:43:00', '0', '鹿');
INSERT INTO `account_detail` VALUES ('64', 'hm_f3ven29q6j7cx', '1522812807777.V0002.jpg', '管理员', '', '0', '', '', '', '', '', '', '', '', '', '', '2018-04-03 14:52:32', 'admin', '0', '2018-04-08 17:43:16', '0', '');
INSERT INTO `account_detail` VALUES ('65', 'hm_mi9zm785zq8nx', '1522736469741.V0012.jpg', '管理员', '郭锐', '1', '', '', '', '', '', '', '', '', '', '', '2018-04-19 20:41:15', 'admin', '0', '2018-04-08 17:43:17', '4', '');
INSERT INTO `account_detail` VALUES ('66', 'hm_dmj7gkgd58qkj', null, null, null, '0', null, null, null, null, null, null, null, null, null, null, '2018-04-18 17:46:13', 'admin', '0', null, '0', null);
INSERT INTO `account_detail` VALUES ('67', 'hm_2g8gskicuf69r', null, null, null, '0', null, null, null, null, null, null, null, null, null, null, '2018-04-19 11:22:35', 'admin', '0', null, '0', null);

-- ----------------------------
-- Table structure for account_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `account_dictionary`;
CREATE TABLE `account_dictionary` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `dic_type` int(4) NOT NULL DEFAULT '0' COMMENT '类型',
  `type_name` varchar(16) NOT NULL DEFAULT '' COMMENT '类型名称',
  `sub_type` int(4) NOT NULL DEFAULT '0' COMMENT '子类型',
  `sub_name` varchar(16) NOT NULL DEFAULT '' COMMENT '名称',
  `sort` int(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否显示：0显示1不显示',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COMMENT='账户字典表';

-- ----------------------------
-- Records of account_dictionary
-- ----------------------------
INSERT INTO `account_dictionary` VALUES ('1', '1001', '婚姻状况', '1', '已婚', '1', '0');
INSERT INTO `account_dictionary` VALUES ('2', '1001', '婚姻状况', '2', '未婚', '2', '0');
INSERT INTO `account_dictionary` VALUES ('3', '1001', '婚姻状况', '3', '离异', '3', '0');
INSERT INTO `account_dictionary` VALUES ('4', '1001', '婚姻状况', '4', '丧偶', '4', '0');
INSERT INTO `account_dictionary` VALUES ('5', '1002', '生育状况', '1', '未生育', '1', '0');
INSERT INTO `account_dictionary` VALUES ('6', '1002', '生育状况', '2', '备孕期', '2', '0');
INSERT INTO `account_dictionary` VALUES ('7', '1002', '生育状况', '3', '怀孕期', '3', '0');
INSERT INTO `account_dictionary` VALUES ('8', '1002', '生育状况', '4', '已生育', '4', '0');
INSERT INTO `account_dictionary` VALUES ('9', '1003', '手术或外伤', '1', '暂无', '1', '0');
INSERT INTO `account_dictionary` VALUES ('10', '1003', '手术或外伤', '2', '颅脑手术', '2', '0');
INSERT INTO `account_dictionary` VALUES ('11', '1003', '手术或外伤', '3', '颈部手术', '3', '0');
INSERT INTO `account_dictionary` VALUES ('12', '1003', '手术或外伤', '4', '胸部手术', '4', '0');
INSERT INTO `account_dictionary` VALUES ('13', '1003', '手术或外伤', '5', '腹部手术', '5', '0');
INSERT INTO `account_dictionary` VALUES ('14', '1003', '手术或外伤', '6', '背部手术', '6', '0');
INSERT INTO `account_dictionary` VALUES ('15', '1003', '手术或外伤', '7', '四肢手术', '7', '0');
INSERT INTO `account_dictionary` VALUES ('16', '1003', '手术或外伤', '8', '骨折', '8', '0');
INSERT INTO `account_dictionary` VALUES ('17', '1003', '手术或外伤', '9', '头部外伤', '9', '0');
INSERT INTO `account_dictionary` VALUES ('18', '1003', '手术或外伤', '10', '烧伤', '10', '0');
INSERT INTO `account_dictionary` VALUES ('19', '1003', '手术或外伤', '11', '烫伤', '11', '0');
INSERT INTO `account_dictionary` VALUES ('20', '1003', '手术或外伤', '12', '肌腱损伤', '12', '0');
INSERT INTO `account_dictionary` VALUES ('21', '1003', '手术或外伤', '13', '皮肤软组织损伤', '13', '0');
INSERT INTO `account_dictionary` VALUES ('22', '1003', '手术或外伤', '14', '刀砍伤', '14', '0');
INSERT INTO `account_dictionary` VALUES ('25', '1003', '手术或外伤', '15', '刀刺伤', '15', '0');
INSERT INTO `account_dictionary` VALUES ('26', '1004', '家族病史', '1', '暂无', '1', '0');
INSERT INTO `account_dictionary` VALUES ('27', '1004', '家族病史', '2', '高血压', '2', '0');
INSERT INTO `account_dictionary` VALUES ('28', '1004', '家族病史', '3', '糖尿病', '3', '0');
INSERT INTO `account_dictionary` VALUES ('29', '1004', '家族病史', '4', '心脏病', '4', '0');
INSERT INTO `account_dictionary` VALUES ('30', '1004', '家族病史', '5', '脑梗', '5', '0');
INSERT INTO `account_dictionary` VALUES ('31', '1004', '家族病史', '6', '脑出血', '6', '0');
INSERT INTO `account_dictionary` VALUES ('32', '1004', '家族病史', '7', '癌症', '7', '0');
INSERT INTO `account_dictionary` VALUES ('33', '1004', '家族病史', '8', '过敏性疾病', '8', '0');
INSERT INTO `account_dictionary` VALUES ('34', '1004', '家族病史', '9', '哮喘', '9', '0');
INSERT INTO `account_dictionary` VALUES ('35', '1004', '家族病史', '10', '癫痫病', '10', '0');
INSERT INTO `account_dictionary` VALUES ('47', '1004', '家族病史', '11', '白癜风', '11', '0');
INSERT INTO `account_dictionary` VALUES ('48', '1004', '家族病史', '12', '近视', '12', '0');
INSERT INTO `account_dictionary` VALUES ('49', '1005', '药物过敏', '1', '暂无', '1', '0');
INSERT INTO `account_dictionary` VALUES ('50', '1005', '药物过敏', '2', '青霉素', '2', '0');
INSERT INTO `account_dictionary` VALUES ('51', '1005', '药物过敏', '3', '头孢类抗生素', '3', '0');
INSERT INTO `account_dictionary` VALUES ('52', '1005', '药物过敏', '4', '破伤风抗生素（TAT）', '4', '0');
INSERT INTO `account_dictionary` VALUES ('53', '1005', '药物过敏', '5', '普鲁卡因', '5', '0');
INSERT INTO `account_dictionary` VALUES ('54', '1005', '药物过敏', '6', '地卡因', '6', '0');
INSERT INTO `account_dictionary` VALUES ('55', '1005', '药物过敏', '7', '磺胺类药物', '7', '0');
INSERT INTO `account_dictionary` VALUES ('56', '1005', '药物过敏', '8', '维生素B1', '8', '0');
INSERT INTO `account_dictionary` VALUES ('57', '1005', '药物过敏', '9', '泛影葡胺', '9', '0');
INSERT INTO `account_dictionary` VALUES ('58', '1005', '药物过敏', '10', '阿司匹林', '10', '0');
INSERT INTO `account_dictionary` VALUES ('59', '1006', '食物/接触物过敏', '1', '暂无', '1', '0');
INSERT INTO `account_dictionary` VALUES ('60', '1006', '食物/接触物过敏', '2', '芒果', '2', '0');
INSERT INTO `account_dictionary` VALUES ('61', '1006', '食物/接触物过敏', '3', '牛奶', '3', '0');
INSERT INTO `account_dictionary` VALUES ('62', '1006', '食物/接触物过敏', '4', '海鲜', '4', '0');
INSERT INTO `account_dictionary` VALUES ('63', '1006', '食物/接触物过敏', '5', '竹笋', '5', '0');
INSERT INTO `account_dictionary` VALUES ('64', '1006', '食物/接触物过敏', '6', '香菇', '6', '0');
INSERT INTO `account_dictionary` VALUES ('65', '1006', '食物/接触物过敏', '7', '黄瓜', '7', '0');
INSERT INTO `account_dictionary` VALUES ('66', '1006', '食物/接触物过敏', '8', '花粉', '8', '0');
INSERT INTO `account_dictionary` VALUES ('67', '1006', '食物/接触物过敏', '9', '油漆', '9', '0');
INSERT INTO `account_dictionary` VALUES ('68', '1006', '食物/接触物过敏', '10', '皮毛', '10', '0');
INSERT INTO `account_dictionary` VALUES ('69', '1006', '食物/接触物过敏', '11', '化妆品', '11', '0');
INSERT INTO `account_dictionary` VALUES ('70', '1007', '个人习惯', '1', '低头族', '1', '0');
INSERT INTO `account_dictionary` VALUES ('71', '1007', '个人习惯', '2', '久坐', '2', '0');
INSERT INTO `account_dictionary` VALUES ('72', '1007', '个人习惯', '3', '久站', '3', '0');
INSERT INTO `account_dictionary` VALUES ('73', '1007', '个人习惯', '4', '吸烟', '4', '0');
INSERT INTO `account_dictionary` VALUES ('74', '1007', '个人习惯', '5', '饮酒', '5', '0');
INSERT INTO `account_dictionary` VALUES ('75', '1007', '个人习惯', '6', '熬夜', '6', '0');
INSERT INTO `account_dictionary` VALUES ('76', '1007', '个人习惯', '7', '跷二郎腿', '7', '0');
INSERT INTO `account_dictionary` VALUES ('77', '1007', '个人习惯', '8', '强忍大小便', '8', '0');
INSERT INTO `account_dictionary` VALUES ('78', '1007', '个人习惯', '9', '饭后卧床', '9', '0');
INSERT INTO `account_dictionary` VALUES ('79', '1007', '个人习惯', '10', '如厕所看书报', '10', '0');
INSERT INTO `account_dictionary` VALUES ('80', '1007', '个人习惯', '11', '不喜欢喝水', '11', '0');

-- ----------------------------
-- Table structure for account_equipment_map
-- ----------------------------
DROP TABLE IF EXISTS `account_equipment_map`;
CREATE TABLE `account_equipment_map` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `equipment_id` varchar(50) DEFAULT '' COMMENT '设备ID',
  `account_id` varchar(50) DEFAULT '0' COMMENT '账户ID',
  `is_delete` tinyint(2) DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='账户设备关系表';

-- ----------------------------
-- Records of account_equipment_map
-- ----------------------------
INSERT INTO `account_equipment_map` VALUES ('6', '934c3d6849350bac88313cb5962568b4', 'hm_mi9zm785zq8nx', '0', '2018-04-21 13:29:58', '2018-04-21 13:25:59');
INSERT INTO `account_equipment_map` VALUES ('7', '65f43e8bf1d600a0bc39711667ef371e', 'hm_s9kpcie2i9369', '0', '2018-04-21 13:29:53', '2018-04-21 13:29:53');
INSERT INTO `account_equipment_map` VALUES ('8', '07942b54dbb1decf510850023d54e15e', 'hm_a2ksmvsr8ip5x', '0', '2018-04-21 13:30:27', '2018-04-21 13:30:27');

-- ----------------------------
-- Table structure for account_health
-- ----------------------------
DROP TABLE IF EXISTS `account_health`;
CREATE TABLE `account_health` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(16) NOT NULL COMMENT '账户ID',
  `fertility_status` tinyint(2) DEFAULT NULL COMMENT '生育状态0:未知 1:未生育 2：备孕期 3：怀孕期 4：已生育',
  `health_care` tinyint(2) DEFAULT NULL COMMENT '医保0:未知 1:是 2：否',
  `hospital_bed` varchar(32) DEFAULT NULL COMMENT '病床',
  `hospital_status` tinyint(2) DEFAULT NULL COMMENT '住院状态',
  `care_worker` varchar(32) DEFAULT NULL COMMENT '护工',
  `treatment_status` tinyint(2) DEFAULT NULL COMMENT '治疗状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) DEFAULT NULL COMMENT '创建人',
  `is_delete` tinyint(2) DEFAULT '0' COMMENT '是否删除0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='基本健康信息表';

-- ----------------------------
-- Records of account_health
-- ----------------------------
INSERT INTO `account_health` VALUES ('57', 'admin', '1', '1', '外科-01床', '2', '韩梅梅', '1', '2018-03-30 16:51:44', 'admin', '0', null);
INSERT INTO `account_health` VALUES ('58', 'test', '1', '1', '外科-02床', '2', '韩梅梅', '1', '2018-03-30 16:51:44', 'admin', '0', null);
INSERT INTO `account_health` VALUES ('59', 'root', '1', '1', '外科-03床', '1', '韩梅梅', '1', '2018-03-30 16:51:44', 'admin', '0', null);
INSERT INTO `account_health` VALUES ('61', 'hm_69xj42jxgmqki', '3', '1', '病床一', null, '护工阿姨', '0', '2018-04-03 14:06:05', 'admin', '0', null);
INSERT INTO `account_health` VALUES ('62', 'hm_2agnmuy2znt8k', '0', '2', '4-1', null, '', '0', '2018-04-03 14:09:51', 'admin', '0', null);
INSERT INTO `account_health` VALUES ('63', 'hm_f3ven29q6j7cx', '0', '0', null, null, null, '0', '2018-04-03 14:52:32', 'admin', '0', null);
INSERT INTO `account_health` VALUES ('64', 'hm_mi9zm785zq8nx', '4', '1', '4-1', null, '', '0', '2018-04-03 16:55:25', 'admin', '0', null);
INSERT INTO `account_health` VALUES ('65', 'hm_dmj7gkgd58qkj', '0', '0', null, null, null, '0', '2018-04-18 17:46:13', 'admin', '0', null);
INSERT INTO `account_health` VALUES ('66', 'hm_2g8gskicuf69r', '0', '0', null, null, null, '0', '2018-04-19 11:22:35', 'admin', '0', null);

-- ----------------------------
-- Table structure for account_health_info
-- ----------------------------
DROP TABLE IF EXISTS `account_health_info`;
CREATE TABLE `account_health_info` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `account_id` varchar(16) NOT NULL DEFAULT '' COMMENT '账户ID',
  `health_type` bigint(11) NOT NULL DEFAULT '0',
  `sub_type` int(11) NOT NULL DEFAULT '0' COMMENT '子类型',
  `health_desc` varchar(128) DEFAULT '' COMMENT '描述',
  `create_time` timestamp NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL,
  `creator` varchar(16) NOT NULL COMMENT '创建人',
  `is_delete` tinyint(2) NOT NULL COMMENT '0未删除 1已删除',
  `status` tinyint(2) NOT NULL COMMENT '是否选中0未删除 1已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='字典表';

-- ----------------------------
-- Records of account_health_info
-- ----------------------------
INSERT INTO `account_health_info` VALUES ('1', 'hm_mi9zm785zq8nx', '1003', '2', '', '2018-04-08 15:19:28', '2018-04-08 15:19:30', 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('2', 'hm_mi9zm785zq8nx', '1004', '2', '', '2018-04-08 15:20:10', '2018-04-08 15:20:12', 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('3', 'hm_mi9zm785zq8nx', '1005', '2', '', '2018-04-08 15:20:33', '2018-04-08 15:20:34', 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('4', 'hm_mi9zm785zq8nx', '1006', '2', '', '2018-04-08 15:20:54', '2018-04-08 15:20:55', 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('5', 'hm_mi9zm785zq8nx', '1007', '2', '', '2018-04-08 15:21:15', '2018-04-08 15:21:16', 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('51', 'hm_mi9zm785zq8nx', '1003', '0', 'Gfffgi', '2018-04-13 17:17:19', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('52', 'hm_69xj42jxgmqki', '1003', '2', null, '2018-04-09 17:37:47', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('53', 'hm_69xj42jxgmqki', '1004', '2', null, '2018-04-09 17:37:47', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('54', 'hm_69xj42jxgmqki', '1003', '0', 'Gfffgi^_^^_^^_^^_^^_^^_^^_^', '2018-04-20 13:40:47', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('55', 'hm_69xj42jxgmqki', '1004', '0', 'Kkkkkk', '2018-04-09 17:42:00', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('56', 'hm_69xj42jxgmqki', '1005', '0', 'Uuuuu', '2018-04-09 18:05:04', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('57', 'hm_69xj42jxgmqki', '1006', '0', 'Uuuu', '2018-04-09 18:05:04', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('58', 'hm_69xj42jxgmqki', '1007', '0', 'Uuuu', '2018-04-09 18:05:04', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('62', 'hm_69xj42jxgmqki', '1003', '1', null, '2018-04-11 18:29:51', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('63', 'hm_69xj42jxgmqki', '1003', '3', null, '2018-04-20 13:40:39', null, 'admin', '0', '1');
INSERT INTO `account_health_info` VALUES ('64', 'hm_69xj42jxgmqki', '1003', '5', null, '2018-04-20 13:40:39', null, 'admin', '0', '1');
INSERT INTO `account_health_info` VALUES ('65', 'hm_mi9zm785zq8nx', '1003', '1', null, '2018-04-13 17:17:19', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('66', 'hm_mi9zm785zq8nx', '1003', '3', null, '2018-04-13 17:17:19', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('67', 'hm_mi9zm785zq8nx', '1003', '5', null, '2018-04-13 17:17:19', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('68', 'hm_mi9zm785zq8nx', '1004', '0', 'Kkkkkk', '2018-04-13 17:17:19', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('69', 'hm_mi9zm785zq8nx', '1005', '0', 'Uuuuu', '2018-04-13 17:17:19', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('70', 'hm_mi9zm785zq8nx', '1006', '0', 'Uuuu', '2018-04-13 17:17:19', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('71', 'hm_mi9zm785zq8nx', '1007', '0', 'Uuuu', '2018-04-13 17:17:19', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('72', 'hm_mi9zm785zq8nx', '1003', '8', null, '2018-04-18 21:50:00', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('73', 'hm_mi9zm785zq8nx', '1003', '9', null, '2018-04-18 21:50:00', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('74', 'hm_mi9zm785zq8nx', '1003', '13', null, '2018-04-18 21:50:00', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('75', 'hm_mi9zm785zq8nx', '1004', '4', null, '2018-04-18 21:50:00', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('76', 'hm_mi9zm785zq8nx', '1003', '4', null, '2018-04-19 20:44:11', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('77', 'hm_mi9zm785zq8nx', '1003', '7', null, '2018-04-19 20:45:03', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('78', 'hm_mi9zm785zq8nx', '1004', '6', null, '2018-04-19 21:00:10', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('79', 'hm_mi9zm785zq8nx', '1005', '4', null, '2018-04-19 21:00:10', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('80', 'hm_mi9zm785zq8nx', '1006', '4', null, '2018-04-19 21:00:19', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('81', 'hm_mi9zm785zq8nx', '1004', '3', null, '2018-04-19 21:03:13', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('82', 'hm_mi9zm785zq8nx', '1004', '8', null, '2018-04-19 21:03:13', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('83', 'hm_mi9zm785zq8nx', '1005', '3', null, '2018-04-19 21:03:13', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('84', 'hm_mi9zm785zq8nx', '1005', '7', null, '2018-04-19 21:03:13', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('85', 'hm_69xj42jxgmqki', '1005', '2', null, '2018-04-20 13:41:07', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('86', 'hm_69xj42jxgmqki', '1005', '4', null, '2018-04-20 13:41:07', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('87', 'hm_69xj42jxgmqki', '1007', '11', null, '2018-04-20 13:41:14', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('88', 'hm_69xj42jxgmqki', '1007', '3', null, '2018-04-20 13:41:19', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('89', 'hm_69xj42jxgmqki', '1006', '7', null, '2018-04-20 13:41:24', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('90', 'hm_69xj42jxgmqki', '1006', '11', null, '2018-04-20 13:41:24', null, 'admin', '0', '0');
INSERT INTO `account_health_info` VALUES ('91', 'hm_69xj42jxgmqki', '1005', '5', null, '2018-04-20 13:41:30', null, 'admin', '0', '0');

-- ----------------------------
-- Table structure for account_label
-- ----------------------------
DROP TABLE IF EXISTS `account_label`;
CREATE TABLE `account_label` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `label_id` varchar(16) NOT NULL COMMENT '标签ID',
  `account_id` varchar(32) NOT NULL COMMENT '账户ID',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '0:无效 1:有效',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) DEFAULT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='账户标签表';

-- ----------------------------
-- Records of account_label
-- ----------------------------
INSERT INTO `account_label` VALUES ('6', '12156', 'admin', '1', '2018-03-05 15:06:13', 'test', '0', '2018-04-02 14:15:16');
INSERT INTO `account_label` VALUES ('7', '12157', 'admin', '1', '2018-03-05 15:06:13', 'test', '0', '2018-04-02 14:17:26');
INSERT INTO `account_label` VALUES ('8', '12158', 'admin', '1', '2018-03-05 15:06:13', 'test', '0', '2018-04-02 14:17:28');
INSERT INTO `account_label` VALUES ('9', '12159', 'test', '1', '2018-03-05 15:06:13', 'test', '0', '2018-04-02 14:17:28');
INSERT INTO `account_label` VALUES ('10', '12160', 'test', '1', '2018-03-05 15:06:13', 'test', '0', '2018-04-02 14:17:29');
INSERT INTO `account_label` VALUES ('11', '12161', 'test', '1', '2018-03-05 15:06:13', 'test', '0', '2018-04-02 14:17:29');
INSERT INTO `account_label` VALUES ('12', '12162', 'root', '1', '2018-03-05 15:06:13', 'test', '0', '2018-04-02 14:17:30');
INSERT INTO `account_label` VALUES ('13', '12163', 'root', '1', '2018-03-05 15:06:13', 'test', '0', '2018-04-02 14:17:32');
INSERT INTO `account_label` VALUES ('14', '12164', 'root', '1', '2018-03-05 15:06:13', 'test', '0', '2018-04-02 14:17:35');

-- ----------------------------
-- Table structure for account_label_info
-- ----------------------------
DROP TABLE IF EXISTS `account_label_info`;
CREATE TABLE `account_label_info` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `label_id` varchar(16) DEFAULT NULL COMMENT '标签ID',
  `parent_label_id` varchar(16) DEFAULT NULL COMMENT '父标签ID',
  `label_name` varchar(16) DEFAULT NULL COMMENT '标签名称',
  `label_desc` varchar(64) DEFAULT NULL COMMENT '标签描述',
  `creator` varchar(32) DEFAULT '' COMMENT '创建人',
  `is_delete` tinyint(2) DEFAULT '0' COMMENT '是否删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='标签表';

-- ----------------------------
-- Records of account_label_info
-- ----------------------------
INSERT INTO `account_label_info` VALUES ('1', '12151', null, '医保', null, '', '0', null, null);
INSERT INTO `account_label_info` VALUES ('2', '12152', null, '二级', null, '', '0', null, null);
INSERT INTO `account_label_info` VALUES ('3', '12153', null, '手术', null, '', '0', null, null);
INSERT INTO `account_label_info` VALUES ('4', '12154', null, '测试', null, '', '0', null, null);
INSERT INTO `account_label_info` VALUES ('5', '12155', null, '版本', null, '', '0', null, null);
INSERT INTO `account_label_info` VALUES ('6', '12156', null, '医保', null, '', '0', null, null);
INSERT INTO `account_label_info` VALUES ('7', '12157', null, '二级', null, '', '0', null, null);
INSERT INTO `account_label_info` VALUES ('8', '12158', null, '手术', null, '', '0', null, null);
INSERT INTO `account_label_info` VALUES ('9', '12159', null, '医保', null, '', '0', null, null);
INSERT INTO `account_label_info` VALUES ('10', '12160', null, '二级', null, '', '0', null, null);
INSERT INTO `account_label_info` VALUES ('11', '12161', null, '手术', null, '', '0', null, null);
INSERT INTO `account_label_info` VALUES ('12', '12162', null, '医保', null, '', '0', null, null);
INSERT INTO `account_label_info` VALUES ('13', '12163', null, '二级', null, '', '0', null, null);
INSERT INTO `account_label_info` VALUES ('14', '12164', null, '手术', null, '', '0', null, null);

-- ----------------------------
-- Table structure for account_login_record
-- ----------------------------
DROP TABLE IF EXISTS `account_login_record`;
CREATE TABLE `account_login_record` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(32) DEFAULT NULL COMMENT '账户ID',
  `login_type` tinyint(2) DEFAULT NULL COMMENT '登录方式1:手机号 2:账号 3:微信 4:QQ',
  `password` varchar(64) DEFAULT NULL COMMENT '密码/验证码',
  `login_status` tinyint(2) DEFAULT NULL COMMENT '登录状态 1:成功 2:失败 3:被禁 4:异常',
  `system` varchar(32) DEFAULT NULL COMMENT '系统',
  `product` varchar(32) DEFAULT NULL COMMENT '产品',
  `version` varchar(8) DEFAULT NULL COMMENT '版本号',
  `equipment_id` varchar(50) DEFAULT NULL COMMENT '设备ID',
  `longitude` varchar(32) DEFAULT NULL COMMENT '经度',
  `latitude` varchar(32) DEFAULT NULL COMMENT '纬度',
  `ip_source` varchar(16) DEFAULT NULL COMMENT '来源IP',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) DEFAULT NULL,
  `is_delete` tinyint(2) DEFAULT NULL COMMENT '0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1851 DEFAULT CHARSET=utf8 COMMENT='账户登录记录表';

-- ----------------------------
-- Records of account_login_record
-- ----------------------------
INSERT INTO `account_login_record` VALUES ('473', 'hm_2agnmuy2znt8k', '1', '123456', '1', null, null, null, null, null, null, null, '2018-04-03 14:11:53', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1200', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 13:33:06', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1201', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 13:55:54', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1202', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 13:57:49', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1203', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 14:00:20', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1204', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 14:05:59', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1205', null, '2', '123456', '2', null, null, null, null, null, null, null, '2018-04-13 14:06:49', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1206', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 14:07:52', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1207', 'hm_2agnmuy2znt8k', '1', '123456', '1', null, null, null, null, null, null, null, '2018-04-13 14:08:49', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1208', 'hm_2agnmuy2znt8k', '1', '123456', '1', null, null, null, null, null, null, null, '2018-04-13 14:09:25', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1209', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 14:11:07', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1210', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 14:11:12', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1211', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 14:18:03', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1212', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 14:19:34', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1213', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 14:21:52', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1214', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 14:24:38', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1215', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 14:44:46', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1216', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 14:50:14', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1217', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 14:52:21', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1218', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 14:54:37', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1219', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 14:57:23', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1220', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 15:01:09', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1221', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 15:03:00', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1222', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 15:03:39', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1223', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 15:06:21', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1224', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 15:09:52', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1225', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 15:12:32', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1226', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 15:13:54', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1227', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 15:15:14', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1228', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 15:17:50', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1229', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 15:21:08', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1230', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 15:23:38', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1231', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 15:25:26', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1232', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 15:27:38', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1233', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 15:38:32', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1234', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 15:40:27', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1235', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 15:56:47', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1236', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 15:58:52', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1237', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 16:22:58', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1238', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 16:24:40', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1239', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 16:26:36', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1240', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 16:28:41', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1241', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 16:31:51', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1242', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 16:33:17', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1243', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 16:35:50', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1244', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 16:36:56', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1245', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 16:37:54', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1246', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 16:39:04', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1247', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 16:42:05', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1248', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 17:04:05', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1249', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 17:06:01', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1250', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 17:07:21', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1251', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 17:08:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1252', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 17:16:44', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1253', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 17:23:33', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1254', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 17:34:06', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1255', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 17:43:29', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1256', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 17:53:51', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1257', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 17:59:00', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1258', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 18:02:32', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1259', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 18:06:08', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1260', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 18:07:19', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1261', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 18:10:47', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1262', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 18:18:22', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1263', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 18:22:47', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1264', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 18:28:35', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1265', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 18:30:50', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1266', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 18:35:16', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1267', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-13 18:36:42', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1268', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-16 09:14:37', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1269', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 09:15:29', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1270', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-16 09:21:08', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1271', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 09:23:07', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1272', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 09:30:51', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1273', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 09:32:54', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1274', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-16 09:34:24', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1275', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-16 09:35:58', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1276', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 09:36:16', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1277', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 09:40:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1278', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 09:42:41', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1279', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 09:44:39', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1280', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 09:46:57', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1281', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 09:49:30', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1282', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 09:51:53', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1283', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 09:53:04', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1284', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 09:55:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1285', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 09:58:44', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1286', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:00:11', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1287', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:01:15', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1288', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:02:13', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1289', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:04:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1290', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:05:59', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1291', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:07:16', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1292', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:13:11', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1293', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:14:23', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1294', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:15:24', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1295', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:19:30', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1296', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:22:02', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1297', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:28:57', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1298', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:30:14', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1299', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:34:12', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1300', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:36:34', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1301', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:37:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1302', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:40:58', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1303', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:42:44', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1304', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:44:19', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1305', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:46:04', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1306', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:47:14', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1307', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:50:48', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1308', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:51:49', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1309', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:56:54', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1310', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 10:59:49', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1311', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 11:03:18', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1312', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 11:04:42', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1313', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 11:13:37', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1314', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 12:29:14', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1315', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 12:30:52', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1316', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 12:35:18', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1317', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 12:43:05', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1318', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 12:48:51', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1319', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 13:02:44', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1320', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 13:05:16', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1321', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 13:07:07', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1322', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 13:22:58', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1323', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 13:27:48', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1324', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 13:30:02', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1325', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 13:39:16', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1326', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 13:40:39', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1327', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 13:43:28', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1328', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 13:44:56', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1329', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 13:46:05', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1330', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 13:47:42', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1331', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 14:25:41', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1332', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 14:26:23', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1333', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 14:29:44', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1334', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 14:34:56', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1335', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 14:51:03', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1336', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 14:51:58', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1337', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 15:59:01', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1338', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 17:05:24', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1339', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 17:07:13', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1340', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 17:08:54', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1341', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 17:11:11', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1342', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 17:13:10', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1343', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 17:58:40', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1344', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 18:00:58', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1345', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 18:01:38', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1346', 'hm_2agnmuy2znt8k', '1', '123456', '1', null, null, null, null, null, null, null, '2018-04-16 18:02:16', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1347', 'hm_2agnmuy2znt8k', '1', '123456', '1', null, null, null, null, null, null, null, '2018-04-16 18:03:56', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1348', 'hm_2agnmuy2znt8k', '1', '123456', '1', null, null, null, null, null, null, null, '2018-04-16 18:04:18', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1349', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 18:04:59', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1350', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 18:06:37', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1351', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 18:18:07', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1352', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 18:23:20', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1353', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-16 18:28:58', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1354', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 18:31:52', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1355', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 19:05:09', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1356', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 19:13:38', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1357', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 19:25:42', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1358', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 19:37:59', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1359', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 19:42:35', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1360', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 19:50:01', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1361', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 19:50:49', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1362', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 19:54:35', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1363', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 19:55:42', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1364', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 20:23:29', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1365', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 20:42:59', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1366', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 20:44:48', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1367', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 20:46:59', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1368', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 20:53:05', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1369', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 21:19:23', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1370', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 21:22:49', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1371', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 21:24:50', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1372', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 21:26:05', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1373', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 21:31:34', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1374', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-16 21:48:38', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1375', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 09:15:16', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1376', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 09:20:15', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1377', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 09:21:13', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1378', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 09:26:27', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1379', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 09:32:59', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1380', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 09:36:01', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1381', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 09:40:55', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1382', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 09:50:36', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1383', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 09:52:14', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1384', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 09:53:13', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1385', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 09:57:37', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1386', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 09:59:58', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1387', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 10:03:58', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1388', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-17 11:25:03', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1389', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 11:25:44', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1390', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 11:27:01', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1391', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 11:29:05', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1392', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-17 11:29:49', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1393', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-17 11:39:22', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1394', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 14:03:57', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1395', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 14:05:37', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1396', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 14:58:57', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1397', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 15:49:59', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1398', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 16:03:35', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1399', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 16:05:21', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1400', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 16:39:16', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1401', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 16:41:55', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1402', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 16:42:30', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1403', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 16:44:17', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1404', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 16:54:07', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1405', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 16:56:09', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1406', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 17:01:00', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1407', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 17:03:16', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1408', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 17:05:19', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1409', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 17:07:56', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1410', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 17:09:20', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1411', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 17:11:33', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1412', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 17:35:40', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1413', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 17:37:31', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1414', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 17:40:07', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1415', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 17:41:45', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1416', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 17:43:02', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1417', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 17:45:29', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1418', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 17:47:08', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1419', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 17:47:54', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1420', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 17:55:38', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1421', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 18:05:13', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1422', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 18:06:26', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1423', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 18:10:49', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1424', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 18:12:33', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1425', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 18:13:37', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1426', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 18:17:38', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1427', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 18:18:47', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1428', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 18:19:15', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1429', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 18:21:06', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1430', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 18:25:56', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1431', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 18:44:20', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1432', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 18:46:19', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1433', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 18:46:42', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1434', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 18:55:08', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1435', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 18:56:57', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1436', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 19:00:36', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1437', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 19:07:33', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1438', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 19:11:54', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1439', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 19:16:57', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1440', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 19:18:13', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1441', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 19:29:16', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1442', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 19:32:56', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1443', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 19:33:27', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1444', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 19:35:41', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1445', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 19:40:24', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1446', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 19:41:37', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1447', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 19:48:36', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1448', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 19:51:46', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1449', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 19:54:13', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1450', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 19:57:53', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1451', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 19:59:55', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1452', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 20:10:07', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1453', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 20:15:37', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1454', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 20:18:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1455', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 20:22:15', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1456', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 20:24:29', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1457', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 20:29:12', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1458', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 20:30:13', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1459', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 20:31:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1460', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 20:48:45', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1461', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 20:50:57', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1462', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 20:54:50', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1463', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-17 20:56:35', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1464', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 09:13:44', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1465', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 09:14:47', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1466', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 09:18:40', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1467', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 09:21:00', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1468', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 09:23:53', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1469', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 09:26:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1470', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 09:33:04', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1471', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 09:35:11', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1472', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 09:38:59', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1473', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 09:46:58', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1474', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 10:11:40', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1475', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 10:12:40', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1476', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 10:25:35', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1477', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 10:26:57', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1478', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 10:27:20', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1479', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 10:29:47', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1480', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 10:30:59', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1481', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 10:36:28', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1482', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 10:37:32', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1483', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 10:44:01', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1484', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 10:53:28', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1485', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 10:55:36', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1486', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 10:56:35', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1487', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 10:56:54', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1488', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 10:57:02', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1489', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 11:00:23', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1490', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 11:00:42', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1491', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 11:02:44', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1492', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 11:05:11', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1493', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 11:06:29', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1494', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 11:09:40', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1495', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 11:10:17', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1496', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 11:13:04', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1497', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 11:15:05', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1498', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 11:15:32', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1499', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 11:17:41', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1500', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 11:19:45', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1501', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 11:22:26', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1502', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 11:23:29', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1503', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 11:36:00', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1504', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 12:43:21', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1505', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 13:01:09', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1506', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 13:04:38', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1507', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 13:07:16', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1508', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 13:11:29', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1509', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 13:14:50', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1510', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 13:19:47', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1511', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 13:22:00', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1512', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 13:26:58', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1513', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 13:28:54', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1514', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 13:32:33', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1515', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 13:35:25', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1516', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 13:38:17', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1517', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 13:50:03', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1518', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 13:50:40', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1519', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:19:03', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1520', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:20:15', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1521', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:21:31', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1522', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:25:49', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1523', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:26:26', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1524', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 14:27:20', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1525', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:28:00', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1526', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:29:25', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1527', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:36:05', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1528', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:37:01', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1529', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:40:22', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1530', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:43:37', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1531', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:44:21', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1532', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 14:44:22', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1533', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:44:41', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1534', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:48:13', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1535', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 14:50:03', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1536', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:50:31', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1537', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 14:52:12', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1538', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 14:52:41', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1539', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:53:49', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1540', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:55:14', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1541', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 14:55:27', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1542', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:57:03', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1543', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:59:00', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1544', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 14:59:57', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1545', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 15:04:25', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1546', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 15:07:37', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1547', null, '1', '338', '2', null, null, null, null, null, null, null, '2018-04-18 15:10:38', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1548', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 15:17:49', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1549', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 15:23:35', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1550', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 15:25:09', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1551', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 15:29:28', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1552', null, '1', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 15:42:40', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1553', null, '1', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 15:43:19', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1554', null, '1', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 15:43:28', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1555', null, '1', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 15:52:37', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1556', null, '1', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 15:52:40', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1557', null, '1', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 15:59:34', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1558', 'hm_s9kpcie2i9369', '1', '064791', '1', null, null, null, null, null, null, null, '2018-04-18 16:12:23', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1559', null, '1', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 16:22:31', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1560', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 16:23:28', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1561', 'admin', '2', '123456', '1', null, null, null, null, null, null, null, '2018-04-18 16:25:14', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1562', null, '1', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 16:32:06', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1563', null, '1', '123456', '2', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 16:34:50', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1564', null, '1', '123456', '2', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 16:35:13', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1565', null, '1', '123456', '2', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 16:35:41', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1566', null, '1', '123456', '2', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 16:36:07', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1567', null, '1', '123456', '2', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 16:37:02', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1568', 'hm_s9kpcie2i9369', '1', '988453', '1', null, null, null, null, null, null, null, '2018-04-18 16:45:30', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1569', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 16:49:56', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1570', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 16:53:30', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1571', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 16:53:36', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1572', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 17:01:56', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1573', null, '1', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 17:02:45', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1574', 'hm_2agnmuy2znt8k', '1', '600000', '1', null, null, null, null, null, null, null, '2018-04-18 17:04:18', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1575', 'hm_s9kpcie2i9369', '1', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 17:06:04', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1576', 'hm_69xj42jxgmqki', '1', '123456', '2', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 17:06:26', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1577', 'hm_69xj42jxgmqki', '1', '123456', '2', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 17:06:33', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1578', 'hm_69xj42jxgmqki', '1', '123456', '2', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 17:06:35', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1579', '15608470049', '2', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 17:11:51', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1580', '17708494023', '2', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 17:40:07', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1581', '17708494023', '2', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 17:40:26', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1582', '15608470049', '2', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 17:41:14', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1583', '17708494021', '2', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 17:42:13', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1584', '15608470049', '2', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 17:42:23', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1585', null, '1', '338206', '2', null, null, null, null, null, null, null, '2018-04-18 17:42:27', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1586', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 17:43:37', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1587', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 17:44:05', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1588', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 17:44:38', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1589', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 17:45:09', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1590', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 17:45:31', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1591', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 17:45:49', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1592', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 17:47:05', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1593', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 17:48:50', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1594', 'hm_q7k9tumu8ekaj', '1', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 17:45:49', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1595', 'hm_dmj7gkgd58qkj', '1', '123456', '1', null, null, null, null, null, null, null, '2018-04-18 17:46:13', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1596', '18994710039', '2', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 17:51:15', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1597', '18994710039', '2', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 17:51:19', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1598', '18994710039', '2', '123456', '2', null, null, null, null, null, null, null, '2018-04-18 17:51:21', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1599', 'admin', '1', '123456', '1', null, null, null, null, null, null, null, '2018-04-18 17:52:54', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1600', 'admin', '2', '123456', '1', null, null, null, null, null, null, null, '2018-04-18 17:53:46', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1601', 'admin', '2', '123456', '1', null, null, null, null, null, null, null, '2018-04-18 17:55:05', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1602', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 18:00:48', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1603', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 18:03:13', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1604', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 18:09:04', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1605', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 18:13:18', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1606', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 18:21:47', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1607', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 18:29:05', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1608', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 18:30:23', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1609', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 18:32:00', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1610', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 18:34:32', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1611', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 18:35:57', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1612', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 18:42:11', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1613', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 18:45:32', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1614', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 18:48:48', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1615', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 18:50:33', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1616', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 18:52:52', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1617', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 18:54:17', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1618', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-18 19:01:24', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1619', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 19:01:47', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1620', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 19:48:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1621', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 20:06:01', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1622', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 20:11:13', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1623', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 20:13:16', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1624', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 20:14:52', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1625', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 20:17:56', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1626', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 20:20:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1627', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 20:26:57', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1628', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 20:28:22', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1629', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 20:30:18', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1630', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 20:33:57', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1631', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 20:39:40', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1632', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 20:41:10', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1633', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 20:44:34', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1634', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 20:46:17', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1635', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 20:50:02', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1636', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 20:53:14', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1637', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 20:55:15', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1638', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 21:11:32', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1639', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 21:13:08', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1640', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 21:23:27', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1641', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 21:24:05', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1642', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 21:26:59', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1643', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 21:34:56', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1644', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 21:36:39', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1645', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-18 21:49:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1646', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 09:20:55', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1647', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 09:39:35', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1648', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 09:43:58', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1649', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 09:48:57', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1650', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 09:56:15', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1651', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 10:03:29', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1652', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 10:13:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1653', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 10:16:35', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1654', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 10:18:04', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1655', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 10:20:56', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1656', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 10:27:06', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1657', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 10:36:28', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1658', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 10:38:53', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1659', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 10:45:07', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1660', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 10:47:19', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1661', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 10:49:52', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1662', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 10:50:33', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1663', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 10:53:22', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1664', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 11:15:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1665', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-19 11:21:31', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1666', null, '1', '788225', '2', null, null, null, null, null, null, null, '2018-04-19 11:22:27', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1667', 'hm_2g8gskicuf69r', '1', '788215', '1', null, null, null, null, null, null, null, '2018-04-19 11:22:35', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1668', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-19 11:22:35', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1669', 'hm_2g8gskicuf69r', '1', '143513', '1', null, null, null, null, null, null, null, '2018-04-19 11:25:24', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1670', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-19 11:28:32', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1671', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-19 11:29:35', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1672', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-19 11:30:11', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1673', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-19 11:30:29', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1674', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-19 11:31:20', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1675', 'hm_2g8gskicuf69r', '1', '999961', '1', null, null, null, null, null, null, null, '2018-04-19 11:32:24', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1676', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-19 11:46:42', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1677', '155', '2', '6346465', '2', null, null, null, null, null, null, null, '2018-04-19 12:24:00', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1678', '155', '2', '6346465', '2', null, null, null, null, null, null, null, '2018-04-19 12:24:02', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1679', '155', '2', '6346465', '2', null, null, null, null, null, null, null, '2018-04-19 12:24:03', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1680', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 12:43:18', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1681', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 12:44:58', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1682', '17708494023', '2', '123456', '2', null, null, null, null, null, null, null, '2018-04-19 12:45:33', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1683', 'hm_a2ksmvsr8ip5x', '1', '677333', '1', null, null, null, null, null, null, null, '2018-04-19 12:46:29', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1684', 'hm_a2ksmvsr8ip5x', '1', '677333', '1', null, null, null, null, null, null, null, '2018-04-19 12:47:20', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1685', null, '1', '677333', '2', null, null, null, null, null, null, null, '2018-04-19 13:11:13', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1686', 'hm_a2ksmvsr8ip5x', '1', '442025', '1', null, null, null, null, null, null, null, '2018-04-19 13:11:30', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1687', 'hm_a2ksmvsr8ip5x', '1', '442025', '1', null, null, null, null, null, null, null, '2018-04-19 13:13:09', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1688', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 13:41:01', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1689', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 13:41:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1690', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 13:57:26', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1691', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 14:04:07', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1692', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 14:18:01', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1693', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 14:19:25', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1694', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 14:21:45', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1695', null, '1', '123456', '2', null, null, null, null, null, null, null, '2018-04-19 14:22:29', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1696', '17708494021', '2', '123456', '2', null, null, null, null, null, null, null, '2018-04-19 14:22:39', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1697', 'admin', '2', '123456', '1', null, null, null, null, null, null, null, '2018-04-19 14:22:53', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1698', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 14:25:40', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1699', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 14:32:59', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1700', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 14:42:10', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1701', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 14:44:57', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1702', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 14:55:58', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1703', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 14:59:47', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1704', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 15:01:16', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1705', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 15:02:55', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1706', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 15:05:01', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1707', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 15:06:26', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1708', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 15:09:46', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1709', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 15:27:27', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1710', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 15:30:23', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1711', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 15:33:10', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1712', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 15:37:16', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1713', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 15:38:30', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1714', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 15:53:09', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1715', 'admin', '2', '123456', '1', null, null, null, null, null, null, null, '2018-04-19 15:53:28', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1716', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 16:32:46', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1717', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 17:09:10', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1718', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 17:10:44', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1719', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 17:37:54', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1720', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 17:37:59', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1721', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 17:38:13', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1722', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 17:41:39', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1723', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 17:42:46', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1724', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 17:42:54', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1725', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-19 17:49:18', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1726', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 17:53:58', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1727', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-19 20:39:19', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1728', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 10:16:42', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1729', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 10:16:44', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1730', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 10:17:05', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1731', '17708494021', '2', '123456', '2', null, null, null, null, null, null, null, '2018-04-20 10:20:30', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1732', 'hm_2agnmuy2znt8k', '1', '123456', '1', null, null, null, null, null, null, null, '2018-04-20 10:20:38', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1733', 'hm_2agnmuy2znt8k', '1', '123456', '1', null, null, null, null, null, null, null, '2018-04-20 10:23:26', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1734', 'hm_2agnmuy2znt8k', '1', '123456', '1', null, null, null, null, null, null, null, '2018-04-20 10:32:46', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1735', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 10:37:00', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1736', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 10:37:03', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1737', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 10:37:07', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1738', 'hm_2agnmuy2znt8k', '1', '123456', '1', null, null, null, null, null, null, null, '2018-04-20 10:44:28', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1739', 'hm_2agnmuy2znt8k', '1', '123456', '1', null, null, null, null, null, null, null, '2018-04-20 10:52:00', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1740', null, '1', '123456', '2', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 10:57:59', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1741', 'hm_mi9zm785zq8nx', '1', '338206', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 11:00:37', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1742', 'hm_mi9zm785zq8nx', '1', '338206', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 11:12:06', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1743', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 11:17:18', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1744', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 11:17:21', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1745', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 11:33:28', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1746', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 11:33:30', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1747', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 11:33:33', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1748', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 11:38:56', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1749', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 12:31:06', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1750', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 13:36:52', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1751', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 13:44:41', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1752', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 13:46:33', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1753', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 13:48:24', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1754', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 13:55:09', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1755', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 13:55:13', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1756', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 13:55:15', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1757', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 13:58:59', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1758', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 13:59:01', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1759', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 13:59:04', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1760', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 14:11:24', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1761', 'admin', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 14:12:37', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1762', 'admin', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 14:14:19', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1763', 'admin', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 14:15:01', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1764', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 14:51:39', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1765', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 14:51:41', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1766', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 14:51:45', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1767', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 15:03:26', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1768', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 15:03:28', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1769', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 15:03:30', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1770', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 15:03:32', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1771', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 15:06:47', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1772', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 15:11:40', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1773', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 15:11:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1774', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 15:19:03', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1775', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 15:19:06', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1776', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 15:19:07', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1777', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 15:40:14', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1778', 'admin', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 15:40:40', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1779', 'admin', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 15:41:26', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1780', 'admin', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 15:48:02', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1781', 'test', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 15:49:41', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1782', 'test', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 15:50:21', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1783', 'admin', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 15:50:46', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1784', 'admin', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 15:51:15', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1785', 'admin', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 15:55:08', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1786', 'test', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 15:55:38', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1787', 'test', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 15:56:05', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1788', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 15:57:32', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1789', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 15:57:53', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1790', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 16:37:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1791', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 16:37:47', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1792', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 16:37:49', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1793', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 16:41:11', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1794', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 16:41:13', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1795', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 16:41:15', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1796', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 16:41:16', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1797', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 16:45:42', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1798', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 16:45:45', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1799', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 16:45:47', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1800', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 16:50:48', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1801', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 16:50:55', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1802', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 16:53:19', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1803', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 16:53:21', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1804', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 16:53:22', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1805', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 16:53:25', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1806', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 16:58:16', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1807', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 17:24:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1808', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 17:24:44', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1809', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 17:24:46', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1810', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 17:24:48', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1811', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 17:38:59', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1812', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 17:39:01', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1813', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 17:39:04', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1814', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 17:43:23', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1815', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 17:43:27', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1816', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 17:43:29', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1817', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-20 17:50:25', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1818', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 17:52:04', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1819', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 17:52:06', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1820', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 17:52:07', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1821', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 17:52:09', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1822', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 18:06:04', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1823', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 18:06:06', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1824', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 18:06:09', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1825', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 18:11:39', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1826', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 18:11:42', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1827', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 18:11:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1828', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 18:11:46', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1829', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 18:14:00', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1830', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 18:14:02', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1831', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 18:14:05', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1832', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 18:14:07', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1833', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 18:18:48', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1834', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 18:18:51', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1835', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 18:29:58', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1836', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 18:30:01', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1837', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 18:30:04', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1838', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 18:47:23', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1839', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-20 18:47:28', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1840', 'admin', '2', '', '2', 'system', 'product', 'version', '934c3d6849350bac88313cb5962568b4', 'longitude', 'latitude', 'ipSource', '2018-04-21 13:21:04', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1841', null, '1', 'code', '2', 'system', 'product', 'version', '934c3d6849350bac88313cb5962568b4', 'longitude', 'latitude', 'ipSource', '2018-04-21 13:22:04', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1842', 'hm_mi9zm785zq8nx', '1', '338206', '1', 'system', 'product', 'version', '934c3d6849350bac88313cb5962568b4', 'longitude', 'latitude', 'ipSource', '2018-04-21 13:22:26', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1843', null, '1', '123456', '2', 'system', 'product', 'version', '65f43e8bf1d600a0bc39711667ef371e', 'longitude', 'latitude', 'ipSource', '2018-04-21 13:25:03', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1844', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-21 13:36:08', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1845', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-21 13:36:11', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1846', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-21 13:36:15', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1847', 'hm_mi9zm785zq8nx', '1', '338206', '1', null, null, null, null, null, null, null, '2018-04-21 14:29:15', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1848', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-21 14:40:46', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1849', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-21 15:34:43', 'admin', '0', null);
INSERT INTO `account_login_record` VALUES ('1850', 'hm_69xj42jxgmqki', '1', '123456', '1', 'system', 'product', 'version', 'equipmentId', 'longitude', 'latitude', 'ipSource', '2018-04-21 16:42:59', 'admin', '0', null);

-- ----------------------------
-- Table structure for account_out_platform
-- ----------------------------
DROP TABLE IF EXISTS `account_out_platform`;
CREATE TABLE `account_out_platform` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(32) NOT NULL COMMENT '账户ID',
  `out_platform_type` varchar(32) NOT NULL COMMENT '三方平台类型',
  `out_platform_account` varchar(64) NOT NULL COMMENT '三方平台账号',
  `out_platform_profile_photo` varchar(64) DEFAULT NULL COMMENT '头像',
  `out_platform_nickname` varchar(64) DEFAULT NULL COMMENT '昵称',
  `credential` varchar(64) DEFAULT NULL COMMENT '微信登陆token增加授权验证,站内的保存密码，站外的不保存或保存token',
  `out_platform_running_status` tinyint(2) NOT NULL COMMENT '1:有效 2:无效 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) DEFAULT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_out_platform
-- ----------------------------

-- ----------------------------
-- Table structure for account_relationship
-- ----------------------------
DROP TABLE IF EXISTS `account_relationship`;
CREATE TABLE `account_relationship` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `primary_account_id` varchar(32) NOT NULL COMMENT '主账户编号',
  `deputy_account_id` varchar(32) DEFAULT NULL COMMENT '副账户编号',
  `relationship` varchar(16) DEFAULT NULL COMMENT '关系',
  `deputy_phone` varchar(16) DEFAULT NULL COMMENT '副账号手机号',
  `deputy_name` varchar(16) DEFAULT NULL COMMENT '副账号姓名',
  `status` tinyint(2) DEFAULT '1' COMMENT '状态0:无效 1:有效',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) DEFAULT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account_relationship
-- ----------------------------
INSERT INTO `account_relationship` VALUES ('23', 'hm_69xj42jxgmqki', null, '大家', '13352562546', '大家', null, '2018-04-03 14:27:49', 'test', '0', '2018-04-03 14:27:49');
INSERT INTO `account_relationship` VALUES ('24', 'hm_69xj42jxgmqki', null, '女儿', '13919088888', '张女', null, '2018-04-03 15:04:46', 'test', '0', '2018-04-03 15:04:46');
INSERT INTO `account_relationship` VALUES ('25', 'hm_69xj42jxgmqki', null, '朋友', '13910999999', '张一朋', null, '2018-04-03 15:05:53', 'test', '0', '2018-04-03 15:05:53');
INSERT INTO `account_relationship` VALUES ('26', 'hm_69xj42jxgmqki', null, '朋友', '18701785384', '周小兵', null, '2018-04-03 15:10:54', 'test', '0', '2018-04-03 15:10:54');
INSERT INTO `account_relationship` VALUES ('27', 'hm_69xj42jxgmqki', null, '兄弟', '13646205270', '郭锐', null, '2018-04-03 15:41:40', 'test', '0', '2018-04-03 15:41:40');
INSERT INTO `account_relationship` VALUES ('41', 'hm_2agnmuy2znt8k', null, '兄弟', '13646205270', '郭锐', null, '2018-04-03 16:34:48', 'test', '0', '2018-04-03 16:34:48');
INSERT INTO `account_relationship` VALUES ('42', 'hm_69xj42jxgmqki', null, '拉到', '15586699665', '，来来来', null, '2018-04-03 16:40:27', 'test', '0', '2018-04-03 16:40:27');
INSERT INTO `account_relationship` VALUES ('43', 'hm_mi9zm785zq8nx', null, 'v呵呵', '1254866599', '人头狗', null, '2018-04-03 16:57:29', 'test', '0', '2018-04-03 16:57:29');
INSERT INTO `account_relationship` VALUES ('44', 'hm_2agnmuy2znt8k', null, '一', '1254588759', '都更贵', null, '2018-04-03 17:16:50', 'test', '0', '2018-04-03 17:16:50');
INSERT INTO `account_relationship` VALUES ('45', 'hm_2agnmuy2znt8k', null, '', '17708494021', '', null, '2018-04-03 17:52:05', 'test', '0', '2018-04-03 17:52:05');
INSERT INTO `account_relationship` VALUES ('46', 'hm_2agnmuy2znt8k', null, '', '13512345666', '', null, '2018-04-03 17:53:05', 'test', '0', '2018-04-03 17:53:05');
INSERT INTO `account_relationship` VALUES ('47', 'hm_2agnmuy2znt8k', null, 'hxhd', '15642365889', 'hxhdh', null, '2018-04-03 18:15:02', 'test', '0', '2018-04-03 18:15:02');
INSERT INTO `account_relationship` VALUES ('48', 'hm_2agnmuy2znt8k', null, '风格', '12334532456', '风格广告', null, '2018-04-03 18:34:18', 'test', '0', '2018-04-03 18:34:18');
INSERT INTO `account_relationship` VALUES ('49', 'hm_2agnmuy2znt8k', null, '李阳', '15365558969', '富贵花', null, '2018-04-03 19:16:48', 'test', '0', '2018-04-03 19:16:48');
INSERT INTO `account_relationship` VALUES ('50', 'hm_2agnmuy2znt8k', null, '立即举报', '13526425458', '锋哥哥', null, '2018-04-03 19:17:36', 'test', '0', '2018-04-03 19:17:36');
INSERT INTO `account_relationship` VALUES ('51', 'hm_f3ven29q6j7cx', null, '朋友', '15335678985', '风格', null, '2018-04-03 20:21:41', 'test', '0', '2018-04-03 20:21:41');
INSERT INTO `account_relationship` VALUES ('52', 'hm_f3ven29q6j7cx', null, '快递单', '17708494021', '好好的和', null, '2018-04-03 20:30:38', 'test', '0', '2018-04-03 20:30:38');
INSERT INTO `account_relationship` VALUES ('53', 'hm_f3ven29q6j7cx', null, '医生', '18847747788', '风格', null, '2018-04-03 20:33:49', 'test', '0', '2018-04-03 20:33:49');
INSERT INTO `account_relationship` VALUES ('54', 'hm_f3ven29q6j7cx', null, '哈哈哈', '13235676788', '人方法', null, '2018-04-03 21:00:04', 'test', '0', '2018-04-03 21:00:04');
INSERT INTO `account_relationship` VALUES ('55', 'hm_f3ven29q6j7cx', null, '风格独特风格', '16435899877', '风格独特设计理念', null, '2018-04-03 21:28:40', 'test', '0', '2018-04-03 21:28:40');
INSERT INTO `account_relationship` VALUES ('56', 'hm_2agnmuy2znt8k', null, '话说', '13855699856', '好都会觉得', null, '2018-04-04 09:49:42', 'test', '0', '2018-04-04 09:49:42');
INSERT INTO `account_relationship` VALUES ('57', 'hm_69xj42jxgmqki', null, '体育', '13784236487', '我在', null, '2018-04-04 09:50:49', 'test', '0', '2018-04-04 09:50:49');
INSERT INTO `account_relationship` VALUES ('58', 'hm_69xj42jxgmqki', null, '达到', '13543598324', '呼的', null, '2018-04-04 09:57:31', 'test', '0', '2018-04-04 09:57:31');
INSERT INTO `account_relationship` VALUES ('59', 'hm_2agnmuy2znt8k', null, '回家路上', '13655566966', '哈哈哈', null, '2018-04-04 10:46:51', 'test', '0', '2018-04-04 10:46:51');
INSERT INTO `account_relationship` VALUES ('60', 'hm_2agnmuy2znt8k', null, '名字', '13464684995', '优酷', null, '2018-04-04 16:45:36', 'test', '0', '2018-04-04 16:45:36');
INSERT INTO `account_relationship` VALUES ('61', 'hm_f3ven29q6j7cx', null, '朋友', '14678668765', '风格更', null, '2018-04-04 17:09:49', 'test', '0', '2018-04-04 17:09:49');
INSERT INTO `account_relationship` VALUES ('62', 'hm_2agnmuy2znt8k', null, '111111', '15646343336', '1111', null, '2018-04-04 17:33:43', 'test', '0', '2018-04-04 17:33:43');
INSERT INTO `account_relationship` VALUES ('63', 'hm_2agnmuy2znt8k', null, '都有', '13526655886', '太阳', null, '2018-04-04 17:48:19', 'test', '0', '2018-04-04 17:48:19');
INSERT INTO `account_relationship` VALUES ('64', 'hm_f3ven29q6j7cx', null, '回家开门', '16456789986', '然后你那边', null, '2018-04-04 17:49:10', 'test', '0', '2018-04-04 17:49:10');
INSERT INTO `account_relationship` VALUES ('65', 'hm_2agnmuy2znt8k', null, '游泳', '13466649946', '优化', null, '2018-04-09 09:40:24', 'test', '0', '2018-04-09 09:40:24');
INSERT INTO `account_relationship` VALUES ('66', 'admin', null, '朋友', '17708494021', '伊拉克', null, '2018-04-09 16:43:11', 'test', '0', '2018-04-09 16:43:11');
INSERT INTO `account_relationship` VALUES ('67', 'hm_mi9zm785zq8nx', null, '朋友', '17708494021', '煌煌', null, '2018-04-10 14:45:57', 'test', '0', '2018-04-10 14:45:57');
INSERT INTO `account_relationship` VALUES ('68', 'hm_mi9zm785zq8nx', null, '弟弟', '13412345644', '有雨', null, '2018-04-10 14:49:17', 'test', '0', '2018-04-10 14:49:17');
INSERT INTO `account_relationship` VALUES ('69', 'hm_mi9zm785zq8nx', null, '姐姐', '15364999686', '李阳', null, '2018-04-10 15:54:51', 'test', '0', '2018-04-10 15:54:51');
INSERT INTO `account_relationship` VALUES ('70', 'hm_mi9zm785zq8nx', null, '妹妹', '13526588999', '李媛', null, '2018-04-10 15:55:44', 'test', '0', '2018-04-10 15:55:44');
INSERT INTO `account_relationship` VALUES ('71', 'hm_mi9zm785zq8nx', null, '舅舅', '15264949686', '杨家', null, '2018-04-10 17:35:51', 'test', '0', '2018-04-10 17:35:51');
INSERT INTO `account_relationship` VALUES ('72', 'hm_69xj42jxgmqki', null, '其皇同学', '17708494021', '其皇', null, '2018-04-18 10:08:08', 'test', '0', '2018-04-18 10:08:08');
INSERT INTO `account_relationship` VALUES ('73', 'hm_mi9zm785zq8nx', null, '浦', '15565125335', '见见', null, '2018-04-18 10:39:07', 'test', '0', '2018-04-18 10:39:07');
INSERT INTO `account_relationship` VALUES ('74', 'hm_mi9zm785zq8nx', null, '该喝喝', '15565125335', '让他', null, '2018-04-20 17:06:28', 'test', '0', '2018-04-20 17:06:28');
INSERT INTO `account_relationship` VALUES ('75', 'hm_69xj42jxgmqki', null, 'We’re', '13666666666', 'Asdf', null, '2018-04-20 17:07:42', 'test', '0', '2018-04-20 17:07:42');

-- ----------------------------
-- Table structure for account_role
-- ----------------------------
DROP TABLE IF EXISTS `account_role`;
CREATE TABLE `account_role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(64) NOT NULL COMMENT '账号',
  `role_id` int(8) NOT NULL COMMENT '角色ID',
  `status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1:有效 2:无效	',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) DEFAULT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账户角色表';

-- ----------------------------
-- Records of account_role
-- ----------------------------

-- ----------------------------
-- Table structure for account_token
-- ----------------------------
DROP TABLE IF EXISTS `account_token`;
CREATE TABLE `account_token` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(16) DEFAULT NULL COMMENT '账户ID',
  `token` varchar(32) DEFAULT NULL COMMENT '账户token',
  `expire_time` timestamp NULL DEFAULT NULL COMMENT '过期时间',
  `login_time` timestamp NULL DEFAULT NULL COMMENT '登录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) DEFAULT NULL COMMENT '创建人',
  `is_delete` tinyint(2) DEFAULT NULL COMMENT '0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='账户token表';

-- ----------------------------
-- Records of account_token
-- ----------------------------
INSERT INTO `account_token` VALUES ('16', 'admin', 'f58770ac4695d4c05b38174da7767116', '2018-04-29 16:51:43', '2018-04-20 15:55:08', '2018-03-30 16:51:43', 'admin', '0', null);
INSERT INTO `account_token` VALUES ('17', 'test', 'd35ef84730ebc1e226aeaccc489abd18', '2018-04-29 16:51:43', '2018-04-20 15:56:05', '2018-03-30 16:51:43', 'admin', '0', null);
INSERT INTO `account_token` VALUES ('18', 'root', '8133f668ba667bd7b9c8058a98dedcdc', '2018-04-29 16:51:43', '2018-04-04 11:45:36', '2018-03-30 16:51:43', 'admin', '0', null);
INSERT INTO `account_token` VALUES ('20', 'hm_69xj42jxgmqki', '467fc4dfd84f66d89032ddc7999a38e0', '2018-05-03 14:06:05', '2018-04-21 16:42:59', '2018-04-03 14:06:05', 'admin', '0', null);
INSERT INTO `account_token` VALUES ('21', 'hm_2agnmuy2znt8k', '8cc43774a599ee388e86efb8dd8a754d', '2018-05-03 14:09:51', '2018-04-20 10:52:00', '2018-04-03 14:09:51', 'admin', '0', null);
INSERT INTO `account_token` VALUES ('22', 'hm_f3ven29q6j7cx', '6c478fc61a0c49ff4f7bcb78f97485cb', '2018-05-03 14:52:32', '2018-04-13 10:12:17', '2018-04-03 14:52:32', 'admin', '0', null);
INSERT INTO `account_token` VALUES ('23', 'hm_mi9zm785zq8nx', '89e37e8cd0a18dcf1f530ecd88ef7461', '2018-05-03 16:55:25', '2018-04-21 14:29:15', '2018-04-03 16:55:25', 'admin', '0', null);
INSERT INTO `account_token` VALUES ('24', 'hm_s9kpcie2i9369', 'a7e672e891c0314d5ebec6285a612c7d', '2018-05-18 15:49:55', '2018-04-18 16:45:30', '2018-04-18 15:49:55', 'admin', '0', null);
INSERT INTO `account_token` VALUES ('25', 'hm_a2ksmvsr8ip5x', 'd7627feed849436ee7c276b95af60ba5', '2018-05-18 17:07:21', '2018-04-19 13:13:09', '2018-04-18 17:07:21', 'admin', '0', null);
INSERT INTO `account_token` VALUES ('26', 'hm_x6vich9ah8dpq', '6e47977bd070b41ab25a9bf340738151', '2018-05-18 17:16:22', '2018-04-18 17:16:22', '2018-04-18 17:16:22', 'admin', '0', null);
INSERT INTO `account_token` VALUES ('27', 'hm_rrgidx5hn9wd3', 'f84b7413fc5767e39c682f22dc9169ed', '2018-05-18 17:30:23', '2018-04-18 17:30:23', '2018-04-18 17:30:23', 'admin', '0', null);
INSERT INTO `account_token` VALUES ('28', 'hm_wx5sexwq4svr7', 'b6e2614639d8c8dd6031a99a86b600a6', '2018-05-18 17:42:57', '2018-04-18 17:42:57', '2018-04-18 17:42:57', 'admin', '0', null);
INSERT INTO `account_token` VALUES ('29', 'hm_q7k9tumu8ekaj', '7263c3d1e39a15b699ec2d903cc8670b', '2018-05-18 17:45:05', '2018-04-18 17:45:05', '2018-04-18 17:45:05', 'admin', '0', null);
INSERT INTO `account_token` VALUES ('30', 'hm_dmj7gkgd58qkj', '59c4e6fe0371f70214ff0f0d3e1db14c', '2018-05-18 17:46:13', '2018-04-18 17:46:13', '2018-04-18 17:46:13', 'admin', '0', null);
INSERT INTO `account_token` VALUES ('31', 'hm_2g8gskicuf69r', '96f25497f6841712ba1b76326ffc37f6', '2018-05-19 11:22:35', '2018-04-19 11:32:24', '2018-04-19 11:22:35', 'admin', '0', null);

-- ----------------------------
-- Table structure for account_verification_code
-- ----------------------------
DROP TABLE IF EXISTS `account_verification_code`;
CREATE TABLE `account_verification_code` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(32) NOT NULL COMMENT '账户ID',
  `verification_code` varchar(6) NOT NULL COMMENT '验证码',
  `effective_time` tinyint(4) NOT NULL COMMENT '验证码有效时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) DEFAULT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='账户验证码表';

-- ----------------------------
-- Records of account_verification_code
-- ----------------------------

-- ----------------------------
-- Table structure for common_authority
-- ----------------------------
DROP TABLE IF EXISTS `common_authority`;
CREATE TABLE `common_authority` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `authority_id` int(8) NOT NULL COMMENT '权限ID',
  `parent_authority_id` int(8) NOT NULL COMMENT '权限ID',
  `authority_name` varchar(16) DEFAULT NULL COMMENT '权限名称',
  `authority_decribe` varchar(64) DEFAULT NULL COMMENT '角色描述',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) DEFAULT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of common_authority
-- ----------------------------

-- ----------------------------
-- Table structure for common_label
-- ----------------------------
DROP TABLE IF EXISTS `common_label`;
CREATE TABLE `common_label` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `label_id` varchar(16) NOT NULL COMMENT '标签ID',
  `parent_label_id` varchar(16) NOT NULL COMMENT '父标签ID',
  `label_name` varchar(16) DEFAULT NULL COMMENT '标签名称',
  `label_describe` varchar(64) DEFAULT NULL COMMENT '标签描述',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) DEFAULT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='标签表';

-- ----------------------------
-- Records of common_label
-- ----------------------------

-- ----------------------------
-- Table structure for common_province_city_area
-- ----------------------------
DROP TABLE IF EXISTS `common_province_city_area`;
CREATE TABLE `common_province_city_area` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `area_parent_code` varchar(16) NOT NULL COMMENT '父编码',
  `area_code` varchar(16) NOT NULL COMMENT '区域编码',
  `area_name` varchar(128) NOT NULL COMMENT '区域名',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) DEFAULT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of common_province_city_area
-- ----------------------------

-- ----------------------------
-- Table structure for common_role
-- ----------------------------
DROP TABLE IF EXISTS `common_role`;
CREATE TABLE `common_role` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `role_id` int(8) NOT NULL COMMENT '角色ID',
  `parent_role_id` int(8) NOT NULL COMMENT '角色父ID',
  `role_name` varchar(16) DEFAULT NULL COMMENT '角色名称',
  `role_describe` varchar(64) DEFAULT NULL COMMENT '角色描述',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) DEFAULT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of common_role
-- ----------------------------

-- ----------------------------
-- Table structure for common_role_authority
-- ----------------------------
DROP TABLE IF EXISTS `common_role_authority`;
CREATE TABLE `common_role_authority` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `role_id` int(8) NOT NULL COMMENT '角色ID',
  `authority_id` int(8) NOT NULL COMMENT '权限ID',
  `authority_type` tinyint(4) DEFAULT NULL COMMENT '权限类型',
  `record_flag` tinyint(4) DEFAULT NULL COMMENT '记录标识',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) DEFAULT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限表';

-- ----------------------------
-- Records of common_role_authority
-- ----------------------------

-- ----------------------------
-- Table structure for im_account_info
-- ----------------------------
DROP TABLE IF EXISTS `im_account_info`;
CREATE TABLE `im_account_info` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `community_role` tinyint(2) DEFAULT '1' COMMENT '社群角色ID(1,普通角色；2：客服）',
  `portrait` varchar(128) DEFAULT NULL COMMENT '头像',
  `nickname` varchar(128) DEFAULT NULL COMMENT '社群昵称',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `im_id` varchar(32) DEFAULT NULL COMMENT '环信账户ID',
  `account_id` varchar(16) DEFAULT NULL COMMENT '账户ID',
  `status` tinyint(2) DEFAULT '2' COMMENT '账户状态（0：账户在账户中心不存在；1：存在；2：已激活）',
  `creator` varchar(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `un_phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=136 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im_account_info
-- ----------------------------
INSERT INTO `im_account_info` VALUES ('65', '2', '1522647494228.V0001.png', '健康助手', '17768601406', 'fa9cd81b13de27838a450675cabe4de2', '', '2', '17768601406', '2018-04-02 15:16:55', '0', '2018-04-02 15:33:15');
INSERT INTO `im_account_info` VALUES ('75', '1', '', null, '15565125335', '163c372a20fb60930fbe4a57d5388adb', 'hm_69xj42jxgmqki', '2', '15565125335', '2018-04-03 14:11:42', '0', '2018-04-03 15:04:44');
INSERT INTO `im_account_info` VALUES ('76', '1', '', null, '17708494021', '80330a8e8a317d865f19ec894fe00068', 'hm_2agnmuy2znt8k', '2', '17708494021', '2018-04-03 14:11:53', '0', '2018-04-03 15:06:48');
INSERT INTO `im_account_info` VALUES ('77', '1', '1522583593711.V0001.png', '管理员', '13666666666', 'a93b63352a92e74f675631ede70a84ae', 'admin', '2', '13666666666', '2018-04-03 14:18:31', '0', '2018-04-03 14:18:31');
INSERT INTO `im_account_info` VALUES ('78', '1', null, null, '13352562546', null, null, '1', '15565125335', '2018-04-03 14:27:52', '0', '2018-04-03 14:27:52');
INSERT INTO `im_account_info` VALUES ('79', '1', null, null, '15635246852', null, null, '1', '15565125335', '2018-04-03 14:31:02', '0', '2018-04-03 14:31:02');
INSERT INTO `im_account_info` VALUES ('80', '1', '', '', '17768601405', '8df0a470b4506be254256154c637e09b', '', '2', '17768601405', '2018-04-03 14:38:26', '0', '2018-04-03 14:50:52');
INSERT INTO `im_account_info` VALUES ('81', '1', '', null, '18701785384', 'a4160ea1f57c0ea1c6c08800f3f7e882', 'hm_f3ven29q6j7cx', '2', '18701785384', '2018-04-03 14:52:32', '0', '2018-04-03 15:07:04');
INSERT INTO `im_account_info` VALUES ('82', '1', null, null, '13778909876', null, null, '1', '15565125335', '2018-04-03 15:07:10', '0', '2018-04-03 15:07:10');
INSERT INTO `im_account_info` VALUES ('83', '1', null, null, '17723415678', null, null, '1', '15565125335', '2018-04-03 15:08:23', '0', '2018-04-03 15:08:23');
INSERT INTO `im_account_info` VALUES ('84', '1', null, null, '13919088888', null, null, '1', '15565125335', '2018-04-03 15:08:55', '0', '2018-04-03 15:08:55');
INSERT INTO `im_account_info` VALUES ('85', '1', null, null, '13910999999', null, null, '1', '15565125335', '2018-04-03 15:09:01', '0', '2018-04-03 15:09:01');
INSERT INTO `im_account_info` VALUES ('86', '1', '1522736469741.V0001.png', null, '13646205270', '8fd88517205f3ebdd72bc2912876be0c', 'hm_mi9zm785zq8nx', '2', '13646205270', '2018-04-03 16:55:26', '0', '2018-04-03 16:55:26');
INSERT INTO `im_account_info` VALUES ('87', '1', null, null, '15335678985', null, null, '1', '18701785384', '2018-04-03 20:21:42', '0', '2018-04-03 20:21:42');
INSERT INTO `im_account_info` VALUES ('88', '1', null, null, '18847747788', null, null, '1', '18701785384', '2018-04-03 20:33:50', '0', '2018-04-03 20:33:50');
INSERT INTO `im_account_info` VALUES ('89', '1', null, null, '16435899877', null, null, '1', '18701785384', '2018-04-03 21:28:42', '0', '2018-04-03 21:28:42');
INSERT INTO `im_account_info` VALUES ('90', '1', null, null, '15586699665', null, null, '1', '15565125335', '2018-04-04 09:56:56', '0', '2018-04-04 09:56:56');
INSERT INTO `im_account_info` VALUES ('91', '1', null, null, '13543598324', null, null, '1', '15565125335', '2018-04-04 09:59:02', '0', '2018-04-04 09:59:02');
INSERT INTO `im_account_info` VALUES ('92', '1', '1522583593711.V0001.png', '管理员', '15999999999', '3f0cb8b2f7215631a2082fe868eddac3', 'root', '2', '15999999999', '2018-04-04 11:45:37', '0', '2018-04-04 11:45:37');
INSERT INTO `im_account_info` VALUES ('93', '1', null, null, '16456789986', null, null, '1', '18701785384', '2018-04-04 17:49:14', '0', '2018-04-04 17:49:14');
INSERT INTO `im_account_info` VALUES ('94', '1', null, null, '17768601401', null, null, '1', '17708494021', '2018-04-08 12:58:35', '0', '2018-04-08 20:56:29');
INSERT INTO `im_account_info` VALUES ('95', '1', null, null, '15365558969', null, null, '1', '17708494021', '2018-04-08 12:59:22', '0', '2018-04-08 12:59:22');
INSERT INTO `im_account_info` VALUES ('96', '1', null, null, '13855699856', null, null, '1', '17708494021', '2018-04-08 13:04:30', '0', '2018-04-08 13:04:30');
INSERT INTO `im_account_info` VALUES ('97', '1', null, null, '13514251234', null, null, '1', '17708494021', '2018-04-08 13:10:12', '0', '2018-04-08 13:10:12');
INSERT INTO `im_account_info` VALUES ('98', '1', null, null, '13526655886', null, null, '1', '17708494021', '2018-04-08 15:22:05', '0', '2018-04-08 15:22:05');
INSERT INTO `im_account_info` VALUES ('99', '1', null, null, '15646343336', null, null, '1', '17708494021', '2018-04-08 15:22:49', '0', '2018-04-08 15:22:49');
INSERT INTO `im_account_info` VALUES ('100', '1', null, null, '17768601402', null, null, '1', '17708494021', '2018-04-08 15:23:05', '0', '2018-04-08 20:56:55');
INSERT INTO `im_account_info` VALUES ('101', '1', null, null, '12334532456', null, null, '1', '17708494021', '2018-04-08 20:13:00', '0', '2018-04-08 20:13:00');
INSERT INTO `im_account_info` VALUES ('102', '1', null, null, '17768601403', null, null, '1', '17708494021', '2018-04-08 20:16:19', '0', '2018-04-08 20:57:15');
INSERT INTO `im_account_info` VALUES ('103', '1', null, null, '1254588759', null, null, '1', '17708494021', '2018-04-08 20:19:46', '0', '2018-04-08 20:19:46');
INSERT INTO `im_account_info` VALUES ('104', '1', null, null, '13464684995', null, null, '1', '17708494021', '2018-04-08 20:56:23', '0', '2018-04-08 20:56:23');
INSERT INTO `im_account_info` VALUES ('105', '1', null, null, 'null', null, null, '1', '17708494021', '2018-04-08 22:16:29', '0', '2018-04-08 22:16:29');
INSERT INTO `im_account_info` VALUES ('106', '1', null, null, '13512345666', null, null, '1', '17708494021', '2018-04-08 22:18:43', '0', '2018-04-08 22:18:43');
INSERT INTO `im_account_info` VALUES ('107', '1', null, null, '回家', null, null, '1', '17708494021', '2018-04-09 09:16:30', '0', '2018-04-09 09:16:30');
INSERT INTO `im_account_info` VALUES ('108', '1', null, null, '13655566966', null, null, '1', '17708494021', '2018-04-09 09:23:39', '0', '2018-04-09 09:23:39');
INSERT INTO `im_account_info` VALUES ('109', '1', null, null, '读u多喝点', null, null, '1', '17708494021', '2018-04-09 09:33:11', '0', '2018-04-09 09:33:11');
INSERT INTO `im_account_info` VALUES ('110', '1', null, null, '13526425458', null, null, '1', '17708494021', '2018-04-09 09:37:24', '0', '2018-04-09 09:37:24');
INSERT INTO `im_account_info` VALUES ('111', '1', null, null, '13466649946', null, null, '1', '17708494021', '2018-04-09 09:44:27', '0', '2018-04-09 09:44:27');
INSERT INTO `im_account_info` VALUES ('112', '1', null, null, '所以一定要', null, null, '1', '17708494021', '2018-04-09 09:55:41', '0', '2018-04-09 09:55:41');
INSERT INTO `im_account_info` VALUES ('113', '1', null, null, '15642365889', null, null, '1', '17708494021', '2018-04-09 10:03:22', '0', '2018-04-09 10:03:22');
INSERT INTO `im_account_info` VALUES ('114', '1', null, null, '1254866599', null, null, '1', '13646205270', '2018-04-10 13:43:41', '0', '2018-04-10 13:43:41');
INSERT INTO `im_account_info` VALUES ('115', '1', null, null, '13412345644', null, null, '1', '13646205270', '2018-04-10 14:54:47', '0', '2018-04-10 14:54:47');
INSERT INTO `im_account_info` VALUES ('116', '1', null, null, '17768601409', null, null, '1', '15565125335', '2018-04-10 15:47:47', '0', '2018-04-10 15:47:47');
INSERT INTO `im_account_info` VALUES ('117', '1', null, null, '15364999686', null, null, '1', '13646205270', '2018-04-10 15:55:13', '0', '2018-04-10 15:55:13');
INSERT INTO `im_account_info` VALUES ('118', '1', null, null, '13526588999', null, null, '1', '13646205270', '2018-04-10 15:55:46', '0', '2018-04-10 15:55:46');
INSERT INTO `im_account_info` VALUES ('119', '1', null, null, '15255555666', null, null, '1', '13646205270', '2018-04-10 16:58:24', '0', '2018-04-10 16:58:24');
INSERT INTO `im_account_info` VALUES ('120', '1', null, null, '13569666683', null, null, '1', '13646205270', '2018-04-10 17:19:28', '0', '2018-04-10 17:19:28');
INSERT INTO `im_account_info` VALUES ('121', '1', null, null, '13522555566', null, null, '1', '13646205270', '2018-04-10 17:19:54', '0', '2018-04-10 17:19:54');
INSERT INTO `im_account_info` VALUES ('122', '1', null, null, '15264949686', null, null, '1', '13646205270', '2018-04-10 17:35:54', '0', '2018-04-10 17:35:54');
INSERT INTO `im_account_info` VALUES ('123', '1', null, null, '17768601408', null, null, '1', '13646205270', '2018-04-12 14:26:07', '0', '2018-04-12 14:26:07');
INSERT INTO `im_account_info` VALUES ('124', '1', null, null, '15821890505', null, null, '1', '13646205270', '2018-04-13 09:51:21', '0', '2018-04-13 09:51:21');
INSERT INTO `im_account_info` VALUES ('125', '1', null, null, '18912345678', null, null, '1', '13646205270', '2018-04-13 17:24:57', '0', '2018-04-13 17:24:57');
INSERT INTO `im_account_info` VALUES ('126', '1', null, null, '15264558856', null, null, '1', '13646205270', '2018-04-13 17:29:54', '0', '2018-04-13 17:29:54');
INSERT INTO `im_account_info` VALUES ('127', '1', null, null, '13526436456', null, null, '1', '13646205270', '2018-04-13 17:34:32', '0', '2018-04-13 17:34:32');
INSERT INTO `im_account_info` VALUES ('128', '1', null, null, '13523646848', null, null, '1', '13646205270', '2018-04-13 17:35:15', '0', '2018-04-13 17:35:15');
INSERT INTO `im_account_info` VALUES ('129', '1', null, null, '13255486689', null, null, '1', '13646205270', '2018-04-13 17:45:23', '0', '2018-04-13 17:45:23');
INSERT INTO `im_account_info` VALUES ('130', '1', null, null, '13784236487', null, null, '1', '15565125335', '2018-04-16 11:18:49', '0', '2018-04-16 11:18:49');
INSERT INTO `im_account_info` VALUES ('131', '1', null, null, '17708494023', 'eedbf29ca1183e9ab81ada8e65efc2e2', 'hm_s9kpcie2i9369', '2', '17708494023', '2018-04-18 16:12:24', '0', '2018-04-18 16:12:24');
INSERT INTO `im_account_info` VALUES ('132', '1', '1522736469741.V0001.png', null, '18994710039', '3402b05e7dfb839cbaa41762504e2117', 'hm_dmj7gkgd58qkj', '2', '18994710039', '2018-04-18 17:50:08', '0', '2018-04-18 17:50:08');
INSERT INTO `im_account_info` VALUES ('133', '1', '1522736469741.V0001.png', null, '15821890403', '2196af38e3c8a5478f850cbc5988ae58', 'hm_2g8gskicuf69r', '2', '15821890403', '2018-04-19 11:22:35', '0', '2018-04-19 11:22:35');
INSERT INTO `im_account_info` VALUES ('134', '1', null, null, '15608470049', 'cf1de00d1167d28cdd4a34ddaf5589fc', 'hm_a2ksmvsr8ip5x', '2', '15608470049', '2018-04-19 12:46:29', '0', '2018-04-19 12:46:29');
INSERT INTO `im_account_info` VALUES ('135', '1', '1522583593711.V0001.png', '管理员', '13888888888', '7aa31891dd94e35cf46257ab03cf7b10', 'test', '2', '13888888888', '2018-04-20 15:49:42', '0', '2018-04-20 15:49:42');

-- ----------------------------
-- Table structure for im_chat_record
-- ----------------------------
DROP TABLE IF EXISTS `im_chat_record`;
CREATE TABLE `im_chat_record` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `send_account_id` varchar(32) NOT NULL COMMENT '发送账户ID',
  `recv_account_id` varchar(32) NOT NULL COMMENT '接收账户ID',
  `message` varchar(128) NOT NULL COMMENT '消息内容',
  `message_type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '消息类型（1:群发 2:组发 3:密聊）',
  `recv_status` tinyint(2) NOT NULL DEFAULT '1' COMMENT '接收状态',
  `creator` varchar(32) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im_chat_record
-- ----------------------------

-- ----------------------------
-- Table structure for im_community
-- ----------------------------
DROP TABLE IF EXISTS `im_community`;
CREATE TABLE `im_community` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `community_id` varchar(32) NOT NULL COMMENT '群组ID',
  `community_name` varchar(64) NOT NULL COMMENT '群组名称',
  `owner_phone` varchar(11) NOT NULL COMMENT '社群主ID，手机号',
  `community_icon` varchar(128) DEFAULT NULL COMMENT '社群图标',
  `community_notice` varchar(128) DEFAULT NULL COMMENT '社群公告',
  `community_desc` varchar(128) DEFAULT NULL COMMENT '社群介绍',
  `community_status` tinyint(2) DEFAULT NULL COMMENT '社群状态（0:初始化 1:启动 2:归档）',
  `community_public` tinyint(2) DEFAULT NULL COMMENT '社群类型（1：公开群  0：私有群）',
  `allowinvites` tinyint(2) DEFAULT NULL COMMENT '是否允许群成员邀请别人加入此群(1：允许群成员邀请人加入此群，0：只有群主才可以往群里加人。)',
  `maxusers` int(11) DEFAULT NULL COMMENT '群成员上限',
  `affiliations_count` int(11) DEFAULT NULL COMMENT '现有成员总数',
  `membersonly` tinyint(2) DEFAULT NULL COMMENT '加入群组是否需要群主或者群管理员审批(1：是，0：否)',
  `invite_need_confirm` tinyint(2) DEFAULT NULL COMMENT '邀请加群，被邀请人是否需要确认(如果是1，表示邀请加群需要被邀请人确认；如果是0，表示不需要被邀请人确认，直接将被邀请人加入群)',
  `creator` varchar(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im_community
-- ----------------------------
INSERT INTO `im_community` VALUES ('65', '45442629959682', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:11:55', '0', '2018-04-03 14:11:55');
INSERT INTO `im_community` VALUES ('66', '45442677145601', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:12:41', '0', '2018-04-03 14:12:41');
INSERT INTO `im_community` VALUES ('67', '45442719088641', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '8', '0', '0', '17768601406', '2018-04-03 14:13:21', '0', '2018-04-18 10:08:14');
INSERT INTO `im_community` VALUES ('68', '45442723282945', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:13:25', '0', '2018-04-03 14:13:25');
INSERT INTO `im_community` VALUES ('69', '45442909929474', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:16:22', '0', '2018-04-03 14:16:22');
INSERT INTO `im_community` VALUES ('70', '45443053584386', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:18:40', '0', '2018-04-03 14:18:40');
INSERT INTO `im_community` VALUES ('71', '45443060924417', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:18:46', '0', '2018-04-03 14:18:46');
INSERT INTO `im_community` VALUES ('72', '45443822190593', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:30:53', '0', '2018-04-03 14:30:53');
INSERT INTO `im_community` VALUES ('73', '45443830579204', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:31:01', '0', '2018-04-03 14:31:01');
INSERT INTO `im_community` VALUES ('74', '45443871473665', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:31:39', '0', '2018-04-03 14:31:39');
INSERT INTO `im_community` VALUES ('75', '45443958505473', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:33:03', '0', '2018-04-03 14:33:03');
INSERT INTO `im_community` VALUES ('76', '45443971088385', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:33:14', '0', '2018-04-03 14:33:14');
INSERT INTO `im_community` VALUES ('77', '45443974234113', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:33:18', '0', '2018-04-03 14:33:18');
INSERT INTO `im_community` VALUES ('78', '45444501667841', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:41:40', '0', '2018-04-03 14:41:40');
INSERT INTO `im_community` VALUES ('79', '45444719771649', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:45:09', '0', '2018-04-03 14:45:09');
INSERT INTO `im_community` VALUES ('80', '45444720820225', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '3', '0', '0', '17768601406', '2018-04-03 14:45:09', '0', '2018-04-09 16:43:13');
INSERT INTO `im_community` VALUES ('81', '45445474746369', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:57:08', '0', '2018-04-03 14:57:08');
INSERT INTO `im_community` VALUES ('82', '45445475794945', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:57:10', '0', '2018-04-03 14:57:10');
INSERT INTO `im_community` VALUES ('83', '45445476843521', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:57:11', '0', '2018-04-03 14:57:11');
INSERT INTO `im_community` VALUES ('84', '45445477892097', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:57:12', '0', '2018-04-03 14:57:12');
INSERT INTO `im_community` VALUES ('85', '45445482086401', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '3', '0', '0', '17768601406', '2018-04-03 14:57:15', '0', '2018-04-03 20:21:42');
INSERT INTO `im_community` VALUES ('86', '45445483134977', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 14:57:16', '0', '2018-04-03 14:57:16');
INSERT INTO `im_community` VALUES ('87', '45445858525185', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '10', '0', '0', '17768601406', '2018-04-03 15:03:14', '0', '2018-04-04 10:33:52');
INSERT INTO `im_community` VALUES ('88', '45451932925953', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '3', '0', '0', '17768601406', '2018-04-03 16:39:47', '0', '2018-04-04 10:21:51');
INSERT INTO `im_community` VALUES ('89', '45452982550529', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 16:56:29', '0', '2018-04-03 16:56:29');
INSERT INTO `im_community` VALUES ('90', '45458110087169', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '5', '0', '0', '17768601406', '2018-04-03 18:17:58', '0', '2018-04-09 09:23:39');
INSERT INTO `im_community` VALUES ('91', '45458430951425', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 18:23:05', '0', '2018-04-03 18:23:05');
INSERT INTO `im_community` VALUES ('92', '45458469748737', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-03 18:23:41', '0', '2018-04-03 18:23:41');
INSERT INTO `im_community` VALUES ('93', '45465716457474', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '3', '0', '0', '17768601406', '2018-04-03 20:18:53', '0', '2018-04-08 13:10:12');
INSERT INTO `im_community` VALUES ('94', '45466349797378', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '10', '0', '0', '17768601406', '2018-04-03 20:28:56', '0', '2018-04-08 15:23:05');
INSERT INTO `im_community` VALUES ('95', '45519064858625', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '5', '0', '0', '17768601406', '2018-04-04 10:26:50', '0', '2018-04-09 09:24:08');
INSERT INTO `im_community` VALUES ('96', '45519313371137', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '8', '0', '0', '17768601406', '2018-04-04 10:30:47', '0', '2018-04-18 10:55:57');
INSERT INTO `im_community` VALUES ('97', '45530633797633', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '9', '0', '0', '17768601406', '2018-04-04 13:30:43', '0', '2018-04-10 13:43:41');
INSERT INTO `im_community` VALUES ('98', '45891015737345', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '10', '0', '0', '17768601406', '2018-04-08 12:58:53', '0', '2018-04-10 16:54:16');
INSERT INTO `im_community` VALUES ('99', '45903993962497', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '8', '0', '0', '17768601406', '2018-04-08 16:25:10', '0', '2018-04-10 09:41:28');
INSERT INTO `im_community` VALUES ('100', '45968202465281', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '9', '0', '0', '17768601406', '2018-04-09 09:25:44', '0', '2018-04-10 10:30:55');
INSERT INTO `im_community` VALUES ('101', '45968209805313', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '14', '0', '0', '17768601406', '2018-04-09 09:25:51', '0', '2018-04-09 10:05:09');
INSERT INTO `im_community` VALUES ('102', '45995990777857', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '10', '0', '0', '17768601406', '2018-04-09 16:47:25', '0', '2018-04-10 10:59:46');
INSERT INTO `im_community` VALUES ('103', '46064028680194', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '11', '0', '0', '17768601406', '2018-04-10 10:48:51', '0', '2018-04-13 09:51:21');
INSERT INTO `im_community` VALUES ('104', '46064036020225', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '12', '0', '0', '17768601406', '2018-04-10 10:48:59', '0', '2018-04-10 17:20:35');
INSERT INTO `im_community` VALUES ('105', '46065782947841', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '5', '0', '0', '17768601406', '2018-04-10 11:16:44', '0', '2018-04-10 11:17:43');
INSERT INTO `im_community` VALUES ('106', '46065914019841', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '3', '0', '0', '17768601406', '2018-04-10 11:18:50', '0', '2018-04-10 11:19:35');
INSERT INTO `im_community` VALUES ('107', '46065992663042', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '11', '0', '0', '17768601406', '2018-04-10 11:20:04', '0', '2018-04-10 17:35:54');
INSERT INTO `im_community` VALUES ('108', '46074988396545', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '14', '0', '0', '17768601406', '2018-04-10 13:43:03', '0', '2018-04-20 17:07:49');
INSERT INTO `im_community` VALUES ('109', '46076599009282', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-10 14:08:40', '0', '2018-04-10 14:08:40');
INSERT INTO `im_community` VALUES ('110', '46258449350657', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-12 14:19:07', '0', '2018-04-12 14:19:07');
INSERT INTO `im_community` VALUES ('111', '46349343064065', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-13 14:23:50', '0', '2018-04-13 14:23:50');
INSERT INTO `im_community` VALUES ('112', '46349414367233', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-13 14:24:58', '0', '2018-04-13 14:24:58');
INSERT INTO `im_community` VALUES ('113', '46349422755843', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '6', '0', '0', '17768601406', '2018-04-13 14:25:06', '0', '2018-04-13 15:13:25');
INSERT INTO `im_community` VALUES ('114', '46361020006403', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '5', '0', '0', '17768601406', '2018-04-13 17:29:27', '0', '2018-04-13 17:34:32');
INSERT INTO `im_community` VALUES ('115', '46361355550721', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '5', '0', '0', '17768601406', '2018-04-13 17:34:46', '0', '2018-04-13 17:45:24');
INSERT INTO `im_community` VALUES ('116', '46362055999489', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '3', '0', '0', '17768601406', '2018-04-13 17:45:55', '0', '2018-04-13 18:08:47');
INSERT INTO `im_community` VALUES ('117', '46363521908738', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '5', '0', '0', '17768601406', '2018-04-13 18:09:12', '0', '2018-04-18 16:55:48');
INSERT INTO `im_community` VALUES ('118', '46608877158401', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '10', '0', '0', '17768601406', '2018-04-16 11:09:02', '0', '2018-04-16 11:23:18');
INSERT INTO `im_community` VALUES ('119', '46806233841665', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '4', '0', '0', '17768601406', '2018-04-18 15:25:58', '0', '2018-04-18 15:27:34');
INSERT INTO `im_community` VALUES ('120', '46811322580993', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-18 16:46:51', '0', '2018-04-18 16:46:51');
INSERT INTO `im_community` VALUES ('121', '46815310315521', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-18 17:50:14', '0', '2018-04-18 17:50:14');
INSERT INTO `im_community` VALUES ('122', '46881526841346', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 11:22:44', '0', '2018-04-19 11:22:44');
INSERT INTO `im_community` VALUES ('123', '46881591853057', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 11:23:45', '0', '2018-04-19 11:23:45');
INSERT INTO `im_community` VALUES ('124', '46881599193089', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 11:23:53', '0', '2018-04-19 11:23:53');
INSERT INTO `im_community` VALUES ('125', '46881606533121', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 11:23:59', '0', '2018-04-19 11:23:59');
INSERT INTO `im_community` VALUES ('126', '46881608630273', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 11:24:02', '0', '2018-04-19 11:24:02');
INSERT INTO `im_community` VALUES ('127', '46882150744065', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 11:32:39', '0', '2018-04-19 11:32:39');
INSERT INTO `im_community` VALUES ('128', '46886800130049', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 12:46:32', '0', '2018-04-19 12:46:32');
INSERT INTO `im_community` VALUES ('129', '46886873530369', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 12:47:43', '0', '2018-04-19 12:47:43');
INSERT INTO `im_community` VALUES ('130', '46886876676098', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 12:47:45', '0', '2018-04-19 12:47:45');
INSERT INTO `im_community` VALUES ('131', '46887601242113', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 12:59:17', '0', '2018-04-19 12:59:17');
INSERT INTO `im_community` VALUES ('132', '46887608582145', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 12:59:24', '0', '2018-04-19 12:59:24');
INSERT INTO `im_community` VALUES ('133', '46890232119297', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 13:41:06', '0', '2018-04-19 13:41:06');
INSERT INTO `im_community` VALUES ('134', '46890277208065', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 13:41:49', '0', '2018-04-19 13:41:49');
INSERT INTO `im_community` VALUES ('135', '46891262869505', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 13:57:28', '0', '2018-04-19 13:57:28');
INSERT INTO `im_community` VALUES ('136', '46891685445639', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 14:04:12', '0', '2018-04-19 14:04:12');
INSERT INTO `im_community` VALUES ('137', '46892808470529', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '4', '0', '0', '17768601406', '2018-04-19 14:22:02', '0', '2018-04-19 14:27:12');
INSERT INTO `im_community` VALUES ('138', '46892864045057', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 14:22:56', '0', '2018-04-19 14:22:56');
INSERT INTO `im_community` VALUES ('139', '46894097170435', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 14:42:32', '0', '2018-04-19 14:42:32');
INSERT INTO `im_community` VALUES ('140', '46894256553985', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 14:45:03', '0', '2018-04-19 14:45:03');
INSERT INTO `im_community` VALUES ('141', '46894271234049', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 14:45:18', '0', '2018-04-19 14:45:18');
INSERT INTO `im_community` VALUES ('142', '46894274379778', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 14:45:21', '0', '2018-04-19 14:45:21');
INSERT INTO `im_community` VALUES ('143', '46894277525505', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 14:45:24', '0', '2018-04-19 14:45:24');
INSERT INTO `im_community` VALUES ('144', '46894285914113', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 14:45:31', '0', '2018-04-19 14:45:31');
INSERT INTO `im_community` VALUES ('145', '46894958051329', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 14:56:12', '0', '2018-04-19 14:56:12');
INSERT INTO `im_community` VALUES ('146', '46894961197058', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 14:56:16', '0', '2018-04-19 14:56:16');
INSERT INTO `im_community` VALUES ('147', '46894973779969', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '4', '0', '0', '17768601406', '2018-04-19 14:56:28', '0', '2018-04-19 15:10:41');
INSERT INTO `im_community` VALUES ('148', '46895017820163', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 14:57:09', '0', '2018-04-19 14:57:09');
INSERT INTO `im_community` VALUES ('149', '46895515893765', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:05:05', '0', '2018-04-19 15:05:05');
INSERT INTO `im_community` VALUES ('150', '46895603974146', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:06:28', '0', '2018-04-19 15:06:28');
INSERT INTO `im_community` VALUES ('151', '46895844098049', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:10:18', '0', '2018-04-19 15:10:18');
INSERT INTO `im_community` VALUES ('152', '46895847243777', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:10:21', '0', '2018-04-19 15:10:21');
INSERT INTO `im_community` VALUES ('153', '46895857729537', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '3', '0', '0', '17768601406', '2018-04-19 15:10:30', '0', '2018-04-19 15:11:18');
INSERT INTO `im_community` VALUES ('154', '46895897575425', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:11:08', '0', '2018-04-19 15:11:08');
INSERT INTO `im_community` VALUES ('155', '46895923789825', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:11:33', '0', '2018-04-19 15:11:33');
INSERT INTO `im_community` VALUES ('156', '46895936372738', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:11:46', '0', '2018-04-19 15:11:46');
INSERT INTO `im_community` VALUES ('157', '46895948955651', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:11:57', '0', '2018-04-19 15:11:57');
INSERT INTO `im_community` VALUES ('158', '46895955247105', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:12:03', '0', '2018-04-19 15:12:03');
INSERT INTO `im_community` VALUES ('159', '46895965732865', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '4', '0', '0', '17768601406', '2018-04-19 15:12:13', '0', '2018-04-19 15:13:00');
INSERT INTO `im_community` VALUES ('160', '46896021307393', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:13:06', '0', '2018-04-19 15:13:06');
INSERT INTO `im_community` VALUES ('161', '46896074784770', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:13:57', '0', '2018-04-19 15:13:57');
INSERT INTO `im_community` VALUES ('162', '46896096804865', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:14:18', '0', '2018-04-19 15:14:18');
INSERT INTO `im_community` VALUES ('163', '46896123019265', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:14:43', '0', '2018-04-19 15:14:43');
INSERT INTO `im_community` VALUES ('164', '46896126164993', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:14:47', '0', '2018-04-19 15:14:47');
INSERT INTO `im_community` VALUES ('165', '46896203759619', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:16:00', '0', '2018-04-19 15:16:00');
INSERT INTO `im_community` VALUES ('166', '46896235216897', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:16:30', '0', '2018-04-19 15:16:30');
INSERT INTO `im_community` VALUES ('167', '46896298131457', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:17:30', '0', '2018-04-19 15:17:30');
INSERT INTO `im_community` VALUES ('168', '46896302325761', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:17:34', '0', '2018-04-19 15:17:34');
INSERT INTO `im_community` VALUES ('169', '46897328881665', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:33:54', '0', '2018-04-19 15:33:54');
INSERT INTO `im_community` VALUES ('170', '46897347756033', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:34:11', '0', '2018-04-19 15:34:11');
INSERT INTO `im_community` VALUES ('171', '46897351950337', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 15:34:15', '0', '2018-04-19 15:34:15');
INSERT INTO `im_community` VALUES ('172', '46898589270017', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '3', '0', '0', '17768601406', '2018-04-19 15:53:55', '0', '2018-04-19 15:54:53');
INSERT INTO `im_community` VALUES ('173', '46905353633793', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '4', '0', '0', '17768601406', '2018-04-19 17:41:26', '0', '2018-04-19 20:25:25');
INSERT INTO `im_community` VALUES ('174', '46916535648257', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 20:39:11', '0', '2018-04-19 20:39:11');
INSERT INTO `im_community` VALUES ('175', '46916605902849', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-19 20:40:17', '0', '2018-04-19 20:40:17');
INSERT INTO `im_community` VALUES ('176', '46969908166658', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '4', '0', '0', '17768601406', '2018-04-20 10:47:31', '0', '2018-04-20 17:07:29');
INSERT INTO `im_community` VALUES ('177', '46969953255425', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-20 10:48:14', '0', '2018-04-20 10:48:14');
INSERT INTO `im_community` VALUES ('178', '46969954304002', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '3', '0', '0', '17768601406', '2018-04-20 10:48:15', '0', '2018-04-20 10:49:51');
INSERT INTO `im_community` VALUES ('179', '46988921995265', '永慈康复在线群组', '17768601406', null, null, '康复、护理', null, '1', '1', '200', '2', '0', '0', '17768601406', '2018-04-20 15:49:44', '0', '2018-04-20 15:49:44');

-- ----------------------------
-- Table structure for im_community_oper
-- ----------------------------
DROP TABLE IF EXISTS `im_community_oper`;
CREATE TABLE `im_community_oper` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `inviter_phone` varchar(11) NOT NULL COMMENT '邀请人账户ID',
  `phone` varchar(11) NOT NULL COMMENT '账户ID',
  `action_type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '动作类型（1：添加；2：解除）',
  `creator` varchar(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=384 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im_community_oper
-- ----------------------------
INSERT INTO `im_community_oper` VALUES ('102', '17768601406', '17708494021', '1', '17708494021', '2018-04-03 14:11:55', '0', '2018-04-03 14:11:55');
INSERT INTO `im_community_oper` VALUES ('103', '17768601406', '17708494021', '1', '17708494021', '2018-04-03 14:12:41', '0', '2018-04-03 14:12:41');
INSERT INTO `im_community_oper` VALUES ('104', '17768601406', '15565125335', '1', '15565125335', '2018-04-03 14:13:21', '0', '2018-04-03 14:13:21');
INSERT INTO `im_community_oper` VALUES ('105', '17768601406', '17708494021', '1', '17708494021', '2018-04-03 14:13:25', '0', '2018-04-03 14:13:25');
INSERT INTO `im_community_oper` VALUES ('106', '17768601406', '17708494021', '1', '17708494021', '2018-04-03 14:16:22', '0', '2018-04-03 14:16:22');
INSERT INTO `im_community_oper` VALUES ('107', '17768601406', '13666666666', '1', '13666666666', '2018-04-03 14:18:40', '0', '2018-04-03 14:18:40');
INSERT INTO `im_community_oper` VALUES ('108', '17768601406', '13666666666', '1', '13666666666', '2018-04-03 14:18:46', '0', '2018-04-03 14:18:46');
INSERT INTO `im_community_oper` VALUES ('109', '15565125335', '13352562546', '1', '15565125335', '2018-04-03 14:27:52', '0', '2018-04-03 14:27:52');
INSERT INTO `im_community_oper` VALUES ('110', '17768601406', '17708494021', '1', '17708494021', '2018-04-03 14:30:53', '0', '2018-04-03 14:30:53');
INSERT INTO `im_community_oper` VALUES ('111', '17768601406', '17708494021', '1', '17708494021', '2018-04-03 14:31:01', '0', '2018-04-03 14:31:01');
INSERT INTO `im_community_oper` VALUES ('112', '15565125335', '15635246852', '1', '15565125335', '2018-04-03 14:31:02', '0', '2018-04-03 14:31:02');
INSERT INTO `im_community_oper` VALUES ('113', '17768601406', '17708494021', '1', '17708494021', '2018-04-03 14:31:39', '0', '2018-04-03 14:31:39');
INSERT INTO `im_community_oper` VALUES ('114', '17768601406', '17708494021', '1', '17708494021', '2018-04-03 14:33:03', '0', '2018-04-03 14:33:03');
INSERT INTO `im_community_oper` VALUES ('115', '17768601406', '17708494021', '1', '17708494021', '2018-04-03 14:33:14', '0', '2018-04-03 14:33:14');
INSERT INTO `im_community_oper` VALUES ('116', '17768601406', '17708494021', '1', '17708494021', '2018-04-03 14:33:18', '0', '2018-04-03 14:33:18');
INSERT INTO `im_community_oper` VALUES ('117', '17768601406', '17708494021', '1', '17708494021', '2018-04-03 14:41:40', '0', '2018-04-03 14:41:40');
INSERT INTO `im_community_oper` VALUES ('118', '17768601406', '13666666666', '1', '13666666666', '2018-04-03 14:45:09', '0', '2018-04-03 14:45:09');
INSERT INTO `im_community_oper` VALUES ('119', '17768601406', '13666666666', '1', '13666666666', '2018-04-03 14:45:09', '0', '2018-04-03 14:45:09');
INSERT INTO `im_community_oper` VALUES ('120', '15565125335', '17768601405', '1', '15565125335', '2018-04-03 14:46:40', '0', '2018-04-03 14:46:40');
INSERT INTO `im_community_oper` VALUES ('121', '17768601406', '18701785384', '1', '18701785384', '2018-04-03 14:57:08', '0', '2018-04-03 14:57:08');
INSERT INTO `im_community_oper` VALUES ('122', '17768601406', '18701785384', '1', '18701785384', '2018-04-03 14:57:10', '0', '2018-04-03 14:57:10');
INSERT INTO `im_community_oper` VALUES ('123', '17768601406', '18701785384', '1', '18701785384', '2018-04-03 14:57:11', '0', '2018-04-03 14:57:11');
INSERT INTO `im_community_oper` VALUES ('124', '17768601406', '18701785384', '1', '18701785384', '2018-04-03 14:57:12', '0', '2018-04-03 14:57:12');
INSERT INTO `im_community_oper` VALUES ('125', '17768601406', '18701785384', '1', '18701785384', '2018-04-03 14:57:15', '0', '2018-04-03 14:57:15');
INSERT INTO `im_community_oper` VALUES ('126', '17768601406', '18701785384', '1', '18701785384', '2018-04-03 14:57:16', '0', '2018-04-03 14:57:16');
INSERT INTO `im_community_oper` VALUES ('127', '17768601406', '15565125335', '1', '15565125335', '2018-04-03 15:03:14', '0', '2018-04-03 15:03:14');
INSERT INTO `im_community_oper` VALUES ('128', '15565125335', '13778909876', '1', '15565125335', '2018-04-03 15:07:10', '0', '2018-04-03 15:07:10');
INSERT INTO `im_community_oper` VALUES ('129', '15565125335', '17723415678', '1', '15565125335', '2018-04-03 15:08:23', '0', '2018-04-03 15:08:23');
INSERT INTO `im_community_oper` VALUES ('130', '15565125335', '13919088888', '1', '15565125335', '2018-04-03 15:08:55', '0', '2018-04-03 15:08:55');
INSERT INTO `im_community_oper` VALUES ('131', '15565125335', '13352562546', '1', '15565125335', '2018-04-03 15:08:58', '0', '2018-04-03 15:08:58');
INSERT INTO `im_community_oper` VALUES ('132', '15565125335', '13910999999', '1', '15565125335', '2018-04-03 15:09:01', '0', '2018-04-03 15:09:01');
INSERT INTO `im_community_oper` VALUES ('133', '15565125335', '18701785384', '1', '15565125335', '2018-04-03 15:11:00', '0', '2018-04-03 15:11:00');
INSERT INTO `im_community_oper` VALUES ('134', '15565125335', '17708494021', '1', '15565125335', '2018-04-03 15:19:58', '0', '2018-04-03 15:19:58');
INSERT INTO `im_community_oper` VALUES ('135', '17768601406', '15565125335', '1', '15565125335', '2018-04-03 16:39:47', '0', '2018-04-03 16:39:47');
INSERT INTO `im_community_oper` VALUES ('136', '17768601406', '13646205270', '1', '13646205270', '2018-04-03 16:56:29', '0', '2018-04-03 16:56:29');
INSERT INTO `im_community_oper` VALUES ('137', '17768601406', '17708494021', '1', '17708494021', '2018-04-03 18:17:58', '0', '2018-04-03 18:17:58');
INSERT INTO `im_community_oper` VALUES ('138', '17768601406', '18701785384', '1', '18701785384', '2018-04-03 18:23:05', '0', '2018-04-03 18:23:05');
INSERT INTO `im_community_oper` VALUES ('139', '17768601406', '18701785384', '1', '18701785384', '2018-04-03 18:23:41', '0', '2018-04-03 18:23:41');
INSERT INTO `im_community_oper` VALUES ('140', '17768601406', '17708494021', '1', '17708494021', '2018-04-03 20:18:53', '0', '2018-04-03 20:18:53');
INSERT INTO `im_community_oper` VALUES ('141', '18701785384', '15335678985', '1', '18701785384', '2018-04-03 20:21:42', '0', '2018-04-03 20:21:42');
INSERT INTO `im_community_oper` VALUES ('142', '17768601406', '18701785384', '1', '18701785384', '2018-04-03 20:28:56', '0', '2018-04-03 20:28:56');
INSERT INTO `im_community_oper` VALUES ('143', '18701785384', '15335678985', '1', '18701785384', '2018-04-03 20:29:51', '0', '2018-04-03 20:29:51');
INSERT INTO `im_community_oper` VALUES ('144', '18701785384', '17708494021', '1', '18701785384', '2018-04-03 20:30:43', '0', '2018-04-03 20:30:43');
INSERT INTO `im_community_oper` VALUES ('145', '18701785384', '18847747788', '1', '18701785384', '2018-04-03 20:33:51', '0', '2018-04-03 20:33:51');
INSERT INTO `im_community_oper` VALUES ('146', '18701785384', '16435899877', '1', '18701785384', '2018-04-03 21:28:42', '0', '2018-04-03 21:28:42');
INSERT INTO `im_community_oper` VALUES ('147', '15565125335', '15586699665', '1', '15565125335', '2018-04-04 09:56:56', '0', '2018-04-04 09:56:56');
INSERT INTO `im_community_oper` VALUES ('148', '15565125335', '13543598324', '1', '15565125335', '2018-04-04 09:59:02', '0', '2018-04-04 09:59:02');
INSERT INTO `im_community_oper` VALUES ('149', '15565125335', '13910999999', '1', '15565125335', '2018-04-04 10:21:51', '0', '2018-04-04 10:21:51');
INSERT INTO `im_community_oper` VALUES ('150', '17768601406', '17708494021', '1', '17708494021', '2018-04-04 10:26:50', '0', '2018-04-04 10:26:50');
INSERT INTO `im_community_oper` VALUES ('151', '17768601406', '15565125335', '1', '15565125335', '2018-04-04 10:30:47', '0', '2018-04-04 10:30:47');
INSERT INTO `im_community_oper` VALUES ('152', '15565125335', '13543598324', '1', '15565125335', '2018-04-04 10:33:52', '0', '2018-04-04 10:33:52');
INSERT INTO `im_community_oper` VALUES ('153', '17768601406', '17708494021', '1', '17708494021', '2018-04-04 13:30:43', '0', '2018-04-04 13:30:43');
INSERT INTO `im_community_oper` VALUES ('154', '18701785384', '16456789986', '1', '18701785384', '2018-04-04 17:49:14', '0', '2018-04-04 17:49:14');
INSERT INTO `im_community_oper` VALUES ('155', '17708494021', '17768601401', '1', '17708494021', '2018-04-08 12:58:35', '0', '2018-04-08 20:56:44');
INSERT INTO `im_community_oper` VALUES ('156', '17768601406', '17708494021', '1', '17708494021', '2018-04-08 12:58:53', '0', '2018-04-08 12:58:53');
INSERT INTO `im_community_oper` VALUES ('157', '17708494021', '15365558969', '1', '17708494021', '2018-04-08 12:59:22', '0', '2018-04-08 12:59:22');
INSERT INTO `im_community_oper` VALUES ('158', '17708494021', '13646205270', '1', '17708494021', '2018-04-08 13:03:31', '0', '2018-04-08 13:03:31');
INSERT INTO `im_community_oper` VALUES ('159', '17708494021', '13855699856', '1', '17708494021', '2018-04-08 13:04:30', '0', '2018-04-08 13:04:30');
INSERT INTO `im_community_oper` VALUES ('160', '17708494021', '17768601401', '1', '17708494021', '2018-04-08 13:07:08', '0', '2018-04-08 20:56:45');
INSERT INTO `im_community_oper` VALUES ('161', '17708494021', '13514251234', '1', '17708494021', '2018-04-08 13:10:12', '0', '2018-04-08 13:10:12');
INSERT INTO `im_community_oper` VALUES ('162', '17708494021', '13646205270', '1', '17708494021', '2018-04-08 13:13:38', '0', '2018-04-08 13:13:38');
INSERT INTO `im_community_oper` VALUES ('163', '17708494021', '17768601401', '1', '17708494021', '2018-04-08 13:51:11', '0', '2018-04-08 20:56:46');
INSERT INTO `im_community_oper` VALUES ('164', '17708494021', '13526655886', '1', '17708494021', '2018-04-08 15:22:05', '0', '2018-04-08 15:22:05');
INSERT INTO `im_community_oper` VALUES ('165', '17708494021', '15646343336', '1', '17708494021', '2018-04-08 15:22:49', '0', '2018-04-08 15:22:49');
INSERT INTO `im_community_oper` VALUES ('166', '17708494021', '17768601402', '1', '17708494021', '2018-04-08 15:23:05', '0', '2018-04-08 20:57:09');
INSERT INTO `im_community_oper` VALUES ('167', '17768601406', '17708494021', '1', '17708494021', '2018-04-08 16:25:10', '0', '2018-04-08 16:25:10');
INSERT INTO `im_community_oper` VALUES ('168', '17708494021', '12334532456', '1', '17708494021', '2018-04-08 20:13:00', '0', '2018-04-08 20:13:00');
INSERT INTO `im_community_oper` VALUES ('169', '17708494021', '13514251234', '1', '17708494021', '2018-04-08 20:13:15', '0', '2018-04-08 20:13:15');
INSERT INTO `im_community_oper` VALUES ('170', '17708494021', '17768601403', '1', '17708494021', '2018-04-08 20:16:19', '0', '2018-04-08 20:57:29');
INSERT INTO `im_community_oper` VALUES ('171', '17708494021', '1254588759', '1', '17708494021', '2018-04-08 20:19:46', '0', '2018-04-08 20:19:46');
INSERT INTO `im_community_oper` VALUES ('172', '17708494021', '15365558969', '1', '17708494021', '2018-04-08 20:43:41', '0', '2018-04-08 20:43:41');
INSERT INTO `im_community_oper` VALUES ('173', '17708494021', '17768601401', '1', '17708494021', '2018-04-08 20:56:02', '0', '2018-04-08 20:56:48');
INSERT INTO `im_community_oper` VALUES ('174', '17708494021', '13464684995', '1', '17708494021', '2018-04-08 20:56:23', '0', '2018-04-08 20:56:23');
INSERT INTO `im_community_oper` VALUES ('175', '17708494021', '13526655886', '1', '17708494021', '2018-04-08 21:01:23', '0', '2018-04-08 21:01:23');
INSERT INTO `im_community_oper` VALUES ('176', '17708494021', 'null', '1', '17708494021', '2018-04-08 22:16:29', '0', '2018-04-08 22:16:29');
INSERT INTO `im_community_oper` VALUES ('177', '17708494021', '13512345666', '1', '17708494021', '2018-04-08 22:18:43', '0', '2018-04-08 22:18:43');
INSERT INTO `im_community_oper` VALUES ('178', '17708494021', '13514251234', '1', '17708494021', '2018-04-08 22:18:56', '0', '2018-04-08 22:18:56');
INSERT INTO `im_community_oper` VALUES ('179', '17708494021', '13646205270', '1', '17708494021', '2018-04-08 22:19:14', '0', '2018-04-08 22:19:14');
INSERT INTO `im_community_oper` VALUES ('180', '17708494021', '回家', '1', '17708494021', '2018-04-09 09:16:30', '0', '2018-04-09 09:16:30');
INSERT INTO `im_community_oper` VALUES ('181', '17708494021', '回家', '1', '17708494021', '2018-04-09 09:23:22', '0', '2018-04-09 09:23:22');
INSERT INTO `im_community_oper` VALUES ('182', '17708494021', '13655566966', '1', '17708494021', '2018-04-09 09:23:39', '0', '2018-04-09 09:23:39');
INSERT INTO `im_community_oper` VALUES ('183', '17708494021', '13526655886', '1', '17708494021', '2018-04-09 09:24:08', '0', '2018-04-09 09:24:08');
INSERT INTO `im_community_oper` VALUES ('184', '17768601406', '17708494021', '1', '17708494021', '2018-04-09 09:25:44', '0', '2018-04-09 09:25:44');
INSERT INTO `im_community_oper` VALUES ('185', '17768601406', '17708494021', '1', '17708494021', '2018-04-09 09:25:51', '0', '2018-04-09 09:25:51');
INSERT INTO `im_community_oper` VALUES ('186', '17708494021', '13646205270', '1', '17708494021', '2018-04-09 09:26:22', '0', '2018-04-09 09:26:22');
INSERT INTO `im_community_oper` VALUES ('187', '17708494021', '读u多喝点', '1', '17708494021', '2018-04-09 09:33:11', '0', '2018-04-09 09:33:11');
INSERT INTO `im_community_oper` VALUES ('188', '17708494021', '1254588759', '1', '17708494021', '2018-04-09 09:33:31', '0', '2018-04-09 09:33:31');
INSERT INTO `im_community_oper` VALUES ('189', '17708494021', '13526425458', '1', '17708494021', '2018-04-09 09:37:24', '0', '2018-04-09 09:37:24');
INSERT INTO `im_community_oper` VALUES ('190', '17708494021', '13466649946', '1', '17708494021', '2018-04-09 09:44:28', '0', '2018-04-09 09:44:28');
INSERT INTO `im_community_oper` VALUES ('191', '17708494021', '13464684995', '1', '17708494021', '2018-04-09 09:49:53', '0', '2018-04-09 09:49:53');
INSERT INTO `im_community_oper` VALUES ('192', '17708494021', '13526655886', '1', '17708494021', '2018-04-09 09:50:30', '0', '2018-04-09 09:50:30');
INSERT INTO `im_community_oper` VALUES ('193', '17708494021', '13655566966', '1', '17708494021', '2018-04-09 09:52:23', '0', '2018-04-09 09:52:23');
INSERT INTO `im_community_oper` VALUES ('194', '17708494021', '所以一定要', '1', '17708494021', '2018-04-09 09:55:42', '0', '2018-04-09 09:55:42');
INSERT INTO `im_community_oper` VALUES ('195', '17708494021', '所以一定要', '1', '17708494021', '2018-04-09 09:57:48', '0', '2018-04-09 09:57:48');
INSERT INTO `im_community_oper` VALUES ('196', '17708494021', '12334532456', '1', '17708494021', '2018-04-09 09:57:59', '0', '2018-04-09 09:57:59');
INSERT INTO `im_community_oper` VALUES ('197', '17708494021', '15642365889', '1', '17708494021', '2018-04-09 10:03:22', '0', '2018-04-09 10:03:22');
INSERT INTO `im_community_oper` VALUES ('198', '17708494021', '13514251234', '1', '17708494021', '2018-04-09 10:04:53', '0', '2018-04-09 10:04:53');
INSERT INTO `im_community_oper` VALUES ('199', '17708494021', '15646343336', '1', '17708494021', '2018-04-09 10:05:09', '0', '2018-04-09 10:05:09');
INSERT INTO `im_community_oper` VALUES ('200', '15565125335', '13666666666', '1', '15565125335', '2018-04-09 15:04:39', '0', '2018-04-09 15:04:39');
INSERT INTO `im_community_oper` VALUES ('201', '13666666666', '17708494021', '1', '13666666666', '2018-04-09 16:43:13', '0', '2018-04-09 16:43:13');
INSERT INTO `im_community_oper` VALUES ('202', '17768601406', '13666666666', '1', '13666666666', '2018-04-09 16:47:25', '0', '2018-04-09 16:47:25');
INSERT INTO `im_community_oper` VALUES ('203', '13666666666', '17708494021', '1', '13666666666', '2018-04-09 16:47:33', '0', '2018-04-09 16:47:33');
INSERT INTO `im_community_oper` VALUES ('204', '15565125335', '18701785384', '1', '15565125335', '2018-04-09 18:15:11', '0', '2018-04-09 18:15:11');
INSERT INTO `im_community_oper` VALUES ('205', '17708494021', '所以一定要', '1', '17708494021', '2018-04-10 09:33:47', '0', '2018-04-10 09:33:47');
INSERT INTO `im_community_oper` VALUES ('206', '17708494021', '所以一定要', '1', '17708494021', '2018-04-10 09:41:28', '0', '2018-04-10 09:41:28');
INSERT INTO `im_community_oper` VALUES ('207', '17708494021', '12334532456', '1', '17708494021', '2018-04-10 10:02:09', '0', '2018-04-10 10:02:09');
INSERT INTO `im_community_oper` VALUES ('208', '17708494021', 'null', '1', '17708494021', '2018-04-10 10:21:58', '0', '2018-04-10 10:21:58');
INSERT INTO `im_community_oper` VALUES ('209', '17708494021', '13466649946', '1', '17708494021', '2018-04-10 10:26:26', '0', '2018-04-10 10:26:26');
INSERT INTO `im_community_oper` VALUES ('210', '17708494021', '15365558969', '1', '17708494021', '2018-04-10 10:29:29', '0', '2018-04-10 10:29:29');
INSERT INTO `im_community_oper` VALUES ('211', '17708494021', '13855699856', '1', '17708494021', '2018-04-10 10:30:55', '0', '2018-04-10 10:30:55');
INSERT INTO `im_community_oper` VALUES ('212', '17708494021', '13466649946', '1', '17708494021', '2018-04-10 10:38:44', '0', '2018-04-10 10:38:44');
INSERT INTO `im_community_oper` VALUES ('213', '17708494021', '13526655886', '1', '17708494021', '2018-04-10 10:39:12', '0', '2018-04-10 10:39:12');
INSERT INTO `im_community_oper` VALUES ('214', '17708494021', '所以一定要', '1', '17708494021', '2018-04-10 10:41:37', '0', '2018-04-10 10:41:37');
INSERT INTO `im_community_oper` VALUES ('215', '17708494021', '13464684995', '1', '17708494021', '2018-04-10 10:45:43', '0', '2018-04-10 10:45:43');
INSERT INTO `im_community_oper` VALUES ('216', '17708494021', '13655566966', '1', '17708494021', '2018-04-10 10:45:57', '0', '2018-04-10 10:45:57');
INSERT INTO `im_community_oper` VALUES ('217', '17768601406', '17708494021', '1', '17708494021', '2018-04-10 10:48:51', '0', '2018-04-10 10:48:51');
INSERT INTO `im_community_oper` VALUES ('218', '17768601406', '17708494021', '1', '17708494021', '2018-04-10 10:48:59', '0', '2018-04-10 10:48:59');
INSERT INTO `im_community_oper` VALUES ('219', '17708494021', '13466649946', '1', '17708494021', '2018-04-10 10:49:13', '0', '2018-04-10 10:49:13');
INSERT INTO `im_community_oper` VALUES ('220', '17708494021', '所以一定要', '1', '17708494021', '2018-04-10 10:50:24', '0', '2018-04-10 10:50:24');
INSERT INTO `im_community_oper` VALUES ('221', '17708494021', '所以一定要', '1', '17708494021', '2018-04-10 10:50:46', '0', '2018-04-10 10:50:46');
INSERT INTO `im_community_oper` VALUES ('222', '17708494021', '回家', '1', '17708494021', '2018-04-10 10:51:16', '0', '2018-04-10 10:51:16');
INSERT INTO `im_community_oper` VALUES ('223', '17708494021', '13855699856', '1', '17708494021', '2018-04-10 10:59:37', '0', '2018-04-10 10:59:37');
INSERT INTO `im_community_oper` VALUES ('224', '17708494021', '15365558969', '1', '17708494021', '2018-04-10 10:59:46', '0', '2018-04-10 10:59:46');
INSERT INTO `im_community_oper` VALUES ('225', '17708494021', '读u多喝点', '1', '17708494021', '2018-04-10 11:03:52', '0', '2018-04-10 11:03:52');
INSERT INTO `im_community_oper` VALUES ('226', '17708494021', '12334532456', '1', '17708494021', '2018-04-10 11:04:11', '0', '2018-04-10 11:04:11');
INSERT INTO `im_community_oper` VALUES ('227', '17708494021', '13526425458', '1', '17708494021', '2018-04-10 11:08:18', '0', '2018-04-10 11:08:18');
INSERT INTO `im_community_oper` VALUES ('228', '17708494021', '12334532456', '1', '17708494021', '2018-04-10 11:08:34', '0', '2018-04-10 11:08:34');
INSERT INTO `im_community_oper` VALUES ('229', '17708494021', '13646205270', '1', '17708494021', '2018-04-10 11:15:15', '0', '2018-04-10 11:15:15');
INSERT INTO `im_community_oper` VALUES ('230', '17708494021', '读u多喝点', '1', '17708494021', '2018-04-10 11:15:47', '0', '2018-04-10 11:15:47');
INSERT INTO `im_community_oper` VALUES ('231', '17708494021', '13646205270', '1', '17708494021', '2018-04-10 11:16:13', '0', '2018-04-10 11:16:13');
INSERT INTO `im_community_oper` VALUES ('232', '17768601406', '17708494021', '1', '17708494021', '2018-04-10 11:16:44', '0', '2018-04-10 11:16:44');
INSERT INTO `im_community_oper` VALUES ('233', '17708494021', '所以一定要', '1', '17708494021', '2018-04-10 11:16:55', '0', '2018-04-10 11:16:55');
INSERT INTO `im_community_oper` VALUES ('234', '17708494021', '回家', '1', '17708494021', '2018-04-10 11:17:15', '0', '2018-04-10 11:17:15');
INSERT INTO `im_community_oper` VALUES ('235', '17708494021', '15365558969', '1', '17708494021', '2018-04-10 11:17:43', '0', '2018-04-10 11:17:43');
INSERT INTO `im_community_oper` VALUES ('236', '17768601406', '17708494021', '1', '17708494021', '2018-04-10 11:18:50', '0', '2018-04-10 11:18:50');
INSERT INTO `im_community_oper` VALUES ('237', '17708494021', '所以一定要', '1', '17708494021', '2018-04-10 11:19:35', '0', '2018-04-10 11:19:35');
INSERT INTO `im_community_oper` VALUES ('238', '17768601406', '17708494021', '1', '17708494021', '2018-04-10 11:20:04', '0', '2018-04-10 11:20:04');
INSERT INTO `im_community_oper` VALUES ('239', '17708494021', '所以一定要', '1', '17708494021', '2018-04-10 11:20:12', '0', '2018-04-10 11:20:12');
INSERT INTO `im_community_oper` VALUES ('240', '17708494021', '12334532456', '1', '17708494021', '2018-04-10 11:27:26', '0', '2018-04-10 11:27:26');
INSERT INTO `im_community_oper` VALUES ('241', '17708494021', '15642365889', '1', '17708494021', '2018-04-10 11:43:08', '0', '2018-04-10 11:43:08');
INSERT INTO `im_community_oper` VALUES ('242', '17708494021', '13646205270', '1', '17708494021', '2018-04-10 11:46:15', '0', '2018-04-10 11:46:15');
INSERT INTO `im_community_oper` VALUES ('243', '17708494021', '13526425458', '1', '17708494021', '2018-04-10 12:42:26', '0', '2018-04-10 12:42:26');
INSERT INTO `im_community_oper` VALUES ('244', '17768601406', '13646205270', '1', '13646205270', '2018-04-10 13:43:04', '0', '2018-04-10 13:43:04');
INSERT INTO `im_community_oper` VALUES ('245', '13646205270', '1254866599', '1', '13646205270', '2018-04-10 13:43:41', '0', '2018-04-10 13:43:41');
INSERT INTO `im_community_oper` VALUES ('246', '13646205270', '1254866599', '1', '13646205270', '2018-04-10 13:43:55', '0', '2018-04-10 13:43:55');
INSERT INTO `im_community_oper` VALUES ('247', '17768601406', '13666666666', '1', '13666666666', '2018-04-10 14:08:40', '0', '2018-04-10 14:08:40');
INSERT INTO `im_community_oper` VALUES ('248', '13646205270', '17708494021', '1', '13646205270', '2018-04-10 14:49:30', '0', '2018-04-10 14:49:30');
INSERT INTO `im_community_oper` VALUES ('249', '13646205270', '13412345644', '1', '13646205270', '2018-04-10 14:54:47', '0', '2018-04-10 14:54:47');
INSERT INTO `im_community_oper` VALUES ('250', '15565125335', '13910999999', '1', '15565125335', '2018-04-10 15:31:33', '0', '2018-04-10 15:31:33');
INSERT INTO `im_community_oper` VALUES ('251', '15565125335', '13352562546', '1', '15565125335', '2018-04-10 15:46:55', '0', '2018-04-10 15:46:55');
INSERT INTO `im_community_oper` VALUES ('252', '15565125335', '17768601409', '1', '15565125335', '2018-04-10 15:47:47', '0', '2018-04-10 15:47:47');
INSERT INTO `im_community_oper` VALUES ('253', '13646205270', '15364999686', '1', '13646205270', '2018-04-10 15:55:13', '0', '2018-04-10 15:55:13');
INSERT INTO `im_community_oper` VALUES ('254', '13646205270', '13526588999', '1', '13646205270', '2018-04-10 15:55:46', '0', '2018-04-10 15:55:46');
INSERT INTO `im_community_oper` VALUES ('255', '13646205270', '13526588999', '1', '13646205270', '2018-04-10 16:36:55', '0', '2018-04-10 16:36:55');
INSERT INTO `im_community_oper` VALUES ('256', '13646205270', '13526588999', '1', '13646205270', '2018-04-10 16:54:16', '0', '2018-04-10 16:54:16');
INSERT INTO `im_community_oper` VALUES ('257', '13646205270', '15364999686', '1', '13646205270', '2018-04-10 16:56:43', '0', '2018-04-10 16:56:43');
INSERT INTO `im_community_oper` VALUES ('258', '13646205270', '15255555666', '1', '13646205270', '2018-04-10 16:58:24', '0', '2018-04-10 16:58:24');
INSERT INTO `im_community_oper` VALUES ('259', '13646205270', '13526588999', '1', '13646205270', '2018-04-10 16:59:41', '0', '2018-04-10 16:59:41');
INSERT INTO `im_community_oper` VALUES ('260', '13646205270', '13412345644', '1', '13646205270', '2018-04-10 17:09:42', '0', '2018-04-10 17:09:42');
INSERT INTO `im_community_oper` VALUES ('261', '13646205270', '13526588999', '1', '13646205270', '2018-04-10 17:18:29', '0', '2018-04-10 17:18:29');
INSERT INTO `im_community_oper` VALUES ('262', '13646205270', '15364999686', '1', '13646205270', '2018-04-10 17:18:44', '0', '2018-04-10 17:18:44');
INSERT INTO `im_community_oper` VALUES ('263', '13646205270', '13569666683', '1', '13646205270', '2018-04-10 17:19:28', '0', '2018-04-10 17:19:28');
INSERT INTO `im_community_oper` VALUES ('264', '13646205270', '13522555566', '1', '13646205270', '2018-04-10 17:19:54', '0', '2018-04-10 17:19:54');
INSERT INTO `im_community_oper` VALUES ('265', '13646205270', '13412345644', '1', '13646205270', '2018-04-10 17:20:35', '0', '2018-04-10 17:20:35');
INSERT INTO `im_community_oper` VALUES ('266', '13646205270', '15264949686', '1', '13646205270', '2018-04-10 17:35:54', '0', '2018-04-10 17:35:54');
INSERT INTO `im_community_oper` VALUES ('267', '13646205270', '18701785384', '1', '13646205270', '2018-04-12 14:18:46', '0', '2018-04-12 14:18:46');
INSERT INTO `im_community_oper` VALUES ('268', '17768601406', '18701785384', '1', '18701785384', '2018-04-12 14:19:07', '0', '2018-04-12 14:19:07');
INSERT INTO `im_community_oper` VALUES ('269', '13646205270', '17768601408', '1', '13646205270', '2018-04-12 14:26:07', '0', '2018-04-12 14:26:07');
INSERT INTO `im_community_oper` VALUES ('270', '13646205270', '17768601405', '1', '13646205270', '2018-04-12 14:26:25', '0', '2018-04-12 14:26:25');
INSERT INTO `im_community_oper` VALUES ('271', '13646205270', '15821890505', '1', '13646205270', '2018-04-13 09:51:21', '0', '2018-04-13 09:51:21');
INSERT INTO `im_community_oper` VALUES ('272', '17768601406', '17708494021', '1', '17708494021', '2018-04-13 14:23:51', '0', '2018-04-13 14:23:51');
INSERT INTO `im_community_oper` VALUES ('273', '17768601406', '17708494021', '1', '17708494021', '2018-04-13 14:24:58', '0', '2018-04-13 14:24:58');
INSERT INTO `im_community_oper` VALUES ('274', '17768601406', '17708494021', '1', '17708494021', '2018-04-13 14:25:06', '0', '2018-04-13 14:25:06');
INSERT INTO `im_community_oper` VALUES ('275', '17708494021', '17768601403', '1', '17708494021', '2018-04-13 14:40:22', '0', '2018-04-13 14:40:22');
INSERT INTO `im_community_oper` VALUES ('276', '17708494021', '17768601405', '1', '17708494021', '2018-04-13 14:42:26', '0', '2018-04-13 14:42:26');
INSERT INTO `im_community_oper` VALUES ('277', '17708494021', '13655566966', '1', '17708494021', '2018-04-13 15:11:27', '0', '2018-04-13 15:11:27');
INSERT INTO `im_community_oper` VALUES ('278', '17708494021', '13464684995', '1', '17708494021', '2018-04-13 15:13:25', '0', '2018-04-13 15:13:25');
INSERT INTO `im_community_oper` VALUES ('279', '13646205270', '18912345678', '1', '13646205270', '2018-04-13 17:24:57', '0', '2018-04-13 17:24:57');
INSERT INTO `im_community_oper` VALUES ('280', '13646205270', '15264949686', '1', '13646205270', '2018-04-13 17:25:10', '0', '2018-04-13 17:25:10');
INSERT INTO `im_community_oper` VALUES ('281', '17768601406', '13646205270', '1', '13646205270', '2018-04-13 17:29:27', '0', '2018-04-13 17:29:27');
INSERT INTO `im_community_oper` VALUES ('282', '13646205270', '15264558856', '1', '13646205270', '2018-04-13 17:29:54', '0', '2018-04-13 17:29:54');
INSERT INTO `im_community_oper` VALUES ('283', '13646205270', '15264949686', '1', '13646205270', '2018-04-13 17:30:22', '0', '2018-04-13 17:30:22');
INSERT INTO `im_community_oper` VALUES ('284', '13646205270', '13526436456', '1', '13646205270', '2018-04-13 17:34:32', '0', '2018-04-13 17:34:32');
INSERT INTO `im_community_oper` VALUES ('285', '17768601406', '13646205270', '1', '13646205270', '2018-04-13 17:34:46', '0', '2018-04-13 17:34:46');
INSERT INTO `im_community_oper` VALUES ('286', '13646205270', '13523646848', '1', '13646205270', '2018-04-13 17:35:15', '0', '2018-04-13 17:35:15');
INSERT INTO `im_community_oper` VALUES ('287', '13646205270', '13526588999', '1', '13646205270', '2018-04-13 17:43:44', '0', '2018-04-13 17:43:44');
INSERT INTO `im_community_oper` VALUES ('288', '13646205270', '13255486689', '1', '13646205270', '2018-04-13 17:45:24', '0', '2018-04-13 17:45:24');
INSERT INTO `im_community_oper` VALUES ('289', '17768601406', '13646205270', '1', '13646205270', '2018-04-13 17:45:55', '0', '2018-04-13 17:45:55');
INSERT INTO `im_community_oper` VALUES ('290', '13646205270', '13526588999', '1', '13646205270', '2018-04-13 18:08:47', '0', '2018-04-13 18:08:47');
INSERT INTO `im_community_oper` VALUES ('291', '17768601406', '13646205270', '1', '13646205270', '2018-04-13 18:09:12', '0', '2018-04-13 18:09:12');
INSERT INTO `im_community_oper` VALUES ('292', '17768601406', '15565125335', '1', '15565125335', '2018-04-16 11:09:02', '0', '2018-04-16 11:09:02');
INSERT INTO `im_community_oper` VALUES ('293', '15565125335', '13352562546', '1', '15565125335', '2018-04-16 11:10:01', '0', '2018-04-16 11:10:01');
INSERT INTO `im_community_oper` VALUES ('294', '15565125335', '13919088888', '1', '15565125335', '2018-04-16 11:10:46', '0', '2018-04-16 11:10:46');
INSERT INTO `im_community_oper` VALUES ('295', '15565125335', '13910999999', '1', '15565125335', '2018-04-16 11:10:54', '0', '2018-04-16 11:10:54');
INSERT INTO `im_community_oper` VALUES ('296', '15565125335', '18701785384', '1', '15565125335', '2018-04-16 11:11:03', '0', '2018-04-16 11:11:03');
INSERT INTO `im_community_oper` VALUES ('297', '15565125335', '13646205270', '1', '15565125335', '2018-04-16 11:11:16', '0', '2018-04-16 11:11:16');
INSERT INTO `im_community_oper` VALUES ('298', '15565125335', '15586699665', '1', '15565125335', '2018-04-16 11:14:51', '0', '2018-04-16 11:14:51');
INSERT INTO `im_community_oper` VALUES ('299', '15565125335', '13784236487', '1', '15565125335', '2018-04-16 11:18:49', '0', '2018-04-16 11:18:49');
INSERT INTO `im_community_oper` VALUES ('300', '15565125335', '13543598324', '1', '15565125335', '2018-04-16 11:23:18', '0', '2018-04-16 11:23:18');
INSERT INTO `im_community_oper` VALUES ('301', '15565125335', '17708494021', '1', '15565125335', '2018-04-18 10:08:14', '0', '2018-04-18 10:08:14');
INSERT INTO `im_community_oper` VALUES ('302', '13646205270', '15565125335', '1', '13646205270', '2018-04-18 10:39:32', '0', '2018-04-18 10:39:32');
INSERT INTO `im_community_oper` VALUES ('303', '15565125335', '17708494021', '1', '15565125335', '2018-04-18 10:55:57', '0', '2018-04-18 10:55:57');
INSERT INTO `im_community_oper` VALUES ('304', '17768601406', '15565125335', '1', '15565125335', '2018-04-18 15:25:58', '0', '2018-04-18 15:25:58');
INSERT INTO `im_community_oper` VALUES ('305', '15565125335', '18701785384', '1', '15565125335', '2018-04-18 15:26:45', '0', '2018-04-18 15:26:45');
INSERT INTO `im_community_oper` VALUES ('306', '15565125335', '13910999999', '1', '15565125335', '2018-04-18 15:27:34', '0', '2018-04-18 15:27:34');
INSERT INTO `im_community_oper` VALUES ('307', '17768601406', '17708494023', '1', '17708494023', '2018-04-18 16:46:51', '0', '2018-04-18 16:46:51');
INSERT INTO `im_community_oper` VALUES ('308', '13646205270', '15364999686', '1', '13646205270', '2018-04-18 16:54:32', '0', '2018-04-18 16:54:32');
INSERT INTO `im_community_oper` VALUES ('309', '13646205270', '17708494021', '1', '13646205270', '2018-04-18 16:55:08', '0', '2018-04-18 16:55:08');
INSERT INTO `im_community_oper` VALUES ('310', '13646205270', '15264949686', '1', '13646205270', '2018-04-18 16:55:48', '0', '2018-04-18 16:55:48');
INSERT INTO `im_community_oper` VALUES ('311', '17768601406', '18994710039', '1', '18994710039', '2018-04-18 17:50:14', '0', '2018-04-18 17:50:14');
INSERT INTO `im_community_oper` VALUES ('312', '17768601406', '15821890403', '1', '15821890403', '2018-04-19 11:22:44', '0', '2018-04-19 11:22:44');
INSERT INTO `im_community_oper` VALUES ('313', '17768601406', '15821890403', '1', '15821890403', '2018-04-19 11:23:45', '0', '2018-04-19 11:23:45');
INSERT INTO `im_community_oper` VALUES ('314', '17768601406', '15821890403', '1', '15821890403', '2018-04-19 11:23:53', '0', '2018-04-19 11:23:53');
INSERT INTO `im_community_oper` VALUES ('315', '17768601406', '15821890403', '1', '15821890403', '2018-04-19 11:23:59', '0', '2018-04-19 11:23:59');
INSERT INTO `im_community_oper` VALUES ('316', '17768601406', '15821890403', '1', '15821890403', '2018-04-19 11:24:02', '0', '2018-04-19 11:24:02');
INSERT INTO `im_community_oper` VALUES ('317', '17768601406', '15821890403', '1', '15821890403', '2018-04-19 11:32:39', '0', '2018-04-19 11:32:39');
INSERT INTO `im_community_oper` VALUES ('318', '17768601406', '15608470049', '1', '15608470049', '2018-04-19 12:46:32', '0', '2018-04-19 12:46:32');
INSERT INTO `im_community_oper` VALUES ('319', '17768601406', '15608470049', '1', '15608470049', '2018-04-19 12:47:43', '0', '2018-04-19 12:47:43');
INSERT INTO `im_community_oper` VALUES ('320', '17768601406', '15608470049', '1', '15608470049', '2018-04-19 12:47:45', '0', '2018-04-19 12:47:45');
INSERT INTO `im_community_oper` VALUES ('321', '17768601406', '15608470049', '1', '15608470049', '2018-04-19 12:59:17', '0', '2018-04-19 12:59:17');
INSERT INTO `im_community_oper` VALUES ('322', '17768601406', '15608470049', '1', '15608470049', '2018-04-19 12:59:24', '0', '2018-04-19 12:59:24');
INSERT INTO `im_community_oper` VALUES ('323', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 13:41:06', '0', '2018-04-19 13:41:06');
INSERT INTO `im_community_oper` VALUES ('324', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 13:41:49', '0', '2018-04-19 13:41:49');
INSERT INTO `im_community_oper` VALUES ('325', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 13:57:29', '0', '2018-04-19 13:57:29');
INSERT INTO `im_community_oper` VALUES ('326', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 14:04:12', '0', '2018-04-19 14:04:12');
INSERT INTO `im_community_oper` VALUES ('327', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 14:22:03', '0', '2018-04-19 14:22:03');
INSERT INTO `im_community_oper` VALUES ('328', '17768601406', '13666666666', '1', '13666666666', '2018-04-19 14:22:56', '0', '2018-04-19 14:22:56');
INSERT INTO `im_community_oper` VALUES ('329', '13646205270', '13526588999', '1', '13646205270', '2018-04-19 14:25:48', '0', '2018-04-19 14:25:48');
INSERT INTO `im_community_oper` VALUES ('330', '13646205270', '15264949686', '1', '13646205270', '2018-04-19 14:27:12', '0', '2018-04-19 14:27:12');
INSERT INTO `im_community_oper` VALUES ('331', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 14:42:32', '0', '2018-04-19 14:42:32');
INSERT INTO `im_community_oper` VALUES ('332', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 14:45:03', '0', '2018-04-19 14:45:03');
INSERT INTO `im_community_oper` VALUES ('333', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 14:45:18', '0', '2018-04-19 14:45:18');
INSERT INTO `im_community_oper` VALUES ('334', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 14:45:21', '0', '2018-04-19 14:45:21');
INSERT INTO `im_community_oper` VALUES ('335', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 14:45:24', '0', '2018-04-19 14:45:24');
INSERT INTO `im_community_oper` VALUES ('336', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 14:45:31', '0', '2018-04-19 14:45:31');
INSERT INTO `im_community_oper` VALUES ('337', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 14:56:12', '0', '2018-04-19 14:56:12');
INSERT INTO `im_community_oper` VALUES ('338', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 14:56:16', '0', '2018-04-19 14:56:16');
INSERT INTO `im_community_oper` VALUES ('339', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 14:56:28', '0', '2018-04-19 14:56:28');
INSERT INTO `im_community_oper` VALUES ('340', '13646205270', '15264949686', '1', '13646205270', '2018-04-19 14:56:58', '0', '2018-04-19 14:56:58');
INSERT INTO `im_community_oper` VALUES ('341', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 14:57:09', '0', '2018-04-19 14:57:09');
INSERT INTO `im_community_oper` VALUES ('342', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:05:05', '0', '2018-04-19 15:05:05');
INSERT INTO `im_community_oper` VALUES ('343', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:06:29', '0', '2018-04-19 15:06:29');
INSERT INTO `im_community_oper` VALUES ('344', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:10:18', '0', '2018-04-19 15:10:18');
INSERT INTO `im_community_oper` VALUES ('345', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:10:21', '0', '2018-04-19 15:10:21');
INSERT INTO `im_community_oper` VALUES ('346', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:10:30', '0', '2018-04-19 15:10:30');
INSERT INTO `im_community_oper` VALUES ('347', '13646205270', '13526588999', '1', '13646205270', '2018-04-19 15:10:41', '0', '2018-04-19 15:10:41');
INSERT INTO `im_community_oper` VALUES ('348', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:11:08', '0', '2018-04-19 15:11:08');
INSERT INTO `im_community_oper` VALUES ('349', '13646205270', '13412345644', '1', '13646205270', '2018-04-19 15:11:18', '0', '2018-04-19 15:11:18');
INSERT INTO `im_community_oper` VALUES ('350', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:11:33', '0', '2018-04-19 15:11:33');
INSERT INTO `im_community_oper` VALUES ('351', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:11:52', '0', '2018-04-19 15:11:52');
INSERT INTO `im_community_oper` VALUES ('352', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:11:57', '0', '2018-04-19 15:11:57');
INSERT INTO `im_community_oper` VALUES ('353', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:12:03', '0', '2018-04-19 15:12:03');
INSERT INTO `im_community_oper` VALUES ('354', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:12:13', '0', '2018-04-19 15:12:13');
INSERT INTO `im_community_oper` VALUES ('355', '13646205270', '13412345644', '1', '13646205270', '2018-04-19 15:12:23', '0', '2018-04-19 15:12:23');
INSERT INTO `im_community_oper` VALUES ('356', '13646205270', '13526588999', '1', '13646205270', '2018-04-19 15:13:00', '0', '2018-04-19 15:13:00');
INSERT INTO `im_community_oper` VALUES ('357', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:13:06', '0', '2018-04-19 15:13:06');
INSERT INTO `im_community_oper` VALUES ('358', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:13:57', '0', '2018-04-19 15:13:57');
INSERT INTO `im_community_oper` VALUES ('359', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:14:18', '0', '2018-04-19 15:14:18');
INSERT INTO `im_community_oper` VALUES ('360', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:14:43', '0', '2018-04-19 15:14:43');
INSERT INTO `im_community_oper` VALUES ('361', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:14:47', '0', '2018-04-19 15:14:47');
INSERT INTO `im_community_oper` VALUES ('362', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:16:01', '0', '2018-04-19 15:16:01');
INSERT INTO `im_community_oper` VALUES ('363', '17768601406', '15565125335', '1', '15565125335', '2018-04-19 15:16:30', '0', '2018-04-19 15:16:30');
INSERT INTO `im_community_oper` VALUES ('364', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:17:30', '0', '2018-04-19 15:17:30');
INSERT INTO `im_community_oper` VALUES ('365', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:17:34', '0', '2018-04-19 15:17:34');
INSERT INTO `im_community_oper` VALUES ('366', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:33:54', '0', '2018-04-19 15:33:54');
INSERT INTO `im_community_oper` VALUES ('367', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:34:11', '0', '2018-04-19 15:34:11');
INSERT INTO `im_community_oper` VALUES ('368', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 15:34:15', '0', '2018-04-19 15:34:15');
INSERT INTO `im_community_oper` VALUES ('369', '17768601406', '13666666666', '1', '13666666666', '2018-04-19 15:53:55', '0', '2018-04-19 15:53:55');
INSERT INTO `im_community_oper` VALUES ('370', '13666666666', '17708494021', '1', '13666666666', '2018-04-19 15:54:53', '0', '2018-04-19 15:54:53');
INSERT INTO `im_community_oper` VALUES ('371', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 17:41:26', '0', '2018-04-19 17:41:26');
INSERT INTO `im_community_oper` VALUES ('372', '13646205270', '15364999686', '1', '13646205270', '2018-04-19 20:25:06', '0', '2018-04-19 20:25:06');
INSERT INTO `im_community_oper` VALUES ('373', '13646205270', '13526588999', '1', '13646205270', '2018-04-19 20:25:25', '0', '2018-04-19 20:25:25');
INSERT INTO `im_community_oper` VALUES ('374', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 20:39:11', '0', '2018-04-19 20:39:11');
INSERT INTO `im_community_oper` VALUES ('375', '17768601406', '13646205270', '1', '13646205270', '2018-04-19 20:40:17', '0', '2018-04-19 20:40:17');
INSERT INTO `im_community_oper` VALUES ('376', '17768601406', '17708494021', '1', '17708494021', '2018-04-20 10:47:31', '0', '2018-04-20 10:47:31');
INSERT INTO `im_community_oper` VALUES ('377', '17768601406', '17708494021', '1', '17708494021', '2018-04-20 10:48:14', '0', '2018-04-20 10:48:14');
INSERT INTO `im_community_oper` VALUES ('378', '17768601406', '17708494021', '1', '17708494021', '2018-04-20 10:48:15', '0', '2018-04-20 10:48:15');
INSERT INTO `im_community_oper` VALUES ('379', '17708494021', '13646205270', '1', '17708494021', '2018-04-20 10:49:51', '0', '2018-04-20 10:49:51');
INSERT INTO `im_community_oper` VALUES ('380', '17708494021', '13646205270', '1', '17708494021', '2018-04-20 10:50:40', '0', '2018-04-20 10:50:40');
INSERT INTO `im_community_oper` VALUES ('381', '17768601406', '13888888888', '1', '13888888888', '2018-04-20 15:49:44', '0', '2018-04-20 15:49:44');
INSERT INTO `im_community_oper` VALUES ('382', '13646205270', '15565125335', '1', '13646205270', '2018-04-20 17:07:29', '0', '2018-04-20 17:07:29');
INSERT INTO `im_community_oper` VALUES ('383', '15565125335', '13666666666', '1', '15565125335', '2018-04-20 17:07:49', '0', '2018-04-20 17:07:49');

-- ----------------------------
-- Table structure for im_community_user
-- ----------------------------
DROP TABLE IF EXISTS `im_community_user`;
CREATE TABLE `im_community_user` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `community_id` varchar(20) DEFAULT NULL COMMENT '群组ID',
  `account_type` int(11) NOT NULL DEFAULT '2' COMMENT '用户类型（1：医生；2：患者；3：亲人；4：客服）',
  `portrait` varchar(128) DEFAULT NULL COMMENT '社群头像',
  `nickname` varchar(128) DEFAULT NULL COMMENT '群组昵称',
  `phone` varchar(11) DEFAULT NULL COMMENT '手机号',
  `real_name` varchar(20) DEFAULT NULL COMMENT '真实姓名',
  `state` tinyint(2) DEFAULT '1' COMMENT '用户在群组中的状态（0：该用户在环信群组中不存在，1：该用户在环信群组中存在）',
  `invite_auth` tinyint(2) DEFAULT NULL COMMENT '是否有权限邀请别人',
  `invite_phone` varchar(11) DEFAULT NULL COMMENT '邀请者账户ID',
  `creator` varchar(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=556 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im_community_user
-- ----------------------------
INSERT INTO `im_community_user` VALUES ('159', '45442629959682', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:11:55', '0', '2018-04-03 14:11:55');
INSERT INTO `im_community_user` VALUES ('160', '45442629959682', '2', '1522647518515.V0001.png', null, '17708494021', null, '1', '1', '17768601406', '17768601406', '2018-04-03 14:11:55', '0', '2018-04-13 17:17:44');
INSERT INTO `im_community_user` VALUES ('161', '45442677145601', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:12:41', '0', '2018-04-03 14:12:41');
INSERT INTO `im_community_user` VALUES ('162', '45442677145601', '2', '1522647518515.V0001.png', null, '17708494021', null, '1', '1', '17768601406', '17768601406', '2018-04-03 14:12:41', '0', '2018-04-13 17:17:45');
INSERT INTO `im_community_user` VALUES ('163', '45442719088641', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:13:21', '0', '2018-04-03 14:13:21');
INSERT INTO `im_community_user` VALUES ('164', '45442719088641', '2', '1522647518515.V0001.png', null, '15565125335', null, '1', '1', '17768601406', '17768601406', '2018-04-03 14:13:21', '0', '2018-04-13 17:17:45');
INSERT INTO `im_community_user` VALUES ('165', '45442723282945', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:13:25', '0', '2018-04-03 14:13:25');
INSERT INTO `im_community_user` VALUES ('166', '45442723282945', '2', '1522647518515.V0001.png', null, '17708494021', null, '1', '1', '17768601406', '17768601406', '2018-04-03 14:13:25', '0', '2018-04-13 17:17:47');
INSERT INTO `im_community_user` VALUES ('167', '45442909929474', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:16:22', '0', '2018-04-03 14:16:22');
INSERT INTO `im_community_user` VALUES ('168', '45442909929474', '2', '1522647518515.V0001.png', null, '17708494021', null, '1', '1', '17768601406', '17768601406', '2018-04-03 14:16:22', '0', '2018-04-13 17:17:47');
INSERT INTO `im_community_user` VALUES ('169', '45443053584386', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:18:40', '0', '2018-04-03 14:18:40');
INSERT INTO `im_community_user` VALUES ('170', '45443053584386', '2', '1522583593711.V0001.png', '管理员', '13666666666', '管理员', '1', '1', '17768601406', '17768601406', '2018-04-03 14:18:40', '0', '2018-04-03 14:18:40');
INSERT INTO `im_community_user` VALUES ('171', '45443060924417', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:18:46', '0', '2018-04-03 14:18:46');
INSERT INTO `im_community_user` VALUES ('172', '45443060924417', '2', '1522583593711.V0001.png', '管理员', '13666666666', '管理员', '1', '1', '17768601406', '17768601406', '2018-04-03 14:18:46', '0', '2018-04-03 14:18:46');
INSERT INTO `im_community_user` VALUES ('173', '45442719088641', '3', '1522641315345.V0001.png', '大家', '13352562546', '大家', '0', '1', '15565125335', '15565125335', '2018-04-03 14:27:52', '0', '2018-04-13 17:16:06');
INSERT INTO `im_community_user` VALUES ('174', '45443822190593', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:30:53', '0', '2018-04-03 14:30:53');
INSERT INTO `im_community_user` VALUES ('175', '45443822190593', '2', '1522647518515.V0001.png', null, '17708494021', null, '1', '1', '17768601406', '17768601406', '2018-04-03 14:30:53', '0', '2018-04-13 17:17:48');
INSERT INTO `im_community_user` VALUES ('176', '45443830579204', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:31:01', '0', '2018-04-03 14:31:01');
INSERT INTO `im_community_user` VALUES ('177', '45443830579204', '2', '1522647518515.V0001.png', null, '17708494021', null, '1', '1', '17768601406', '17768601406', '2018-04-03 14:31:01', '0', '2018-04-13 17:17:49');
INSERT INTO `im_community_user` VALUES ('178', '45442719088641', '1', '1522641177353.V0001.png', '医生', '15635246852', '医生', '0', '1', '15565125335', '15565125335', '2018-04-03 14:31:02', '0', '2018-04-13 17:16:56');
INSERT INTO `im_community_user` VALUES ('179', '45443871473665', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:31:39', '0', '2018-04-03 14:31:39');
INSERT INTO `im_community_user` VALUES ('180', '45443871473665', '2', '1522647518515.V0001.png', null, '17708494021', null, '1', '1', '17768601406', '17768601406', '2018-04-03 14:31:39', '0', '2018-04-13 17:17:50');
INSERT INTO `im_community_user` VALUES ('181', '45443958505473', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:33:03', '0', '2018-04-03 14:33:03');
INSERT INTO `im_community_user` VALUES ('182', '45443958505473', '2', '1522647518515.V0001.png', null, '17708494021', null, '1', '1', '17768601406', '17768601406', '2018-04-03 14:33:03', '0', '2018-04-13 17:17:50');
INSERT INTO `im_community_user` VALUES ('183', '45443971088385', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:33:14', '0', '2018-04-03 14:33:14');
INSERT INTO `im_community_user` VALUES ('184', '45443971088385', '2', '1522647518515.V0001.png', null, '17708494021', null, '1', '1', '17768601406', '17768601406', '2018-04-03 14:33:14', '0', '2018-04-13 17:17:52');
INSERT INTO `im_community_user` VALUES ('185', '45443974234113', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:33:18', '0', '2018-04-03 14:33:18');
INSERT INTO `im_community_user` VALUES ('186', '45443974234113', '2', '1522647518515.V0001.png', null, '17708494021', null, '1', '1', '17768601406', '17768601406', '2018-04-03 14:33:18', '0', '2018-04-13 17:17:52');
INSERT INTO `im_community_user` VALUES ('187', '45444501667841', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:41:40', '0', '2018-04-03 14:41:40');
INSERT INTO `im_community_user` VALUES ('188', '45444501667841', '2', '1522647518515.V0001.png', null, '17708494021', null, '1', '1', '17768601406', '17768601406', '2018-04-03 14:41:40', '0', '2018-04-13 17:17:53');
INSERT INTO `im_community_user` VALUES ('189', '45444719771649', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:45:09', '0', '2018-04-03 14:45:09');
INSERT INTO `im_community_user` VALUES ('190', '45444719771649', '2', '1522583593711.V0001.png', '管理员', '13666666666', '管理员', '1', '1', '17768601406', '17768601406', '2018-04-03 14:45:09', '0', '2018-04-03 14:45:09');
INSERT INTO `im_community_user` VALUES ('191', '45444720820225', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:45:09', '0', '2018-04-03 14:45:09');
INSERT INTO `im_community_user` VALUES ('192', '45444720820225', '2', '1522583593711.V0001.png', '管理员', '13666666666', '管理员', '1', '1', '17768601406', '17768601406', '2018-04-03 14:45:09', '0', '2018-04-03 14:45:09');
INSERT INTO `im_community_user` VALUES ('193', '45442719088641', '1', '1522641177353.V0001.png', '医生', '17768601405', '嘎嘎嘎', '1', '1', '15565125335', '15565125335', '2018-04-03 14:46:40', '0', '2018-04-13 17:17:05');
INSERT INTO `im_community_user` VALUES ('194', '45445474746369', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:57:08', '0', '2018-04-03 14:57:08');
INSERT INTO `im_community_user` VALUES ('195', '45445474746369', '2', '1522647518515.V0001.png', null, '18701785384', null, '1', '1', '17768601406', '17768601406', '2018-04-03 14:57:08', '0', '2018-04-13 17:17:55');
INSERT INTO `im_community_user` VALUES ('196', '45445475794945', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:57:10', '0', '2018-04-03 14:57:10');
INSERT INTO `im_community_user` VALUES ('197', '45445475794945', '2', '1522647518515.V0001.png', null, '18701785384', null, '1', '1', '17768601406', '17768601406', '2018-04-03 14:57:10', '0', '2018-04-13 17:17:55');
INSERT INTO `im_community_user` VALUES ('198', '45445476843521', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:57:11', '0', '2018-04-03 14:57:11');
INSERT INTO `im_community_user` VALUES ('199', '45445476843521', '2', '1522647518515.V0001.png', null, '18701785384', null, '1', '1', '17768601406', '17768601406', '2018-04-03 14:57:11', '0', '2018-04-13 17:17:56');
INSERT INTO `im_community_user` VALUES ('200', '45445477892097', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:57:12', '0', '2018-04-03 14:57:12');
INSERT INTO `im_community_user` VALUES ('201', '45445477892097', '2', '1522647518515.V0001.png', null, '18701785384', null, '1', '1', '17768601406', '17768601406', '2018-04-03 14:57:12', '0', '2018-04-13 17:17:57');
INSERT INTO `im_community_user` VALUES ('202', '45445482086401', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:57:15', '0', '2018-04-03 14:57:15');
INSERT INTO `im_community_user` VALUES ('203', '45445482086401', '2', '1522647518515.V0001.png', null, '18701785384', null, '1', '1', '17768601406', '17768601406', '2018-04-03 14:57:15', '0', '2018-04-13 17:17:58');
INSERT INTO `im_community_user` VALUES ('204', '45445483134977', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 14:57:16', '0', '2018-04-03 14:57:16');
INSERT INTO `im_community_user` VALUES ('205', '45445483134977', '2', '1522647518515.V0001.png', null, '18701785384', null, '1', '1', '17768601406', '17768601406', '2018-04-03 14:57:16', '0', '2018-04-13 17:17:59');
INSERT INTO `im_community_user` VALUES ('206', '45445858525185', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 15:03:14', '0', '2018-04-03 15:03:14');
INSERT INTO `im_community_user` VALUES ('207', '45445858525185', '2', '1522647518515.V0001.png', null, '15565125335', '黄得朝', '1', '1', '17768601406', '17768601406', '2018-04-03 15:03:14', '0', '2018-04-13 17:17:59');
INSERT INTO `im_community_user` VALUES ('208', '45445858525185', '1', '1522641177353.V0001.png', '护工', '13778909876', '李护工', '0', '1', '15565125335', '15565125335', '2018-04-03 15:07:10', '0', '2018-04-13 17:16:57');
INSERT INTO `im_community_user` VALUES ('209', '45445858525185', '1', '1522641177353.V0001.png', '医生', '17723415678', '霍道府', '0', '1', '15565125335', '15565125335', '2018-04-03 15:08:23', '0', '2018-04-13 17:16:58');
INSERT INTO `im_community_user` VALUES ('210', '45445858525185', '3', '1522641315345.V0001.png', '女儿', '13919088888', '张女', '0', '1', '15565125335', '15565125335', '2018-04-03 15:08:55', '0', '2018-04-13 17:16:07');
INSERT INTO `im_community_user` VALUES ('211', '45445858525185', '3', '1522641315345.V0001.png', '大家', '13352562546', '大家', '0', '1', '15565125335', '15565125335', '2018-04-03 15:08:58', '0', '2018-04-13 17:16:07');
INSERT INTO `im_community_user` VALUES ('212', '45445858525185', '3', '1522641315345.V0001.png', '朋友', '13910999999', '张一朋', '0', '1', '15565125335', '15565125335', '2018-04-03 15:09:01', '0', '2018-04-13 17:16:09');
INSERT INTO `im_community_user` VALUES ('213', '45445858525185', '3', '1522641315345.V0001.png', '朋友', '18701785384', '周小兵', '1', '1', '15565125335', '15565125335', '2018-04-03 15:11:00', '0', '2018-04-13 17:16:10');
INSERT INTO `im_community_user` VALUES ('214', '45445858525185', '1', '1522641177353.V0001.png', '医生', '17708494021', '朋友的', '1', '1', '15565125335', '15565125335', '2018-04-03 15:19:58', '0', '2018-04-13 17:17:06');
INSERT INTO `im_community_user` VALUES ('215', '45451932925953', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 16:39:47', '0', '2018-04-03 16:39:47');
INSERT INTO `im_community_user` VALUES ('216', '45451932925953', '2', '1522647518515.V0001.png', null, '15565125335', '黄得朝', '1', '1', '17768601406', '17768601406', '2018-04-03 16:39:47', '0', '2018-04-13 17:18:04');
INSERT INTO `im_community_user` VALUES ('217', '45452982550529', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 16:56:29', '0', '2018-04-03 16:56:29');
INSERT INTO `im_community_user` VALUES ('218', '45452982550529', '2', '1522736469741.V0001.png', null, '13646205270', null, '1', '1', '17768601406', '17768601406', '2018-04-03 16:56:29', '0', '2018-04-03 16:56:29');
INSERT INTO `im_community_user` VALUES ('219', '45458110087169', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 18:17:58', '0', '2018-04-03 18:17:58');
INSERT INTO `im_community_user` VALUES ('220', '45458110087169', '2', '1522647518515.V0001.png', null, '17708494021', null, '1', '1', '17768601406', '17768601406', '2018-04-03 18:17:58', '0', '2018-04-13 17:18:05');
INSERT INTO `im_community_user` VALUES ('221', '45458430951425', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 18:23:05', '0', '2018-04-03 18:23:05');
INSERT INTO `im_community_user` VALUES ('222', '45458430951425', '2', '1522647518515.V0001.png', null, '18701785384', null, '1', '1', '17768601406', '17768601406', '2018-04-03 18:23:05', '0', '2018-04-13 17:18:05');
INSERT INTO `im_community_user` VALUES ('223', '45458469748737', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 18:23:41', '0', '2018-04-03 18:23:41');
INSERT INTO `im_community_user` VALUES ('224', '45458469748737', '2', '1522647518515.V0001.png', null, '18701785384', null, '1', '1', '17768601406', '17768601406', '2018-04-03 18:23:41', '0', '2018-04-13 17:18:06');
INSERT INTO `im_community_user` VALUES ('225', '45465716457474', '4', '1522736469741.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 20:18:53', '0', '2018-04-10 15:20:28');
INSERT INTO `im_community_user` VALUES ('226', '45465716457474', '2', '1522647518515.V0001.png', null, '17708494021', null, '1', '1', '17768601406', '17768601406', '2018-04-03 20:18:53', '0', '2018-04-13 17:18:07');
INSERT INTO `im_community_user` VALUES ('227', '45445482086401', '3', '1522641315345.V0001.png', '朋友', '15335678985', '风格', '0', '1', '18701785384', '18701785384', '2018-04-03 20:21:42', '0', '2018-04-13 17:16:11');
INSERT INTO `im_community_user` VALUES ('228', '45466349797378', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-03 20:28:56', '0', '2018-04-03 20:28:56');
INSERT INTO `im_community_user` VALUES ('229', '45466349797378', '2', '1522647518515.V0001.png', null, '18701785384', null, '1', '1', '17768601406', '17768601406', '2018-04-03 20:28:56', '0', '2018-04-13 17:18:07');
INSERT INTO `im_community_user` VALUES ('230', '45466349797378', '3', '1522641315345.V0001.png', '朋友', '15335678985', '风格', '0', '1', '18701785384', '18701785384', '2018-04-03 20:29:51', '0', '2018-04-13 17:16:11');
INSERT INTO `im_community_user` VALUES ('231', '45466349797378', '3', '1522641315345.V0001.png', '快递单', '17708494021', '好好的和', '1', '1', '18701785384', '18701785384', '2018-04-03 20:30:43', '0', '2018-04-13 17:16:12');
INSERT INTO `im_community_user` VALUES ('232', '45466349797378', '3', '1522641315345.V0001.png', '医生', '18847747788', '风格', '0', '1', '18701785384', '18701785384', '2018-04-03 20:33:51', '0', '2018-04-13 17:16:12');
INSERT INTO `im_community_user` VALUES ('233', '45466349797378', '3', '1522641315345.V0001.png', '风格独特风格', '16435899877', '风格独特设计理念', '0', '1', '18701785384', '18701785384', '2018-04-03 21:28:42', '0', '2018-04-13 17:16:13');
INSERT INTO `im_community_user` VALUES ('234', '45442719088641', '3', '1522641315345.V0001.png', '拉到', '15586699665', '，来来来', '0', '1', '15565125335', '15565125335', '2018-04-04 09:56:56', '0', '2018-04-13 17:16:13');
INSERT INTO `im_community_user` VALUES ('235', '45442719088641', '3', '1522641315345.V0001.png', '达到', '13543598324', '呼的', '0', '1', '15565125335', '15565125335', '2018-04-04 09:59:02', '0', '2018-04-13 17:16:14');
INSERT INTO `im_community_user` VALUES ('236', '45451932925953', '3', '1522641315345.V0001.png', '朋友', '13910999999', '张一朋', '0', '1', '15565125335', '15565125335', '2018-04-04 10:21:51', '0', '2018-04-13 17:16:14');
INSERT INTO `im_community_user` VALUES ('237', '45519064858625', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-04 10:26:50', '0', '2018-04-04 10:26:50');
INSERT INTO `im_community_user` VALUES ('238', '45519064858625', '2', '1522647518515.V0001.png', null, '17708494021', null, '1', '1', '17768601406', '17768601406', '2018-04-04 10:26:50', '0', '2018-04-13 17:18:08');
INSERT INTO `im_community_user` VALUES ('239', '45519313371137', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-04 10:30:47', '0', '2018-04-04 10:30:47');
INSERT INTO `im_community_user` VALUES ('240', '45519313371137', '2', '1522647518515.V0001.png', null, '15565125335', '黄得朝', '1', '1', '17768601406', '17768601406', '2018-04-04 10:30:47', '0', '2018-04-13 17:18:08');
INSERT INTO `im_community_user` VALUES ('241', '45445858525185', '3', '1522641315345.V0001.png', '达到', '13543598324', '呼的', '0', '1', '15565125335', '15565125335', '2018-04-04 10:33:52', '0', '2018-04-13 17:16:15');
INSERT INTO `im_community_user` VALUES ('242', '45530633797633', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-04 13:30:43', '0', '2018-04-04 13:30:43');
INSERT INTO `im_community_user` VALUES ('243', '45530633797633', '2', '1522647518515.V0001.png', null, '17708494021', null, '1', '1', '17768601406', '17768601406', '2018-04-04 13:30:43', '0', '2018-04-13 17:18:09');
INSERT INTO `im_community_user` VALUES ('244', '45466349797378', '3', '1522641315345.V0001.png', '回家开门', '16456789986', '然后你那边', '0', '1', '18701785384', '18701785384', '2018-04-04 17:49:14', '0', '2018-04-13 17:16:15');
INSERT INTO `im_community_user` VALUES ('245', '45519064858625', '3', '1522641315345.V0001.png', '都好都好好的哈', '17768601401', '是有点远', '0', '1', '17708494021', '17708494021', '2018-04-08 12:58:35', '0', '2018-04-13 17:16:16');
INSERT INTO `im_community_user` VALUES ('246', '45891015737345', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-08 12:58:53', '0', '2018-04-08 12:58:53');
INSERT INTO `im_community_user` VALUES ('247', '45891015737345', '2', '1522647518515.V0001.png', null, '17708494021', null, '1', '1', '17768601406', '17768601406', '2018-04-08 12:58:53', '0', '2018-04-13 17:18:10');
INSERT INTO `im_community_user` VALUES ('248', '45891015737345', '3', '1522641315345.V0001.png', '李阳', '15365558969', '富贵花', '0', '1', '17708494021', '17708494021', '2018-04-08 12:59:22', '0', '2018-04-13 17:16:16');
INSERT INTO `im_community_user` VALUES ('249', '45530633797633', '3', '1522641315345.V0001.png', '兄弟', '13646205270', '郭锐', '1', '1', '17708494021', '17708494021', '2018-04-08 13:03:31', '0', '2018-04-13 17:16:17');
INSERT INTO `im_community_user` VALUES ('250', '45530633797633', '3', '1522641315345.V0001.png', '话说', '13855699856', '好都会觉得', '0', '1', '17708494021', '17708494021', '2018-04-08 13:04:30', '0', '2018-04-13 17:16:17');
INSERT INTO `im_community_user` VALUES ('251', '45891015737345', '3', '1522641315345.V0001.png', '都好都好好的哈', '17768601401', '是有点远', '0', '1', '17708494021', '17708494021', '2018-04-08 13:07:08', '0', '2018-04-13 17:16:18');
INSERT INTO `im_community_user` VALUES ('252', '45465716457474', '3', '1522641315345.V0001.png', '闺密', '13514251234', '李媛', '0', '1', '17708494021', '17708494021', '2018-04-08 13:10:12', '0', '2018-04-13 17:16:18');
INSERT INTO `im_community_user` VALUES ('253', '45519064858625', '3', '1522641315345.V0001.png', '兄弟', '13646205270', '郭锐', '1', '1', '17708494021', '17708494021', '2018-04-08 13:13:38', '0', '2018-04-13 17:16:19');
INSERT INTO `im_community_user` VALUES ('254', '45458110087169', '3', '1522641315345.V0001.png', '都好都好好的哈', '17768601401', '是有点远', '0', '1', '17708494021', '17708494021', '2018-04-08 13:51:11', '0', '2018-04-13 17:16:19');
INSERT INTO `im_community_user` VALUES ('255', '45466349797378', '3', '1522641315345.V0001.png', '都有', '13526655886', '太阳', '0', '1', '17708494021', '17708494021', '2018-04-08 15:22:05', '0', '2018-04-13 17:16:20');
INSERT INTO `im_community_user` VALUES ('256', '45466349797378', '3', '1522641315345.V0001.png', '111111', '15646343336', '1111', '0', '1', '17708494021', '17708494021', '2018-04-08 15:22:49', '0', '2018-04-13 17:14:50');
INSERT INTO `im_community_user` VALUES ('257', '45466349797378', '3', '1522641315345.V0001.png', '发给', '17768601402', '地方', '0', '1', '17708494021', '17708494021', '2018-04-08 15:23:05', '0', '2018-04-13 17:14:50');
INSERT INTO `im_community_user` VALUES ('258', '45903993962497', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-08 16:25:10', '0', '2018-04-08 16:25:10');
INSERT INTO `im_community_user` VALUES ('259', '45903993962497', '2', '1522647518515.V0001.png', null, '17708494021', '煌煌', '1', '1', '17768601406', '17768601406', '2018-04-08 16:25:10', '0', '2018-04-13 17:17:35');
INSERT INTO `im_community_user` VALUES ('260', '45530633797633', '3', '1522641315345.V0001.png', '风格', '12334532456', '风格广告', '0', '1', '17708494021', '17708494021', '2018-04-08 20:13:00', '0', '2018-04-13 17:14:51');
INSERT INTO `im_community_user` VALUES ('261', '45530633797633', '3', '1522641315345.V0001.png', '闺密', '13514251234', '李媛', '0', '1', '17708494021', '17708494021', '2018-04-08 20:13:15', '0', '2018-04-13 17:14:52');
INSERT INTO `im_community_user` VALUES ('262', '45903993962497', '3', '1522641315345.V0001.png', null, '17768601403', null, '0', '1', '17708494021', '17708494021', '2018-04-08 20:16:19', '0', '2018-04-13 17:14:52');
INSERT INTO `im_community_user` VALUES ('263', '45903993962497', '3', '1522641315345.V0001.png', '一', '1254588759', '都更贵', '0', '1', '17708494021', '17708494021', '2018-04-08 20:19:46', '0', '2018-04-13 17:14:53');
INSERT INTO `im_community_user` VALUES ('264', '45903993962497', '3', '1522641315345.V0001.png', '李阳', '15365558969', '富贵花', '0', '1', '17708494021', '17708494021', '2018-04-08 20:43:41', '0', '2018-04-13 17:14:54');
INSERT INTO `im_community_user` VALUES ('265', '45530633797633', '3', '1522641315345.V0001.png', '都好都好好的哈', '17768601401', '是有点远', '0', '1', '17708494021', '17708494021', '2018-04-08 20:56:02', '0', '2018-04-13 17:14:54');
INSERT INTO `im_community_user` VALUES ('266', '45530633797633', '3', '1522641315345.V0001.png', '名字', '13464684995', '优酷', '0', '1', '17708494021', '17708494021', '2018-04-08 20:56:23', '0', '2018-04-13 17:14:55');
INSERT INTO `im_community_user` VALUES ('267', '45903993962497', '3', '1522641315345.V0001.png', '都有', '13526655886', '太阳', '0', '1', '17708494021', '17708494021', '2018-04-08 21:01:23', '0', '2018-04-13 17:14:55');
INSERT INTO `im_community_user` VALUES ('268', '45891015737345', '3', '1522641315345.V0001.png', null, 'null', null, '0', '1', '17708494021', '17708494021', '2018-04-08 22:16:29', '0', '2018-04-13 17:14:56');
INSERT INTO `im_community_user` VALUES ('269', '45891015737345', '3', '1522641315345.V0001.png', '', '13512345666', '', '0', '1', '17708494021', '17708494021', '2018-04-08 22:18:43', '0', '2018-04-13 17:14:56');
INSERT INTO `im_community_user` VALUES ('270', '45891015737345', '3', '1522641315345.V0001.png', '闺密', '13514251234', '李媛', '0', '1', '17708494021', '17708494021', '2018-04-08 22:18:56', '0', '2018-04-13 17:14:57');
INSERT INTO `im_community_user` VALUES ('271', '45891015737345', '3', '1522641315345.V0001.png', '兄弟', '13646205270', '郭锐', '1', '1', '17708494021', '17708494021', '2018-04-08 22:19:14', '0', '2018-04-13 17:14:57');
INSERT INTO `im_community_user` VALUES ('272', '45903993962497', '3', '1522641315345.V0001.png', '发给', '回家', '地方', '0', '1', '17708494021', '17708494021', '2018-04-09 09:16:30', '0', '2018-04-13 17:14:58');
INSERT INTO `im_community_user` VALUES ('273', '45458110087169', '3', '1522641315345.V0001.png', '发给', '回家', '地方', '0', '1', '17708494021', '17708494021', '2018-04-09 09:23:22', '0', '2018-04-13 17:14:58');
INSERT INTO `im_community_user` VALUES ('274', '45458110087169', '3', '1522641315345.V0001.png', '回家路上', '13655566966', '哈哈哈', '0', '1', '17708494021', '17708494021', '2018-04-09 09:23:39', '0', '2018-04-13 17:14:59');
INSERT INTO `im_community_user` VALUES ('275', '45519064858625', '3', '1522641315345.V0001.png', '都有', '13526655886', '太阳', '0', '1', '17708494021', '17708494021', '2018-04-09 09:24:08', '0', '2018-04-13 17:15:00');
INSERT INTO `im_community_user` VALUES ('276', '45968202465281', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-09 09:25:44', '0', '2018-04-09 09:25:44');
INSERT INTO `im_community_user` VALUES ('277', '45968202465281', '2', '1522647518515.V0001.png', null, '17708494021', '吃饭比较', '1', '1', '17768601406', '17768601406', '2018-04-09 09:25:44', '0', '2018-04-13 17:17:38');
INSERT INTO `im_community_user` VALUES ('278', '45968209805313', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-09 09:25:51', '0', '2018-04-09 09:25:51');
INSERT INTO `im_community_user` VALUES ('279', '45968209805313', '2', '1522647518515.V0001.png', null, '17708494021', '吃饭比较', '1', '1', '17768601406', '17768601406', '2018-04-09 09:25:51', '0', '2018-04-13 17:17:39');
INSERT INTO `im_community_user` VALUES ('280', '45968202465281', '3', '1522641315345.V0001.png', '兄弟', '13646205270', '郭锐', '1', '1', '17708494021', '17708494021', '2018-04-09 09:26:22', '0', '2018-04-13 17:15:00');
INSERT INTO `im_community_user` VALUES ('281', '45968209805313', '3', '1522641315345.V0001.png', '离队', '读u多喝点', '点化丹', '0', '1', '17708494021', '17708494021', '2018-04-09 09:33:11', '0', '2018-04-13 17:15:01');
INSERT INTO `im_community_user` VALUES ('282', '45968209805313', '3', '1522641315345.V0001.png', '一', '1254588759', '都更贵', '0', '1', '17708494021', '17708494021', '2018-04-09 09:33:31', '0', '2018-04-13 17:15:02');
INSERT INTO `im_community_user` VALUES ('283', '45968209805313', '3', '1522641315345.V0001.png', '立即举报', '13526425458', '锋哥哥', '0', '1', '17708494021', '17708494021', '2018-04-09 09:37:24', '0', '2018-04-13 17:15:04');
INSERT INTO `im_community_user` VALUES ('284', '45968209805313', '3', '1522641315345.V0001.png', '游泳', '13466649946', '优化', '0', '1', '17708494021', '17708494021', '2018-04-09 09:44:28', '0', '2018-04-13 17:15:03');
INSERT INTO `im_community_user` VALUES ('285', '45968209805313', '3', '1522641315345.V0001.png', '名字', '13464684995', '优酷', '0', '1', '17708494021', '17708494021', '2018-04-09 09:49:53', '0', '2018-04-13 17:15:06');
INSERT INTO `im_community_user` VALUES ('286', '45968209805313', '3', '1522641315345.V0001.png', '都有', '13526655886', '太阳', '0', '1', '17708494021', '17708494021', '2018-04-09 09:50:30', '0', '2018-04-13 17:15:06');
INSERT INTO `im_community_user` VALUES ('287', '45968209805313', '3', '1522641315345.V0001.png', '回家路上', '13655566966', '哈哈哈', '0', '1', '17708494021', '17708494021', '2018-04-09 09:52:23', '0', '2018-04-13 17:15:07');
INSERT INTO `im_community_user` VALUES ('288', '45968202465281', '3', '1522641315345.V0001.png', '都好都好好的哈', '所以一定要', '是有点远', '0', '1', '17708494021', '17708494021', '2018-04-09 09:55:42', '0', '2018-04-13 17:15:07');
INSERT INTO `im_community_user` VALUES ('289', '45968209805313', '3', '1522641315345.V0001.png', '都好都好好的哈', '所以一定要', '是有点远', '0', '1', '17708494021', '17708494021', '2018-04-09 09:57:48', '0', '2018-04-13 17:15:08');
INSERT INTO `im_community_user` VALUES ('290', '45968209805313', '3', '1522641315345.V0001.png', '风格', '12334532456', '风格广告', '0', '1', '17708494021', '17708494021', '2018-04-09 09:57:59', '0', '2018-04-13 17:15:08');
INSERT INTO `im_community_user` VALUES ('291', '45968209805313', '3', '1522641315345.V0001.png', 'hxhd', '15642365889', 'hxhdh', '0', '1', '17708494021', '17708494021', '2018-04-09 10:03:22', '0', '2018-04-13 17:15:09');
INSERT INTO `im_community_user` VALUES ('292', '45968209805313', '3', '1522641315345.V0001.png', '闺密', '13514251234', '李媛', '0', '1', '17708494021', '17708494021', '2018-04-09 10:04:53', '0', '2018-04-13 17:15:09');
INSERT INTO `im_community_user` VALUES ('293', '45968209805313', '3', '1522641315345.V0001.png', '111111', '15646343336', '1111', '0', '1', '17708494021', '17708494021', '2018-04-09 10:05:09', '0', '2018-04-13 17:15:10');
INSERT INTO `im_community_user` VALUES ('294', '45519313371137', '1', '1522641177353.V0001.png', 'Tudeh got ', '13666666666', 'Huangs', '1', '1', '15565125335', '15565125335', '2018-04-09 15:04:39', '0', '2018-04-13 17:16:36');
INSERT INTO `im_community_user` VALUES ('295', '45444720820225', '3', '1522641315345.V0001.png', '朋友', '17708494021', '伊拉克', '1', '1', '13666666666', '13666666666', '2018-04-09 16:43:13', '0', '2018-04-13 17:15:11');
INSERT INTO `im_community_user` VALUES ('296', '45995990777857', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-09 16:47:25', '0', '2018-04-09 16:47:25');
INSERT INTO `im_community_user` VALUES ('297', '45995990777857', '2', '1522583593711.V0001.png', '管理员', '13666666666', '管理员', '1', '1', '17768601406', '17768601406', '2018-04-09 16:47:25', '0', '2018-04-09 16:47:25');
INSERT INTO `im_community_user` VALUES ('298', '45995990777857', '3', '1522641315345.V0001.png', '朋友', '17708494021', '伊拉克', '1', '1', '13666666666', '13666666666', '2018-04-09 16:47:33', '0', '2018-04-13 17:15:12');
INSERT INTO `im_community_user` VALUES ('299', '45519313371137', '3', '1522641315345.V0001.png', '朋友', '18701785384', '周小兵', '1', '1', '15565125335', '15565125335', '2018-04-09 18:15:11', '0', '2018-04-13 17:15:12');
INSERT INTO `im_community_user` VALUES ('300', '45891015737345', '3', '1522641315345.V0001.png', '都好都好好的哈', '所以一定要', '是有点远', '0', '1', '17708494021', '17708494021', '2018-04-10 09:33:47', '0', '2018-04-13 17:15:13');
INSERT INTO `im_community_user` VALUES ('301', '45903993962497', '3', '1522641315345.V0001.png', '都好都好好的哈', '所以一定要', '是有点远', '0', '1', '17708494021', '17708494021', '2018-04-10 09:41:28', '0', '2018-04-13 17:15:14');
INSERT INTO `im_community_user` VALUES ('302', '45968202465281', '3', '1522641315345.V0001.png', '风格', '12334532456', '风格广告', '0', '1', '17708494021', '17708494021', '2018-04-10 10:02:09', '0', '2018-04-13 17:15:14');
INSERT INTO `im_community_user` VALUES ('303', '45968202465281', '3', '1522641315345.V0001.png', null, 'null', null, '0', '1', '17708494021', '17708494021', '2018-04-10 10:21:58', '0', '2018-04-13 17:15:15');
INSERT INTO `im_community_user` VALUES ('304', '45968202465281', '3', '1522641315345.V0001.png', '游泳', '13466649946', '优化', '0', '1', '17708494021', '17708494021', '2018-04-10 10:26:26', '0', '2018-04-13 17:15:15');
INSERT INTO `im_community_user` VALUES ('305', '45968202465281', '3', '1522641315345.V0001.png', '李阳', '15365558969', '富贵花', '0', '1', '17708494021', '17708494021', '2018-04-10 10:29:29', '0', '2018-04-13 17:15:16');
INSERT INTO `im_community_user` VALUES ('306', '45968202465281', '3', '1522641315345.V0001.png', '话说', '13855699856', '好都会觉得', '0', '1', '17708494021', '17708494021', '2018-04-10 10:30:55', '0', '2018-04-13 17:15:16');
INSERT INTO `im_community_user` VALUES ('307', '45995990777857', '3', '1522641315345.V0001.png', '游泳', '13466649946', '优化', '0', '1', '17708494021', '17708494021', '2018-04-10 10:38:44', '0', '2018-04-13 17:15:22');
INSERT INTO `im_community_user` VALUES ('308', '45995990777857', '3', '1522641315345.V0001.png', '都有', '13526655886', '太阳', '0', '1', '17708494021', '17708494021', '2018-04-10 10:39:12', '0', '2018-04-13 17:15:22');
INSERT INTO `im_community_user` VALUES ('309', '45995990777857', '3', '1522641315345.V0001.png', '都好都好好的哈', '所以一定要', '是有点远', '0', '1', '17708494021', '17708494021', '2018-04-10 10:41:37', '0', '2018-04-13 17:15:23');
INSERT INTO `im_community_user` VALUES ('310', '45995990777857', '3', '1522641315345.V0001.png', '名字', '13464684995', '优酷', '0', '1', '17708494021', '17708494021', '2018-04-10 10:45:43', '0', '2018-04-13 17:15:23');
INSERT INTO `im_community_user` VALUES ('311', '45995990777857', '3', '1522641315345.V0001.png', '回家路上', '13655566966', '哈哈哈', '0', '1', '17708494021', '17708494021', '2018-04-10 10:45:57', '0', '2018-04-13 17:15:25');
INSERT INTO `im_community_user` VALUES ('312', '46064028680194', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-10 10:48:51', '0', '2018-04-10 10:48:51');
INSERT INTO `im_community_user` VALUES ('313', '46064028680194', '2', '1522647518515.V0001.png', null, '17708494021', '吃饭比较', '1', '1', '17768601406', '17768601406', '2018-04-10 10:48:51', '0', '2018-04-13 17:17:39');
INSERT INTO `im_community_user` VALUES ('314', '46064036020225', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-10 10:48:59', '0', '2018-04-10 10:48:59');
INSERT INTO `im_community_user` VALUES ('315', '46064036020225', '2', '1522647518515.V0001.png', null, '17708494021', '吃饭比较', '1', '1', '17768601406', '17768601406', '2018-04-10 10:48:59', '0', '2018-04-13 17:17:26');
INSERT INTO `im_community_user` VALUES ('316', '46064036020225', '3', '1522641315345.V0001.png', '游泳', '13466649946', '优化', '0', '1', '17708494021', '17708494021', '2018-04-10 10:49:13', '0', '2018-04-13 17:15:29');
INSERT INTO `im_community_user` VALUES ('317', '46064036020225', '3', '1522641315345.V0001.png', '都好都好好的哈', '所以一定要', '是有点远', '0', '1', '17708494021', '17708494021', '2018-04-10 10:50:24', '0', '2018-04-13 17:15:29');
INSERT INTO `im_community_user` VALUES ('318', '46064028680194', '3', '1522641315345.V0001.png', '都好都好好的哈', '所以一定要', '是有点远', '0', '1', '17708494021', '17708494021', '2018-04-10 10:50:46', '0', '2018-04-13 17:15:30');
INSERT INTO `im_community_user` VALUES ('319', '46064028680194', '3', '1522641315345.V0001.png', '发给', '回家', '地方', '0', '1', '17708494021', '17708494021', '2018-04-10 10:51:16', '0', '2018-04-13 17:15:30');
INSERT INTO `im_community_user` VALUES ('320', '45995990777857', '3', '1522641315345.V0001.png', '话说', '13855699856', '好都会觉得', '0', '1', '17708494021', '17708494021', '2018-04-10 10:59:37', '0', '2018-04-13 17:15:31');
INSERT INTO `im_community_user` VALUES ('321', '45995990777857', '3', '1522641315345.V0001.png', '李阳', '15365558969', '富贵花', '0', '1', '17708494021', '17708494021', '2018-04-10 10:59:46', '0', '2018-04-13 17:15:31');
INSERT INTO `im_community_user` VALUES ('322', '46064036020225', '3', '1522641315345.V0001.png', '离队', '读u多喝点', '点化丹', '0', '1', '17708494021', '17708494021', '2018-04-10 11:03:52', '0', '2018-04-13 17:15:32');
INSERT INTO `im_community_user` VALUES ('323', '46064036020225', '3', '1522641315345.V0001.png', '风格', '12334532456', '风格广告', '0', '1', '17708494021', '17708494021', '2018-04-10 11:04:11', '0', '2018-04-13 17:15:32');
INSERT INTO `im_community_user` VALUES ('324', '46064028680194', '3', '1522641315345.V0001.png', '立即举报', '13526425458', '锋哥哥', '0', '1', '17708494021', '17708494021', '2018-04-10 11:08:18', '0', '2018-04-13 17:15:33');
INSERT INTO `im_community_user` VALUES ('325', '46064028680194', '3', '1522641315345.V0001.png', '风格', '12334532456', '风格广告', '0', '1', '17708494021', '17708494021', '2018-04-10 11:08:34', '0', '2018-04-13 17:15:33');
INSERT INTO `im_community_user` VALUES ('326', '46064036020225', '3', '1522641315345.V0001.png', '兄弟', '13646205270', '郭锐', '1', '1', '17708494021', '17708494021', '2018-04-10 11:15:15', '0', '2018-04-13 17:15:34');
INSERT INTO `im_community_user` VALUES ('327', '46064028680194', '3', '1522641315345.V0001.png', '离队', '读u多喝点', '点化丹', '0', '1', '17708494021', '17708494021', '2018-04-10 11:15:47', '0', '2018-04-13 17:15:34');
INSERT INTO `im_community_user` VALUES ('328', '46064028680194', '3', '1522641315345.V0001.png', '兄弟', '13646205270', '郭锐', '1', '1', '17708494021', '17708494021', '2018-04-10 11:16:13', '0', '2018-04-13 17:15:35');
INSERT INTO `im_community_user` VALUES ('329', '46065782947841', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-10 11:16:44', '0', '2018-04-10 11:16:44');
INSERT INTO `im_community_user` VALUES ('330', '46065782947841', '2', '1522647518515.V0001.png', null, '17708494021', '吃饭比较', '1', '1', '17768601406', '17768601406', '2018-04-10 11:16:44', '0', '2018-04-13 17:17:28');
INSERT INTO `im_community_user` VALUES ('331', '46065782947841', '3', '1522641315345.V0001.png', '都好都好好的哈', '所以一定要', '是有点远', '0', '1', '17708494021', '17708494021', '2018-04-10 11:16:55', '0', '2018-04-13 17:15:36');
INSERT INTO `im_community_user` VALUES ('332', '46065782947841', '3', '1522641315345.V0001.png', '发给', '回家', '地方', '0', '1', '17708494021', '17708494021', '2018-04-10 11:17:15', '0', '2018-04-13 17:15:37');
INSERT INTO `im_community_user` VALUES ('333', '46065782947841', '3', '1522641315345.V0001.png', '李阳', '15365558969', '富贵花', '0', '1', '17708494021', '17708494021', '2018-04-10 11:17:43', '0', '2018-04-13 17:15:37');
INSERT INTO `im_community_user` VALUES ('334', '46065914019841', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-10 11:18:50', '0', '2018-04-10 11:18:50');
INSERT INTO `im_community_user` VALUES ('335', '46065914019841', '2', '1522647518515.V0001.png', null, '17708494021', '吃饭比较', '1', '1', '17768601406', '17768601406', '2018-04-10 11:18:50', '0', '2018-04-13 17:17:29');
INSERT INTO `im_community_user` VALUES ('336', '46065914019841', '3', '1522641315345.V0001.png', '都好都好好的哈', '所以一定要', '是有点远', '0', '1', '17708494021', '17708494021', '2018-04-10 11:19:35', '0', '2018-04-13 17:15:38');
INSERT INTO `im_community_user` VALUES ('337', '46065992663042', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-10 11:20:04', '0', '2018-04-10 11:20:04');
INSERT INTO `im_community_user` VALUES ('338', '46065992663042', '2', '1522647518515.V0001.png', null, '17708494021', '吃饭比较', '1', '1', '17768601406', '17768601406', '2018-04-10 11:20:04', '0', '2018-04-13 17:17:40');
INSERT INTO `im_community_user` VALUES ('339', '46065992663042', '3', '1522641315345.V0001.png', '都好都好好的哈', '所以一定要', '是有点远', '0', '1', '17708494021', '17708494021', '2018-04-10 11:20:12', '0', '2018-04-13 17:15:39');
INSERT INTO `im_community_user` VALUES ('340', '46065992663042', '3', '1522641315345.V0001.png', '风格', '12334532456', '风格广告', '0', '1', '17708494021', '17708494021', '2018-04-10 11:27:26', '0', '2018-04-13 17:15:41');
INSERT INTO `im_community_user` VALUES ('341', '46065992663042', '3', '1522641315345.V0001.png', 'hxhd', '15642365889', 'hxhdh', '0', '1', '17708494021', '17708494021', '2018-04-10 11:43:08', '0', '2018-04-13 17:15:42');
INSERT INTO `im_community_user` VALUES ('342', '46065992663042', '3', '1522641315345.V0001.png', '兄弟', '13646205270', '郭锐', '1', '1', '17708494021', '17708494021', '2018-04-10 11:46:15', '0', '2018-04-13 17:15:46');
INSERT INTO `im_community_user` VALUES ('343', '46065992663042', '3', '1522641315345.V0001.png', '立即举报', '13526425458', '锋哥哥', '0', '1', '17708494021', '17708494021', '2018-04-10 12:42:26', '0', '2018-04-13 17:15:46');
INSERT INTO `im_community_user` VALUES ('344', '46074988396545', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-10 13:43:03', '0', '2018-04-10 13:43:03');
INSERT INTO `im_community_user` VALUES ('345', '46074988396545', '2', '1522647518515.V0001.png', null, '13646205270', '', '1', '1', '17768601406', '17768601406', '2018-04-10 13:43:03', '0', '2018-04-13 17:17:31');
INSERT INTO `im_community_user` VALUES ('346', '45530633797633', '3', '1522641315345.V0001.png', 'v呵呵', '1254866599', '人头狗', '0', '1', '13646205270', '13646205270', '2018-04-10 13:43:41', '0', '2018-04-13 17:15:47');
INSERT INTO `im_community_user` VALUES ('347', '46074988396545', '3', '1522641315345.V0001.png', 'v呵呵', '1254866599', '人头狗', '0', '1', '13646205270', '13646205270', '2018-04-10 13:43:55', '0', '2018-04-13 17:15:48');
INSERT INTO `im_community_user` VALUES ('348', '46076599009282', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-10 14:08:40', '0', '2018-04-10 14:08:40');
INSERT INTO `im_community_user` VALUES ('349', '46076599009282', '2', '1522583593711.V0001.png', '管理员', '13666666666', '管理员', '1', '1', '17768601406', '17768601406', '2018-04-10 14:08:40', '0', '2018-04-10 14:08:40');
INSERT INTO `im_community_user` VALUES ('350', '46074988396545', '3', '1522641315345.V0001.png', '朋友', '17708494021', '煌煌', '1', '1', '13646205270', '13646205270', '2018-04-10 14:49:30', '0', '2018-04-13 17:15:48');
INSERT INTO `im_community_user` VALUES ('351', '46074988396545', '3', '1522641315345.V0001.png', '弟弟', '13412345644', '有雨', '0', '1', '13646205270', '13646205270', '2018-04-10 14:54:47', '0', '2018-04-13 17:15:49');
INSERT INTO `im_community_user` VALUES ('352', '45519313371137', '3', '1522641315345.V0001.png', '朋友', '13910999999', '张一朋', '0', '1', '15565125335', '15565125335', '2018-04-10 15:31:33', '0', '2018-04-13 17:15:49');
INSERT INTO `im_community_user` VALUES ('353', '45519313371137', '3', '1522641315345.V0001.png', '大家', '13352562546', '大家', '0', '1', '15565125335', '15565125335', '2018-04-10 15:46:55', '0', '2018-04-13 17:15:50');
INSERT INTO `im_community_user` VALUES ('354', '45519313371137', '1', '1522641177353.V0001.png', '护士', '17768601409', '质朴', '0', '1', '15565125335', '15565125335', '2018-04-10 15:47:47', '0', '2018-04-13 17:16:42');
INSERT INTO `im_community_user` VALUES ('355', '46074988396545', '3', '1522641315345.V0001.png', '姐姐', '15364999686', '李阳', '0', '1', '13646205270', '13646205270', '2018-04-10 15:55:13', '0', '2018-04-13 17:15:51');
INSERT INTO `im_community_user` VALUES ('356', '46074988396545', '3', '1522641315345.V0001.png', '妹妹', '13526588999', '李媛', '0', '1', '13646205270', '13646205270', '2018-04-10 15:55:46', '0', '2018-04-13 17:15:51');
INSERT INTO `im_community_user` VALUES ('357', '46065992663042', '3', '1522641315345.V0001.png', '妹妹', '13526588999', '李媛', '0', '1', '13646205270', '13646205270', '2018-04-10 16:36:55', '0', '2018-04-13 17:15:52');
INSERT INTO `im_community_user` VALUES ('358', '45891015737345', '3', '1522641315345.V0001.png', '妹妹', '13526588999', '李媛', '0', '1', '13646205270', '13646205270', '2018-04-10 16:54:16', '0', '2018-04-13 17:15:52');
INSERT INTO `im_community_user` VALUES ('359', '46065992663042', '3', '1522641315345.V0001.png', '姐姐', '15364999686', '李阳', '0', '1', '13646205270', '13646205270', '2018-04-10 16:56:43', '0', '2018-04-13 17:15:53');
INSERT INTO `im_community_user` VALUES ('360', '46064028680194', '1', '1522641177353.V0001.png', '李医生', '15255555666', '李建', '0', '1', '13646205270', '13646205270', '2018-04-10 16:58:24', '0', '2018-04-13 17:16:44');
INSERT INTO `im_community_user` VALUES ('361', '46064028680194', '3', '1522641315345.V0001.png', '妹妹', '13526588999', '李媛', '0', '1', '13646205270', '13646205270', '2018-04-10 16:59:41', '0', '2018-04-13 17:15:54');
INSERT INTO `im_community_user` VALUES ('362', '46065992663042', '3', '1522641315345.V0001.png', '弟弟', '13412345644', '有雨', '0', '1', '13646205270', '13646205270', '2018-04-10 17:09:42', '0', '2018-04-13 17:15:54');
INSERT INTO `im_community_user` VALUES ('363', '46064036020225', '3', '1522641315345.V0001.png', '妹妹', '13526588999', '李媛', '0', '1', '13646205270', '13646205270', '2018-04-10 17:18:29', '0', '2018-04-13 17:15:56');
INSERT INTO `im_community_user` VALUES ('364', '46064036020225', '3', '1522641315345.V0001.png', '姐姐', '15364999686', '李阳', '0', '1', '13646205270', '13646205270', '2018-04-10 17:18:44', '0', '2018-04-13 17:15:57');
INSERT INTO `im_community_user` VALUES ('365', '46064036020225', '1', '1522641177353.V0001.png', '李医生', '13569666683', '李记', '0', '1', '13646205270', '13646205270', '2018-04-10 17:19:28', '0', '2018-04-13 17:16:45');
INSERT INTO `im_community_user` VALUES ('366', '46064036020225', '1', '1522641177353.V0001.png', '李医生', '13522555566', '李好怀', '0', '1', '13646205270', '13646205270', '2018-04-10 17:19:54', '0', '2018-04-13 17:16:47');
INSERT INTO `im_community_user` VALUES ('367', '46064036020225', '3', '1522641315345.V0001.png', '弟弟', '13412345644', '有雨', '0', '1', '13646205270', '13646205270', '2018-04-10 17:20:35', '0', '2018-04-13 17:15:58');
INSERT INTO `im_community_user` VALUES ('368', '46065992663042', '3', '1522641315345.V0001.png', '舅舅', '15264949686', '杨家', '0', '1', '13646205270', '13646205270', '2018-04-10 17:35:54', '0', '2018-04-13 17:15:59');
INSERT INTO `im_community_user` VALUES ('369', '46074988396545', '1', '1522641177353.V0001.png', '古巨基', '18701785384', '智', '1', '1', '13646205270', '13646205270', '2018-04-12 14:18:46', '0', '2018-04-13 17:16:48');
INSERT INTO `im_community_user` VALUES ('370', '46258449350657', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-12 14:19:07', '0', '2018-04-12 14:19:07');
INSERT INTO `im_community_user` VALUES ('371', '46258449350657', '2', '1522647518515.V0001.png', null, '18701785384', '', '1', '1', '17768601406', '17768601406', '2018-04-12 14:19:07', '0', '2018-04-13 17:17:40');
INSERT INTO `im_community_user` VALUES ('372', '46074988396545', '1', '1522641177353.V0001.png', '啦啦', '17768601408', '汗(\"▔㉨▔)汗 ', '0', '1', '13646205270', '13646205270', '2018-04-12 14:26:07', '0', '2018-04-13 17:16:50');
INSERT INTO `im_community_user` VALUES ('373', '46074988396545', '1', '1522641177353.V0001.png', '嘎嘎', '17768601405', '哥', '1', '1', '13646205270', '13646205270', '2018-04-12 14:26:25', '0', '2018-04-13 17:16:53');
INSERT INTO `im_community_user` VALUES ('374', '46064028680194', '1', '1522641177353.V0001.png', '姑姑', '15821890505', '郭vv', '0', '1', '13646205270', '13646205270', '2018-04-13 09:51:21', '0', '2018-04-13 17:16:54');
INSERT INTO `im_community_user` VALUES ('375', '46349343064065', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-13 14:23:50', '0', '2018-04-13 14:23:50');
INSERT INTO `im_community_user` VALUES ('376', '46349343064065', '2', '1522647518515.V0001.png', null, '17708494021', '吃饭比较', '1', '1', '17768601406', '17768601406', '2018-04-13 14:23:50', '0', '2018-04-13 17:17:41');
INSERT INTO `im_community_user` VALUES ('377', '46349414367233', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-13 14:24:58', '0', '2018-04-13 14:24:58');
INSERT INTO `im_community_user` VALUES ('378', '46349414367233', '2', '1522647518515.V0001.png', null, '17708494021', '吃饭比较', '1', '1', '17768601406', '17768601406', '2018-04-13 14:24:58', '0', '2018-04-13 17:17:42');
INSERT INTO `im_community_user` VALUES ('379', '46349422755843', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-13 14:25:06', '0', '2018-04-13 14:25:06');
INSERT INTO `im_community_user` VALUES ('380', '46349422755843', '2', '1522647518515.V0001.png', null, '17708494021', '吃饭比较', '1', '1', '17768601406', '17768601406', '2018-04-13 14:25:06', '0', '2018-04-13 17:17:42');
INSERT INTO `im_community_user` VALUES ('381', '46349422755843', '1', '1522641177353.V0001.png', '医生', '17768601403', '西瓜太郎', '0', '1', '17708494021', '17708494021', '2018-04-13 14:40:22', '0', '2018-04-13 17:16:55');
INSERT INTO `im_community_user` VALUES ('382', '46349422755843', '1', '1522641177353.V0001.png', '护士', '17768601405', '小丸子', '1', '1', '17708494021', '17708494021', '2018-04-13 14:42:26', '0', '2018-04-13 17:17:02');
INSERT INTO `im_community_user` VALUES ('383', '46349422755843', '3', '1522641315345.V0001.png', '回家路上', '13655566966', '哈哈哈', '0', '1', '17708494021', '17708494021', '2018-04-13 15:11:27', '0', '2018-04-13 17:16:05');
INSERT INTO `im_community_user` VALUES ('384', '46349422755843', '3', '1522641315345.V0001.png', '名字', '13464684995', '优酷', '0', '1', '17708494021', '17708494021', '2018-04-13 15:13:25', '0', '2018-04-13 17:16:05');
INSERT INTO `im_community_user` VALUES ('385', '46074988396545', '1', '1522641177353.V0001.png', '朋友', '18912345678', '李旭', '0', '1', '13646205270', '13646205270', '2018-04-13 17:24:57', '0', '2018-04-13 17:29:08');
INSERT INTO `im_community_user` VALUES ('386', '46074988396545', '3', '1522641315345.V0001.png', '舅舅', '15264949686', '杨家', '0', '1', '13646205270', '13646205270', '2018-04-13 17:25:10', '0', '2018-04-13 17:29:10');
INSERT INTO `im_community_user` VALUES ('387', '46361020006403', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-13 17:29:27', '0', '2018-04-13 17:29:27');
INSERT INTO `im_community_user` VALUES ('388', '46361020006403', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-13 17:29:27', '0', '2018-04-13 17:29:27');
INSERT INTO `im_community_user` VALUES ('389', '46361020006403', '1', '1522641177353.V0001.png', '李医生', '15264558856', '李雷', '0', '1', '13646205270', '13646205270', '2018-04-13 17:29:54', '0', '2018-04-13 17:29:54');
INSERT INTO `im_community_user` VALUES ('390', '46361020006403', '3', '1522641315345.V0001.png', '舅舅', '15264949686', '杨家', '0', '1', '13646205270', '13646205270', '2018-04-13 17:30:22', '0', '2018-04-13 17:30:22');
INSERT INTO `im_community_user` VALUES ('391', '46361020006403', '1', '1522641177353.V0001.png', '刘医生', '13526436456', '刘欣', '0', '1', '13646205270', '13646205270', '2018-04-13 17:34:32', '0', '2018-04-13 17:34:32');
INSERT INTO `im_community_user` VALUES ('392', '46361355550721', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-13 17:34:46', '0', '2018-04-13 17:34:46');
INSERT INTO `im_community_user` VALUES ('393', '46361355550721', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-13 17:34:46', '0', '2018-04-13 17:34:46');
INSERT INTO `im_community_user` VALUES ('394', '46361355550721', '1', '1522641177353.V0001.png', '银医生', '13523646848', '银盆岭', '0', '1', '13646205270', '13646205270', '2018-04-13 17:35:15', '0', '2018-04-13 17:35:15');
INSERT INTO `im_community_user` VALUES ('395', '46361355550721', '3', '1522641315345.V0001.png', '妹妹', '13526588999', '李媛', '0', '1', '13646205270', '13646205270', '2018-04-13 17:43:44', '0', '2018-04-13 17:43:44');
INSERT INTO `im_community_user` VALUES ('396', '46361355550721', '1', '1522641177353.V0001.png', '刘医生', '13255486689', '刘宇航', '0', '1', '13646205270', '13646205270', '2018-04-13 17:45:24', '0', '2018-04-13 17:45:24');
INSERT INTO `im_community_user` VALUES ('397', '46362055999489', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-13 17:45:55', '0', '2018-04-13 17:45:55');
INSERT INTO `im_community_user` VALUES ('398', '46362055999489', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-13 17:45:55', '0', '2018-04-13 17:45:55');
INSERT INTO `im_community_user` VALUES ('399', '46362055999489', '3', '1522641315345.V0001.png', '妹妹', '13526588999', '李媛', '0', '1', '13646205270', '13646205270', '2018-04-13 18:08:47', '0', '2018-04-13 18:08:47');
INSERT INTO `im_community_user` VALUES ('400', '46363521908738', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-13 18:09:12', '0', '2018-04-13 18:09:12');
INSERT INTO `im_community_user` VALUES ('401', '46363521908738', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-13 18:09:12', '0', '2018-04-13 18:09:12');
INSERT INTO `im_community_user` VALUES ('402', '46608877158401', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-16 11:09:02', '0', '2018-04-16 11:09:02');
INSERT INTO `im_community_user` VALUES ('403', '46608877158401', '2', '1522736469741.V0001.png', null, '15565125335', '黄得朝', '1', '1', '17768601406', '17768601406', '2018-04-16 11:09:02', '0', '2018-04-16 14:42:34');
INSERT INTO `im_community_user` VALUES ('404', '46608877158401', '3', '1522641315345.V0001.png', '大家', '13352562546', '大家', '0', '1', '15565125335', '15565125335', '2018-04-16 11:10:01', '0', '2018-04-16 11:10:01');
INSERT INTO `im_community_user` VALUES ('405', '46608877158401', '3', '1522641315345.V0001.png', '女儿', '13919088888', '张女', '0', '1', '15565125335', '15565125335', '2018-04-16 11:10:46', '0', '2018-04-16 11:10:46');
INSERT INTO `im_community_user` VALUES ('406', '46608877158401', '3', '1522641315345.V0001.png', '朋友', '13910999999', '张一朋', '0', '1', '15565125335', '15565125335', '2018-04-16 11:10:54', '0', '2018-04-16 11:10:54');
INSERT INTO `im_community_user` VALUES ('407', '46608877158401', '3', '1522641315345.V0001.png', '朋友', '18701785384', '周小兵', '1', '1', '15565125335', '15565125335', '2018-04-16 11:11:03', '0', '2018-04-16 11:11:03');
INSERT INTO `im_community_user` VALUES ('408', '46608877158401', '3', '1522641315345.V0001.png', '兄弟', '13646205270', '郭锐', '1', '1', '15565125335', '15565125335', '2018-04-16 11:11:16', '0', '2018-04-16 11:11:16');
INSERT INTO `im_community_user` VALUES ('409', '46608877158401', '3', '1522641315345.V0001.png', '拉到', '15586699665', '，来来来', '0', '1', '15565125335', '15565125335', '2018-04-16 11:14:51', '0', '2018-04-16 11:14:51');
INSERT INTO `im_community_user` VALUES ('410', '46608877158401', '3', '1522641315345.V0001.png', '体育', '13784236487', '我在', '0', '1', '15565125335', '15565125335', '2018-04-16 11:18:49', '0', '2018-04-16 11:18:49');
INSERT INTO `im_community_user` VALUES ('411', '46608877158401', '3', '1522641315345.V0001.png', '达到', '13543598324', '呼的', '0', '1', '15565125335', '15565125335', '2018-04-16 11:23:18', '0', '2018-04-16 11:23:18');
INSERT INTO `im_community_user` VALUES ('412', '45442719088641', '3', '1522641315345.V0001.png', '其皇同学', '17708494021', '其皇', '1', '1', '15565125335', '15565125335', '2018-04-18 10:08:14', '0', '2018-04-18 10:08:14');
INSERT INTO `im_community_user` VALUES ('413', '46074988396545', '3', '1522641315345.V0001.png', '浦', '15565125335', '见见', '1', '1', '13646205270', '13646205270', '2018-04-18 10:39:32', '0', '2018-04-18 10:39:32');
INSERT INTO `im_community_user` VALUES ('414', '45519313371137', '3', '1522641315345.V0001.png', '其皇同学', '17708494021', '其皇', '1', '1', '15565125335', '15565125335', '2018-04-18 10:55:57', '0', '2018-04-18 10:55:57');
INSERT INTO `im_community_user` VALUES ('415', '46806233841665', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-18 15:25:58', '0', '2018-04-18 15:25:58');
INSERT INTO `im_community_user` VALUES ('416', '46806233841665', '2', '', null, '15565125335', '黄得朝', '1', '1', '17768601406', '17768601406', '2018-04-18 15:25:58', '0', '2018-04-18 15:25:58');
INSERT INTO `im_community_user` VALUES ('417', '46806233841665', '3', '1522641315345.V0001.png', '朋友', '18701785384', '周小兵', '1', '1', '15565125335', '15565125335', '2018-04-18 15:26:45', '0', '2018-04-18 15:26:45');
INSERT INTO `im_community_user` VALUES ('418', '46806233841665', '3', '1522641315345.V0001.png', '朋友', '13910999999', '张一朋', '0', '1', '15565125335', '15565125335', '2018-04-18 15:27:34', '0', '2018-04-18 15:27:34');
INSERT INTO `im_community_user` VALUES ('419', '46811322580993', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-18 16:46:51', '0', '2018-04-18 16:46:51');
INSERT INTO `im_community_user` VALUES ('420', '46811322580993', '2', null, null, '17708494023', null, '1', '1', '17768601406', '17768601406', '2018-04-18 16:46:51', '0', '2018-04-18 16:46:51');
INSERT INTO `im_community_user` VALUES ('421', '46363521908738', '3', '1522641315345.V0001.png', '姐姐', '15364999686', '李阳', '0', '1', '13646205270', '13646205270', '2018-04-18 16:54:32', '0', '2018-04-18 16:54:32');
INSERT INTO `im_community_user` VALUES ('422', '46363521908738', '1', '1522641177353.V0001.png', '医生', '17708494021', '黄', '1', '1', '13646205270', '13646205270', '2018-04-18 16:55:08', '0', '2018-04-18 16:55:08');
INSERT INTO `im_community_user` VALUES ('423', '46363521908738', '3', '1522641315345.V0001.png', '舅舅', '15264949686', '杨家', '0', '1', '13646205270', '13646205270', '2018-04-18 16:55:48', '0', '2018-04-18 16:55:48');
INSERT INTO `im_community_user` VALUES ('424', '46815310315521', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-18 17:50:14', '0', '2018-04-18 17:50:14');
INSERT INTO `im_community_user` VALUES ('425', '46815310315521', '2', '1522736469741.V0001.png', null, '18994710039', null, '1', '1', '17768601406', '17768601406', '2018-04-18 17:50:14', '0', '2018-04-18 17:50:14');
INSERT INTO `im_community_user` VALUES ('426', '46881526841346', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 11:22:44', '0', '2018-04-19 11:22:44');
INSERT INTO `im_community_user` VALUES ('427', '46881526841346', '2', '1522736469741.V0001.png', null, '15821890403', null, '1', '1', '17768601406', '17768601406', '2018-04-19 11:22:44', '0', '2018-04-19 11:22:44');
INSERT INTO `im_community_user` VALUES ('428', '46881591853057', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 11:23:45', '0', '2018-04-19 11:23:45');
INSERT INTO `im_community_user` VALUES ('429', '46881591853057', '2', '1522736469741.V0001.png', null, '15821890403', null, '1', '1', '17768601406', '17768601406', '2018-04-19 11:23:45', '0', '2018-04-19 11:23:45');
INSERT INTO `im_community_user` VALUES ('430', '46881599193089', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 11:23:53', '0', '2018-04-19 11:23:53');
INSERT INTO `im_community_user` VALUES ('431', '46881599193089', '2', '1522736469741.V0001.png', null, '15821890403', null, '1', '1', '17768601406', '17768601406', '2018-04-19 11:23:53', '0', '2018-04-19 11:23:53');
INSERT INTO `im_community_user` VALUES ('432', '46881606533121', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 11:23:59', '0', '2018-04-19 11:23:59');
INSERT INTO `im_community_user` VALUES ('433', '46881606533121', '2', '1522736469741.V0001.png', null, '15821890403', null, '1', '1', '17768601406', '17768601406', '2018-04-19 11:23:59', '0', '2018-04-19 11:23:59');
INSERT INTO `im_community_user` VALUES ('434', '46881608630273', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 11:24:02', '0', '2018-04-19 11:24:02');
INSERT INTO `im_community_user` VALUES ('435', '46881608630273', '2', '1522736469741.V0001.png', null, '15821890403', null, '1', '1', '17768601406', '17768601406', '2018-04-19 11:24:02', '0', '2018-04-19 11:24:02');
INSERT INTO `im_community_user` VALUES ('436', '46882150744065', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 11:32:39', '0', '2018-04-19 11:32:39');
INSERT INTO `im_community_user` VALUES ('437', '46882150744065', '2', '1522736469741.V0001.png', null, '15821890403', null, '1', '1', '17768601406', '17768601406', '2018-04-19 11:32:39', '0', '2018-04-19 11:32:39');
INSERT INTO `im_community_user` VALUES ('438', '46886800130049', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 12:46:32', '0', '2018-04-19 12:46:32');
INSERT INTO `im_community_user` VALUES ('439', '46886800130049', '2', null, null, '15608470049', null, '1', '1', '17768601406', '17768601406', '2018-04-19 12:46:32', '0', '2018-04-19 12:46:32');
INSERT INTO `im_community_user` VALUES ('440', '46886873530369', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 12:47:43', '0', '2018-04-19 12:47:43');
INSERT INTO `im_community_user` VALUES ('441', '46886873530369', '2', null, null, '15608470049', null, '1', '1', '17768601406', '17768601406', '2018-04-19 12:47:43', '0', '2018-04-19 12:47:43');
INSERT INTO `im_community_user` VALUES ('442', '46886876676098', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 12:47:45', '0', '2018-04-19 12:47:45');
INSERT INTO `im_community_user` VALUES ('443', '46886876676098', '2', null, null, '15608470049', null, '1', '1', '17768601406', '17768601406', '2018-04-19 12:47:45', '0', '2018-04-19 12:47:45');
INSERT INTO `im_community_user` VALUES ('444', '46887601242113', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 12:59:17', '0', '2018-04-19 12:59:17');
INSERT INTO `im_community_user` VALUES ('445', '46887601242113', '2', null, null, '15608470049', null, '1', '1', '17768601406', '17768601406', '2018-04-19 12:59:17', '0', '2018-04-19 12:59:17');
INSERT INTO `im_community_user` VALUES ('446', '46887608582145', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 12:59:24', '0', '2018-04-19 12:59:24');
INSERT INTO `im_community_user` VALUES ('447', '46887608582145', '2', null, null, '15608470049', null, '1', '1', '17768601406', '17768601406', '2018-04-19 12:59:24', '0', '2018-04-19 12:59:24');
INSERT INTO `im_community_user` VALUES ('448', '46890232119297', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 13:41:06', '0', '2018-04-19 13:41:06');
INSERT INTO `im_community_user` VALUES ('449', '46890232119297', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 13:41:06', '0', '2018-04-19 13:41:06');
INSERT INTO `im_community_user` VALUES ('450', '46890277208065', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 13:41:49', '0', '2018-04-19 13:41:49');
INSERT INTO `im_community_user` VALUES ('451', '46890277208065', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 13:41:49', '0', '2018-04-19 13:41:49');
INSERT INTO `im_community_user` VALUES ('452', '46891262869505', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 13:57:28', '0', '2018-04-19 13:57:28');
INSERT INTO `im_community_user` VALUES ('453', '46891262869505', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 13:57:28', '0', '2018-04-19 13:57:28');
INSERT INTO `im_community_user` VALUES ('454', '46891685445639', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 14:04:12', '0', '2018-04-19 14:04:12');
INSERT INTO `im_community_user` VALUES ('455', '46891685445639', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 14:04:12', '0', '2018-04-19 14:04:12');
INSERT INTO `im_community_user` VALUES ('456', '46892808470529', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 14:22:02', '0', '2018-04-19 14:22:02');
INSERT INTO `im_community_user` VALUES ('457', '46892808470529', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 14:22:02', '0', '2018-04-19 14:22:02');
INSERT INTO `im_community_user` VALUES ('458', '46892864045057', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 14:22:56', '0', '2018-04-19 14:22:56');
INSERT INTO `im_community_user` VALUES ('459', '46892864045057', '2', '1522583593711.V0001.png', '管理员', '13666666666', '管理员', '1', '1', '17768601406', '17768601406', '2018-04-19 14:22:56', '0', '2018-04-19 14:22:56');
INSERT INTO `im_community_user` VALUES ('460', '46892808470529', '3', '1522641315345.V0001.png', '妹妹', '13526588999', '李媛', '0', '1', '13646205270', '13646205270', '2018-04-19 14:25:48', '0', '2018-04-19 14:25:48');
INSERT INTO `im_community_user` VALUES ('461', '46892808470529', '3', '1522641315345.V0001.png', '舅舅', '15264949686', '杨家', '0', '1', '13646205270', '13646205270', '2018-04-19 14:27:12', '0', '2018-04-19 14:27:12');
INSERT INTO `im_community_user` VALUES ('462', '46894097170435', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 14:42:32', '0', '2018-04-19 14:42:32');
INSERT INTO `im_community_user` VALUES ('463', '46894097170435', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 14:42:32', '0', '2018-04-19 14:42:32');
INSERT INTO `im_community_user` VALUES ('464', '46894256553985', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 14:45:03', '0', '2018-04-19 14:45:03');
INSERT INTO `im_community_user` VALUES ('465', '46894256553985', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 14:45:03', '0', '2018-04-19 14:45:03');
INSERT INTO `im_community_user` VALUES ('466', '46894271234049', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 14:45:18', '0', '2018-04-19 14:45:18');
INSERT INTO `im_community_user` VALUES ('467', '46894271234049', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 14:45:18', '0', '2018-04-19 14:45:18');
INSERT INTO `im_community_user` VALUES ('468', '46894274379778', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 14:45:21', '0', '2018-04-19 14:45:21');
INSERT INTO `im_community_user` VALUES ('469', '46894274379778', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 14:45:21', '0', '2018-04-19 14:45:21');
INSERT INTO `im_community_user` VALUES ('470', '46894277525505', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 14:45:24', '0', '2018-04-19 14:45:24');
INSERT INTO `im_community_user` VALUES ('471', '46894277525505', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 14:45:24', '0', '2018-04-19 14:45:24');
INSERT INTO `im_community_user` VALUES ('472', '46894285914113', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 14:45:31', '0', '2018-04-19 14:45:31');
INSERT INTO `im_community_user` VALUES ('473', '46894285914113', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 14:45:31', '0', '2018-04-19 14:45:31');
INSERT INTO `im_community_user` VALUES ('474', '46894958051329', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 14:56:12', '0', '2018-04-19 14:56:12');
INSERT INTO `im_community_user` VALUES ('475', '46894958051329', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 14:56:12', '0', '2018-04-19 14:56:12');
INSERT INTO `im_community_user` VALUES ('476', '46894961197058', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 14:56:16', '0', '2018-04-19 14:56:16');
INSERT INTO `im_community_user` VALUES ('477', '46894961197058', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 14:56:16', '0', '2018-04-19 14:56:16');
INSERT INTO `im_community_user` VALUES ('478', '46894973779969', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 14:56:28', '0', '2018-04-19 14:56:28');
INSERT INTO `im_community_user` VALUES ('479', '46894973779969', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 14:56:28', '0', '2018-04-19 14:56:28');
INSERT INTO `im_community_user` VALUES ('480', '46894973779969', '3', '1522641315345.V0001.png', '舅舅', '15264949686', '杨家', '0', '1', '13646205270', '13646205270', '2018-04-19 14:56:58', '0', '2018-04-19 14:56:58');
INSERT INTO `im_community_user` VALUES ('481', '46895017820163', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 14:57:09', '0', '2018-04-19 14:57:09');
INSERT INTO `im_community_user` VALUES ('482', '46895017820163', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 14:57:09', '0', '2018-04-19 14:57:09');
INSERT INTO `im_community_user` VALUES ('483', '46895515893765', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:05:05', '0', '2018-04-19 15:05:05');
INSERT INTO `im_community_user` VALUES ('484', '46895515893765', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:05:05', '0', '2018-04-19 15:05:05');
INSERT INTO `im_community_user` VALUES ('485', '46895603974146', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:06:28', '0', '2018-04-19 15:06:28');
INSERT INTO `im_community_user` VALUES ('486', '46895603974146', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:06:28', '0', '2018-04-19 15:06:28');
INSERT INTO `im_community_user` VALUES ('487', '46895844098049', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:10:18', '0', '2018-04-19 15:10:18');
INSERT INTO `im_community_user` VALUES ('488', '46895844098049', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:10:18', '0', '2018-04-19 15:10:18');
INSERT INTO `im_community_user` VALUES ('489', '46895847243777', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:10:21', '0', '2018-04-19 15:10:21');
INSERT INTO `im_community_user` VALUES ('490', '46895847243777', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:10:21', '0', '2018-04-19 15:10:21');
INSERT INTO `im_community_user` VALUES ('491', '46895857729537', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:10:30', '0', '2018-04-19 15:10:30');
INSERT INTO `im_community_user` VALUES ('492', '46895857729537', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:10:30', '0', '2018-04-19 15:10:30');
INSERT INTO `im_community_user` VALUES ('493', '46894973779969', '3', '1522641315345.V0001.png', '妹妹', '13526588999', '李媛', '0', '1', '13646205270', '13646205270', '2018-04-19 15:10:41', '0', '2018-04-19 15:10:41');
INSERT INTO `im_community_user` VALUES ('494', '46895897575425', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:11:08', '0', '2018-04-19 15:11:08');
INSERT INTO `im_community_user` VALUES ('495', '46895897575425', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:11:08', '0', '2018-04-19 15:11:08');
INSERT INTO `im_community_user` VALUES ('496', '46895857729537', '3', '1522641315345.V0001.png', '弟弟', '13412345644', '有雨', '0', '1', '13646205270', '13646205270', '2018-04-19 15:11:18', '0', '2018-04-19 15:11:18');
INSERT INTO `im_community_user` VALUES ('497', '46895923789825', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:11:33', '0', '2018-04-19 15:11:33');
INSERT INTO `im_community_user` VALUES ('498', '46895923789825', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:11:33', '0', '2018-04-19 15:11:33');
INSERT INTO `im_community_user` VALUES ('499', '46895936372738', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:11:51', '0', '2018-04-19 15:11:51');
INSERT INTO `im_community_user` VALUES ('500', '46895936372738', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:11:51', '0', '2018-04-19 15:11:51');
INSERT INTO `im_community_user` VALUES ('501', '46895948955651', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:11:57', '0', '2018-04-19 15:11:57');
INSERT INTO `im_community_user` VALUES ('502', '46895948955651', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:11:57', '0', '2018-04-19 15:11:57');
INSERT INTO `im_community_user` VALUES ('503', '46895955247105', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:12:03', '0', '2018-04-19 15:12:03');
INSERT INTO `im_community_user` VALUES ('504', '46895955247105', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:12:03', '0', '2018-04-19 15:12:03');
INSERT INTO `im_community_user` VALUES ('505', '46895965732865', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:12:13', '0', '2018-04-19 15:12:13');
INSERT INTO `im_community_user` VALUES ('506', '46895965732865', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:12:13', '0', '2018-04-19 15:12:13');
INSERT INTO `im_community_user` VALUES ('507', '46895965732865', '3', '1522641315345.V0001.png', '弟弟', '13412345644', '有雨', '0', '1', '13646205270', '13646205270', '2018-04-19 15:12:23', '0', '2018-04-19 15:12:23');
INSERT INTO `im_community_user` VALUES ('508', '46895965732865', '3', '1522641315345.V0001.png', '妹妹', '13526588999', '李媛', '0', '1', '13646205270', '13646205270', '2018-04-19 15:13:00', '0', '2018-04-19 15:13:00');
INSERT INTO `im_community_user` VALUES ('509', '46896021307393', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:13:06', '0', '2018-04-19 15:13:06');
INSERT INTO `im_community_user` VALUES ('510', '46896021307393', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:13:06', '0', '2018-04-19 15:13:06');
INSERT INTO `im_community_user` VALUES ('511', '46896074784770', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:13:57', '0', '2018-04-19 15:13:57');
INSERT INTO `im_community_user` VALUES ('512', '46896074784770', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:13:57', '0', '2018-04-19 15:13:57');
INSERT INTO `im_community_user` VALUES ('513', '46896096804865', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:14:18', '0', '2018-04-19 15:14:18');
INSERT INTO `im_community_user` VALUES ('514', '46896096804865', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:14:18', '0', '2018-04-19 15:14:18');
INSERT INTO `im_community_user` VALUES ('515', '46896123019265', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:14:43', '0', '2018-04-19 15:14:43');
INSERT INTO `im_community_user` VALUES ('516', '46896123019265', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:14:43', '0', '2018-04-19 15:14:43');
INSERT INTO `im_community_user` VALUES ('517', '46896126164993', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:14:47', '0', '2018-04-19 15:14:47');
INSERT INTO `im_community_user` VALUES ('518', '46896126164993', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:14:47', '0', '2018-04-19 15:14:47');
INSERT INTO `im_community_user` VALUES ('519', '46896203759619', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:16:00', '0', '2018-04-19 15:16:00');
INSERT INTO `im_community_user` VALUES ('520', '46896203759619', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:16:00', '0', '2018-04-19 15:16:00');
INSERT INTO `im_community_user` VALUES ('521', '46896235216897', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:16:30', '0', '2018-04-19 15:16:30');
INSERT INTO `im_community_user` VALUES ('522', '46896235216897', '2', '', null, '15565125335', '黄得朝', '1', '1', '17768601406', '17768601406', '2018-04-19 15:16:30', '0', '2018-04-19 15:16:30');
INSERT INTO `im_community_user` VALUES ('523', '46896298131457', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:17:30', '0', '2018-04-19 15:17:30');
INSERT INTO `im_community_user` VALUES ('524', '46896298131457', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:17:30', '0', '2018-04-19 15:17:30');
INSERT INTO `im_community_user` VALUES ('525', '46896302325761', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:17:34', '0', '2018-04-19 15:17:34');
INSERT INTO `im_community_user` VALUES ('526', '46896302325761', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:17:34', '0', '2018-04-19 15:17:34');
INSERT INTO `im_community_user` VALUES ('527', '46897328881665', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:33:54', '0', '2018-04-19 15:33:54');
INSERT INTO `im_community_user` VALUES ('528', '46897328881665', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:33:54', '0', '2018-04-19 15:33:54');
INSERT INTO `im_community_user` VALUES ('529', '46897347756033', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:34:11', '0', '2018-04-19 15:34:11');
INSERT INTO `im_community_user` VALUES ('530', '46897347756033', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:34:11', '0', '2018-04-19 15:34:11');
INSERT INTO `im_community_user` VALUES ('531', '46897351950337', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:34:15', '0', '2018-04-19 15:34:15');
INSERT INTO `im_community_user` VALUES ('532', '46897351950337', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 15:34:15', '0', '2018-04-19 15:34:15');
INSERT INTO `im_community_user` VALUES ('533', '46898589270017', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 15:53:55', '0', '2018-04-19 15:53:55');
INSERT INTO `im_community_user` VALUES ('534', '46898589270017', '2', '1522583593711.V0001.png', '管理员', '13666666666', '管理员', '1', '1', '17768601406', '17768601406', '2018-04-19 15:53:55', '0', '2018-04-19 15:53:55');
INSERT INTO `im_community_user` VALUES ('535', '46898589270017', '3', '1522641315345.V0001.png', '朋友', '17708494021', '伊拉克', '1', '1', '13666666666', '13666666666', '2018-04-19 15:54:53', '0', '2018-04-19 15:54:53');
INSERT INTO `im_community_user` VALUES ('536', '46905353633793', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 17:41:26', '0', '2018-04-19 17:41:26');
INSERT INTO `im_community_user` VALUES ('537', '46905353633793', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 17:41:26', '0', '2018-04-19 17:41:26');
INSERT INTO `im_community_user` VALUES ('538', '46905353633793', '3', '1522641315345.V0001.png', '姐姐', '15364999686', '李阳', '0', '1', '13646205270', '13646205270', '2018-04-19 20:25:06', '0', '2018-04-19 20:25:06');
INSERT INTO `im_community_user` VALUES ('539', '46905353633793', '3', '1522641315345.V0001.png', '妹妹', '13526588999', '李媛', '0', '1', '13646205270', '13646205270', '2018-04-19 20:25:25', '0', '2018-04-19 20:25:25');
INSERT INTO `im_community_user` VALUES ('540', '46916535648257', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 20:39:11', '0', '2018-04-19 20:39:11');
INSERT INTO `im_community_user` VALUES ('541', '46916535648257', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 20:39:11', '0', '2018-04-19 20:39:11');
INSERT INTO `im_community_user` VALUES ('542', '46916605902849', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-19 20:40:17', '0', '2018-04-19 20:40:17');
INSERT INTO `im_community_user` VALUES ('543', '46916605902849', '2', '1522736469741.V0001.png', null, '13646205270', '郭锐', '1', '1', '17768601406', '17768601406', '2018-04-19 20:40:17', '0', '2018-04-19 20:40:17');
INSERT INTO `im_community_user` VALUES ('544', '46969908166658', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-20 10:47:31', '0', '2018-04-20 10:47:31');
INSERT INTO `im_community_user` VALUES ('545', '46969908166658', '2', '', null, '17708494021', '吃饭比较', '1', '1', '17768601406', '17768601406', '2018-04-20 10:47:31', '0', '2018-04-20 10:47:31');
INSERT INTO `im_community_user` VALUES ('546', '46969953255425', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-20 10:48:14', '0', '2018-04-20 10:48:14');
INSERT INTO `im_community_user` VALUES ('547', '46969953255425', '2', '', null, '17708494021', '吃饭比较', '1', '1', '17768601406', '17768601406', '2018-04-20 10:48:14', '0', '2018-04-20 10:48:14');
INSERT INTO `im_community_user` VALUES ('548', '46969954304002', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-20 10:48:15', '0', '2018-04-20 10:48:15');
INSERT INTO `im_community_user` VALUES ('549', '46969954304002', '2', '', null, '17708494021', '吃饭比较', '1', '1', '17768601406', '17768601406', '2018-04-20 10:48:15', '0', '2018-04-20 10:48:15');
INSERT INTO `im_community_user` VALUES ('550', '46969954304002', '1', '1522736469741.V0001.png', '存储', '13646205270', '凤飞飞', '1', '1', '17708494021', '17708494021', '2018-04-20 10:49:51', '0', '2018-04-20 10:49:51');
INSERT INTO `im_community_user` VALUES ('551', '46969908166658', '1', '1522736469741.V0001.png', '语言', '13646205270', '语言', '1', '1', '17708494021', '17708494021', '2018-04-20 10:50:40', '0', '2018-04-20 10:50:40');
INSERT INTO `im_community_user` VALUES ('552', '46988921995265', '4', '1522647494228.V0001.png', '健康助手', '17768601406', '健康助手', '1', '1', '17768601406', '17768601406', '2018-04-20 15:49:44', '0', '2018-04-20 15:49:44');
INSERT INTO `im_community_user` VALUES ('553', '46988921995265', '2', '1522583593711.V0001.png', '管理员', '13888888888', '管理员', '1', '1', '17768601406', '17768601406', '2018-04-20 15:49:44', '0', '2018-04-20 15:49:44');
INSERT INTO `im_community_user` VALUES ('554', '46969908166658', '3', '1522641315345.V0001.png', '该喝喝', '15565125335', '让他', '1', '1', '13646205270', '13646205270', '2018-04-20 17:07:29', '0', '2018-04-20 17:07:29');
INSERT INTO `im_community_user` VALUES ('555', '46074988396545', '3', '1522641315345.V0001.png', 'We’re', '13666666666', 'Asdf', '1', '1', '15565125335', '15565125335', '2018-04-20 17:07:49', '0', '2018-04-20 17:07:49');

-- ----------------------------
-- Table structure for im_friend
-- ----------------------------
DROP TABLE IF EXISTS `im_friend`;
CREATE TABLE `im_friend` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `self_account_id` varchar(32) NOT NULL COMMENT '自身账户ID',
  `fri_account_id` varchar(32) DEFAULT NULL COMMENT '好友账户ID',
  `friend_nickname` varchar(64) DEFAULT NULL COMMENT '好友备注昵称',
  `friend_type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '好友类型（1：普通；2：置顶；3：加星）',
  `fri_group_id` varchar(32) DEFAULT NULL COMMENT '好友分组ID',
  `creator` varchar(32) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im_friend
-- ----------------------------

-- ----------------------------
-- Table structure for im_friend_group
-- ----------------------------
DROP TABLE IF EXISTS `im_friend_group`;
CREATE TABLE `im_friend_group` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(32) NOT NULL COMMENT '账户ID',
  `fri_group_id` varchar(32) NOT NULL COMMENT '好友分组ID',
  `fri_group_name` varchar(128) NOT NULL COMMENT '好友分组名称',
  `group_status` tinyint(2) DEFAULT NULL COMMENT '分组状态（1：显示；0：隐藏）',
  `creator` varchar(32) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im_friend_group
-- ----------------------------

-- ----------------------------
-- Table structure for im_friend_oper
-- ----------------------------
DROP TABLE IF EXISTS `im_friend_oper`;
CREATE TABLE `im_friend_oper` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `self_account_id` varchar(32) NOT NULL COMMENT '自身账户ID',
  `other_account_id` varchar(32) NOT NULL COMMENT '好友账户ID',
  `action_type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '动作类型（1：添加；2：删除）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im_friend_oper
-- ----------------------------

-- ----------------------------
-- Table structure for im_msg_file
-- ----------------------------
DROP TABLE IF EXISTS `im_msg_file`;
CREATE TABLE `im_msg_file` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `community_id` varchar(32) NOT NULL COMMENT '群组ID',
  `message_id` varchar(32) DEFAULT NULL COMMENT '消息ID',
  `file_length` int(11) DEFAULT NULL COMMENT '文件大小',
  `file_name` varchar(128) DEFAULT NULL COMMENT '文件名称',
  `secret` varchar(64) DEFAULT NULL COMMENT '访问密码',
  `size` varchar(64) DEFAULT NULL COMMENT '图片/视频缩略图尺寸',
  `length` int(11) DEFAULT NULL COMMENT '语音/视频时长',
  `thumb_secret` varchar(64) DEFAULT NULL COMMENT '缩略图访问密钥',
  `thumb_ease_url` varchar(128) DEFAULT NULL COMMENT '视频缩略图远程地址',
  `thumb_oss_url` varchar(128) DEFAULT NULL COMMENT '视频缩略图远程地址',
  `ease_url` varchar(128) DEFAULT NULL COMMENT '环信访问地址',
  `oss_url` varchar(128) DEFAULT NULL COMMENT 'OSS访问地址',
  `creator` varchar(32) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=458 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im_msg_file
-- ----------------------------
INSERT INTO `im_msg_file` VALUES ('20', '45374776606721', '451687169090652160', '8964', 'Medical', 'bd9Eyjb7EeiIfhU5aM_ld0LvF5Pciywm1jiCqXPG6W5QpirQ', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/6ddf44c0-36fb-11e8-b1e3-93f278151f5c', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 12:56:54', '0', '2018-04-03 14:00:00');
INSERT INTO `im_msg_file` VALUES ('21', '45427704528897', '451688480955697168', '8964', 'Medical', 'I--ymjb8EeibBVvyvG_pClJBLTd_mUkttdJkOf_M2m7XuoS8', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/23efb290-36fc-11e8-9abc-83f9c308865d', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 13:01:59', '0', '2018-04-03 15:00:02');
INSERT INTO `im_msg_file` VALUES ('22', '45357455179777', '451697670424102920', '6281206', 'image8222445453080951847.jpg', 'HzLUijcBEeiMMYuFwuUbJnxFhE_1_JoaOdTJnqiL5aMvA0vO', '{\"width\":691.0,\"height\":921.0}', null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/1f32d480-3701-11e8-afc9-5b780a373bee', null, '80330a8e8a317d865f19ec894fe00068', '2018-04-03 13:37:39', '0', '2018-04-03 15:00:02');
INSERT INTO `im_msg_file` VALUES ('23', '45357455179777', '451698175577688072', '1332', '80330a8e8a317d865f19ec894fe0006820180403T133933.amr', 'ZVUVmjcBEeiJl4ObelT9Hxxc2r2Ah4h5mkcl2LYdGXHHztos', null, '2', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/65551590-3701-11e8-bf4b-ff58ccf8d0c8', null, '80330a8e8a317d865f19ec894fe00068', '2018-04-03 13:39:36', '0', '2018-04-03 15:00:02');
INSERT INTO `im_msg_file` VALUES ('27', '45442719088641', '451711334300518456', '8964', 'Medical', 'h3jYOjcIEeiv1Pn2cJo7QO7_1RHBCnMI39fXk8n88fz9H5j0', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/8778d830-3708-11e8-b2bc-29c2b3ee2de3', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 14:30:40', '0', '2018-04-03 16:00:00');
INSERT INTO `im_msg_file` VALUES ('29', '45445858525185', '451721785738528748', '3302', 'audio', 'MeReyjcOEeiy95OJOyd3znyKy3kg01yZz-4NMNeWiecnQl0N', null, '2', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/31e45ec0-370e-11e8-aa0d-7b58f4464bcd', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 15:11:14', '0', '2018-04-03 17:00:00');
INSERT INTO `im_msg_file` VALUES ('30', '45445858525185', '451724152341006376', '1878', '80330a8e8a317d865f19ec894fe0006820180403T152020.amr', 'elH5-jcPEeirAn2F8g9xIuwRUyu_1AkmyMycFKogglxLMTOr', null, '2', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/7a51f9f0-370f-11e8-b476-271d6bc136cc', null, '80330a8e8a317d865f19ec894fe00068', '2018-04-03 15:20:25', '0', '2018-04-03 17:00:01');
INSERT INTO `im_msg_file` VALUES ('33', '45445858525185', '451759958971648020', '2459', 'Medical.txt', '43p3-jciEeihGrd-kWl9_EF6HF-MPPNVWYqs6yfZ4opUw5tS', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/e37a77f0-3722-11e8-92ae-3710013233fe', null, 'a4160ea1f57c0ea1c6c08800f3f7e882', '2018-04-03 17:39:22', '0', '2018-04-03 19:00:01');
INSERT INTO `im_msg_file` VALUES ('34', '45445858525185', '451762131633702956', '2459', 'Medical.txt', 'EQT82jckEeiB0skGUxMfZQWCFwbS1Z5B0AIfNX3g8hlbqD-o', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/1104fcd0-3724-11e8-b171-6b6663f65c5d', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 17:47:47', '0', '2018-04-03 19:00:01');
INSERT INTO `im_msg_file` VALUES ('35', '45445858525185', '451763297025263660', '2459', 'Medical.txt', 'sr4MujckEeiltyH1ldVWiQQqBmteik2x7jFC4X2GgkGpvck8', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/b2be0cb0-3724-11e8-816d-1baa910297ee', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 17:52:19', '0', '2018-04-03 19:00:01');
INSERT INTO `im_msg_file` VALUES ('36', '45451932925953', '451771669405509640', '2459', 'Medical.txt', 'PJnPajcpEeiaPENGF0l6tAv4Aw2ltNSfdbB8mhJPymUL8Z1K', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/3c99cf60-3729-11e8-84f4-217a7323ac8b', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 18:24:48', '0', '2018-04-03 20:00:00');
INSERT INTO `im_msg_file` VALUES ('37', '45451932925953', '452008563330516948', '2459', 'Medical.txt', 'qEstqjepEei9zgVb-VtWJ43sfhcxWtGg4XKcoEF8RaxTl_-r', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/a84b2da0-37a9-11e8-8f53-2f98a079acaa', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 09:44:04', '0', '2018-04-04 11:00:01');
INSERT INTO `im_msg_file` VALUES ('38', '45451932925953', '452017400213145560', '2459', 'Medical.txt', 'cqSkujeuEeigQ2vxhMypRPJ0hZO0Laxqyd1Y8pIoWL9eYJNI', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/72a4a4b0-37ae-11e8-847c-d1e3ececeff5', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 10:18:22', '0', '2018-04-04 12:00:00');
INSERT INTO `im_msg_file` VALUES ('39', '45445858525185', '452021371136903196', '540010', 'image', 'mZNPKjewEeisYhGgL8KxG07scdpBwxH4xZTcdfAEPwxDtz8a', '{\"width\":1815.0,\"height\":2420.0}', null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/99934f20-37b0-11e8-8630-dfa8b727da91', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 10:33:46', '0', '2018-04-04 12:00:00');
INSERT INTO `im_msg_file` VALUES ('40', '45445858525185', '452021689211947036', '71959', 'image', 'xdv6qjewEeim1jeWvlXmgTJRlIxJ6eubkTbAfwt1A3MZ6YU-', '{\"width\":450.0,\"height\":801.0}', null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/c5dbfaa0-37b0-11e8-8504-f1b3055cd644', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 10:35:00', '0', '2018-04-04 12:00:00');
INSERT INTO `im_msg_file` VALUES ('41', '45445858525185', '452021831721814044', '8052', 'image', '2aKKSjewEei20XknYBxEHZYBSFaJ9Emt318TJ8fTDzJitW9r', '{\"width\":252.0,\"height\":180.0}', null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/d9a28a40-37b0-11e8-bc67-6dfd1f6b752d', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 10:35:34', '0', '2018-04-04 12:00:01');
INSERT INTO `im_msg_file` VALUES ('42', '45451932925953', '452033897643902952', '45961', 'image', 'ZBtlaje3EeigyEln4Bpa1RrD3oku7vy8066yN_5pRnLJRVTZ', '{\"width\":450.0,\"height\":801.0}', null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/641b6560-37b7-11e8-aaf9-33e52c6fc94f', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 11:22:23', '0', '2018-04-04 13:00:00');
INSERT INTO `im_msg_file` VALUES ('43', '45519313371137', '452036595202132000', '2459', 'Medical.txt', '2nzECje4EeiYFSm8U9sXeHe0AMHjNoAmprVuHMddj-N72pJu', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/da7cc400-37b8-11e8-adcb-7f6ee041fefd', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 11:32:51', '0', '2018-04-04 13:00:00');
INSERT INTO `im_msg_file` VALUES ('44', '45445858525185', '452066138956761080', '2459', 'Medical.txt', '3n5b2jfIEeibM7vzuA7847u9aHbRt7wbGjjrMSXuXEuOjm2y', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/de7e5bd0-37c8-11e8-853a-f36b2a1bb7e1', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 13:27:30', '0', '2018-04-04 15:00:00');
INSERT INTO `im_msg_file` VALUES ('45', '45519313371137', '452079893744715776', '2459', 'Medical.txt', 'U16xADfQEeiYJ1uKZTxCKGlh90pcK4tiEsroGQXSpny4c8ib', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/535e89f0-37d0-11e8-b19b-d1195c35e169', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 14:20:52', '0', '2018-04-04 16:00:00');
INSERT INTO `im_msg_file` VALUES ('46', '45519313371137', '452081382999459840', '2459', 'Medical.txt', 'Igt5ejfREeiVMtflNJk4750F4ZV5sOHTIowwAf0ya9gR-m0j', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/220b7970-37d1-11e8-9046-bb54210841e4', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 14:26:39', '0', '2018-04-04 16:00:00');
INSERT INTO `im_msg_file` VALUES ('47', '45519313371137', '452081394001119232', '2459', 'Medical.txt', 'I5Q8WjfREeiOkG_6u91ySwHE9_ue2ho84psdxh8VPH3lVrMy', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/23943c50-37d1-11e8-aa5d-232a2290b866', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 14:26:41', '0', '2018-04-04 16:00:00');
INSERT INTO `im_msg_file` VALUES ('48', '45519313371137', '452104800897599456', '2459', 'Medical.txt', '0-07SjfdEeiCZYsd6Pph7hCfEimTEG58i1qzW5MzQ0HNxUW7', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/d3ed3b40-37dd-11e8-897b-ed6e7db704cd', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 15:57:31', '0', '2018-04-04 17:00:00');
INSERT INTO `im_msg_file` VALUES ('49', '45519313371137', '452104831281137632', '2459', 'Medical.txt', '2CU_qjfdEeiApr9JBI5txAeFQUgn_iNXZIJuep27ShpLDo-m', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/d8253fa0-37dd-11e8-9935-dfda7337e47a', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 15:57:38', '0', '2018-04-04 17:00:00');
INSERT INTO `im_msg_file` VALUES ('50', '45519313371137', '452104856526653408', '2459', 'Medical.txt', '253rqjfdEeijBcX9t0cpAYrekD8AFDxuAxAqfQxlRPs-WK5c', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/db9deba0-37dd-11e8-bb19-5f0f468741eb', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 15:57:44', '0', '2018-04-04 17:00:00');
INSERT INTO `im_msg_file` VALUES ('51', '45519313371137', '452111057628956708', '2459', 'Medical.txt', 'ODfLOjfhEeiYp3cnutHegxj8B5ljOQ5u_9iChuy5Fj90jjhc', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/3837cb30-37e1-11e8-b121-59ed2e27ddab', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 16:21:48', '0', '2018-04-04 18:00:00');
INSERT INTO `im_msg_file` VALUES ('52', '45519313371137', '452111070807459876', '2459', 'Medical.txt', 'Og446jfhEeiwPAEK0-H6dfHb4WFK-Aq_XKq92_36Ex-HkTkS', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/3a0e38e0-37e1-11e8-a695-2777327b2362', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 16:21:51', '0', '2018-04-04 18:00:00');
INSERT INTO `im_msg_file` VALUES ('53', '45519313371137', '452111092231964708', '2459', 'Medical.txt', 'PQfw6jfhEeiPRfkALHJDPVB-dUs2m9u3W2ba8ivCkw-yyiee', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/3d07f0e0-37e1-11e8-8ece-a19ba99a1248', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 16:21:56', '0', '2018-04-04 18:00:00');
INSERT INTO `im_msg_file` VALUES ('54', '45519313371137', '452111124452608036', '2459', 'Medical.txt', 'QX42yjfhEeiu8slpq8umC-NXxojgLtRkYRDFOfop4lyr50yT', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/417e36c0-37e1-11e8-8b76-7591ca9db2b2', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 16:22:04', '0', '2018-04-04 18:00:01');
INSERT INTO `im_msg_file` VALUES ('55', '45519313371137', '452111636296108068', '2459', 'Medical.txt', 'iIZD-jfhEeilWiFE0BnS0nyNxIx04fEBXkzEa7w3HoXLX_L4', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/888643f0-37e1-11e8-b9b5-e33e98bbc82b', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 16:24:03', '0', '2018-04-04 18:00:01');
INSERT INTO `im_msg_file` VALUES ('56', '45519313371137', '452116135643449380', '2459', 'Medical.txt', '-PJBWjfjEeitgl1fDut12AxJIhv3kYmrPfiv4vBs7obhcOhd', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/f8f24150-37e3-11e8-8e6a-e572fad76af4', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 16:41:30', '0', '2018-04-04 18:00:01');
INSERT INTO `im_msg_file` VALUES ('57', '45519313371137', '452118913002506220', '2459', 'Medical.txt', 'emFeCjflEeiqEiFV8NLaa7wwVy3-epMY7uxvpfCy74as4LCF', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/7a615e00-37e5-11e8-989b-0f76dfab3249', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 16:52:17', '0', '2018-04-04 18:00:01');
INSERT INTO `im_msg_file` VALUES ('58', '45519313371137', '452118924419401708', '2459', 'Medical.txt', 'e_WSmjflEeimb1-H6XADG2e2G7GMwlnB5Qzio9qQRS7sd2K5', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/7bf59290-37e5-11e8-88ae-e7d467e0f6c3', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 16:52:20', '0', '2018-04-04 18:00:01');
INSERT INTO `im_msg_file` VALUES ('59', '45519313371137', '452119032087185388', '2459', 'Medical.txt', 'iucaijflEeio3dl_kWjDiSWkeCBE2h_B3k6T75LSlHMSoTqn', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/8ae71a80-37e5-11e8-8a87-e347f80160fc', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 16:52:45', '0', '2018-04-04 18:00:01');
INSERT INTO `im_msg_file` VALUES ('60', '45519313371137', '452122803034916844', '2459', 'Medical.txt', 'ljj7mjfnEeiBmVdUNJ-G6GH5hqSVwec3_MIJZcpRHSwwHIyo', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/9638fb90-37e7-11e8-9f85-9990395bd2b4', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 17:07:23', '0', '2018-04-04 19:00:00');
INSERT INTO `im_msg_file` VALUES ('61', '45519313371137', '452123432906131480', '2459', 'Medical.txt', '7aS-WjfnEei8cxVvnO2vmTIa-Os3ui-TlSnSXYjAPzisj9-7', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/eda4be50-37e7-11e8-9a90-e5cd300e4598', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 17:09:49', '0', '2018-04-04 19:00:01');
INSERT INTO `im_msg_file` VALUES ('62', '45519313371137', '452123523083667480', '2459', 'Medical.txt', '-ial2jfnEeiT6unDaywcF4hFDt8AFWT9MI1l4MlTL1_zr-gJ', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/fa26a5d0-37e7-11e8-a677-d3222717a19a', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 17:10:10', '0', '2018-04-04 19:00:01');
INSERT INTO `im_msg_file` VALUES ('63', '45519313371137', '452123554503198744', '2459', 'Medical.txt', '_oHpqjfnEeikDLstVZDnEMW7iQXTI_rjWR7URfmciTNNDs0P', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/fe81e9a0-37e7-11e8-a685-8b434ab826ae', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 17:10:18', '0', '2018-04-04 19:00:01');
INSERT INTO `im_msg_file` VALUES ('64', '45451932925953', '452124014094059532', '2459', 'Medical.txt', 'PktCKjfoEeiGZNHsxDiSqYZ8M1h1Z4u2kTPBuhq-f6kzBHiI', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/3e4b4220-37e8-11e8-b1be-1f29a7e6e629', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 17:12:05', '0', '2018-04-04 19:00:01');
INSERT INTO `im_msg_file` VALUES ('65', '45519064858625', '452128512136972332', '293614', 'image-799264787.jpg', 'roH-ujfqEeizU18Kk7JyD8-IB5BKoEsMlRBLfEJzrfV-Ju1P', '{\"width\":540.0,\"height\":960.0}', null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/ae81feb0-37ea-11e8-b9f3-670d15c5bcf5', null, '80330a8e8a317d865f19ec894fe00068', '2018-04-04 17:29:32', '0', '2018-04-04 19:00:01');
INSERT INTO `im_msg_file` VALUES ('66', '45519064858625', '452128570370689068', '1926', '80330a8e8a317d865f19ec894fe0006820180404T172941.amr', 'tpk5GjfqEei0tEnOt_u-nNqftOJVm_tj8mmAHSgcipN8o31f', null, '2', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/b6993910-37ea-11e8-9925-03aa1d762d34', null, '80330a8e8a317d865f19ec894fe00068', '2018-04-04 17:29:46', '0', '2018-04-04 19:00:01');
INSERT INTO `im_msg_file` VALUES ('67', '45442719088641', '453493530032080956', '36181', 'image', 'qMvpmjrOEeiRY4_-NL6o8xjLn908mRjdPam2F5qR2jKZbhGd', '{\"width\":450.0,\"height\":801.0}', null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/a8cbe990-3ace-11e8-b232-192816e150ad', '1523170031118.V0001.thumbnail', '8df0a470b4506be254256154c637e09b', '2018-04-08 09:46:30', '0', '2018-04-08 11:00:01');
INSERT INTO `im_msg_file` VALUES ('68', '45442719088641', '453493616950642748', '278141', 'image', 'tMpwSjrOEeiTbCtJFCLj-MPXN06Ofah-kfd472HLbHXXxJhd', '{\"width\":1469.0,\"height\":1959.0}', null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/b4ca7040-3ace-11e8-8031-5f695fc476dd', '1523170026220.V0001.thumbnail', '8df0a470b4506be254256154c637e09b', '2018-04-08 09:46:50', '0', '2018-04-08 11:00:01');
INSERT INTO `im_msg_file` VALUES ('69', '45442719088641', '453493961785346108', '5126', 'audio', '5LjLOjrOEeix3WFjiC2lHciznfVX3TzPrWEvGysoYtPbQ-Db', null, '3', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/e4b8cb30-3ace-11e8-98af-814bcc3c5e2e', '1523170027654.V0001.amr', '8df0a470b4506be254256154c637e09b', '2018-04-08 09:48:11', '0', '2018-04-08 11:00:01');
INSERT INTO `im_msg_file` VALUES ('70', '45442719088641', '453505566854088744', '2342', 'audio', 'Lz0fKjrVEeivrolGzEFJtlCbqIP8rvXICcK61Jc8y5oIWNUW', null, '1', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/2f3d1f20-3ad5-11e8-8da3-0b15645cf11e', '1523245868784.V0001.amr', '8df0a470b4506be254256154c637e09b', '2018-04-08 10:33:13', '0', '2018-04-08 12:00:01');
INSERT INTO `im_msg_file` VALUES ('71', '45442719088641', '453505620763478056', '4102', 'audio', 'NryGWjrVEeiRWN-r9wyLo3OxkrebHEiPembEY39ldCfQoONn', null, '2', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/36bc8650-3ad5-11e8-82b1-a59d2971f928', '1523245865530.V0001.amr', '8df0a470b4506be254256154c637e09b', '2018-04-08 10:33:25', '0', '2018-04-08 12:00:01');
INSERT INTO `im_msg_file` VALUES ('72', '45442719088641', '453506848876660692', '3878', 'audio', '4SuBmjrVEeiOlUHZw0nut3b_qCwshHY9-Pqa5LiAOszXjKU_', null, '2', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/e12b8190-3ad5-11e8-a74c-d1ca51f23db3', '1523245871196.V0001.amr', '8df0a470b4506be254256154c637e09b', '2018-04-08 10:38:11', '0', '2018-04-08 12:00:01');
INSERT INTO `im_msg_file` VALUES ('73', '45442719088641', '453506923023566804', '6374', 'audio', '63d2QDrVEeiVCoX7CHq11Pu9XWlA3-k57PScuM8v1MQGHPxF', null, '4', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/eb774f30-3ad5-11e8-bfa9-815ed5962f88', '1523245866166.V0001.amr', '8df0a470b4506be254256154c637e09b', '2018-04-08 10:38:28', '0', '2018-04-08 12:00:01');
INSERT INTO `im_msg_file` VALUES ('74', '45519313371137', '453569943716235296', '434677', 'video.mp4', 'FVRZejr4EeiB1L8GB6JgM15tRQ6h0e1_-BpukjTT8ZpLxJTM', '{\"width\":360.0,\"height\":480.0}', '0', 'FSNeajr4EeirymEDr1m5U0E12sScxmduf0tTr13v4kAtSZqM', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/15235e60-3af8-11e8-809d-1b1ca1883925', '1523245871365.V0001.thumbnail', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/15545970-3af8-11e8-9077-add5fade90f5', '1523245871771.V0001.amr', '163c372a20fb60930fbe4a57d5388adb', '2018-04-08 14:43:01', '0', '2018-04-08 16:00:01');
INSERT INTO `im_msg_file` VALUES ('75', '45442719088641', '453585478956877800', '4582', 'audio', 'gUCzajsAEeiGwG0qDmg6yS1RZfKhrcBfDaHLXAbz3LB4Ry2j', null, '3', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/8140b360-3b00-11e8-b1d9-99465c0a3686', '1523245863720.V0001.amr', '8df0a470b4506be254256154c637e09b', '2018-04-08 15:43:19', '0', '2018-04-08 17:00:00');
INSERT INTO `im_msg_file` VALUES ('76', '45442719088641', '453585504735070184', '6246', 'audio', 'hNHwejsAEeiBHysZPyYizgvZ5cLzgrMqr5sA_9ml6os2wk1H', null, '4', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/84d1f070-3b00-11e8-87ce-ebe2053a05d2', '1523245866545.V0001.amr', '8df0a470b4506be254256154c637e09b', '2018-04-08 15:43:25', '0', '2018-04-08 17:00:00');
INSERT INTO `im_msg_file` VALUES ('77', '45891015737345', '453592240334309440', '1606', '80330a8e8a317d865f19ec894fe0006820180408T160927.amr', 'K5uDCjsEEei5T1OO7p7zzBk2_CDZQQxgd0s0PHCjEkxKKSue', null, '2', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/2b9b8300-3b04-11e8-9411-e555a5795bbb', '1523245866678.V0001.amr', '80330a8e8a317d865f19ec894fe00068', '2018-04-08 16:09:33', '0', '2018-04-08 18:00:01');
INSERT INTO `im_msg_file` VALUES ('78', '45891015737345', '453592275813926976', '144728', 'image1528324945.jpg', 'MIaqyjsEEeiz12V4yNBDA1HrhuuUr-kgPLgFA0cpE9zptQbH', '{\"width\":540.0,\"height\":960.0}', null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/3086aac0-3b04-11e8-a233-ab63676429af', '1523245861994.V0001.thumbnail', '80330a8e8a317d865f19ec894fe00068', '2018-04-08 16:09:41', '0', '2018-04-08 18:00:01');
INSERT INTO `im_msg_file` VALUES ('79', '45442719088641', '453650228411631652', '149077', 'image', 'mw1iyjsjEei4WZcbO-RPbkzk4Sj89XQShIeBiX_SNWNeUiSS', '{\"width\":1152.0,\"height\":648.0}', null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/9b0d62c0-3b23-11e8-9359-8d98cfc38401', '1523245866288.V0001.thumbnail', '8df0a470b4506be254256154c637e09b', '2018-04-08 19:54:34', '0', '2018-04-08 21:00:01');
INSERT INTO `im_msg_file` VALUES ('80', '45442719088641', '453658662762711052', '1478', 'audio', 'LZHKajsoEeiOOOczHtbjyesWseHORFNRrZKURUC-FKwT9NXl', null, '1', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/2d91ca60-3b28-11e8-95d7-19f79b8009bd', '1523245864807.V0001.amr', '8df0a470b4506be254256154c637e09b', '2018-04-08 20:27:18', '0', '2018-04-08 22:00:00');
INSERT INTO `im_msg_file` VALUES ('81', '45442719088641', '453661157698308052', '3366', 'audio', 'h8sPmjspEeiFxjMs47043EyaWIvJGZEmwcF6YcBDfQh8fFyQ', null, '2', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/87cb0f90-3b29-11e8-920c-8999cef4bf85', '1523245864674.V0001.amr', '8df0a470b4506be254256154c637e09b', '2018-04-08 20:36:59', '0', '2018-04-08 22:00:00');
INSERT INTO `im_msg_file` VALUES ('82', '45442719088641', '453661847946528760', '398171', 'image', '532oOjspEeikQeUXLCLVEQZMs21Ht0RkQJDDIRF6MrKXK_tn', '{\"width\":2573.0,\"height\":1709.0}', null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/e77da830-3b29-11e8-b97b-f597020fcae8', '1523245869350.V0001.thumbnail', '163c372a20fb60930fbe4a57d5388adb', '2018-04-08 20:39:40', '0', '2018-04-08 22:00:00');
INSERT INTO `im_msg_file` VALUES ('83', '45442719088641', '453864508562081800', '1862', 'audio', 'xGk12juXEeik_4s9u9VhgouvPZrx1SEGd91cMI0Gu-xmGPJw', null, '1', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/c46935d0-3b97-11e8-85dd-89aaa4672887', '1523245863830.V0001.amr', '8df0a470b4506be254256154c637e09b', '2018-04-09 09:46:05', '0', '2018-04-09 11:00:01');
INSERT INTO `im_msg_file` VALUES ('84', '45442719088641', '453871057154082788', '149077', 'image', 'UTKYCjubEeibfId9fKPGvAKYxb0ZFaNiii0ijoSJz2hD-fiC', '{\"width\":1152.0,\"height\":648.0}', null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/51329800-3b9b-11e8-a6e1-59efc5250407', null, '8df0a470b4506be254256154c637e09b', '2018-04-09 10:11:30', '0', '2018-04-09 12:00:00');
INSERT INTO `im_msg_file` VALUES ('85', '45519313371137', '453937860790192152', '2459', 'Medical.txt', 'iBUmyju_EeiiZG2za0Bx7-FmsGR8dyVgloTyN3SRxEc0NYr_', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/881526c0-3bbf-11e8-a34c-4b67ff76d08c', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 14:30:44', '0', '2018-04-09 16:00:01');
INSERT INTO `im_msg_file` VALUES ('86', '45519313371137', '453938110879762456', '2459', 'Medical.txt', 'qsr0aju_Eeihdl2V6_HyzdQBzCfipMNqOIWn8Kgj31yOUgWj', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/aacaf460-3bbf-11e8-9fb1-898f163679cf', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 14:31:42', '0', '2018-04-09 16:00:01');
INSERT INTO `im_msg_file` VALUES ('87', '45519313371137', '453938541202769904', '2459', 'Medical.txt', '5oVUWju_EeijDL1K8t22IUOzVcesar9zzzPzSCTQc0RCSuTr', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/e6855450-3bbf-11e8-aba1-5da10d4b1060', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 14:33:22', '0', '2018-04-09 16:00:01');
INSERT INTO `im_msg_file` VALUES ('88', '45442719088641', '453939149758531624', '5894', 'audio', 'OvBaOjvAEei3F-OVKGfLx0o5N7Ub4wggK4O83ueMZcOdrqgW', null, '3', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/3af05a30-3bc0-11e8-bae1-251f979de339', null, '8df0a470b4506be254256154c637e09b', '2018-04-09 14:35:44', '0', '2018-04-09 16:00:01');
INSERT INTO `im_msg_file` VALUES ('89', '45442719088641', '453939185418504232', '8966', 'audio', 'P-rEOjvAEeiJhtFW767tPwY-Oq8iiibG-I2FV2saJm4RFNbC', null, '5', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/3feac430-3bc0-11e8-ac8c-650058b9f3f7', null, '8df0a470b4506be254256154c637e09b', '2018-04-09 14:35:52', '0', '2018-04-09 16:00:01');
INSERT INTO `im_msg_file` VALUES ('90', '45442719088641', '453939210211035176', '5126', 'audio', 'Qy4IWjvAEeimqcORWIhBPMi0-xuF4hEimBMrohMXsOS4gsda', null, '3', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/432e0850-3bc0-11e8-9089-37276833fdbc', null, '8df0a470b4506be254256154c637e09b', '2018-04-09 14:35:58', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_file` VALUES ('91', '45442719088641', '453939261150857256', '15814', 'audio', 'SmNuOjvAEeig71GShrp-QUvKMkloS0IwkZwjqwL0xmFHW1t8', null, '10', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/4a636e30-3bc0-11e8-9565-818318f68a1b', null, '8df0a470b4506be254256154c637e09b', '2018-04-09 14:36:10', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_file` VALUES ('92', '45519313371137', '453943488296257536', '0', 'Medical.txt', 'lQ9rOjvCEeiMYDNdZVM_xaykQaH0wGBlsrP81Wm1cHEmjadu', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/950f6b30-3bc2-11e8-8212-ab9841ec0f88', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 14:52:34', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_file` VALUES ('93', '45451932925953', '453943639299590144', '0', 'Medical.txt', 'qgWhOjvCEei7gj8hS0H75SAofAk2DV4vGHN0MA4WOQ5Had0X', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/aa05a130-3bc2-11e8-82f6-2135f8f19e42', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 14:53:09', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_file` VALUES ('94', '45451932925953', '453943778110081024', '2459', 'Medical.txt', 'vUdwejvCEei0CFPV9y1pSbQ_XcaVfgxjRI1xfs46Ir5d0fiq', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/bd477070-3bc2-11e8-ba6f-7db5eabfb1e2', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 14:53:42', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_file` VALUES ('95', '45451932925953', '453943798645393408', '0', 'Medical.txt', 'wCQqmjvCEeiJpRX3Obb8lkceEwQWqpApJ5x0WU2eWcOtEGWL', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/c0242a90-3bc2-11e8-a3a4-69b7ba501f30', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 14:53:46', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_file` VALUES ('96', '45519313371137', '453945005933856788', '0', 'Medical.txt', 'Z69m2jvDEeiCnW8Ouro2DxAqF32Iwd-gkOBk1KvP-Oe3QSsx', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/67af66d0-3bc3-11e8-8676-3d5642a78780', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 14:58:27', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_file` VALUES ('97', '45519313371137', '453945567358224380', '0', 'Medical.txt', '', null, null, null, null, null, '', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 15:00:38', '0', '2018-04-09 17:00:00');
INSERT INTO `im_msg_file` VALUES ('98', '45519313371137', '453945607715821564', '0', 'Medical.txt', '', null, null, null, null, null, '', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 15:00:48', '0', '2018-04-09 17:00:00');
INSERT INTO `im_msg_file` VALUES ('99', '45519313371137', '453946472916846568', '0', 'Medical.txt', '', null, null, null, null, null, '', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 15:04:09', '0', '2018-04-09 17:00:00');
INSERT INTO `im_msg_file` VALUES ('100', '45519313371137', '453946554122766312', '2459', 'Medical.txt', 'Poe0-jvEEeikilcdJN9bmlwC9itKItOrBIP7m4DnHSe6Y--G', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/3e87b4f0-3bc4-11e8-a124-21ee54d11dbc', '1523330960172.V0001.amr', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 15:04:28', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_file` VALUES ('101', '45519313371137', '453946706287921172', '0', 'Medical.txt', 'U6dr-jvEEeig9x0-1sUDBfzkDjhszTDrgGVPTJYHYGOzgFJm', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/53a76bf0-3bc4-11e8-b24f-4f0d4d9cc92a', '1523330961458.V0001.amr', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 15:05:03', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_file` VALUES ('102', '45519313371137', '453946726294751252', '0', 'Medical.txt', 'VmymejvEEeiDRH0nn_MK_GiAxR9MMcfnXQq45kGVd0bQVY6X', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/566ca670-3bc4-11e8-a507-5db62715268f', '1523330952311.V0001.amr', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 15:05:08', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_file` VALUES ('103', '45519313371137', '453946736889563156', '2459', 'Medical.txt', 'V-eGqjvEEeig1y05ecq2In51ydVbOlPuvgWtRpfk0nPb01ri', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/57e786a0-3bc4-11e8-84ba-4d32b2479dfb', '1523330959581.V0001.amr', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 15:05:10', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_file` VALUES ('104', '45519313371137', '453946751225694228', '0', 'Medical.txt', 'WeIeKjvEEeiYaBP_SpgNFVhD1fHOq63AVFGhi5btj2xxkHbP', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/59e21e20-3bc4-11e8-b79e-63cdbf5bb0e4·', '1523330952700.V0001.amr', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 15:05:14', '0', '2018-04-11 10:00:18');
INSERT INTO `im_msg_file` VALUES ('105', '45519313371137', '453946849133332508', '2459', 'Medical.txt', 'Z3aHGjvEEeiuwz9W2wTMzvZi1vNTNbp8QxO5GEyfWHZXSK2g', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/67768710-3bc4-11e8-915a-43cdec7040cf', '1523330959600.V0001.amr', 'a93b63352a92e74f675631ede70a84ae', '2018-04-09 15:05:37', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_file` VALUES ('106', '45519313371137', '453947143804160020', '0', 'Medical.txt', 'kF7JijvEEei68CE9DSmUjNGok9vsiPd-RNxoat4FMQedlb2M', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/905ec980-3bc4-11e8-b3b6-49b5db49d1f3', '1523330954826.V0001.amr', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 15:06:45', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_file` VALUES ('107', '45519313371137', '453948992758220852', '0', 'Medical.txt', 'kPTSijvFEeiaq19-wYZ_ZQWtSEL6PNXlKU4XeDrIJu2qYLP-', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/90f4d280-3bc5-11e8-91ad-7ffa20f74579', '1523330959612.V0001.amr', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 15:13:56', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_file` VALUES ('108', '45519313371137', '453950893683902468', '0', 'Medical.txt', 'mMTVSjvGEeiXX4OCP9W_N3_JwzODrXDhTf-9CBW2ADbux18j', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/98c4d540-3bc6-11e8-809f-9320aa168328', '1523330954533.V0001.amr', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 15:21:18', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_file` VALUES ('109', '45519313371137', '453963904884672484', '2459', 'Medical.txt', 'pm6WyjvNEeiglpGuDFzP_RKfrz29XM9PBQdhxcc8xmOEn3jC', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/a66e96c0-3bcd-11e8-a19a-f399e2ccdf5e', '1523330954650.V0001.amr', 'a93b63352a92e74f675631ede70a84ae', '2018-04-09 16:11:48', '0', '2018-04-09 18:00:00');
INSERT INTO `im_msg_file` VALUES ('110', '45519313371137', '453974674074765340', '2459', 'Medical.txt', 'fPV3SjvTEeiTG-UKzhgWHedYtY-JTqk38LgI2HYzO_N1klh_', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/7cf57740-3bd3-11e8-9dfd-c96d02b8992d', '1523330958840.V0001.amr', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 16:53:35', '0', '2018-04-09 18:00:01');
INSERT INTO `im_msg_file` VALUES ('111', '45519313371137', '453974757063264284', '2459', 'Medical.txt', 'iHskejvTEeibYoG1L0l_v7fMzw0Wxj7Fy79oKec5Hn3Srhj6', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/887b2470-3bd3-11e8-9aae-59403626fd46', '1523330953248.V0001.amr', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 16:53:54', '0', '2018-04-09 18:00:01');
INSERT INTO `im_msg_file` VALUES ('112', '45519313371137', '453974784632424476', '2459', 'Medical.txt', 'jEye2jvTEeiVrKerLlWdBhUNjfwRLDR22y81ulKpID095QPQ', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/8c4c9ed0-3bd3-11e8-bf88-adfe1853a225', '1523330953273.V0001.amr', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 16:54:01', '0', '2018-04-09 18:00:01');
INSERT INTO `im_msg_file` VALUES ('113', '45519313371137', '453974812713289756', '2459', 'Medical.txt', 'kDVxyjvTEeiQHWd-JMJdrU71F7ZtnA2K2a8GnnP9Vthfgvvo', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/903571c0-3bd3-11e8-81b5-4d31f62b50bd', '1523330955673.V0001.amr', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 16:54:07', '0', '2018-04-09 18:00:01');
INSERT INTO `im_msg_file` VALUES ('114', '45519313371137', '454000077564807184', '2459', 'Medical.txt', 'Qmcy6jvhEeiKO2tHdbaqUjPuVKoLSjBGURA_NeYII6uLhn71', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/426732e0-3be1-11e8-bea4-b58e256991e7', '1523330954085.V0001.amr', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 18:32:10', '0', '2018-04-09 20:00:01');
INSERT INTO `im_msg_file` VALUES ('115', '45519313371137', '454250664818640940', '2459', 'Medical.txt', 'Gl9cmjxpEeiQr1lEL6fgy_JUATxLfWVPJCpLHZ-T9VdFvdm2', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/1a5f5c90-3c69-11e8-843b-d3415a22dd47', null, '163c372a20fb60930fbe4a57d5388adb', '2018-04-10 10:44:34', '0', '2018-04-10 12:00:00');
INSERT INTO `im_msg_file` VALUES ('117', '45442719088641', '454298688374704084', '55689', 'image', 'IvPeejyDEeiN16NGGGY6tSWaGyA5m_4ocsfSWwZQT8BGZ728', '{\"width\":450.0,\"height\":801.0}', null, null, null, '1523343607980.V0001.thumbnail', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/22f3de70-3c83-11e8-bcce-3d1a24d7449a', '1523343610741.V0001.thumbnail', '163c372a20fb60930fbe4a57d5388adb', '2018-04-10 13:50:56', '0', '2018-04-10 15:00:01');
INSERT INTO `im_msg_file` VALUES ('118', '45442719088641', '454298716828862420', '82840', 'image', 'JuswWjyDEeiQTyV1PLSjQxdE1wsXlmqZ0ObxniL4R5ZkLjqT', '{\"width\":801.0,\"height\":450.0}', null, null, null, '1523343608234.V0001.thumbnail', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/26eb3050-3c83-11e8-a1f7-79d51dd1d1c1', '1523343605168.V0001.thumbnail', '163c372a20fb60930fbe4a57d5388adb', '2018-04-10 13:51:02', '0', '2018-04-10 15:00:02');
INSERT INTO `im_msg_file` VALUES ('119', '45442719088641', '454298748458108884', '2459', 'Medical.txt', 'K1CGSjyDEei1zHfVtsNuji9ExjtTi0Xarb4HZxulaxDY6NRF', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/2b508640-3c83-11e8-b1ab-23e136e9af21', '1523343611079.V0001.amr', '163c372a20fb60930fbe4a57d5388adb', '2018-04-10 13:51:10', '0', '2018-04-10 15:00:02');
INSERT INTO `im_msg_file` VALUES ('120', '45442719088641', '454604796238759956', '149077', 'image', 'E_Wn6j0pEeibda3uIs48n8PXtRuxdQPHPOOrjsZESDIZ0EtI', '{\"width\":1152.0,\"height\":648.0}', null, null, null, '1523415605433.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/13f5a7e0-3d29-11e8-9093-2519df949180', '1523415609138.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-11 09:38:47', '0', '2018-04-11 11:00:00');
INSERT INTO `im_msg_file` VALUES ('121', '45442719088641', '454604862018029588', '3814', 'audio', 'HRozmj0pEeiFw7UttmB3VmcNCrETQXwtVmJ9UqyLrj2or1OC', null, '2', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/1d1a3390-3d29-11e8-9ffc-0318c35866e5', '1523415610214.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-11 09:39:02', '0', '2018-04-11 11:00:01');
INSERT INTO `im_msg_file` VALUES ('122', '45442719088641', '454604915927418900', '16710', 'audio', 'JI7saj0pEeiVjvUmPIBnhZ5A4dyotExAtsfqJOzZFUhAPGT6', null, '10', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/248eec60-3d29-11e8-908c-93468fa80bce', '1523415608580.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-11 09:39:15', '0', '2018-04-11 11:00:01');
INSERT INTO `im_msg_file` VALUES ('123', '45442719088641', '454604961670498324', '11110', 'audio', 'KvCumj0pEeiv9nNkgxWLZ-snmN1HqJzguC67Q7_ZzCJnrHwE', null, '7', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/2af0ae90-3d29-11e8-a242-f188b2a066d4', '1523415603968.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-11 09:39:25', '0', '2018-04-11 11:00:01');
INSERT INTO `im_msg_file` VALUES ('124', '45442719088641', '454605004389484564', '9734', 'audio', 'MNvhOj0pEeidHG_pVxWtyMLumg2iJEyEtAOeU0ox_ROCrKkJ', null, '6', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/30dbe130-3d29-11e8-9da4-c75744827872', '1523415604211.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-11 09:39:35', '0', '2018-04-11 11:00:01');
INSERT INTO `im_msg_file` VALUES ('125', '45442719088641', '454605180889991188', '5478', 'audio', 'SUTPyj0pEei-1o9vvfmFPF15wEtX69zrquoFHWssZrZa67bX', null, '3', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/4944cfc0-3d29-11e8-822c-63fc53116f6d', '1523415602552.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-11 09:40:16', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_file` VALUES ('126', '45442719088641', '454609538507606044', '3014', 'audio', 'phgESj0rEeiQ1Yew6ZzQWGMESq3IQCp5rcfm00pUkuNPma6c', null, '1', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/a6180440-3d2b-11e8-ac85-871c05036636', '1523415611490.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-11 09:57:11', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_file` VALUES ('127', '45442719088641', '454609745370679324', '149077', 'image', 'wsgSaj0rEeiLI5Ptcw-Bzvd3i1EBkc8j-3G98sDuWQaHokL0', '{\"width\":1152.0,\"height\":648.0}', null, null, null, '1523415604574.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/c2c81260-3d2b-11e8-bf8e-57320e15df9b', '1523415605027.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-11 09:57:59', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_file` VALUES ('128', '45442719088641', '454609943476045852', '372823', 'image', '3i9z6j0rEeismJvI7DzsD60JQlClET7gvzQpmgXcEHA9JqqI', '{\"width\":1469.0,\"height\":1959.0}', null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/de2f73e0-3d2b-11e8-a83e-b12bc4b91b6c', null, '8df0a470b4506be254256154c637e09b', '2018-04-11 09:58:45', '0', '2018-04-11 17:03:02');
INSERT INTO `im_msg_file` VALUES ('399', '45442719088641', '454703823483570180', '149077', 'image', 'wr1b2j1eEeiTe_sKD0GWnYD9_r-pG0QJyFTOTLW8q6CiFrHr', '{\"width\":1152.0,\"height\":648.0}', null, null, null, '1523440807058.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/c2bd5bd0-3d5e-11e8-bacc-852d02090515', '1523440810542.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-11 16:03:03', '0', '2018-04-11 18:00:00');
INSERT INTO `im_msg_file` VALUES ('400', '45442719088641', '454703862910027780', '7590', 'audio', 'yDyGOj1eEeiubg0fELxOhMO6GxNypHtP-oSMjA0CqE5S3fts', null, '4', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/c83c8630-3d5e-11e8-b020-11def0e71d36', '1523440804850.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-11 16:03:13', '0', '2018-04-11 18:00:01');
INSERT INTO `im_msg_file` VALUES ('401', '45442719088641', '454703887639644164', '4966', 'audio', 'y5dxCj1eEeiYoccdrEbnXwGoiTYYu6kkE49flzT-8U9GaVYO', null, '3', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/cb977100-3d5e-11e8-a4fc-eb42fcb96c0f', '1523440805704.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-11 16:03:18', '0', '2018-04-11 18:00:01');
INSERT INTO `im_msg_file` VALUES ('402', '46074988396545', '454998015019583476', '357697', 'Screenshot_20180412-102920.jpg', 'Pf2iaj3-EeiMVpEUysfYQVaIknX1gXXpMHbGH-cECo2E0pYq', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/3dfda260-3dfe-11e8-9605-75d4b29ec0e8', '1523509206343.V0001', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-12 11:04:40', '0', '2018-04-12 13:00:01');
INSERT INTO `im_msg_file` VALUES ('403', '46074988396545', '455002028624578548', '7006750', 'image_1516711362863-1858696918.jpg', 'aqcgqj4AEeiMyKWy-Q31imBDXgQQ5CAJZAZRV_viiUT1UWFo', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/6aa720a0-3e00-11e8-a765-a1a301f6ae15', '1523509212422.V0001', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-12 11:20:15', '0', '2018-04-12 13:00:03');
INSERT INTO `im_msg_file` VALUES ('404', '46074988396545', '455002914943928340', '8101', 'user_icon_down.jpg', '5goxuj4AEeiQbRPWjzI16cxBsI4DPgSD_sgiGYFzNqcVuP9_', '{\"width\":100.0,\"height\":100.0}', null, null, null, '1523509209168.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/e60a31b0-3e00-11e8-970e-e7b23f01fb09', '1523509213355.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-12 11:23:41', '0', '2018-04-12 13:00:04');
INSERT INTO `im_msg_file` VALUES ('405', '46074988396545', '455002959407745044', '8101', 'user_icon_down.jpg', '7DjV-j4AEeiyamW1qEoINzU7rX-T4ew9w7AOQbzslpM52Uar', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/ec38d5f0-3e00-11e8-9144-431009f9980d', '1523509211810.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-12 11:23:51', '0', '2018-04-12 13:00:04');
INSERT INTO `im_msg_file` VALUES ('406', '46074988396545', '455003016513194004', '8101', 'user_icon_down.jpg', '9CMM6j4AEeivWEWxhJxCjlqiabStry7Uq7M-7t0ofr0iMkkt', '{\"width\":100.0,\"height\":100.0}', null, null, null, '1523509205970.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/f4230ce0-3e00-11e8-a053-b34bb80f6810', '1523509208197.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-12 11:24:05', '0', '2018-04-12 13:00:04');
INSERT INTO `im_msg_file` VALUES ('407', '46074988396545', '455003030853523476', '8101', 'user_icon_down.jpg', '9iI4Sj4AEeiko09fKuasBmFKlnoCSkY0YH5jjJtTAtqOknK4', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/f6223840-3e00-11e8-b906-e3c42a3ec305', '1523509207991.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-12 11:24:08', '0', '2018-04-12 13:00:04');
INSERT INTO `im_msg_file` VALUES ('408', '45442719088641', '455043038813620232', '2726', 'audio', 'plhW2j4WEeiOWfl6xyzGtfP9DfPhgmr82t_UBQxRL04iQEz6', null, '1', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/a65856d0-3e16-11e8-b9c4-3bbeb45698e5', '1523516409209.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-12 13:59:23', '0', '2018-04-12 15:00:01');
INSERT INTO `im_msg_file` VALUES ('409', '45442719088641', '455043065959155720', '149077', 'image', 'qhjhSj4WEeiqohMNo1scqeh_m683D8c0AOgNJjYD5R5xaLZm', '{\"width\":1152.0,\"height\":648.0}', null, null, null, '1523516410415.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/aa18e140-3e16-11e8-b7bd-d9c1c88bbd52', '1523516407034.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-12 13:59:29', '0', '2018-04-12 15:00:01');
INSERT INTO `im_msg_file` VALUES ('410', '45442719088641', '455047054964561940', '149077', 'image', '060JOj4YEeimAM_pKz4wXcrh4L4pEJFC7wSvAbueL2B7_I2u', '{\"width\":1152.0,\"height\":648.0}', null, null, null, '1523520006926.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/d3ad0930-3e18-11e8-987c-673887633c56', '1523520002540.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-12 14:14:58', '0', '2018-04-12 16:00:00');
INSERT INTO `im_msg_file` VALUES ('411', '45442719088641', '455047180617517076', '9286', 'audio', '5SZNej4YEeiLarEZ184h2UZsxK9YrSOFC5wQEy_p6P3dgCzx', null, '5', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/e5264d70-3e18-11e8-8fe1-f180dc2b7c75', '1523520001835.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-12 14:15:27', '0', '2018-04-12 16:00:01');
INSERT INTO `im_msg_file` VALUES ('412', '45442719088641', '455047197336012820', '1926', 'audio', '52kRij4YEeiGtQ9s0NIdz9pXTFCruD0Ug8RPUaUKfKRJQoEr', null, '1', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/e7691180-3e18-11e8-8155-43cccd655e6f', '1523520010681.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-12 14:15:31', '0', '2018-04-12 16:00:01');
INSERT INTO `im_msg_file` VALUES ('413', '46074988396545', '455048851405932572', '6281206', 'image1670108235712569435.jpg', 'zPy8aj4ZEeikBgXhh1LkbuqWS8IvBnyLypE4OTGAVgrN-Fn_', '{\"width\":691.0,\"height\":921.0}', null, null, null, '1523520003601.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/ccfcbc60-3e19-11e8-93b6-f9b3fdb8ded3', '1523520010247.V0001', 'a4160ea1f57c0ea1c6c08800f3f7e882', '2018-04-12 14:21:56', '0', '2018-04-12 16:00:02');
INSERT INTO `im_msg_file` VALUES ('414', '46074988396545', '455048884322830364', '1631', 'a4160ea1f57c0ea1c6c08800f3f7e88220180412T142200.amr', '0ZP3yj4ZEeiOrSGgIFq8ON5ptJfP-ttV-8oieYC2_LIWD5n3', null, '2', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/d193f7c0-3e19-11e8-82f7-b9742fda8aee', '1523520008119.V0001', 'a4160ea1f57c0ea1c6c08800f3f7e882', '2018-04-12 14:22:04', '0', '2018-04-12 16:00:02');
INSERT INTO `im_msg_file` VALUES ('415', '46074988396545', '455048952987781100', '357697', 'Screenshot_20180412-102920.jpg', '2w5Emj4ZEeiYRFtJJ1AE45kOoVXZbAPhmzgb5DWmwn2mtmWu', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/db0e4490-3e19-11e8-895c-5b55cefff8df', '1523520010619.V0001', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-12 14:22:20', '0', '2018-04-12 16:00:02');
INSERT INTO `im_msg_file` VALUES ('416', '46074988396545', '455048999586498540', '166296', 'Screenshot_20180404-001306.jpg', '4YRSGj4ZEeiAjb2o0RnwxadFn8He54jO4cE2DZBNmzK02CEK', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/e1845210-3e19-11e8-8fc7-113f25dcfcfa', '1523520003963.V0001', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-12 14:22:31', '0', '2018-04-12 16:00:03');
INSERT INTO `im_msg_file` VALUES ('417', '46074988396545', '455049007853471772', '1074478', 'Screenshot_20180215-224548.jpg', '4qZj6j4ZEei-6rGwZY39REViWKpHvlzJBDc9gDTIZ-QIkM6d', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/e2a663e0-3e19-11e8-9c77-5b23cb364675', '1523520014763.V0001', 'a4160ea1f57c0ea1c6c08800f3f7e882', '2018-04-12 14:22:33', '0', '2018-04-12 16:00:04');
INSERT INTO `im_msg_file` VALUES ('418', '46074988396545', '455049127789594604', '3195', '6b87e5388bbc0eab7064a82df9630b87.png', '814s6j4ZEeiET2Eo7TdRC1bE5xyIc7ydodV6cIThI9-HMGqp', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/f35e2ce0-3e19-11e8-bacd-e5a450f48bca', '1523520011874.V0001', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-12 14:23:01', '0', '2018-04-12 16:00:06');
INSERT INTO `im_msg_file` VALUES ('419', '46074988396545', '455049892537042996', '149077', 'image', 'XXhYij4aEei_WTmGDzRf2P68_VbpnWY-5lb4j7FzMN52NtUk', '{\"width\":1152.0,\"height\":648.0}', null, null, null, '1523520011281.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/5d785880-3e1a-11e8-966d-d35dc0d106c1', '1523520007590.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-12 14:25:59', '0', '2018-04-12 16:00:06');
INSERT INTO `im_msg_file` VALUES ('420', '46074988396545', '455050077153527860', '3494', 'audio', 'dxrYij4aEeiEjDEOAl030nog3Ih4Bh5Oy7PRcpJIGCeRTEZJ', null, '2', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/771ad880-3e1a-11e8-ae36-451525aaa25a', '1523520009033.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-12 14:26:42', '0', '2018-04-12 16:00:07');
INSERT INTO `im_msg_file` VALUES ('421', '46074988396545', '455050096283748404', '3718', 'audio', 'ecda6j4aEeiQ2QdsVQ6Mw58RH8BdP3Zxwx_RKIp0XuVg8nrd', null, '2', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/79c75ae0-3e1a-11e8-bf2d-81684debccbe', '1523520008381.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-12 14:26:46', '0', '2018-04-12 16:00:07');
INSERT INTO `im_msg_file` VALUES ('422', '46074988396545', '455050167813408820', '149077', 'image', 'g682mj4aEeiZj78C3c3JWxef-f_vA-5Hi9h62A5XPJMsTRbB', '{\"width\":1152.0,\"height\":648.0}', null, null, null, '1523520015456.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/83af3690-3e1a-11e8-be7c-fb629ea1e328', '1523520014971.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-12 14:27:03', '0', '2018-04-12 16:00:07');
INSERT INTO `im_msg_file` VALUES ('423', '46074988396545', '455050286247970868', '308050', 'image', 'lAgWuj4aEeiO6uXmAWfO-OzbxgSsUzbGzA-tm7VWgV7TUGvH', '{\"width\":1469.0,\"height\":1959.0}', null, null, null, '1523520016600.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/940816b0-3e1a-11e8-b526-6f778ff3e010', '1523520009470.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-12 14:27:31', '0', '2018-04-12 16:00:08');
INSERT INTO `im_msg_file` VALUES ('424', '46074988396545', '455050308028991540', '3046', 'audio', 'lyZtuj4aEei3SsdvaXZ02ZwZCNf_N5no9ykgrzMlOuIOWUMI', null, '2', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/97266db0-3e1a-11e8-8760-51b0e910550b', '1523520012165.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-12 14:27:36', '0', '2018-04-12 16:00:08');
INSERT INTO `im_msg_file` VALUES ('425', '46363521908738', '456454192278538236', '357697', 'Screenshot_20180412-102920.jpg', 'oyhG-kETEeiKqA9TtRy446i4RFObSq7Lr89OlXzZm6_9avEB', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/a32846f0-4113-11e8-9a33-bf026b390cbd', '1523847610719.V0001', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-16 09:15:23', '0', '2018-04-16 11:00:01');
INSERT INTO `im_msg_file` VALUES ('426', '46074988396545', '456952819845433380', '46442', 'image', '8bD0KkIhEeiilVtUBB42rwME0hbCW_Sd3YfaMQIQO-Wpx2Ig', '{\"width\":450.0,\"height\":801.0}', null, null, null, '1523962806576.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/f1b0f420-4221-11e8-8293-df3c5eb9f8ad', '1523962807574.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-17 17:30:19', '0', '2018-04-17 19:00:04');
INSERT INTO `im_msg_file` VALUES ('427', '46074988396545', '456952872202930212', '2054', 'audio', '-PkeukIhEeigYUek8cQh8nOah2aXUBnHaM6dw9LQ5iPztikA', null, '1', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/f8f91eb0-4221-11e8-aa71-9fe3f5db0218', '1523962808111.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-17 17:30:31', '0', '2018-04-17 19:00:05');
INSERT INTO `im_msg_file` VALUES ('428', '46074988396545', '456952896215320612', '4998', 'audio', '_E5kOkIhEeixTelLmA27wCnmATvMkRTmJQGcyXU9EB_h5C8a', null, '3', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/fc4e6430-4221-11e8-b88d-af0db2fd1020', '1523962804939.V0001', '8df0a470b4506be254256154c637e09b', '2018-04-17 17:30:36', '0', '2018-04-17 19:00:05');
INSERT INTO `im_msg_file` VALUES ('429', '46074988396545', '456960606679861204', '241965', 'image-771856197.jpg', 'KliZCkImEeie-Xd8rDmnNa4NOUIl_oTISYSm9eSVLEbbpzQT', '{\"width\":100.0,\"height\":100.0}', null, null, null, '1523966409543.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/2a589900-4226-11e8-b7ff-e12db19797d3', '1523966404486.V0001', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-17 18:00:32', '0', '2018-04-17 20:00:01');
INSERT INTO `im_msg_file` VALUES ('430', '46363521908738', '457199359805622260', '241965', 'image889575755.jpg', 'l_ZBekKnEei22jdPuRIhtnKX7_DqdHU4jHTBU5Ks2QHcdU7g', '{\"width\":691.0,\"height\":921.0}', null, null, null, '1524020404983.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/97f64170-42a7-11e8-b967-fb07b2cbda64', '1524020404947.V0001', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-18 09:27:01', '0', '2018-04-18 11:00:00');
INSERT INTO `im_msg_file` VALUES ('431', '46363521908738', '457199377568499700', '43609', '5.jpg', 'mnQSukKnEeij1-WtzHRwEwAsy5dp-vZGkqLjPbdirwgIak9L', '{\"width\":450.0,\"height\":801.0}', null, null, null, '1524020407242.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/9a7412b0-42a7-11e8-abc6-451015855095', '1524020409103.V0001', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-18 09:27:05', '0', '2018-04-18 11:00:01');
INSERT INTO `im_msg_file` VALUES ('432', '46363521908738', '457199392068208628', '294852', 'image-682316933.jpg', 'nHeD2kKnEeiyQvP-IkFEmDw5HsNrBmgwrfOViqp8Rw-Eqk-I', '{\"width\":735.0,\"height\":980.0}', null, null, null, '1524020410192.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/9c7783d0-42a7-11e8-8137-7599ac55b0a2', '1524020407284.V0001', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-18 09:27:08', '0', '2018-04-18 11:00:01');
INSERT INTO `im_msg_file` VALUES ('433', '46363521908738', '457199675485718516', '8101', 'user_icon_down.jpg', 'w9E3CkKnEeisGp-oOBpcL_PYIQFkaegHYCXbsq15k8ouYFfV', '{\"width\":100.0,\"height\":100.0}', null, null, null, '1524020407291.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/c3d13700-42a7-11e8-a131-dd39f98148a5', '1524020405373.V0001', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-18 09:28:14', '0', '2018-04-18 11:00:02');
INSERT INTO `im_msg_file` VALUES ('434', '46363521908738', '457314342048630744', '3012407', 'image123670464.jpg', '7PnUqkLlEeiLAEPhS6AnBOmdzafKggQ0xad5TUOA0LIkVnnk', '{\"width\":648.0,\"height\":1152.0}', null, null, null, '1524045601006.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/ecf9d4a0-42e5-11e8-b1ca-f10a87d5d115', '1524045606378.V0001', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-18 16:53:12', '0', '2018-04-18 18:00:00');
INSERT INTO `im_msg_file` VALUES ('435', '46363521908738', '457314358293170136', '141270', 'image-1220647105.jpg', '7z1cCkLlEeivJanNA5jV8RBymm69yD_rgbI8zKeXBpRICfD0', '{\"width\":576.0,\"height\":324.0}', null, null, null, '1524045602452.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/ef3d5c00-42e5-11e8-bb71-3fd103de981e', '1524045607717.V0001', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-18 16:53:16', '0', '2018-04-18 18:00:01');
INSERT INTO `im_msg_file` VALUES ('436', '46363521908738', '457314395630864344', '141270', '15.jpg', '9GcTakLlEei_rD1-pNC67PIB9uYhWKm_WY-GQznW2AhxHxO9', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/f4671360-42e5-11e8-a2d2-39d1b0adc4be', '1524045607871.V0001', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-18 16:53:25', '0', '2018-04-18 18:00:01');
INSERT INTO `im_msg_file` VALUES ('437', '46898589270017', '457670344623261668', '5636478', 'image-1695673946.jpg', '6j6zmkOmEeiX_wl2PLKaUW1CVNBR8K0gW-XnLzezez8akCWx', '{\"width\":648.0,\"height\":1152.0}', null, null, null, '1524128402014.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/ea3eb390-43a6-11e8-a1ec-abfcd4ca71b0', '1524128407169.V0001', 'a93b63352a92e74f675631ede70a84ae', '2018-04-19 15:54:40', '0', '2018-04-19 17:00:00');
INSERT INTO `im_msg_file` VALUES ('438', '46898589270017', '457670381742852068', '4742', 'a93b63352a92e74f675631ede70a84ae20180419T155441.amr', '723pOkOmEei8i9EygxYHYDeiuVeuLlj-mv5diqNEFaoU8QAA', null, '6', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/ef6de930-43a6-11e8-9fbc-390ed01b2fd7', '1524128404548.V0001', 'a93b63352a92e74f675631ede70a84ae', '2018-04-19 15:54:49', '0', '2018-04-19 17:00:01');
INSERT INTO `im_msg_file` VALUES ('439', '46905353633793', '457739940873111576', '3058680', 'image-1449031610.jpg', 'pJl1ekPMEeiSpiHcVPvUw8od0IRgOOZU6gxjhFj3NAgw_5mp', '{\"width\":648.0,\"height\":1152.0}', null, null, null, '1524146404195.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/a4997570-43cc-11e8-8c44-3dabb343b456', '1524146406491.V0001', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-19 20:24:45', '0', '2018-04-19 22:00:00');
INSERT INTO `im_msg_file` VALUES ('440', '46905353633793', '457739961085462552', '241372', 'image1500015760.jpg', 'p3ut2kPMEeiEva3f6ce-JtEZD0s12vf4xJr8lLasHHIF9M3Q', '{\"width\":691.0,\"height\":921.0}', null, null, null, '1524146408094.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/a77badd0-43cc-11e8-80f9-3f38075e9520', '1524146408138.V0001', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-19 20:24:49', '0', '2018-04-19 22:00:01');
INSERT INTO `im_msg_file` VALUES ('441', '46905353633793', '457739992312055832', '2662', '8fd88517205f3ebdd72bc2912876be0c20180419T202450.amr', 'q9RZmkPMEei0WJHFpwaDPSVhppwOwFDCwo2670hbH_57LW_d', null, '3', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/abd45990-43cc-11e8-93ed-5b6943459975', '1524146411383.V0001', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-19 20:24:57', '0', '2018-04-19 22:00:02');
INSERT INTO `im_msg_file` VALUES ('442', '46916605902849', '457939134581835772', '2630', '8fd88517205f3ebdd72bc2912876be0c20180420T091738.amr', 'oF-kSkQ4EeibYE1OP2xthnTK5sPb7o0st13CCJRQjgOc4_G_', null, '3', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/a05fa440-4438-11e8-baa0-53ab7451384a', '1524193203347.V0001', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-20 09:17:43', '0', '2018-04-20 11:00:00');
INSERT INTO `im_msg_file` VALUES ('443', '46363521908738', '457955257880676348', '241372', 'image1636430501.jpg', 'XehTukRBEeizXT8tWZKFNg624vLszOa8x20d6_iDKXIvzfHq', '{\"width\":691.0,\"height\":921.0}', null, null, null, '1524196802205.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/5de853b0-4441-11e8-91b2-f52ed8e14b1e', '1524196801760.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 10:20:17', '0', '2018-04-20 12:00:01');
INSERT INTO `im_msg_file` VALUES ('444', '46363521908738', '457955308078106620', '241372', '8.jpg', 'ZN4_mkRBEeivZq_Sa5NH8vt--hO57FgsUSezWpX7R6r1iCpb', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/64de3f90-4441-11e8-ae85-31cf3a64f8a2', '1524196809064.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 10:20:29', '0', '2018-04-20 12:00:02');
INSERT INTO `im_msg_file` VALUES ('445', '46363521908738', '457955342681114620', '141270', '15.jpg', 'aasw-kRBEeiekBlkNpBXz67F8cuFwrUAq38yPTH27FFMID4K', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/69ab30f0-4441-11e8-b10d-298fc854c569', '1524196804771.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 10:20:37', '0', '2018-04-20 12:00:02');
INSERT INTO `im_msg_file` VALUES ('446', '46363521908738', '457955375002421244', '1734', '80330a8e8a317d865f19ec894fe0006820180420T102040.amr', 'bi-AmkRBEeig_a9x40JC2GhMvMvuoY742XDVXb195PQyEERT', null, '2', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/6e2f8090-4441-11e8-ac2f-315cbfe68209', '1524196808491.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 10:20:44', '0', '2018-04-20 12:00:03');
INSERT INTO `im_msg_file` VALUES ('447', '46363521908738', '457955388248033276', '1270', '80330a8e8a317d865f19ec894fe0006820180420T102043.amr', 'cAdN2kRBEeilp396npxVAL9kY76LHVdUOkPoo2pUB5Ok7RUG', null, '1', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/70074dd0-4441-11e8-8121-71efe7113c8b', '1524196807489.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 10:20:47', '0', '2018-04-20 12:00:03');
INSERT INTO `im_msg_file` VALUES ('448', '46969908166658', '457962149596104700', '1910', '80330a8e8a317d865f19ec894fe0006820180420T104657.amr', 'GlbS2kRFEeiRLJWI-NjYsHavgxVvrrlNc6xZaehDLzygCWfi', null, '2', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/1a56d2d0-4445-11e8-99a2-630583a48562', '1524196810636.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 10:47:02', '0', '2018-04-20 12:00:03');
INSERT INTO `im_msg_file` VALUES ('449', '46969908166658', '457962163013683196', '1446', '80330a8e8a317d865f19ec894fe0006820180420T104701.amr', 'HDRFakRFEei3b50AOBKifrn59b8BDoQpg09c3vA6zPqkzaGF', null, '1', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/1c344560-4445-11e8-bac7-dbb79ae80e77', '1524196810002.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 10:47:05', '0', '2018-04-20 12:00:03');
INSERT INTO `im_msg_file` VALUES ('450', '46969908166658', '457962178121566204', '2086', '80330a8e8a317d865f19ec894fe0006820180420T104704.amr', 'Hk2vikRFEeiuR3fC64vijZPdgusKVDTSRb1yOoxK1Ssg24S9', null, '2', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/1e4daf80-4445-11e8-9ea1-b589aff22bf6', '1524196806232.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 10:47:08', '0', '2018-04-20 12:00:04');
INSERT INTO `im_msg_file` VALUES ('451', '46969908166658', '457962195200772092', '1238', '80330a8e8a317d865f19ec894fe0006820180420T104709.amr', 'IK40ykRFEeiTg62peGQ6NpmtUfhjp8F6QfaZfifNeeGSqag8', null, '1', null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/20ae34c0-4445-11e8-864a-6f314417f47b', '1524196813462.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 10:47:12', '0', '2018-04-20 12:00:04');
INSERT INTO `im_msg_file` VALUES ('452', '46969953255425', '457962316969805820', '241372', 'image1429322269.jpg', 'MYvVSkRFEeiKEP296THOUXsQBtvnooTWTiMsc8geS7hXsdT_', '{\"width\":691.0,\"height\":921.0}', null, null, null, '1524196806508.V0001', 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/318bd540-4445-11e8-ab82-b315aff8ecec', '1524196807046.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 10:47:41', '0', '2018-04-20 12:00:04');
INSERT INTO `im_msg_file` VALUES ('453', '46969954304002', '457962677164050428', '110556', '1.jpg', 'Y4eMakRFEeiuVH04z40HsdPNjo0DVy-WlbU1tnxFiG90_lB-', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/63878c60-4445-11e8-9d8c-09cf1250e8ca', '1524196808668.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 10:49:04', '0', '2018-04-20 12:00:05');
INSERT INTO `im_msg_file` VALUES ('454', '46969954304002', '457962687679170556', '241372', '8.jpg', 'ZQBJukRFEeijDResKo_puUaRVN-ULq3MFhcgnyV79G_TgAqM', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/650049b0-4445-11e8-a93b-5d439e06dc01', '1524196807519.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 10:49:07', '0', '2018-04-20 12:00:05');
INSERT INTO `im_msg_file` VALUES ('455', '46969954304002', '457962695820318716', '37725', '7.jpg', 'ZiVBukRFEeip6uEOeHx3QYWiGu22n2ZxgOqLiOrd-OUpBwY8', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/662541b0-4445-11e8-9266-71beb5af3413', '1524196810725.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 10:49:09', '0', '2018-04-20 12:00:05');
INSERT INTO `im_msg_file` VALUES ('456', '46969954304002', '457962709586020348', '37213', '0.jpg', 'aA07mkRFEeieuJeDl-Xb86vVZmEX7xjqYTCj_TBTIUEtJayE', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/680d3b90-4445-11e8-acc1-e5450a09796a', '1524196813466.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 10:49:12', '0', '2018-04-20 12:00:06');
INSERT INTO `im_msg_file` VALUES ('457', '46969954304002', '457962719505549308', '240973', '2.jpg', 'aW1AykRFEeirMq8XCPybDojISgubbsvBjoCO-rGJQp065k-Q', null, null, null, null, null, 'https://a1.easemob.com/1117180227146208/mediacalchat/chatfiles/696d40c0-4445-11e8-9c85-5f36f2ee5705', '1524196810564.V0001', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 10:49:14', '0', '2018-04-20 12:00:06');

-- ----------------------------
-- Table structure for im_msg_private
-- ----------------------------
DROP TABLE IF EXISTS `im_msg_private`;
CREATE TABLE `im_msg_private` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `send_account_id` varchar(20) NOT NULL COMMENT '发送账户ID',
  `recv_account_id` varchar(20) NOT NULL COMMENT '接收账户ID',
  `send_info` varchar(128) NOT NULL COMMENT '消息内容',
  `recv_status` tinyint(2) NOT NULL COMMENT '接收状态',
  `community_id` varchar(20) NOT NULL COMMENT '群组ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im_msg_private
-- ----------------------------

-- ----------------------------
-- Table structure for im_msg_send
-- ----------------------------
DROP TABLE IF EXISTS `im_msg_send`;
CREATE TABLE `im_msg_send` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `community_id` varchar(32) NOT NULL COMMENT '群组ID',
  `message_id` varchar(32) DEFAULT NULL COMMENT '消息ID',
  `message_detail` varchar(1000) DEFAULT NULL COMMENT '消息内容',
  `message_type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '消息类型（1：文字 2：图片 3：地址 4：语音 5：视频 6：文件）',
  `send_phone` varchar(32) NOT NULL COMMENT '发送账户ID',
  `recv_phone` varchar(32) DEFAULT NULL COMMENT '接收账户ID',
  `send_type` tinyint(2) DEFAULT NULL COMMENT '发送类型（1:群发 2:组发 3:密聊）',
  `send_time` timestamp NULL DEFAULT NULL COMMENT '发送时间',
  `addr` varchar(100) DEFAULT NULL COMMENT '地址',
  `lat` varchar(20) DEFAULT NULL COMMENT '纬度',
  `lng` varchar(20) DEFAULT NULL COMMENT '经度',
  `direction` varchar(16) DEFAULT NULL,
  `ext` varchar(256) DEFAULT NULL COMMENT '扩展字段，json字符串',
  `creator` varchar(32) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1317 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im_msg_send
-- ----------------------------
INSERT INTO `im_msg_send` VALUES ('166', '45374776606721', '451687169090652160', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45374776606721', '1', '2018-04-03 12:56:54', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 14:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('167', '45374776606721', '451687516580349952', '[):]', '1', '163c372a20fb60930fbe4a57d5388adb', '45374776606721', '1', '2018-04-03 12:58:15', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 14:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('168', '45427704528897', '451688480955697168', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45427704528897', '1', '2018-04-03 13:01:59', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 15:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('169', '45357455179777', '451689235179636776', '放假放假', '1', '80330a8e8a317d865f19ec894fe00068', '45357455179777', '1', '2018-04-03 13:04:55', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-03 15:00:02', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('170', '45357455179777', '451689604538439696', 'T', '1', '163c372a20fb60930fbe4a57d5388adb', '45357455179777', '1', '2018-04-03 13:06:21', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 15:00:02', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('171', '45357455179777', '451694928464971788', 'wnj', '1', '80330a8e8a317d865f19ec894fe00068', '45357455179777', '1', '2018-04-03 13:27:00', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-03 15:00:02', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('172', '45357455179777', '451697336649779168', '回房间分', '1', '80330a8e8a317d865f19ec894fe00068', '45357455179777', '1', '2018-04-03 13:36:21', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-03 15:00:02', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('173', '45357455179777', '451697572529047560', '总', '1', '80330a8e8a317d865f19ec894fe00068', '45357455179777', '1', '2018-04-03 13:37:16', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-03 15:00:02', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('174', '45357455179777', '451697572784900104', '你好', '1', '80330a8e8a317d865f19ec894fe00068', '45357455179777', '1', '2018-04-03 13:37:16', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-03 15:00:02', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('175', '45357455179777', '451697595304118280', '你好', '1', '80330a8e8a317d865f19ec894fe00068', '45357455179777', '1', '2018-04-03 13:37:21', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-03 15:00:02', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('176', '45357455179777', '451697670424102920', null, '2', '80330a8e8a317d865f19ec894fe00068', '45357455179777', '1', '2018-04-03 13:37:39', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-03 15:00:02', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('177', '45357455179777', '451698175577688072', null, '4', '80330a8e8a317d865f19ec894fe00068', '45357455179777', '1', '2018-04-03 13:39:36', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-03 15:00:02', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('188', '45442719088641', '451708498019878868', '[):]', '1', '163c372a20fb60930fbe4a57d5388adb', '45442719088641', '1', '2018-04-03 14:19:40', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 16:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('189', '45442719088641', '451709678330578900', '[:-o]', '1', '163c372a20fb60930fbe4a57d5388adb', '45442719088641', '1', '2018-04-03 14:24:15', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 16:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('190', '45442719088641', '451710435436005332', '[:@]', '1', '163c372a20fb60930fbe4a57d5388adb', '45442719088641', '1', '2018-04-03 14:27:11', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 16:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('191', '45442719088641', '451711289291442232', '[(a)]', '1', '163c372a20fb60930fbe4a57d5388adb', '45442719088641', '1', '2018-04-03 14:30:30', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 16:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('192', '45442719088641', '451711334300518456', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45442719088641', '1', '2018-04-03 14:30:40', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 16:00:00', '0', '2018-04-08 14:33:14');
INSERT INTO `im_msg_send` VALUES ('193', '45442719088641', '451715295518656512', '[:@]', '1', '163c372a20fb60930fbe4a57d5388adb', '45442719088641', '1', '2018-04-03 14:46:03', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 16:00:00', '0', '2018-04-08 14:33:14');
INSERT INTO `im_msg_send` VALUES ('194', '45442719088641', '451716731979696144', '[:@]', '1', '163c372a20fb60930fbe4a57d5388adb', '45442719088641', '1', '2018-04-03 14:51:37', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 16:00:00', '0', '2018-04-08 14:33:14');
INSERT INTO `im_msg_send` VALUES ('195', '45442719088641', '451716816713025552', '医生', '1', '163c372a20fb60930fbe4a57d5388adb', '45442719088641', '1', '2018-04-03 14:51:57', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 16:00:01', '0', '2018-04-08 14:33:15');
INSERT INTO `im_msg_send` VALUES ('196', '45442719088641', '451716854587590664', 'Hdjdjdjjdj', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-03 14:52:06', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-03 16:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('197', '45442719088641', '451716879560476680', 'Gsutsitsitsitzigz', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-03 14:52:11', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-03 16:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('209', '45442719088641', '451720325214767132', 'Djdjdjdjj', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-03 15:05:34', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-03 17:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('210', '45444501667841', '451720704157554748', '比较近', '1', '80330a8e8a317d865f19ec894fe00068', '45444501667841', '1', '2018-04-03 15:07:02', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-03 17:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('211', '45445858525185', '451721701261051940', '[:s]', '1', 'a4160ea1f57c0ea1c6c08800f3f7e882', '45445858525185', '1', '2018-04-03 15:10:54', null, null, null, 'outgoing', '{}', 'a4160ea1f57c0ea1c6c08800f3f7e882', '2018-04-03 17:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('212', '45445858525185', '451721785738528748', null, '4', '163c372a20fb60930fbe4a57d5388adb', '45445858525185', '1', '2018-04-03 15:11:14', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 17:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('213', '45445858525185', '451723176959805476', null, '3', 'a4160ea1f57c0ea1c6c08800f3f7e882', '45445858525185', '1', '2018-04-03 15:16:38', '南京西路1717号', '31.221841577978996', '121.44500236502718', 'outgoing', '{}', 'a4160ea1f57c0ea1c6c08800f3f7e882', '2018-04-03 17:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('214', '45444501667841', '451723653046863860', '古巨基', '1', '80330a8e8a317d865f19ec894fe00068', '45444501667841', '1', '2018-04-03 15:18:28', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-03 17:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('215', '45445858525185', '451724080807151652', '[(a)]', '1', 'a4160ea1f57c0ea1c6c08800f3f7e882', '45445858525185', '1', '2018-04-03 15:20:08', null, null, null, 'outgoing', '{}', 'a4160ea1f57c0ea1c6c08800f3f7e882', '2018-04-03 17:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('216', '45445858525185', '451724152341006376', null, '4', '80330a8e8a317d865f19ec894fe00068', '45445858525185', '1', '2018-04-03 15:20:25', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-03 17:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('217', '45445858525185', '451724187376027628', '风格', '1', '163c372a20fb60930fbe4a57d5388adb', '45445858525185', '1', '2018-04-03 15:20:33', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 17:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('218', '45442719088641', '451728280685380704', '欢迎使用永慈系统', '1', 'fa9cd81b13de27838a450675cabe4de2', '45442719088641', '1', '2018-04-03 15:36:26', null, null, null, 'outgoing', 'null', 'fa9cd81b13de27838a450675cabe4de2', '2018-04-03 17:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('219', '45442719088641', '451728593454634068', '感谢使用永慈APP', '1', 'fa9cd81b13de27838a450675cabe4de2', '45442719088641', '1', '2018-04-03 15:37:39', null, null, null, 'outgoing', 'null', 'fa9cd81b13de27838a450675cabe4de2', '2018-04-03 17:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('220', '45442719088641', '451732276145824852', '欢迎使用永慈系统', '1', 'fa9cd81b13de27838a450675cabe4de2', '45442719088641', '1', '2018-04-03 15:51:56', null, null, null, 'outgoing', 'null', 'fa9cd81b13de27838a450675cabe4de2', '2018-04-03 17:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('221', '45442719088641', '451732466667885688', '欢迎使用永慈系统', '1', 'fa9cd81b13de27838a450675cabe4de2', '45442719088641', '1', '2018-04-03 15:52:40', null, null, null, 'outgoing', 'null', 'fa9cd81b13de27838a450675cabe4de2', '2018-04-03 17:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('222', '45442719088641', '451732535769039968', '欢迎使用永慈系统', '1', 'fa9cd81b13de27838a450675cabe4de2', '45442719088641', '1', '2018-04-03 15:52:57', null, null, null, 'outgoing', 'null', 'fa9cd81b13de27838a450675cabe4de2', '2018-04-03 17:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('223', '45442719088641', '451732802371589236', '感谢使用永慈APP', '1', 'fa9cd81b13de27838a450675cabe4de2', '45442719088641', '1', '2018-04-03 15:53:59', null, null, null, 'outgoing', 'null', 'fa9cd81b13de27838a450675cabe4de2', '2018-04-03 17:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('224', '45445858525185', '451719604465567724', ' ）哈哈哈好久', '1', '163c372a20fb60930fbe4a57d5388adb', '45445858525185', '1', '2018-04-03 15:02:46', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 17:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('240', '45442719088641', '451743951599174776', '感谢使用永慈APP', '1', 'fa9cd81b13de27838a450675cabe4de2', '45442719088641', '1', '2018-04-03 16:37:15', null, null, null, 'outgoing', 'null', 'fa9cd81b13de27838a450675cabe4de2', '2018-04-03 18:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('241', '45445858525185', '451759958971648020', null, '6', 'a4160ea1f57c0ea1c6c08800f3f7e882', '45445858525185', '1', '2018-04-03 17:39:22', null, null, null, 'outgoing', '{}', 'a4160ea1f57c0ea1c6c08800f3f7e882', '2018-04-03 19:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('242', '45442719088641', '451762060976457772', '[:-o]', '1', '163c372a20fb60930fbe4a57d5388adb', '45442719088641', '1', '2018-04-03 17:47:31', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 19:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('243', '45445858525185', '451762131633702956', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45445858525185', '1', '2018-04-03 17:47:47', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 19:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('244', '45445858525185', '451762148784212012', '[:p]', '1', '163c372a20fb60930fbe4a57d5388adb', '45445858525185', '1', '2018-04-03 17:47:51', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 19:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('245', '45445858525185', '451763297025263660', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45445858525185', '1', '2018-04-03 17:52:19', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 19:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('246', '45451932925953', '451771669405509640', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45451932925953', '1', '2018-04-03 18:24:48', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-03 20:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('247', '45466349797378', '451803965890234424', '风格', '1', 'a4160ea1f57c0ea1c6c08800f3f7e882', '45466349797378', '1', '2018-04-03 20:30:08', null, null, null, 'outgoing', '{}', 'a4160ea1f57c0ea1c6c08800f3f7e882', '2018-04-03 22:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('248', '45451932925953', '452008539750139860', '[):]', '1', '163c372a20fb60930fbe4a57d5388adb', '45451932925953', '1', '2018-04-04 09:43:59', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 11:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('249', '45451932925953', '452008563330516948', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45451932925953', '1', '2018-04-04 09:44:04', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 11:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('250', '45442719088641', '452009183617746920', '[({)]', '1', '163c372a20fb60930fbe4a57d5388adb', '45442719088641', '1', '2018-04-04 09:46:29', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 11:00:02', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('251', '45442719088641', '452012455736903656', '[:-o]', '1', '163c372a20fb60930fbe4a57d5388adb', '45442719088641', '1', '2018-04-04 09:59:11', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 11:00:02', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('252', '45451932925953', '452017400213145560', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45451932925953', '1', '2018-04-04 10:18:22', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 12:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('253', '45466349797378', '452019277155797056', '[):]', '1', '80330a8e8a317d865f19ec894fe00068', '45466349797378', '1', '2018-04-04 10:25:39', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-04 12:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('254', '45445858525185', '452021371136903196', null, '2', '163c372a20fb60930fbe4a57d5388adb', '45445858525185', '1', '2018-04-04 10:33:46', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 12:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('255', '45445858525185', '452021689211947036', null, '2', '163c372a20fb60930fbe4a57d5388adb', '45445858525185', '1', '2018-04-04 10:35:00', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 12:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('256', '45445858525185', '452021831721814044', null, '2', '163c372a20fb60930fbe4a57d5388adb', '45445858525185', '1', '2018-04-04 10:35:34', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 12:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('257', '45443974234113', '452022316461721616', '您', '1', '80330a8e8a317d865f19ec894fe00068', '45443974234113', '1', '2018-04-04 10:37:26', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-04 12:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('258', '45451932925953', '452033897643902952', null, '2', '163c372a20fb60930fbe4a57d5388adb', '45451932925953', '1', '2018-04-04 11:22:23', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 13:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('259', '45519313371137', '452036595202132000', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 11:32:51', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 13:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('260', '45445858525185', '452066138956761080', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45445858525185', '1', '2018-04-04 13:27:30', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 15:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('261', '45519313371137', '452068652741560340', '[(H)]', '1', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 13:37:15', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 15:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('262', '45519313371137', '452079893744715776', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 14:20:52', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 16:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('263', '45519313371137', '452081382999459840', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 14:26:39', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 16:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('264', '45519313371137', '452081394001119232', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 14:26:41', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 16:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('265', '45519064858625', '452083795382769652', 'gh', '1', '80330a8e8a317d865f19ec894fe00068', '45519064858625', '1', '2018-04-04 14:36:01', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-04 16:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('266', '45519313371137', '452104575130798092', '[):]', '1', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 15:56:39', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 17:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('267', '45519313371137', '452104800897599456', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 15:57:31', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 17:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('268', '45519313371137', '452104831281137632', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 15:57:38', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 17:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('269', '45519313371137', '452104856526653408', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 15:57:44', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 17:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('270', '45519313371137', '452111057628956708', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 16:21:48', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 18:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('271', '45519313371137', '452111070807459876', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 16:21:51', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 18:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('272', '45519313371137', '452111092231964708', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 16:21:56', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 18:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('273', '45519313371137', '452111124452608036', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 16:22:04', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 18:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('274', '45519313371137', '452111636296108068', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 16:24:03', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 18:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('275', '45519313371137', '452116135643449380', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 16:41:30', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 18:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('276', '45519313371137', '452118913002506220', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 16:52:17', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 18:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('277', '45519313371137', '452118924419401708', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 16:52:20', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 18:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('278', '45519313371137', '452119032087185388', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 16:52:45', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 18:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('279', '45519313371137', '452122803034916844', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 17:07:23', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 19:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('280', '45519313371137', '452123432906131480', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 17:09:49', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 19:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('281', '45519313371137', '452123523083667480', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 17:10:10', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 19:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('282', '45519313371137', '452123554503198744', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-04 17:10:18', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 19:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('283', '45451932925953', '452124014094059532', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45451932925953', '1', '2018-04-04 17:12:05', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-04 19:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('284', '45519064858625', '452128466230315052', '[):]', '1', '80330a8e8a317d865f19ec894fe00068', '45519064858625', '1', '2018-04-04 17:29:21', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-04 19:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('285', '45519064858625', '452128512136972332', null, '2', '80330a8e8a317d865f19ec894fe00068', '45519064858625', '1', '2018-04-04 17:29:32', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-04 19:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('286', '45519064858625', '452128530835179564', null, '3', '80330a8e8a317d865f19ec894fe00068', '45519064858625', '1', '2018-04-04 17:29:36', '中国上海市静安区延安中路1175号', '31.221892', '121.444982', 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-04 19:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('287', '45519064858625', '452128570370689068', null, '4', '80330a8e8a317d865f19ec894fe00068', '45519064858625', '1', '2018-04-04 17:29:46', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-04 19:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('288', '45442719088641', '453493405339617340', '[8o|][:p][8o|][8o|][:$][8o|][:$]', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 09:46:01', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 11:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('289', '45442719088641', '453493410041432124', '[8o|]', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 09:46:02', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 11:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('290', '45442719088641', '453493413996660796', '[:\'(]', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 09:46:03', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 11:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('291', '45442719088641', '453493431403026492', '儿子名字', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 09:46:07', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 11:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('292', '45442719088641', '453493454366836796', '测试', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 09:46:12', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 11:00:00', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('293', '45442719088641', '453493530032080956', null, '2', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 09:46:30', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 11:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('294', '45442719088641', '453493564253407292', null, '3', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 09:46:38', '南京西路1717号', '31.22183893239941', '121.4449937845733', 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 11:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('295', '45442719088641', '453493616950642748', null, '2', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 09:46:50', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 11:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('296', '45442719088641', '453493961785346108', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 09:48:11', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 11:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('297', '45442719088641', '453505566854088744', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 10:33:13', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 12:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('298', '45442719088641', '453505620763478056', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 10:33:25', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 12:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('299', '45442719088641', '453506848876660692', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 10:38:11', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 12:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('300', '45442719088641', '453506923023566804', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 10:38:28', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 12:00:01', '0', '2018-04-08 14:33:41');
INSERT INTO `im_msg_send` VALUES ('301', '45519313371137', '453569856004950048', '[):]', '1', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-08 14:42:41', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-08 16:00:01', '0', '2018-04-08 16:00:01');
INSERT INTO `im_msg_send` VALUES ('302', '45519313371137', '453569943716235296', null, '5', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-08 14:43:01', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-08 16:00:01', '0', '2018-04-08 16:00:01');
INSERT INTO `im_msg_send` VALUES ('303', '45519313371137', '453574356258261024', '[):]', '1', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-08 15:00:09', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-08 17:00:00', '0', '2018-04-08 17:00:00');
INSERT INTO `im_msg_send` VALUES ('304', '45519313371137', '453574666955524148', '[):]', '1', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-08 15:01:21', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-08 17:00:00', '0', '2018-04-08 17:00:00');
INSERT INTO `im_msg_send` VALUES ('305', '45442719088641', '453585478956877800', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 15:43:19', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 17:00:00', '0', '2018-04-08 17:00:00');
INSERT INTO `im_msg_send` VALUES ('306', '45442719088641', '453585504735070184', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 15:43:25', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 17:00:00', '0', '2018-04-08 17:00:00');
INSERT INTO `im_msg_send` VALUES ('307', '45891015737345', '453592206465304640', '开低点', '1', '80330a8e8a317d865f19ec894fe00068', '45891015737345', '1', '2018-04-08 16:09:25', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-08 18:00:01', '0', '2018-04-08 18:00:01');
INSERT INTO `im_msg_send` VALUES ('308', '45891015737345', '453592220830795840', '[:-o]', '1', '80330a8e8a317d865f19ec894fe00068', '45891015737345', '1', '2018-04-08 16:09:28', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-08 18:00:01', '0', '2018-04-08 18:00:01');
INSERT INTO `im_msg_send` VALUES ('309', '45891015737345', '453592240334309440', null, '4', '80330a8e8a317d865f19ec894fe00068', '45891015737345', '1', '2018-04-08 16:09:33', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-08 18:00:01', '0', '2018-04-08 18:00:01');
INSERT INTO `im_msg_send` VALUES ('310', '45891015737345', '453592275813926976', null, '2', '80330a8e8a317d865f19ec894fe00068', '45891015737345', '1', '2018-04-08 16:09:41', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-08 18:00:01', '0', '2018-04-08 18:00:01');
INSERT INTO `im_msg_send` VALUES ('311', '45519313371137', '453644550406146028', '[):]', '1', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-08 19:32:32', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-08 21:00:00', '0', '2018-04-08 21:00:00');
INSERT INTO `im_msg_send` VALUES ('312', '45519313371137', '453644600821680108', '[+o(]', '1', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-08 19:32:44', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-08 21:00:00', '0', '2018-04-08 21:00:00');
INSERT INTO `im_msg_send` VALUES ('313', '45519313371137', '453644845953583084', '[:-o]', '1', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-08 19:33:41', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-08 21:00:00', '0', '2018-04-08 21:00:00');
INSERT INTO `im_msg_send` VALUES ('314', '45519313371137', '453645083925817324', '[:-o]', '1', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-08 19:34:36', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-08 21:00:00', '0', '2018-04-08 21:00:00');
INSERT INTO `im_msg_send` VALUES ('315', '45442719088641', '453650120408303652', '你名字我', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 19:54:09', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 21:00:00', '0', '2018-04-08 21:00:00');
INSERT INTO `im_msg_send` VALUES ('316', '45442719088641', '453650128360704036', '狗狗名字一样', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 19:54:11', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 21:00:01', '0', '2018-04-08 21:00:01');
INSERT INTO `im_msg_send` VALUES ('317', '45442719088641', '453650140905867300', '破后花园wpwg', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 19:54:14', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 21:00:01', '0', '2018-04-08 21:00:01');
INSERT INTO `im_msg_send` VALUES ('318', '45442719088641', '453650152859633700', '[8o|][:-o][8o|][:s][8o|][:s][8o|]', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 19:54:17', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 21:00:01', '0', '2018-04-08 21:00:01');
INSERT INTO `im_msg_send` VALUES ('319', '45442719088641', '453650228411631652', null, '2', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 19:54:34', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 21:00:01', '0', '2018-04-08 21:00:01');
INSERT INTO `im_msg_send` VALUES ('320', '45530633797633', '453654243786622992', '[:@]', '1', '80330a8e8a317d865f19ec894fe00068', '45530633797633', '1', '2018-04-08 20:10:09', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-08 22:00:00', '0', '2018-04-08 22:00:00');
INSERT INTO `im_msg_send` VALUES ('321', '45442719088641', '453658662762711052', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 20:27:18', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 22:00:00', '0', '2018-04-08 22:00:00');
INSERT INTO `im_msg_send` VALUES ('322', '45442719088641', '453661157698308052', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-08 20:36:59', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-08 22:00:00', '0', '2018-04-08 22:00:00');
INSERT INTO `im_msg_send` VALUES ('323', '45442719088641', '453661847946528760', null, '2', '163c372a20fb60930fbe4a57d5388adb', '45442719088641', '1', '2018-04-08 20:39:40', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-08 22:00:00', '0', '2018-04-08 22:00:00');
INSERT INTO `im_msg_send` VALUES ('324', '45442719088641', '453864508562081800', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 09:46:05', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 11:00:01', '0', '2018-04-09 11:00:01');
INSERT INTO `im_msg_send` VALUES ('325', '45442719088641', '453864740335126536', null, '3', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 09:46:59', '南京西路1717号', '31.22177446649308', '121.44497123549282', 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 11:00:01', '0', '2018-04-09 11:00:01');
INSERT INTO `im_msg_send` VALUES ('326', '45968209805313', '453870380038232092', '古巨基', '1', '80330a8e8a317d865f19ec894fe00068', '45968209805313', '1', '2018-04-09 10:08:52', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 12:00:00', '0', '2018-04-09 12:00:00');
INSERT INTO `im_msg_send` VALUES ('327', '45442719088641', '453870601279375332', '[:p][8o|][8o|][:p][8o|][:s]', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 10:09:44', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 12:00:00', '0', '2018-04-09 12:00:00');
INSERT INTO `im_msg_send` VALUES ('328', '45442719088641', '453870974681483236', '[:p][8o|][:p][8o|][8-|]', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 10:11:11', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 12:00:00', '0', '2018-04-09 12:00:00');
INSERT INTO `im_msg_send` VALUES ('329', '45442719088641', '453871057154082788', null, '2', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 10:11:30', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 12:00:00', '0', '2018-04-09 12:00:00');
INSERT INTO `im_msg_send` VALUES ('330', '45442719088641', '453892037586978848', '哥让我破后花园', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 11:32:55', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 13:00:00', '0', '2018-04-09 13:00:00');
INSERT INTO `im_msg_send` VALUES ('331', '45442719088641', '453892053529528352', 'gogoyiminyigoing', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 11:32:58', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 13:00:01', '0', '2018-04-09 13:00:01');
INSERT INTO `im_msg_send` VALUES ('332', '45442719088641', '453892061880387616', '后公民', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 11:33:00', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 13:00:01', '0', '2018-04-09 13:00:01');
INSERT INTO `im_msg_send` VALUES ('333', '45442719088641', '453892068784212000', '后公民在', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 11:33:02', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 13:00:01', '0', '2018-04-09 13:00:01');
INSERT INTO `im_msg_send` VALUES ('334', '45903993962497', '453925115189528636', '放假放假', '1', '80330a8e8a317d865f19ec894fe00068', '45903993962497', '1', '2018-04-09 13:41:16', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 15:00:00', '0', '2018-04-09 15:00:00');
INSERT INTO `im_msg_send` VALUES ('335', '45903993962497', '453926246187796544', '发', '1', '80330a8e8a317d865f19ec894fe00068', '45903993962497', '1', '2018-04-09 13:45:40', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 15:00:00', '0', '2018-04-09 15:00:00');
INSERT INTO `im_msg_send` VALUES ('336', '45519313371137', '453937860790192152', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 14:30:44', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 16:00:01', '0', '2018-04-09 16:00:01');
INSERT INTO `im_msg_send` VALUES ('337', '45519313371137', '453938110879762456', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 14:31:42', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 16:00:01', '0', '2018-04-09 16:00:01');
INSERT INTO `im_msg_send` VALUES ('338', '45519313371137', '453938541202769904', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 14:33:22', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 16:00:01', '0', '2018-04-09 16:00:01');
INSERT INTO `im_msg_send` VALUES ('339', '45442719088641', '453939072243599400', '低敏敏', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 14:35:26', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 16:00:01', '0', '2018-04-09 16:00:01');
INSERT INTO `im_msg_send` VALUES ('340', '45442719088641', '453939081034860584', '够吗，my ，我，哦', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 14:35:28', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 16:00:01', '0', '2018-04-09 16:00:01');
INSERT INTO `im_msg_send` VALUES ('341', '45442719088641', '453939090186831912', '哦哦恭喜我', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 14:35:30', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 16:00:01', '0', '2018-04-09 16:00:01');
INSERT INTO `im_msg_send` VALUES ('342', '45442719088641', '453939105785448488', '莫pohzhwo', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 14:35:34', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 16:00:01', '0', '2018-04-09 16:00:01');
INSERT INTO `im_msg_send` VALUES ('343', '45442719088641', '453939149758531624', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 14:35:44', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 16:00:01', '0', '2018-04-09 16:00:01');
INSERT INTO `im_msg_send` VALUES ('344', '45442719088641', '453939185418504232', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 14:35:52', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 16:00:01', '0', '2018-04-09 16:00:01');
INSERT INTO `im_msg_send` VALUES ('345', '45442719088641', '453939210211035176', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 14:35:58', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 16:00:02', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_send` VALUES ('346', '45442719088641', '453939261150857256', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 14:36:10', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 16:00:02', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_send` VALUES ('347', '45903993962497', '453939854993000452', null, '3', '80330a8e8a317d865f19ec894fe00068', '45903993962497', '1', '2018-04-09 14:38:28', '中国上海市静安区延安中路1175号', '31.221901', '121.444999', 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 16:00:02', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_send` VALUES ('348', '45903993962497', '453942919506692152', '回家', '1', '80330a8e8a317d865f19ec894fe00068', '45903993962497', '1', '2018-04-09 14:50:22', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 16:00:02', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_send` VALUES ('349', '45519313371137', '453943488296257536', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 14:52:34', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 16:00:02', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_send` VALUES ('350', '45451932925953', '453943639299590144', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45451932925953', '1', '2018-04-09 14:53:09', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 16:00:02', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_send` VALUES ('351', '45451932925953', '453943778110081024', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45451932925953', '1', '2018-04-09 14:53:42', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 16:00:02', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_send` VALUES ('352', '45451932925953', '453943798645393408', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45451932925953', '1', '2018-04-09 14:53:46', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 16:00:02', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_send` VALUES ('353', '45903993962497', '453944621941131268', '方法', '1', '80330a8e8a317d865f19ec894fe00068', '45903993962497', '1', '2018-04-09 14:56:58', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 16:00:02', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_send` VALUES ('354', '45442719088641', '453944929475889156', '啦啦啦啦啦啦啦啦', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 14:58:10', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 16:00:02', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_send` VALUES ('355', '45442719088641', '453944946831919108', '不不不啊了', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-09 14:58:14', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-09 16:00:02', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_send` VALUES ('356', '45519313371137', '453945005933856788', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 14:58:27', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 16:00:02', '0', '2018-04-09 16:00:02');
INSERT INTO `im_msg_send` VALUES ('357', '45519313371137', '453945567358224380', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 15:00:38', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 17:00:00', '0', '2018-04-09 17:00:00');
INSERT INTO `im_msg_send` VALUES ('358', '45519313371137', '453945607715821564', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 15:00:48', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 17:00:00', '0', '2018-04-09 17:00:00');
INSERT INTO `im_msg_send` VALUES ('359', '45519313371137', '453946472916846568', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 15:04:09', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 17:00:00', '0', '2018-04-09 17:00:00');
INSERT INTO `im_msg_send` VALUES ('360', '45519313371137', '453946554122766312', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 15:04:28', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 17:00:01', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_send` VALUES ('361', '45519313371137', '453946706287921172', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 15:05:03', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 17:00:01', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_send` VALUES ('362', '45519313371137', '453946726294751252', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 15:05:08', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 17:00:01', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_send` VALUES ('363', '45519313371137', '453946736889563156', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 15:05:10', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 17:00:01', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_send` VALUES ('364', '45519313371137', '453946751225694228', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 15:05:14', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 17:00:01', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_send` VALUES ('365', '45519313371137', '453946849133332508', null, '6', 'a93b63352a92e74f675631ede70a84ae', '45519313371137', '1', '2018-04-09 15:05:37', null, null, null, 'outgoing', '{}', 'a93b63352a92e74f675631ede70a84ae', '2018-04-09 17:00:01', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_send` VALUES ('366', '45519313371137', '453947143804160020', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 15:06:45', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 17:00:01', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_send` VALUES ('367', '45519313371137', '453948992758220852', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 15:13:56', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 17:00:01', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_send` VALUES ('368', '45519313371137', '453950893683902468', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 15:21:18', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 17:00:01', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_send` VALUES ('369', '45903993962497', '453953897854142520', '放假放假', '1', '80330a8e8a317d865f19ec894fe00068', '45903993962497', '1', '2018-04-09 15:32:58', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 17:00:01', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_send` VALUES ('370', '45465716457474', '453954336943245368', '加加', '1', '80330a8e8a317d865f19ec894fe00068', '45465716457474', '1', '2018-04-09 15:34:40', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 17:00:01', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_send` VALUES ('371', '45466349797378', '453955539362121724', '飞机场斤', '1', '80330a8e8a317d865f19ec894fe00068', '45466349797378', '1', '2018-04-09 15:39:20', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 17:00:01', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_send` VALUES ('372', '45458110087169', '453957565844293648', '回家', '1', '80330a8e8a317d865f19ec894fe00068', '45458110087169', '1', '2018-04-09 15:47:12', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 17:00:01', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_send` VALUES ('373', '45458110087169', '453959333076535352', ' 的', '1', '80330a8e8a317d865f19ec894fe00068', '45458110087169', '1', '2018-04-09 15:54:03', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 17:00:01', '0', '2018-04-09 17:00:01');
INSERT INTO `im_msg_send` VALUES ('374', '45445858525185', '453963035095074836', '有', '1', '80330a8e8a317d865f19ec894fe00068', '45445858525185', '1', '2018-04-09 16:08:25', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 18:00:00', '0', '2018-04-09 18:00:00');
INSERT INTO `im_msg_send` VALUES ('375', '45519313371137', '453963904884672484', null, '6', 'a93b63352a92e74f675631ede70a84ae', '45519313371137', '1', '2018-04-09 16:11:48', null, null, null, 'outgoing', '{}', 'a93b63352a92e74f675631ede70a84ae', '2018-04-09 18:00:00', '0', '2018-04-09 18:00:00');
INSERT INTO `im_msg_send` VALUES ('376', '45466349797378', '453963997671065556', '那就', '1', '80330a8e8a317d865f19ec894fe00068', '45466349797378', '1', '2018-04-09 16:12:09', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 18:00:00', '0', '2018-04-09 18:00:00');
INSERT INTO `im_msg_send` VALUES ('377', '45458110087169', '453970656166414368', '加加', '1', '80330a8e8a317d865f19ec894fe00068', '45458110087169', '1', '2018-04-09 16:38:00', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 18:00:00', '0', '2018-04-09 18:00:00');
INSERT INTO `im_msg_send` VALUES ('378', '45444720820225', '453972149699348452', '回家', '1', '80330a8e8a317d865f19ec894fe00068', '45444720820225', '1', '2018-04-09 16:43:47', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 18:00:00', '0', '2018-04-09 18:00:00');
INSERT INTO `im_msg_send` VALUES ('379', '45444720820225', '453972195656337388', '咯哦', '1', 'a93b63352a92e74f675631ede70a84ae', '45444720820225', '1', '2018-04-09 16:43:58', null, null, null, 'outgoing', '{}', 'a93b63352a92e74f675631ede70a84ae', '2018-04-09 18:00:01', '0', '2018-04-09 18:00:01');
INSERT INTO `im_msg_send` VALUES ('380', '45995990777857', '453973245914253284', '刚好', '1', '80330a8e8a317d865f19ec894fe00068', '45995990777857', '1', '2018-04-09 16:48:03', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 18:00:01', '0', '2018-04-09 18:00:01');
INSERT INTO `im_msg_send` VALUES ('381', '45995990777857', '453973198288009196', '克隆', '1', 'a93b63352a92e74f675631ede70a84ae', '45995990777857', '1', '2018-04-09 16:47:52', null, null, null, 'outgoing', '{}', 'a93b63352a92e74f675631ede70a84ae', '2018-04-09 18:00:01', '0', '2018-04-09 18:00:01');
INSERT INTO `im_msg_send` VALUES ('382', '45995990777857', '453973416383383532', '阿里', '1', 'a93b63352a92e74f675631ede70a84ae', '45995990777857', '1', '2018-04-09 16:48:42', null, null, null, 'outgoing', '{}', 'a93b63352a92e74f675631ede70a84ae', '2018-04-09 18:00:01', '0', '2018-04-09 18:00:01');
INSERT INTO `im_msg_send` VALUES ('383', '45519313371137', '453974674074765340', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 16:53:35', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 18:00:01', '0', '2018-04-09 18:00:01');
INSERT INTO `im_msg_send` VALUES ('384', '45519313371137', '453974757063264284', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 16:53:54', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 18:00:01', '0', '2018-04-09 18:00:01');
INSERT INTO `im_msg_send` VALUES ('385', '45519313371137', '453974784632424476', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 16:54:01', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 18:00:01', '0', '2018-04-09 18:00:01');
INSERT INTO `im_msg_send` VALUES ('386', '45519313371137', '453974812713289756', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 16:54:07', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 18:00:01', '0', '2018-04-09 18:00:01');
INSERT INTO `im_msg_send` VALUES ('387', '45968209805313', '453985203338086356', '放假放假', '1', '80330a8e8a317d865f19ec894fe00068', '45968209805313', '1', '2018-04-09 17:34:27', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 19:00:00', '0', '2018-04-09 19:00:00');
INSERT INTO `im_msg_send` VALUES ('388', '45995990777857', '453989002735781860', '加加', '1', '80330a8e8a317d865f19ec894fe00068', '45995990777857', '1', '2018-04-09 17:49:11', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 19:00:00', '0', '2018-04-09 19:00:00');
INSERT INTO `im_msg_send` VALUES ('389', '45968209805313', '453992746122741776', '刚好', '1', '80330a8e8a317d865f19ec894fe00068', '45968209805313', '1', '2018-04-09 18:03:43', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-09 20:00:01', '0', '2018-04-09 20:00:01');
INSERT INTO `im_msg_send` VALUES ('390', '45519313371137', '454000077564807184', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-09 18:32:10', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-09 20:00:01', '0', '2018-04-09 20:00:01');
INSERT INTO `im_msg_send` VALUES ('391', '45519313371137', '454250664818640940', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-10 10:44:34', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-10 12:00:00', '0', '2018-04-10 12:00:00');
INSERT INTO `im_msg_send` VALUES ('392', '45442719088641', '454251295881037868', '[):]', '1', '163c372a20fb60930fbe4a57d5388adb', '45442719088641', '1', '2018-04-10 10:47:01', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-10 12:00:00', '0', '2018-04-10 12:00:00');
INSERT INTO `im_msg_send` VALUES ('394', '45519313371137', '454253388507383764', '[:-o]', '1', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-10 10:55:08', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-10 12:00:00', '0', '2018-04-10 12:00:00');
INSERT INTO `im_msg_send` VALUES ('397', '45519313371137', '454251414852470828', '[):]', '1', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-10 10:47:29', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-10 12:00:01', '0', '2018-04-10 12:00:01');
INSERT INTO `im_msg_send` VALUES ('399', '46065992663042', '454261886205036516', '舅舅家', '1', '80330a8e8a317d865f19ec894fe00068', '46065992663042', '1', '2018-04-10 11:28:07', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-10 13:00:01', '0', '2018-04-10 13:00:01');
INSERT INTO `im_msg_send` VALUES ('401', '45442719088641', '454298688374704084', null, '2', '163c372a20fb60930fbe4a57d5388adb', '45442719088641', '1', '2018-04-10 13:50:56', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-10 15:00:01', '0', '2018-04-10 15:00:01');
INSERT INTO `im_msg_send` VALUES ('402', '45442719088641', '454298716828862420', null, '2', '163c372a20fb60930fbe4a57d5388adb', '45442719088641', '1', '2018-04-10 13:51:02', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-10 15:00:02', '0', '2018-04-10 15:00:02');
INSERT INTO `im_msg_send` VALUES ('403', '45442719088641', '454298748458108884', null, '6', '163c372a20fb60930fbe4a57d5388adb', '45442719088641', '1', '2018-04-10 13:51:10', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-10 15:00:02', '0', '2018-04-10 15:00:02');
INSERT INTO `im_msg_send` VALUES ('404', '45442719088641', '454302962055907308', '[:-o]', '1', '163c372a20fb60930fbe4a57d5388adb', '45442719088641', '1', '2018-04-10 14:07:31', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-10 16:00:01', '0', '2018-04-10 16:00:01');
INSERT INTO `im_msg_send` VALUES ('405', '46074988396545', '454309627954202688', '能到家', '1', '8fd88517205f3ebdd72bc2912876be0c', '46074988396545', '1', '2018-04-10 14:33:23', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-10 16:00:01', '0', '2018-04-10 16:00:01');
INSERT INTO `im_msg_send` VALUES ('406', '45442719088641', '454313573020076016', '[:-o]', '1', '163c372a20fb60930fbe4a57d5388adb', '45442719088641', '1', '2018-04-10 14:48:41', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-10 16:00:01', '0', '2018-04-10 16:00:01');
INSERT INTO `im_msg_send` VALUES ('407', '45519313371137', '454314002932041712', '[):]', '1', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-10 14:50:21', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-10 16:00:01', '0', '2018-04-10 16:00:01');
INSERT INTO `im_msg_send` VALUES ('408', '45442719088641', '454604749283526676', '[8o|][<o)][:p][<o)][:p][<o)]', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:38:36', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:00', '0', '2018-04-11 11:00:00');
INSERT INTO `im_msg_send` VALUES ('409', '45442719088641', '454604796238759956', null, '2', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:38:47', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:00', '0', '2018-04-11 11:00:00');
INSERT INTO `im_msg_send` VALUES ('410', '45442719088641', '454604817776510996', null, '3', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:38:52', '南京西路1717号', '31.22184416785215', '121.44499146664242', 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:01', '0', '2018-04-11 11:00:01');
INSERT INTO `im_msg_send` VALUES ('411', '45442719088641', '454604862018029588', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:39:02', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:01', '0', '2018-04-11 11:00:01');
INSERT INTO `im_msg_send` VALUES ('412', '45442719088641', '454604915927418900', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:39:15', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:01', '0', '2018-04-11 11:00:01');
INSERT INTO `im_msg_send` VALUES ('413', '45442719088641', '454604961670498324', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:39:25', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:01', '0', '2018-04-11 11:00:01');
INSERT INTO `im_msg_send` VALUES ('414', '45442719088641', '454605004389484564', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:39:35', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:01', '0', '2018-04-11 11:00:01');
INSERT INTO `im_msg_send` VALUES ('415', '45442719088641', '454605098199291924', '您黑膜，尼玛', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:39:57', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:02', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_send` VALUES ('416', '45442719088641', '454605107271567380', '红红你名字', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:39:59', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:02', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_send` VALUES ('417', '45442719088641', '454605117597943828', 'hongnixiwz', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:40:02', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:02', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_send` VALUES ('418', '45442719088641', '454605129388132372', '哄，哦你名字我', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:40:04', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:02', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_send` VALUES ('419', '45442719088641', '454605137881597972', '哄，哦一行字', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:40:06', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:02', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_send` VALUES ('420', '45442719088641', '454605145368430612', '后公民自由', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:40:08', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:02', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_send` VALUES ('421', '45442719088641', '454605152846874644', '后公民自由', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:40:10', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:02', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_send` VALUES ('422', '45442719088641', '454605180889991188', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:40:16', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:02', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_send` VALUES ('423', '45442719088641', '454609492433176604', '破公婆MSN', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:57:00', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:02', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_send` VALUES ('424', '45442719088641', '454609505762674716', '破功xxihogmwpw', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:57:03', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:02', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_send` VALUES ('425', '45442719088641', '454609513220147228', '公民婆婆', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:57:05', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:02', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_send` VALUES ('426', '45442719088641', '454609538507606044', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:57:11', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:02', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_send` VALUES ('427', '45442719088641', '454609665087506460', '哦亲哦婆婆您', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:57:40', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:02', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_send` VALUES ('428', '45442719088641', '454609672083605532', '破红红', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:57:42', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:02', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_send` VALUES ('429', '45442719088641', '454609679117453340', '公民', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:57:44', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:02', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_send` VALUES ('430', '45442719088641', '454609745370679324', null, '2', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:57:59', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:02', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_send` VALUES ('431', '45442719088641', '454609801272363036', null, '3', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:58:12', '南京西路1717号', '31.2218828073274', '121.44499610683965', 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:02', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_send` VALUES ('432', '45442719088641', '454609943476045852', null, '2', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 09:58:45', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 11:00:02', '0', '2018-04-11 11:00:02');
INSERT INTO `im_msg_send` VALUES ('1183', '45442719088641', '454703764339689476', '咯健健康康', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 16:02:50', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 18:00:00', '0', '2018-04-11 18:00:00');
INSERT INTO `im_msg_send` VALUES ('1184', '45442719088641', '454703774586374148', '记录旅途哦', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 16:02:52', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 18:00:00', '0', '2018-04-11 18:00:00');
INSERT INTO `im_msg_send` VALUES ('1185', '45442719088641', '454703789190940676', '流量卡sjjlu', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 16:02:55', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 18:00:00', '0', '2018-04-11 18:00:00');
INSERT INTO `im_msg_send` VALUES ('1186', '45442719088641', '454703823483570180', null, '2', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 16:03:03', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 18:00:00', '0', '2018-04-11 18:00:00');
INSERT INTO `im_msg_send` VALUES ('1187', '45442719088641', '454703862910027780', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 16:03:13', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 18:00:01', '0', '2018-04-11 18:00:01');
INSERT INTO `im_msg_send` VALUES ('1188', '45442719088641', '454703887639644164', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-11 16:03:18', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-11 18:00:01', '0', '2018-04-11 18:00:01');
INSERT INTO `im_msg_send` VALUES ('1189', '46074988396545', '454998015019583476', null, '6', '8fd88517205f3ebdd72bc2912876be0c', '46074988396545', '1', '2018-04-12 11:04:40', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-12 13:00:00', '0', '2018-04-12 13:00:00');
INSERT INTO `im_msg_send` VALUES ('1190', '46074988396545', '455002028624578548', null, '6', '8fd88517205f3ebdd72bc2912876be0c', '46074988396545', '1', '2018-04-12 11:20:15', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-12 13:00:03', '0', '2018-04-12 13:00:03');
INSERT INTO `im_msg_send` VALUES ('1191', '46074988396545', '455002820576282644', '有', '1', '80330a8e8a317d865f19ec894fe00068', '46074988396545', '1', '2018-04-12 11:23:19', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-12 13:00:04', '0', '2018-04-12 13:00:04');
INSERT INTO `im_msg_send` VALUES ('1192', '46074988396545', '455002914943928340', null, '2', '80330a8e8a317d865f19ec894fe00068', '46074988396545', '1', '2018-04-12 11:23:41', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-12 13:00:04', '0', '2018-04-12 13:00:04');
INSERT INTO `im_msg_send` VALUES ('1193', '46074988396545', '455002959407745044', null, '6', '80330a8e8a317d865f19ec894fe00068', '46074988396545', '1', '2018-04-12 11:23:51', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-12 13:00:04', '0', '2018-04-12 13:00:04');
INSERT INTO `im_msg_send` VALUES ('1194', '46074988396545', '455003016513194004', null, '2', '80330a8e8a317d865f19ec894fe00068', '46074988396545', '1', '2018-04-12 11:24:05', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-12 13:00:04', '0', '2018-04-12 13:00:04');
INSERT INTO `im_msg_send` VALUES ('1195', '46074988396545', '455003030853523476', null, '6', '80330a8e8a317d865f19ec894fe00068', '46074988396545', '1', '2018-04-12 11:24:08', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-12 13:00:04', '0', '2018-04-12 13:00:04');
INSERT INTO `im_msg_send` VALUES ('1196', '45442719088641', '455043038813620232', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-12 13:59:23', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 15:00:01', '0', '2018-04-12 15:00:01');
INSERT INTO `im_msg_send` VALUES ('1197', '45442719088641', '455043065959155720', null, '2', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-12 13:59:29', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 15:00:01', '0', '2018-04-12 15:00:01');
INSERT INTO `im_msg_send` VALUES ('1198', '45442719088641', '455043090395170824', null, '3', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-12 13:59:35', '南京西路1717号', '31.22179387053852', '121.444898519568', 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 15:00:02', '0', '2018-04-12 15:00:02');
INSERT INTO `im_msg_send` VALUES ('1199', '45442719088641', '455043142903662600', '明细账', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-12 13:59:47', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 15:00:02', '0', '2018-04-12 15:00:02');
INSERT INTO `im_msg_send` VALUES ('1200', '45442719088641', '455043150654736392', '破工资一样', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-12 13:59:49', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 15:00:02', '0', '2018-04-12 15:00:02');
INSERT INTO `im_msg_send` VALUES ('1201', '45442719088641', '455043157847967752', '公共资源', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-12 13:59:51', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 15:00:02', '0', '2018-04-12 15:00:02');
INSERT INTO `im_msg_send` VALUES ('1202', '45442719088641', '455043173459167240', 'gogong，mrnin', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-12 13:59:54', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 15:00:02', '0', '2018-04-12 15:00:02');
INSERT INTO `im_msg_send` VALUES ('1203', '45442719088641', '455043317172799496', '哈喽哈喽，发送喂好了，嗯嗯。', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-12 14:00:28', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:00', '0', '2018-04-12 16:00:00');
INSERT INTO `im_msg_send` VALUES ('1204', '45442719088641', '455047013893933076', '公民哦', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-12 14:14:49', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:00', '0', '2018-04-12 16:00:00');
INSERT INTO `im_msg_send` VALUES ('1205', '45442719088641', '455047028251035668', '[8o|][:s][8o|][:@][8o|][:$][8o|][|-)]', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-12 14:14:52', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:00', '0', '2018-04-12 16:00:00');
INSERT INTO `im_msg_send` VALUES ('1206', '45442719088641', '455047054964561940', null, '2', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-12 14:14:58', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:00', '0', '2018-04-12 16:00:00');
INSERT INTO `im_msg_send` VALUES ('1207', '45442719088641', '455047180617517076', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-12 14:15:27', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:01', '0', '2018-04-12 16:00:01');
INSERT INTO `im_msg_send` VALUES ('1208', '45442719088641', '455047197336012820', null, '4', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-12 14:15:31', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:01', '0', '2018-04-12 16:00:01');
INSERT INTO `im_msg_send` VALUES ('1209', '45442719088641', '455047249534126100', '喂喂喂喂这么屌也可以。', '1', '8df0a470b4506be254256154c637e09b', '45442719088641', '1', '2018-04-12 14:15:44', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:02', '0', '2018-04-12 16:00:02');
INSERT INTO `im_msg_send` VALUES ('1210', '46074988396545', '455048781222647836', '佛魔', '1', 'a4160ea1f57c0ea1c6c08800f3f7e882', '46074988396545', '1', '2018-04-12 14:21:40', null, null, null, 'outgoing', '{}', 'a4160ea1f57c0ea1c6c08800f3f7e882', '2018-04-12 16:00:02', '0', '2018-04-12 16:00:02');
INSERT INTO `im_msg_send` VALUES ('1211', '46074988396545', '455048851405932572', null, '2', 'a4160ea1f57c0ea1c6c08800f3f7e882', '46074988396545', '1', '2018-04-12 14:21:56', null, null, null, 'outgoing', '{}', 'a4160ea1f57c0ea1c6c08800f3f7e882', '2018-04-12 16:00:02', '0', '2018-04-12 16:00:02');
INSERT INTO `im_msg_send` VALUES ('1212', '46074988396545', '455048884322830364', null, '4', 'a4160ea1f57c0ea1c6c08800f3f7e882', '46074988396545', '1', '2018-04-12 14:22:04', null, null, null, 'outgoing', '{}', 'a4160ea1f57c0ea1c6c08800f3f7e882', '2018-04-12 16:00:02', '0', '2018-04-12 16:00:02');
INSERT INTO `im_msg_send` VALUES ('1213', '46074988396545', '455048952987781100', null, '6', '8fd88517205f3ebdd72bc2912876be0c', '46074988396545', '1', '2018-04-12 14:22:20', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-12 16:00:02', '0', '2018-04-12 16:00:02');
INSERT INTO `im_msg_send` VALUES ('1214', '46074988396545', '455048999586498540', null, '6', '8fd88517205f3ebdd72bc2912876be0c', '46074988396545', '1', '2018-04-12 14:22:31', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-12 16:00:03', '0', '2018-04-12 16:00:03');
INSERT INTO `im_msg_send` VALUES ('1215', '46074988396545', '455049007853471772', null, '6', 'a4160ea1f57c0ea1c6c08800f3f7e882', '46074988396545', '1', '2018-04-12 14:22:33', null, null, null, 'outgoing', '{}', 'a4160ea1f57c0ea1c6c08800f3f7e882', '2018-04-12 16:00:04', '0', '2018-04-12 16:00:04');
INSERT INTO `im_msg_send` VALUES ('1216', '46074988396545', '455049127789594604', null, '6', '8fd88517205f3ebdd72bc2912876be0c', '46074988396545', '1', '2018-04-12 14:23:01', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-12 16:00:06', '0', '2018-04-12 16:00:06');
INSERT INTO `im_msg_send` VALUES ('1217', '46074988396545', '455049142981363740', null, '3', 'a4160ea1f57c0ea1c6c08800f3f7e882', '46074988396545', '1', '2018-04-12 14:23:04', '中国上海市静安区南京西路1753号', '31.222268', '121.444712', 'outgoing', '{}', 'a4160ea1f57c0ea1c6c08800f3f7e882', '2018-04-12 16:00:06', '0', '2018-04-12 16:00:06');
INSERT INTO `im_msg_send` VALUES ('1218', '46074988396545', '455049831891601388', '呵呵vvv', '1', '8fd88517205f3ebdd72bc2912876be0c', '46074988396545', '1', '2018-04-12 14:25:45', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-12 16:00:06', '0', '2018-04-12 16:00:06');
INSERT INTO `im_msg_send` VALUES ('1219', '46074988396545', '455049892537042996', null, '2', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-12 14:25:59', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:06', '0', '2018-04-12 16:00:06');
INSERT INTO `im_msg_send` VALUES ('1220', '46074988396545', '455050005573535796', '我mmpwpw', '1', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-12 14:26:25', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:06', '0', '2018-04-12 16:00:06');
INSERT INTO `im_msg_send` VALUES ('1221', '46074988396545', '455050013735651380', '公共资源', '1', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-12 14:26:27', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:06', '0', '2018-04-12 16:00:06');
INSERT INTO `im_msg_send` VALUES ('1222', '46074988396545', '455050025966245940', '红花油xiwgogong', '1', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-12 14:26:30', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:06', '0', '2018-04-12 16:00:06');
INSERT INTO `im_msg_send` VALUES ('1223', '46074988396545', '455050034312906804', '破一切wpw', '1', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-12 14:26:32', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:06', '0', '2018-04-12 16:00:06');
INSERT INTO `im_msg_send` VALUES ('1224', '46074988396545', '455050043615873076', '送您', '1', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-12 14:26:34', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:07', '0', '2018-04-12 16:00:07');
INSERT INTO `im_msg_send` VALUES ('1225', '46074988396545', '455050050611972148', '公共你', '1', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-12 14:26:36', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:07', '0', '2018-04-12 16:00:07');
INSERT INTO `im_msg_send` VALUES ('1226', '46074988396545', '455050077153527860', null, '4', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-12 14:26:42', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:07', '0', '2018-04-12 16:00:07');
INSERT INTO `im_msg_send` VALUES ('1227', '46074988396545', '455050096283748404', null, '4', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-12 14:26:46', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:07', '0', '2018-04-12 16:00:07');
INSERT INTO `im_msg_send` VALUES ('1228', '46074988396545', '455050167813408820', null, '2', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-12 14:27:03', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:07', '0', '2018-04-12 16:00:07');
INSERT INTO `im_msg_send` VALUES ('1229', '46074988396545', '455050209488013364', null, '3', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-12 14:27:13', '南京西路1717号', '31.221824922798476', '121.44501487485873', 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:07', '0', '2018-04-12 16:00:07');
INSERT INTO `im_msg_send` VALUES ('1230', '46074988396545', '455050286247970868', null, '2', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-12 14:27:31', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:08', '0', '2018-04-12 16:00:08');
INSERT INTO `im_msg_send` VALUES ('1231', '46074988396545', '455050308028991540', null, '4', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-12 14:27:36', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-12 16:00:08', '0', '2018-04-12 16:00:08');
INSERT INTO `im_msg_send` VALUES ('1232', '46064028680194', '455349896627619884', '[:(]', '1', '8fd88517205f3ebdd72bc2912876be0c', '46064028680194', '1', '2018-04-13 09:50:09', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-13 11:00:02', '0', '2018-04-13 11:00:02');
INSERT INTO `im_msg_send` VALUES ('1233', '46349422755843', '455435367835763796', '欢迎使用永慈系统', '1', 'fa9cd81b13de27838a450675cabe4de2', '46349422755843', '1', '2018-04-13 15:21:49', null, null, null, 'outgoing', 'null', 'fa9cd81b13de27838a450675cabe4de2', '2018-04-13 17:00:01', '0', '2018-04-13 17:00:01');
INSERT INTO `im_msg_send` VALUES ('1234', '46349422755843', '455435530159531124', '欢迎使用永慈系统', '1', 'fa9cd81b13de27838a450675cabe4de2', '46349422755843', '1', '2018-04-13 15:22:27', null, null, null, 'outgoing', 'null', 'fa9cd81b13de27838a450675cabe4de2', '2018-04-13 17:00:01', '0', '2018-04-13 17:00:01');
INSERT INTO `im_msg_send` VALUES ('1235', '46074988396545', '455443087347419136', '[(H)]', '1', '8fd88517205f3ebdd72bc2912876be0c', '46074988396545', '1', '2018-04-13 15:51:47', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-13 17:00:01', '0', '2018-04-13 17:00:01');
INSERT INTO `im_msg_send` VALUES ('1236', '46349422755843', '455443230964585592', '欢迎使用永慈系统', '1', 'fa9cd81b13de27838a450675cabe4de2', '46349422755843', '1', '2018-04-13 15:52:20', null, null, null, 'outgoing', 'null', 'fa9cd81b13de27838a450675cabe4de2', '2018-04-13 17:00:01', '0', '2018-04-13 17:00:01');
INSERT INTO `im_msg_send` VALUES ('1237', '46349422755843', '455443242264040532', '欢迎使用永慈系统', '1', 'fa9cd81b13de27838a450675cabe4de2', '46349422755843', '1', '2018-04-13 15:52:23', null, null, null, 'outgoing', 'null', 'fa9cd81b13de27838a450675cabe4de2', '2018-04-13 17:00:01', '0', '2018-04-13 17:00:01');
INSERT INTO `im_msg_send` VALUES ('1238', '46349422755843', '455443378100765792', '欢迎使用永慈系统', '1', 'fa9cd81b13de27838a450675cabe4de2', '46349422755843', '1', '2018-04-13 15:52:54', null, null, null, 'outgoing', 'null', 'fa9cd81b13de27838a450675cabe4de2', '2018-04-13 17:00:01', '0', '2018-04-13 17:00:01');
INSERT INTO `im_msg_send` VALUES ('1245', '46363521908738', '456454192278538236', null, '6', '8fd88517205f3ebdd72bc2912876be0c', '46363521908738', '1', '2018-04-16 09:15:23', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-16 11:00:01', '0', '2018-04-16 11:00:01');
INSERT INTO `im_msg_send` VALUES ('1246', '45519313371137', '456459121948887072', null, '3', '163c372a20fb60930fbe4a57d5388adb', '45519313371137', '1', '2018-04-16 09:34:31', '南京西路1717号', '31.22185546085613', '121.4450039927022', 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-16 11:00:02', '0', '2018-04-16 11:00:02');
INSERT INTO `im_msg_send` VALUES ('1247', '46074988396545', '456590688125978668', '那块', '1', '8fd88517205f3ebdd72bc2912876be0c', '46074988396545', '1', '2018-04-16 18:05:03', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-16 20:00:01', '0', '2018-04-16 20:00:01');
INSERT INTO `im_msg_send` VALUES ('1248', '46608877158401', '456596993108609024', '[:@]', '1', '163c372a20fb60930fbe4a57d5388adb', '46608877158401', '1', '2018-04-16 18:29:31', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-16 20:00:01', '0', '2018-04-16 20:00:01');
INSERT INTO `im_msg_send` VALUES ('1249', '46074988396545', '456614790723274712', '加加', '1', '8fd88517205f3ebdd72bc2912876be0c', '46074988396545', '1', '2018-04-16 19:38:35', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-16 21:00:00', '0', '2018-04-16 21:00:00');
INSERT INTO `im_msg_send` VALUES ('1250', '46074988396545', '456857855123789808', '呵呵', '1', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-17 11:21:48', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-17 13:00:01', '0', '2018-04-17 13:00:01');
INSERT INTO `im_msg_send` VALUES ('1251', '46074988396545', '456952763046168612', 'ushxhxjj', '1', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-17 17:30:05', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-17 19:00:01', '0', '2018-04-17 19:00:01');
INSERT INTO `im_msg_send` VALUES ('1252', '46074988396545', '456952772596602916', '思想决定', '1', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-17 17:30:08', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-17 19:00:03', '0', '2018-04-17 19:00:03');
INSERT INTO `im_msg_send` VALUES ('1253', '46074988396545', '456952779689166884', '大家的积极性', '1', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-17 17:30:09', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-17 19:00:04', '0', '2018-04-17 19:00:04');
INSERT INTO `im_msg_send` VALUES ('1254', '46074988396545', '456952788908251172', '大家的积极的', '1', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-17 17:30:11', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-17 19:00:04', '0', '2018-04-17 19:00:04');
INSERT INTO `im_msg_send` VALUES ('1255', '46074988396545', '456952819845433380', null, '2', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-17 17:30:19', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-17 19:00:04', '0', '2018-04-17 19:00:04');
INSERT INTO `im_msg_send` VALUES ('1256', '46074988396545', '456952838824658980', '电视剧集', '1', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-17 17:30:23', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-17 19:00:04', '0', '2018-04-17 19:00:04');
INSERT INTO `im_msg_send` VALUES ('1257', '46074988396545', '456952850635819044', '[8o|][(H)][8o|][:p][<o)][:p][<o)]', '1', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-17 17:30:26', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-17 19:00:05', '0', '2018-04-17 19:00:05');
INSERT INTO `im_msg_send` VALUES ('1258', '46074988396545', '456952872202930212', null, '4', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-17 17:30:31', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-17 19:00:05', '0', '2018-04-17 19:00:05');
INSERT INTO `im_msg_send` VALUES ('1259', '46074988396545', '456952896215320612', null, '4', '8df0a470b4506be254256154c637e09b', '46074988396545', '1', '2018-04-17 17:30:36', null, null, null, 'outgoing', '{}', '8df0a470b4506be254256154c637e09b', '2018-04-17 19:00:05', '0', '2018-04-17 19:00:05');
INSERT INTO `im_msg_send` VALUES ('1260', '46074988396545', '456960606679861204', null, '2', '8fd88517205f3ebdd72bc2912876be0c', '46074988396545', '1', '2018-04-17 18:00:32', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-17 20:00:01', '0', '2018-04-17 20:00:01');
INSERT INTO `im_msg_send` VALUES ('1261', '46363521908738', '457199332173547508', '就看看下', '1', '8fd88517205f3ebdd72bc2912876be0c', '46363521908738', '1', '2018-04-18 09:26:54', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-18 11:00:00', '0', '2018-04-18 11:00:00');
INSERT INTO `im_msg_send` VALUES ('1262', '46363521908738', '457199359805622260', null, '2', '8fd88517205f3ebdd72bc2912876be0c', '46363521908738', '1', '2018-04-18 09:27:01', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-18 11:00:00', '0', '2018-04-18 11:00:00');
INSERT INTO `im_msg_send` VALUES ('1263', '46363521908738', '457199377568499700', null, '2', '8fd88517205f3ebdd72bc2912876be0c', '46363521908738', '1', '2018-04-18 09:27:05', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-18 11:00:01', '0', '2018-04-18 11:00:01');
INSERT INTO `im_msg_send` VALUES ('1264', '46363521908738', '457199392068208628', null, '2', '8fd88517205f3ebdd72bc2912876be0c', '46363521908738', '1', '2018-04-18 09:27:08', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-18 11:00:01', '0', '2018-04-18 11:00:01');
INSERT INTO `im_msg_send` VALUES ('1265', '46363521908738', '457199675485718516', null, '2', '8fd88517205f3ebdd72bc2912876be0c', '46363521908738', '1', '2018-04-18 09:28:14', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-18 11:00:02', '0', '2018-04-18 11:00:02');
INSERT INTO `im_msg_send` VALUES ('1266', '46074988396545', '457200171709630452', null, '3', '8fd88517205f3ebdd72bc2912876be0c', '46074988396545', '1', '2018-04-18 09:30:10', '中国上海市静安区延安中路1175号', '31.221888', '121.444972', 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-18 11:00:02', '0', '2018-04-18 11:00:02');
INSERT INTO `im_msg_send` VALUES ('1267', '46608877158401', '457232425240496120', '[:-o]', '1', '163c372a20fb60930fbe4a57d5388adb', '46608877158401', '1', '2018-04-18 11:35:19', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-18 13:00:01', '0', '2018-04-18 13:00:01');
INSERT INTO `im_msg_send` VALUES ('1268', '46806233841665', '457291715586295852', '[):]', '1', '163c372a20fb60930fbe4a57d5388adb', '46806233841665', '1', '2018-04-18 15:25:24', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-18 17:00:01', '0', '2018-04-18 17:00:01');
INSERT INTO `im_msg_send` VALUES ('1269', '46363521908738', '457314342048630744', null, '2', '8fd88517205f3ebdd72bc2912876be0c', '46363521908738', '1', '2018-04-18 16:53:12', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-18 18:00:00', '0', '2018-04-18 18:00:00');
INSERT INTO `im_msg_send` VALUES ('1270', '46363521908738', '457314358293170136', null, '2', '8fd88517205f3ebdd72bc2912876be0c', '46363521908738', '1', '2018-04-18 16:53:16', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-18 18:00:01', '0', '2018-04-18 18:00:01');
INSERT INTO `im_msg_send` VALUES ('1271', '46363521908738', '457314380220991448', null, '3', '8fd88517205f3ebdd72bc2912876be0c', '46363521908738', '1', '2018-04-18 16:53:21', '中国上海市静安区延安中路1175号', '31.221784', '121.444946', 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-18 18:00:01', '0', '2018-04-18 18:00:01');
INSERT INTO `im_msg_send` VALUES ('1272', '46363521908738', '457314395630864344', null, '6', '8fd88517205f3ebdd72bc2912876be0c', '46363521908738', '1', '2018-04-18 16:53:25', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-18 18:00:01', '0', '2018-04-18 18:00:01');
INSERT INTO `im_msg_send` VALUES ('1273', '46363521908738', '457314417499965400', '。内存卡才看见超级超级', '1', '8fd88517205f3ebdd72bc2912876be0c', '46363521908738', '1', '2018-04-18 16:53:30', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-18 18:00:01', '0', '2018-04-18 18:00:01');
INSERT INTO `im_msg_send` VALUES ('1274', '46881606533121', '457600521574811688', '凤飞飞', '1', '2196af38e3c8a5478f850cbc5988ae58', '46881606533121', '1', '2018-04-19 11:23:44', null, null, null, 'outgoing', '{}', '2196af38e3c8a5478f850cbc5988ae58', '2018-04-19 13:00:00', '0', '2018-04-19 13:00:00');
INSERT INTO `im_msg_send` VALUES ('1275', '46881608630273', '457600969723611104', '[:\'(]', '1', '2196af38e3c8a5478f850cbc5988ae58', '46881608630273', '1', '2018-04-19 11:25:28', null, null, null, 'outgoing', '{}', '2196af38e3c8a5478f850cbc5988ae58', '2018-04-19 13:00:00', '0', '2018-04-19 13:00:00');
INSERT INTO `im_msg_send` VALUES ('1276', '46898589270017', '457670291238160356', '[:-o][:p]', '1', 'a93b63352a92e74f675631ede70a84ae', '46898589270017', '1', '2018-04-19 15:54:28', null, null, null, 'outgoing', '{}', 'a93b63352a92e74f675631ede70a84ae', '2018-04-19 17:00:00', '0', '2018-04-19 17:00:00');
INSERT INTO `im_msg_send` VALUES ('1277', '46898589270017', '457670344623261668', null, '2', 'a93b63352a92e74f675631ede70a84ae', '46898589270017', '1', '2018-04-19 15:54:40', null, null, null, 'outgoing', '{}', 'a93b63352a92e74f675631ede70a84ae', '2018-04-19 17:00:00', '0', '2018-04-19 17:00:00');
INSERT INTO `im_msg_send` VALUES ('1278', '46898589270017', '457670381742852068', null, '4', 'a93b63352a92e74f675631ede70a84ae', '46898589270017', '1', '2018-04-19 15:54:49', null, null, null, 'outgoing', '{}', 'a93b63352a92e74f675631ede70a84ae', '2018-04-19 17:00:01', '0', '2018-04-19 17:00:01');
INSERT INTO `im_msg_send` VALUES ('1279', '46896235216897', '457706146585642980', null, '3', '163c372a20fb60930fbe4a57d5388adb', '46896235216897', '1', '2018-04-19 18:13:36', '中国 上海市 静安区 南京西路1717号', '31.221830756433622', '121.44500985954306', 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-19 20:00:00', '0', '2018-04-19 20:00:00');
INSERT INTO `im_msg_send` VALUES ('1280', '46905353633793', '457739940873111576', null, '2', '8fd88517205f3ebdd72bc2912876be0c', '46905353633793', '1', '2018-04-19 20:24:45', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-19 22:00:00', '0', '2018-04-19 22:00:00');
INSERT INTO `im_msg_send` VALUES ('1281', '46905353633793', '457739961085462552', null, '2', '8fd88517205f3ebdd72bc2912876be0c', '46905353633793', '1', '2018-04-19 20:24:49', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-19 22:00:01', '0', '2018-04-19 22:00:01');
INSERT INTO `im_msg_send` VALUES ('1282', '46905353633793', '457739992312055832', null, '4', '8fd88517205f3ebdd72bc2912876be0c', '46905353633793', '1', '2018-04-19 20:24:57', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-19 22:00:02', '0', '2018-04-19 22:00:02');
INSERT INTO `im_msg_send` VALUES ('1283', '46916605902849', '457939078176835580', '[):]', '1', '8fd88517205f3ebdd72bc2912876be0c', '46916605902849', '1', '2018-04-20 09:17:30', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-20 11:00:00', '0', '2018-04-20 11:00:00');
INSERT INTO `im_msg_send` VALUES ('1284', '46916605902849', '457939134581835772', null, '4', '8fd88517205f3ebdd72bc2912876be0c', '46916605902849', '1', '2018-04-20 09:17:43', null, null, null, 'outgoing', '{}', '8fd88517205f3ebdd72bc2912876be0c', '2018-04-20 11:00:00', '0', '2018-04-20 11:00:00');
INSERT INTO `im_msg_send` VALUES ('1285', '46363521908738', '457955257880676348', null, '2', '80330a8e8a317d865f19ec894fe00068', '46363521908738', '1', '2018-04-20 10:20:17', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 12:00:00', '0', '2018-04-20 12:00:00');
INSERT INTO `im_msg_send` VALUES ('1286', '46363521908738', '457955281532360700', null, '3', '80330a8e8a317d865f19ec894fe00068', '46363521908738', '1', '2018-04-20 10:20:22', '中国上海市静安区延安中路1175号', '31.221819', '121.444953', 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 12:00:01', '0', '2018-04-20 12:00:01');
INSERT INTO `im_msg_send` VALUES ('1287', '46363521908738', '457955308078106620', null, '6', '80330a8e8a317d865f19ec894fe00068', '46363521908738', '1', '2018-04-20 10:20:29', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 12:00:01', '0', '2018-04-20 12:00:01');
INSERT INTO `im_msg_send` VALUES ('1288', '46363521908738', '457955342681114620', null, '6', '80330a8e8a317d865f19ec894fe00068', '46363521908738', '1', '2018-04-20 10:20:37', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 12:00:02', '0', '2018-04-20 12:00:02');
INSERT INTO `im_msg_send` VALUES ('1289', '46363521908738', '457955375002421244', null, '4', '80330a8e8a317d865f19ec894fe00068', '46363521908738', '1', '2018-04-20 10:20:44', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 12:00:03', '0', '2018-04-20 12:00:03');
INSERT INTO `im_msg_send` VALUES ('1290', '46363521908738', '457955388248033276', null, '4', '80330a8e8a317d865f19ec894fe00068', '46363521908738', '1', '2018-04-20 10:20:47', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 12:00:03', '0', '2018-04-20 12:00:03');
INSERT INTO `im_msg_send` VALUES ('1291', '46363521908738', '457955417985648636', '盖好被被', '1', '80330a8e8a317d865f19ec894fe00068', '46363521908738', '1', '2018-04-20 10:20:54', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 12:00:03', '0', '2018-04-20 12:00:03');
INSERT INTO `im_msg_send` VALUES ('1292', '46363521908738', '457955432682489852', '123', '1', '80330a8e8a317d865f19ec894fe00068', '46363521908738', '1', '2018-04-20 10:20:58', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 12:00:03', '0', '2018-04-20 12:00:03');
INSERT INTO `im_msg_send` VALUES ('1293', '46969908166658', '457962149596104700', null, '4', '80330a8e8a317d865f19ec894fe00068', '46969908166658', '1', '2018-04-20 10:47:02', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 12:00:03', '0', '2018-04-20 12:00:03');
INSERT INTO `im_msg_send` VALUES ('1294', '46969908166658', '457962163013683196', null, '4', '80330a8e8a317d865f19ec894fe00068', '46969908166658', '1', '2018-04-20 10:47:05', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 12:00:03', '0', '2018-04-20 12:00:03');
INSERT INTO `im_msg_send` VALUES ('1295', '46969908166658', '457962178121566204', null, '4', '80330a8e8a317d865f19ec894fe00068', '46969908166658', '1', '2018-04-20 10:47:08', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 12:00:04', '0', '2018-04-20 12:00:04');
INSERT INTO `im_msg_send` VALUES ('1296', '46969908166658', '457962195200772092', null, '4', '80330a8e8a317d865f19ec894fe00068', '46969908166658', '1', '2018-04-20 10:47:12', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 12:00:04', '0', '2018-04-20 12:00:04');
INSERT INTO `im_msg_send` VALUES ('1297', '46969953255425', '457962316969805820', null, '2', '80330a8e8a317d865f19ec894fe00068', '46969953255425', '1', '2018-04-20 10:47:41', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 12:00:04', '0', '2018-04-20 12:00:04');
INSERT INTO `im_msg_send` VALUES ('1298', '46969954304002', '457962677164050428', null, '6', '80330a8e8a317d865f19ec894fe00068', '46969954304002', '1', '2018-04-20 10:49:04', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 12:00:05', '0', '2018-04-20 12:00:05');
INSERT INTO `im_msg_send` VALUES ('1299', '46969954304002', '457962687679170556', null, '6', '80330a8e8a317d865f19ec894fe00068', '46969954304002', '1', '2018-04-20 10:49:07', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 12:00:05', '0', '2018-04-20 12:00:05');
INSERT INTO `im_msg_send` VALUES ('1300', '46969954304002', '457962695820318716', null, '6', '80330a8e8a317d865f19ec894fe00068', '46969954304002', '1', '2018-04-20 10:49:09', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 12:00:05', '0', '2018-04-20 12:00:05');
INSERT INTO `im_msg_send` VALUES ('1301', '46969954304002', '457962709586020348', null, '6', '80330a8e8a317d865f19ec894fe00068', '46969954304002', '1', '2018-04-20 10:49:12', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 12:00:06', '0', '2018-04-20 12:00:06');
INSERT INTO `im_msg_send` VALUES ('1302', '46969954304002', '457962719505549308', null, '6', '80330a8e8a317d865f19ec894fe00068', '46969954304002', '1', '2018-04-20 10:49:14', null, null, null, 'outgoing', '{}', '80330a8e8a317d865f19ec894fe00068', '2018-04-20 12:00:06', '0', '2018-04-20 12:00:06');
INSERT INTO `im_msg_send` VALUES ('1303', '45519313371137', '458015595737122856', '[):]', '1', 'a93b63352a92e74f675631ede70a84ae', '45519313371137', '1', '2018-04-20 14:14:25', null, null, null, 'outgoing', '{}', 'a93b63352a92e74f675631ede70a84ae', '2018-04-20 16:00:00', '0', '2018-04-20 16:00:00');
INSERT INTO `im_msg_send` VALUES ('1304', '46898589270017', '458039539525490688', '[):][):]', '1', 'a93b63352a92e74f675631ede70a84ae', '46898589270017', '1', '2018-04-20 15:47:20', null, null, null, 'outgoing', '{}', 'a93b63352a92e74f675631ede70a84ae', '2018-04-20 17:00:00', '0', '2018-04-20 17:00:00');
INSERT INTO `im_msg_send` VALUES ('1305', '46988921995265', '458040117487994944', '[:-o]', '1', '7aa31891dd94e35cf46257ab03cf7b10', '46988921995265', '1', '2018-04-20 15:49:35', null, null, null, 'outgoing', '{}', '7aa31891dd94e35cf46257ab03cf7b10', '2018-04-20 17:00:00', '0', '2018-04-20 17:00:00');
INSERT INTO `im_msg_send` VALUES ('1306', '46898589270017', '458040333771474940', '[:-o]', '1', 'a93b63352a92e74f675631ede70a84ae', '46898589270017', '1', '2018-04-20 15:50:25', null, null, null, 'outgoing', '{}', 'a93b63352a92e74f675631ede70a84ae', '2018-04-20 17:00:00', '0', '2018-04-20 17:00:00');
INSERT INTO `im_msg_send` VALUES ('1307', '46898589270017', '458041333043431408', '[:-o]', '1', 'a93b63352a92e74f675631ede70a84ae', '46898589270017', '1', '2018-04-20 15:54:18', null, null, null, 'outgoing', '{}', 'a93b63352a92e74f675631ede70a84ae', '2018-04-20 17:00:00', '0', '2018-04-20 17:00:00');
INSERT INTO `im_msg_send` VALUES ('1308', '46988921995265', '458041582818428928', '[):]', '1', '7aa31891dd94e35cf46257ab03cf7b10', '46988921995265', '1', '2018-04-20 15:55:16', null, null, null, 'outgoing', '{}', '7aa31891dd94e35cf46257ab03cf7b10', '2018-04-20 17:00:00', '0', '2018-04-20 17:00:00');
INSERT INTO `im_msg_send` VALUES ('1309', '46074988396545', '458060121944098828', '[:-o]', '1', '163c372a20fb60930fbe4a57d5388adb', '46074988396545', '1', '2018-04-20 17:07:13', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-20 19:00:03', '0', '2018-04-20 19:00:03');
INSERT INTO `im_msg_send` VALUES ('1310', '46969908166658', '458068061732210744', '[:-o]', '1', '163c372a20fb60930fbe4a57d5388adb', '46969908166658', '1', '2018-04-20 17:38:01', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-20 19:00:03', '0', '2018-04-20 19:00:03');
INSERT INTO `im_msg_send` VALUES ('1311', '46806233841665', '458072036846077956', ' ', '1', '163c372a20fb60930fbe4a57d5388adb', '46806233841665', '1', '2018-04-20 17:53:27', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-20 19:00:03', '0', '2018-04-20 19:00:03');
INSERT INTO `im_msg_send` VALUES ('1312', '46806233841665', '458072062368421892', '在', '1', '163c372a20fb60930fbe4a57d5388adb', '46806233841665', '1', '2018-04-20 17:53:33', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-20 19:00:03', '0', '2018-04-20 19:00:03');
INSERT INTO `im_msg_send` VALUES ('1313', '46806233841665', '458072130353891332', '我', '1', '163c372a20fb60930fbe4a57d5388adb', '46806233841665', '1', '2018-04-20 17:53:48', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-20 19:00:03', '0', '2018-04-20 19:00:03');
INSERT INTO `im_msg_send` VALUES ('1314', '46896235216897', '458072813236914180', '我', '1', '163c372a20fb60930fbe4a57d5388adb', '46896235216897', '1', '2018-04-20 17:56:27', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-20 19:00:03', '0', '2018-04-20 19:00:03');
INSERT INTO `im_msg_send` VALUES ('1315', '46896235216897', '458072974306580484', '这', '1', '163c372a20fb60930fbe4a57d5388adb', '46896235216897', '1', '2018-04-20 17:57:05', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-20 19:00:03', '0', '2018-04-20 19:00:03');
INSERT INTO `im_msg_send` VALUES ('1316', '46896235216897', '458072998973278212', '但', '1', '163c372a20fb60930fbe4a57d5388adb', '46896235216897', '1', '2018-04-20 17:57:11', null, null, null, 'outgoing', '{}', '163c372a20fb60930fbe4a57d5388adb', '2018-04-20 19:00:03', '0', '2018-04-20 19:00:03');

-- ----------------------------
-- Table structure for im_service_key
-- ----------------------------
DROP TABLE IF EXISTS `im_service_key`;
CREATE TABLE `im_service_key` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(32) DEFAULT NULL COMMENT '关键字',
  `message_detail` varchar(128) DEFAULT NULL COMMENT '消息内容',
  `message_type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '消息类型（1：文字 2：图片 3：地址 4：语音 5：视频 6：文件）',
  `addr` varchar(100) DEFAULT NULL COMMENT '地址',
  `lat` varchar(20) DEFAULT NULL COMMENT '纬度',
  `lng` varchar(20) DEFAULT NULL COMMENT '经度',
  `ext` varchar(256) DEFAULT NULL COMMENT '扩展字段，json字符串',
  `creator` varchar(32) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im_service_key
-- ----------------------------
INSERT INTO `im_service_key` VALUES ('1', '你好', '欢迎使用永慈系统', '1', null, null, null, null, null, null, '0', '2018-04-03 13:35:40');
INSERT INTO `im_service_key` VALUES ('2', '谢谢', '感谢使用永慈APP', '1', null, null, null, null, null, null, '0', null);

-- ----------------------------
-- Table structure for im_service_key_ref
-- ----------------------------
DROP TABLE IF EXISTS `im_service_key_ref`;
CREATE TABLE `im_service_key_ref` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `community_id` varchar(20) DEFAULT NULL COMMENT '群组ID',
  `key_id` varchar(20) DEFAULT NULL COMMENT '关键字ID',
  `creator` varchar(32) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of im_service_key_ref
-- ----------------------------
INSERT INTO `im_service_key_ref` VALUES ('1', '46349422755843', '1', null, null, '0', '2018-04-13 15:20:39');
INSERT INTO `im_service_key_ref` VALUES ('2', '45445858525185', '1', null, null, '0', '2018-04-03 15:21:54');
INSERT INTO `im_service_key_ref` VALUES ('3', '46349422755843', '2', null, null, '0', '2018-04-13 15:20:40');

-- ----------------------------
-- Table structure for long_care_estimate
-- ----------------------------
DROP TABLE IF EXISTS `long_care_estimate`;
CREATE TABLE `long_care_estimate` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(19) DEFAULT NULL COMMENT '用户id',
  `community_street` varchar(64) DEFAULT NULL COMMENT '社区街道',
  `community_rating` varchar(64) DEFAULT NULL COMMENT '社区评级',
  `care_plan_id` bigint(19) DEFAULT NULL COMMENT '护理计划id',
  `estimate_type` varchar(16) DEFAULT NULL COMMENT '评估类型',
  `estimate_status` varchar(16) DEFAULT NULL COMMENT '评估状态',
  `admissible_institution` varchar(64) DEFAULT NULL COMMENT '受理机构',
  `accept_date` datetime DEFAULT NULL COMMENT '受理日期',
  `mobile` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `is_delete` int(2) DEFAULT NULL COMMENT '0、未删除 1、已删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='长护险用户评估信息表';

-- ----------------------------
-- Records of long_care_estimate
-- ----------------------------
INSERT INTO `long_care_estimate` VALUES ('1', '1', '黄埔大街', '3星级', '1', '打针', '良好', '盈康疗养院', '2018-04-18 17:33:20', '15266892563', '0', '2018-04-18 17:33:47', '2018-04-18 17:33:50');

-- ----------------------------
-- Table structure for long_care_principal
-- ----------------------------
DROP TABLE IF EXISTS `long_care_principal`;
CREATE TABLE `long_care_principal` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL COMMENT '委托人名字',
  `user_id` bigint(19) DEFAULT NULL COMMENT '用户id',
  `principal_identity_card` varchar(32) DEFAULT NULL COMMENT '委托人身份证号',
  `mobile` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `is_delete` int(2) DEFAULT NULL COMMENT '0、未删除 1、已删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='长护险用户委托人信息表';

-- ----------------------------
-- Records of long_care_principal
-- ----------------------------
INSERT INTO `long_care_principal` VALUES ('1', '隔壁老王', '1', '310108197003125784', '18366994812', '0', '2018-04-18 17:30:00', '2018-04-18 17:30:03');

-- ----------------------------
-- Table structure for long_care_user
-- ----------------------------
DROP TABLE IF EXISTS `long_care_user`;
CREATE TABLE `long_care_user` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) DEFAULT NULL COMMENT '名字',
  `identity_card` varchar(32) DEFAULT NULL COMMENT '身份证号',
  `social_security_card` varchar(32) DEFAULT NULL COMMENT '社保卡号',
  `status` int(2) DEFAULT NULL COMMENT '状态：1、有效，2、无效',
  `is_delete` int(2) DEFAULT NULL COMMENT '0、未删除 1、已删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='长护险用户信息表';

-- ----------------------------
-- Records of long_care_user
-- ----------------------------
INSERT INTO `long_care_user` VALUES ('1', '孙若楠', '310108197003125783', '0003042590', '1', '0', '2018-04-18 15:10:56', '2018-04-18 15:11:00');

-- ----------------------------
-- Table structure for long_care_user_detail
-- ----------------------------
DROP TABLE IF EXISTS `long_care_user_detail`;
CREATE TABLE `long_care_user_detail` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(19) DEFAULT NULL COMMENT '用户id',
  `sex` int(2) DEFAULT NULL COMMENT '性别：1、男，2、女，3、未知',
  `age` int(4) DEFAULT NULL COMMENT '年龄',
  `bereaved_old_folk` int(2) DEFAULT NULL COMMENT '是否孤老：1、是，2、否',
  `tel_phone` varchar(11) DEFAULT NULL COMMENT '电话号码',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `zip_code` varchar(16) DEFAULT NULL COMMENT '收信邮编',
  `residential_address` varchar(128) DEFAULT NULL COMMENT '居住地址',
  `inside_address` varchar(128) DEFAULT NULL COMMENT '收信地址',
  `personnel_nature` varchar(64) DEFAULT NULL COMMENT '人员性质',
  `is_delete` int(2) DEFAULT NULL COMMENT '0、未删除 1、已删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='长护险用户信息详情表';

-- ----------------------------
-- Records of long_care_user_detail
-- ----------------------------
INSERT INTO `long_care_user_detail` VALUES ('1', '1', '2', '22', '2', '021456', '18366992356', '200120', '希尔顿大酒店', '天上人间', '银行职员', '0', '2018-04-18 17:27:26', '2018-04-18 17:27:28');

-- ----------------------------
-- Table structure for msg_equipment
-- ----------------------------
DROP TABLE IF EXISTS `msg_equipment`;
CREATE TABLE `msg_equipment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `equipment_id` varchar(50) NOT NULL DEFAULT '' COMMENT '设备ID',
  `label_id` varchar(50) NOT NULL DEFAULT '' COMMENT '标签id',
  `is_delete` tinyint(2) DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='推送设备';

-- ----------------------------
-- Records of msg_equipment
-- ----------------------------
INSERT INTO `msg_equipment` VALUES ('1', '934c3d6849350bac88313cb5962568b4', '1001', '0', '2018-04-17 10:50:24', '2018-04-17 10:50:24');
INSERT INTO `msg_equipment` VALUES ('2', '65f43e8bf1d600a0bc39711667ef371e', '1002', '0', '2018-04-17 10:50:26', '2018-04-17 10:50:26');
INSERT INTO `msg_equipment` VALUES ('3', '07942b54dbb1decf510850023d54e15e', '1001', '0', '2018-04-17 17:56:04', '2018-04-17 17:56:04');
INSERT INTO `msg_equipment` VALUES ('4', '2f11fc1dd78733acba98bc67749f491f', '1001', '0', '2018-04-18 17:31:35', '2018-04-18 17:31:35');

-- ----------------------------
-- Table structure for msg_label
-- ----------------------------
DROP TABLE IF EXISTS `msg_label`;
CREATE TABLE `msg_label` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `label_id` varchar(16) DEFAULT NULL COMMENT '标签ID',
  `parent_label_id` varchar(16) DEFAULT NULL COMMENT '父标签ID',
  `label_name` varchar(16) DEFAULT NULL COMMENT '标签名称',
  `label_desc` varchar(64) DEFAULT NULL COMMENT '标签描述',
  `creator` varchar(32) DEFAULT '' COMMENT '创建人',
  `is_delete` tinyint(2) DEFAULT '0' COMMENT '是否删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='标签表';

-- ----------------------------
-- Records of msg_label
-- ----------------------------
INSERT INTO `msg_label` VALUES ('1', '1001', null, 'java', null, '', '0', '2018-04-17 10:47:03', '2018-04-17 10:47:07');
INSERT INTO `msg_label` VALUES ('2', '1002', null, 'android', null, '', '0', '2018-04-17 10:47:04', '2018-04-17 10:47:05');
INSERT INTO `msg_label` VALUES ('3', '1003', null, 'leader', null, '', '0', '2018-04-18 17:00:52', '2018-04-18 17:00:54');

-- ----------------------------
-- Table structure for msg_push
-- ----------------------------
DROP TABLE IF EXISTS `msg_push`;
CREATE TABLE `msg_push` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `push_name_type` tinyint(2) NOT NULL DEFAULT '0',
  `push_name` varchar(50) NOT NULL DEFAULT '',
  `push_description` varchar(50) NOT NULL DEFAULT '',
  `push_type` int(11) DEFAULT '0',
  `push_content` varchar(50) DEFAULT '',
  `push_status` tinyint(2) DEFAULT '0',
  `icon_url` varchar(50) DEFAULT '',
  `url` varchar(50) DEFAULT '',
  `is_delete` int(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='消息推送表';

-- ----------------------------
-- Records of msg_push
-- ----------------------------
INSERT INTO `msg_push` VALUES ('1', '1', '0', '0', '0', '0', '0', '', '', '0', '2018-03-24 15:46:02', '2018-04-17 11:09:15');
INSERT INTO `msg_push` VALUES ('2', '0', '0', '0', '0', '0', '0', '', '', '0', '2018-03-24 15:48:46', '2018-04-02 10:20:29');
INSERT INTO `msg_push` VALUES ('3', '0', '0', '0', '0', '0', '0', '', '', '0', '2018-03-24 15:50:48', '2018-04-02 10:20:31');
INSERT INTO `msg_push` VALUES ('4', '0', '0', '0', '0', '0', '0', '', '', '0', '2018-03-24 15:53:03', '2018-04-09 11:42:16');

-- ----------------------------
-- Table structure for msg_push_info
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_info`;
CREATE TABLE `msg_push_info` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `push_type` tinyint(2) DEFAULT '0' COMMENT '推送类型0消息1订阅号',
  `push_type_name` varchar(50) DEFAULT '' COMMENT '推送类型名称',
  `message_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '消息类型',
  `message_name` varchar(50) NOT NULL DEFAULT '' COMMENT '消息类型名称',
  `message_type_logo` varchar(50) DEFAULT '' COMMENT '消息类型logo',
  `is_delete` int(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='消息推送表';

-- ----------------------------
-- Records of msg_push_info
-- ----------------------------
INSERT INTO `msg_push_info` VALUES ('1', '0', '消息', '1', '盈康精选', '1522583593711.V0001.png', '0', '2018-04-20 14:56:03', '2018-04-21 11:33:31');
INSERT INTO `msg_push_info` VALUES ('2', '0', '消息', '2', '亲情关注', '1522583593711.V0001.png', '0', '2018-04-20 14:56:07', '2018-04-21 11:33:34');
INSERT INTO `msg_push_info` VALUES ('3', '0', '消息', '3', '预约挂号提醒', '1522583593711.V0001.png', '0', '2018-04-20 14:56:10', '2018-04-21 11:33:39');
INSERT INTO `msg_push_info` VALUES ('4', '0', '消息', '3', '群组服务提醒', '1522583593711.V0001.png', '0', '2018-04-20 14:56:12', '2018-04-21 11:33:37');

-- ----------------------------
-- Table structure for msg_push_record
-- ----------------------------
DROP TABLE IF EXISTS `msg_push_record`;
CREATE TABLE `msg_push_record` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `task_id` varchar(50) NOT NULL DEFAULT '' COMMENT '任务ID',
  `account_id` varchar(50) NOT NULL DEFAULT '' COMMENT '账户ID',
  `equipment_id` varchar(50) DEFAULT '' COMMENT '设备号',
  `push_type` tinyint(2) DEFAULT '0' COMMENT '推送类型',
  `message_type` tinyint(2) DEFAULT '0' COMMENT '消息类型',
  `reade_status` tinyint(2) DEFAULT '0' COMMENT '阅读状态',
  `content` varchar(256) DEFAULT '0' COMMENT '内容',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0：成功，1：失败',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='消息推送记录表';

-- ----------------------------
-- Records of msg_push_record
-- ----------------------------
INSERT INTO `msg_push_record` VALUES ('1', 'OSS-0421_QOXeDeH8no5HMw1tJrZiQ9', 'hm_mi9zm785zq8nx', '934c3d6849350bac88313cb5962568b4', null, null, null, '郭锐您好，这是一条测试信息', '0', '2018-04-21 16:41:25');
INSERT INTO `msg_push_record` VALUES ('2', 'OSS-0421_3dnck7frr47rE51q9Eg0f4', 'hm_s9kpcie2i9369', '65f43e8bf1d600a0bc39711667ef371e', null, null, null, '黄启煌您好，这是一条测试信息', '0', '2018-04-21 16:41:26');
INSERT INTO `msg_push_record` VALUES ('3', 'OSS-0421_Prg8d1F2jt6UI6Iy30I0g5', 'hm_a2ksmvsr8ip5x', '07942b54dbb1decf510850023d54e15e', null, null, null, '黄启煌您好，这是一条测试信息', '0', '2018-04-21 16:41:26');

-- ----------------------------
-- Table structure for msg_receiver
-- ----------------------------
DROP TABLE IF EXISTS `msg_receiver`;
CREATE TABLE `msg_receiver` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `account_id` varchar(50) NOT NULL DEFAULT '' COMMENT '账户ID',
  `msg_id` bigint(19) NOT NULL DEFAULT '0' COMMENT '消息ID',
  `status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消息接收表';

-- ----------------------------
-- Records of msg_receiver
-- ----------------------------

-- ----------------------------
-- Table structure for msg_task_job
-- ----------------------------
DROP TABLE IF EXISTS `msg_task_job`;
CREATE TABLE `msg_task_job` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(32) DEFAULT NULL COMMENT '作业名称',
  `job_group_name` varchar(32) DEFAULT NULL COMMENT '作业组名称',
  `trigger_name` varchar(32) DEFAULT NULL COMMENT '触发器名称',
  `trigger_group_name` varchar(50) DEFAULT NULL COMMENT '触发器组名称',
  `corn` varchar(32) DEFAULT NULL COMMENT 'corn表达式',
  `job_status` int(4) DEFAULT NULL COMMENT '0.禁用 1.启用 2.暂停',
  `desc` varchar(128) DEFAULT NULL COMMENT '任务描述',
  `is_delete` int(4) DEFAULT NULL COMMENT '0.失效 1.有效',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务执行表';

-- ----------------------------
-- Records of msg_task_job
-- ----------------------------

-- ----------------------------
-- Table structure for msg_template
-- ----------------------------
DROP TABLE IF EXISTS `msg_template`;
CREATE TABLE `msg_template` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `template_name` varchar(50) DEFAULT '0' COMMENT '模板名称',
  `template_content` varchar(128) DEFAULT '0' COMMENT '模板内容',
  `template_logo` varchar(50) DEFAULT '0' COMMENT '模板图像',
  `content_url` varchar(50) DEFAULT '0' COMMENT '消息详情链接',
  `is_delete` tinyint(2) DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='推送模板表';

-- ----------------------------
-- Records of msg_template
-- ----------------------------
INSERT INTO `msg_template` VALUES ('1', '测试', '{name}您好，这是一条测试信息', 'icon.png', 'https://www.baidu.com/', '0', '2018-04-17 11:03:14', '2018-04-17 11:03:18');
INSERT INTO `msg_template` VALUES ('2', '短信', '您好{name}，公司计划于{date}召开{content}会议，会议地址：{adress}，请关注，收到回复。', 'icon.png', 'https://www.baidu.com/', '0', '2018-04-18 17:37:51', '2018-04-18 17:37:54');

-- ----------------------------
-- Table structure for pay_apply_refund
-- ----------------------------
DROP TABLE IF EXISTS `pay_apply_refund`;
CREATE TABLE `pay_apply_refund` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(32) DEFAULT NULL COMMENT '退款订单号',
  `refund_order_id` varchar(32) DEFAULT NULL COMMENT '退款订单号',
  `refund_channel` tinyint(2) DEFAULT NULL COMMENT '退款渠道：1:支付宝 2:微信 3:快捷通 4:网银 5:原路返还',
  `refund_account` varchar(32) NOT NULL COMMENT '退款账号',
  `refund_name` timestamp NULL DEFAULT NULL COMMENT '退款对象名',
  `refund_detail` bigint(19) DEFAULT NULL COMMENT '退款明细ID',
  `refund_amount` decimal(19,2) NOT NULL COMMENT '退款金额',
  `refund_account_id` varchar(32) DEFAULT NULL COMMENT '退款申请人ID',
  `refund_reason` varchar(128) DEFAULT NULL COMMENT '退款原因',
  `refund_voucher` varchar(64) DEFAULT NULL COMMENT '退款凭证',
  `remark` varchar(128) DEFAULT NULL COMMENT '备注',
  `audit_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '审核状态：0:待审核 1：审核通过 2：审核不通过',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) DEFAULT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='退款申请表';

-- ----------------------------
-- Records of pay_apply_refund
-- ----------------------------

-- ----------------------------
-- Table structure for pay_merch_notify
-- ----------------------------
DROP TABLE IF EXISTS `pay_merch_notify`;
CREATE TABLE `pay_merch_notify` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(24) NOT NULL COMMENT '订单ID',
  `mch_id` varchar(30) NOT NULL COMMENT '商户ID',
  `mch_order_no` varchar(30) NOT NULL COMMENT '商户订单号',
  `order_type` varchar(8) NOT NULL COMMENT '订单类型:1-支付,2-转账,3-退款',
  `notify_count` tinyint(6) NOT NULL DEFAULT '0' COMMENT '通知次数',
  `result` varchar(2048) DEFAULT NULL COMMENT '通知响应结果',
  `last_notify_time` datetime DEFAULT NULL COMMENT '最后一次通知时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未删除 1已删除',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `IDX_MchId_OrderType_MchOrderNo` (`mch_id`,`order_type`,`mch_order_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='商户通知表';

-- ----------------------------
-- Records of pay_merch_notify
-- ----------------------------

-- ----------------------------
-- Table structure for pay_order
-- ----------------------------
DROP TABLE IF EXISTS `pay_order`;
CREATE TABLE `pay_order` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(32) DEFAULT NULL COMMENT '订单号',
  `pay_type` tinyint(2) DEFAULT NULL COMMENT '支付方式：1:到院支付 2:线上支付 3:退款',
  `pay_channel` tinyint(2) DEFAULT NULL COMMENT '支付渠道：1:支付宝 2:微信 3:快捷通 4:网银',
  `prescribe_id` varchar(32) NOT NULL COMMENT '处方编号',
  `prescribe_amount` decimal(19,2) NOT NULL COMMENT '处方金额',
  `real_amount` decimal(19,2) NOT NULL COMMENT '实付金额',
  `pay_status` tinyint(2) NOT NULL COMMENT '支付状态，1：已支付，2：支付中，3：未支付，4：支付失败',
  `creator` varchar(32) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付订单表';

-- ----------------------------
-- Records of pay_order
-- ----------------------------

-- ----------------------------
-- Table structure for pay_order_date
-- ----------------------------
DROP TABLE IF EXISTS `pay_order_date`;
CREATE TABLE `pay_order_date` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `date_str` varchar(8) NOT NULL COMMENT '日期',
  `part_order` varchar(11) NOT NULL COMMENT '订单号部分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pay_order_date
-- ----------------------------

-- ----------------------------
-- Table structure for pay_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `pay_order_detail`;
CREATE TABLE `pay_order_detail` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(32) NOT NULL COMMENT '订单编号',
  `pay_id` varchar(32) DEFAULT NULL COMMENT '支付ID',
  `pay_channel` tinyint(2) NOT NULL COMMENT '1:支付宝 2:微信 3:快捷通 4:网银',
  `pay_user_name` varchar(32) NOT NULL COMMENT '支付对象名',
  `pay_account` varchar(32) NOT NULL COMMENT '支付账号',
  `pay_trade_no` varchar(32) NOT NULL COMMENT '支付交易流水号',
  `amount` decimal(19,2) NOT NULL COMMENT '金额',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) DEFAULT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付订单详情表';

-- ----------------------------
-- Records of pay_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for pay_refund
-- ----------------------------
DROP TABLE IF EXISTS `pay_refund`;
CREATE TABLE `pay_refund` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(19) DEFAULT NULL COMMENT '退款订单号',
  `refund_order_id` varchar(32) DEFAULT NULL COMMENT '退款订单号',
  `refund_operator` varchar(32) DEFAULT NULL COMMENT '退款操作人',
  `refund_amount` decimal(19,2) DEFAULT NULL COMMENT '退款金额',
  `refund_trade_no` varchar(32) DEFAULT NULL COMMENT '退款流水号',
  `refund_status` tinyint(2) NOT NULL COMMENT '1已退款 2未退款 3退款中	',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) DEFAULT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付退款表';

-- ----------------------------
-- Records of pay_refund
-- ----------------------------

-- ----------------------------
-- Table structure for pay_trade_record
-- ----------------------------
DROP TABLE IF EXISTS `pay_trade_record`;
CREATE TABLE `pay_trade_record` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(32) NOT NULL COMMENT '订单号',
  `pay_channel` tinyint(2) DEFAULT NULL COMMENT '支付渠道：1:支付宝 2:微信 3:快捷通 4:网银',
  `pay_account` varchar(32) DEFAULT NULL COMMENT '支付者账号',
  `pay_trade_no` varchar(32) DEFAULT NULL COMMENT '支付流水号',
  `amount` decimal(19,2) DEFAULT NULL COMMENT '金额',
  `return_status` varchar(8) DEFAULT NULL COMMENT '返回状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `creator` varchar(32) DEFAULT NULL,
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0未删除 1已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='支付记录表';

-- ----------------------------
-- Records of pay_trade_record
-- ----------------------------

-- ----------------------------
-- Table structure for security_service_sign
-- ----------------------------
DROP TABLE IF EXISTS `security_service_sign`;
CREATE TABLE `security_service_sign` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) DEFAULT NULL COMMENT '标题',
  `type` int(2) DEFAULT NULL COMMENT 'url类型：0、不跳转 1、原生跳转，2、APP内部网页 3、APP外部网页',
  `url` varchar(64) DEFAULT NULL COMMENT 'url路径',
  `is_delete` int(2) DEFAULT NULL COMMENT '0、未删除 1、已删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='安行宝体征测量';

-- ----------------------------
-- Records of security_service_sign
-- ----------------------------
INSERT INTO `security_service_sign` VALUES ('1', '今日步数', '0', 'http://www.baidu.com', '0', '2018-04-17 14:41:36', '2018-04-17 15:48:14');
INSERT INTO `security_service_sign` VALUES ('2', '呼吸频率', '0', null, '0', '2018-04-17 14:41:36', '2018-04-17 14:41:39');
INSERT INTO `security_service_sign` VALUES ('3', '心率数据', '0', null, '0', '2018-04-17 14:41:36', '2018-04-17 14:41:39');

-- ----------------------------
-- Table structure for sms_blacklist
-- ----------------------------
DROP TABLE IF EXISTS `sms_blacklist`;
CREATE TABLE `sms_blacklist` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `black_mobile` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `black_status` int(4) DEFAULT NULL COMMENT '0.失效 1.有效',
  `black_reason` varchar(200) DEFAULT NULL COMMENT '拉入黑名单的具体理由',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信黑名单表';

-- ----------------------------
-- Records of sms_blacklist
-- ----------------------------

-- ----------------------------
-- Table structure for sms_filter_detail
-- ----------------------------
DROP TABLE IF EXISTS `sms_filter_detail`;
CREATE TABLE `sms_filter_detail` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `send_mobile` varchar(11) DEFAULT NULL COMMENT '发送的手机号',
  `send_channel` int(4) DEFAULT NULL COMMENT '发送渠道 0.助通   1.阿里   2.云之讯',
  `send_body` varchar(200) DEFAULT NULL COMMENT '发送内容',
  `shield_code` int(4) DEFAULT NULL COMMENT '1.敏感词 2.黑名单 3.其他',
  `shield_info` varchar(128) DEFAULT NULL COMMENT '具体屏蔽原因',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` int(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信过滤明细表';

-- ----------------------------
-- Records of sms_filter_detail
-- ----------------------------

-- ----------------------------
-- Table structure for sms_irregular_mobile
-- ----------------------------
DROP TABLE IF EXISTS `sms_irregular_mobile`;
CREATE TABLE `sms_irregular_mobile` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拦截不规则手机号表';

-- ----------------------------
-- Records of sms_irregular_mobile
-- ----------------------------

-- ----------------------------
-- Table structure for sms_label
-- ----------------------------
DROP TABLE IF EXISTS `sms_label`;
CREATE TABLE `sms_label` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `label_id` varchar(11) DEFAULT NULL COMMENT '标签ID',
  `label_mobile` varchar(11) DEFAULT NULL COMMENT '手机号码',
  `label_status` int(4) DEFAULT NULL COMMENT '0.失效 1.有效',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信标签表';

-- ----------------------------
-- Records of sms_label
-- ----------------------------

-- ----------------------------
-- Table structure for sms_left_amount
-- ----------------------------
DROP TABLE IF EXISTS `sms_left_amount`;
CREATE TABLE `sms_left_amount` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `channel` int(4) DEFAULT NULL COMMENT '0.助通 1.阿里 2.云之讯',
  `type` int(4) DEFAULT NULL COMMENT '0：单发 1：群发',
  `remainder_amount` bigint(19) DEFAULT NULL COMMENT '剩余短信数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='短信剩余条数表';

-- ----------------------------
-- Records of sms_left_amount
-- ----------------------------
INSERT INTO `sms_left_amount` VALUES ('19', '0', '0', '1', '2018-03-09 15:00:33', '2018-03-09 15:00:33');
INSERT INTO `sms_left_amount` VALUES ('20', '0', '1', '8', '2018-03-09 15:00:34', '2018-03-09 15:00:34');
INSERT INTO `sms_left_amount` VALUES ('21', '0', '0', '51', '2018-03-09 17:16:16', '2018-03-09 17:16:16');
INSERT INTO `sms_left_amount` VALUES ('22', '0', '1', '58', '2018-03-09 17:16:16', '2018-03-09 17:16:16');
INSERT INTO `sms_left_amount` VALUES ('23', '0', '0', '24', '2018-04-18 15:13:42', '2018-04-18 15:13:42');
INSERT INTO `sms_left_amount` VALUES ('24', '0', '1', '48', '2018-04-18 15:13:42', '2018-04-18 15:13:42');

-- ----------------------------
-- Table structure for sms_replay_detail
-- ----------------------------
DROP TABLE IF EXISTS `sms_replay_detail`;
CREATE TABLE `sms_replay_detail` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `replay_id` varchar(32) DEFAULT NULL COMMENT '回执ID',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `replay_msg` varchar(64) DEFAULT NULL COMMENT '回执信息',
  `replay_status` varchar(32) DEFAULT NULL COMMENT '回执状态',
  `replay_time` timestamp NULL DEFAULT NULL COMMENT '回执时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` int(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信回执明细表';

-- ----------------------------
-- Records of sms_replay_detail
-- ----------------------------

-- ----------------------------
-- Table structure for sms_reply_detail
-- ----------------------------
DROP TABLE IF EXISTS `sms_reply_detail`;
CREATE TABLE `sms_reply_detail` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `replay_id` varchar(32) DEFAULT NULL COMMENT '回执ID',
  `mobile` varchar(11) DEFAULT NULL COMMENT '手机号',
  `channel` int(4) DEFAULT NULL COMMENT '0：助通 1：阿里 2：云之讯',
  `replay_body` varchar(200) DEFAULT NULL COMMENT '回复内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` int(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信回复明细表';

-- ----------------------------
-- Records of sms_reply_detail
-- ----------------------------

-- ----------------------------
-- Table structure for sms_send_code
-- ----------------------------
DROP TABLE IF EXISTS `sms_send_code`;
CREATE TABLE `sms_send_code` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `job_id` varchar(32) DEFAULT NULL COMMENT '任务ID',
  `send_mobile` varchar(11) DEFAULT NULL COMMENT '发送的手机号',
  `send_type` int(4) DEFAULT NULL COMMENT '1：营销，2：验证码，3：通知，4：其他',
  `send_channel` int(4) DEFAULT NULL COMMENT '发送渠道 0.助通   1.阿里   2.云之讯',
  `send_body` varchar(200) DEFAULT NULL COMMENT '发送内容',
  `replay_id` varchar(32) DEFAULT NULL COMMENT '回执id',
  `send_status` int(4) DEFAULT NULL COMMENT '1.发送成功 2.提交成功 3.提交失败 4.回执失败',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` int(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='验证码明细表';

-- ----------------------------
-- Records of sms_send_code
-- ----------------------------
INSERT INTO `sms_send_code` VALUES ('2', null, '18701785384', '2', '0', '【海尔医疗】您的验证码为', '201803121418122473616', '2', '2018-03-12 14:18:15', '0', '2018-03-12 14:18:15');
INSERT INTO `sms_send_code` VALUES ('3', null, '18701785384', '2', '0', '【海尔医疗】您的验证码为', '201803121434427593834', '2', '2018-03-12 14:34:45', '0', '2018-03-12 14:34:45');
INSERT INTO `sms_send_code` VALUES ('4', null, '18701785384', '2', '0', '【海尔医疗】您的验证码为', '201803121502085640834', '2', '2018-03-12 15:02:11', '0', '2018-03-12 15:02:11');
INSERT INTO `sms_send_code` VALUES ('5', null, '18701785384', '2', '0', '【海尔医疗】您的验证码为', '201803121503467602402', '2', '2018-03-12 15:03:49', '0', '2018-03-12 15:03:49');
INSERT INTO `sms_send_code` VALUES ('6', null, '18701785384', '2', '0', '【海尔医疗】您的验证码为', '201803121505165919638', '2', '2018-03-12 15:05:19', '0', '2018-03-12 15:05:19');
INSERT INTO `sms_send_code` VALUES ('7', null, '18701785384', '2', '0', '【海尔医疗】您的验证码为', '201803121505245085285', '2', '2018-03-12 15:05:27', '0', '2018-03-12 15:05:27');
INSERT INTO `sms_send_code` VALUES ('13', null, '18701785384', '2', '0', '【海尔医疗】您的验证码为996427', 'username wrong', '3', '2018-03-16 16:54:38', '0', '2018-03-16 16:54:38');
INSERT INTO `sms_send_code` VALUES ('14', null, '18701785384', '2', '0', '【海尔医疗】您的验证码为049960', '201803161656325435358', '2', '2018-03-16 16:56:40', '0', '2018-03-16 16:56:40');
INSERT INTO `sms_send_code` VALUES ('15', null, '15565125335', '2', '0', '【海尔医疗】您的验证码为963251', '201803161656522124480', '2', '2018-03-16 16:56:56', '0', '2018-03-16 16:56:56');
INSERT INTO `sms_send_code` VALUES ('16', null, '18701785384', '2', '0', '【医疗平台】您的验证码为744043', '201803161706317725380', '2', '2018-03-16 17:06:36', '0', '2018-03-16 17:06:36');
INSERT INTO `sms_send_code` VALUES ('17', null, '15565125335', '2', '0', '【医疗平台】您的验证码为791041', '201803161707219481941', '2', '2018-03-16 17:07:26', '0', '2018-03-16 17:07:26');
INSERT INTO `sms_send_code` VALUES ('18', null, '15565125335', '2', '0', '【医疗平台】您的验证码为993390', '201803161709468687055', '2', '2018-03-16 17:09:51', '0', '2018-03-16 17:09:51');
INSERT INTO `sms_send_code` VALUES ('19', null, '15565125335', '2', '0', '【医疗平台】您的验证码为733431', '201803161711227131726', '2', '2018-03-16 17:11:26', '0', '2018-03-16 17:11:26');
INSERT INTO `sms_send_code` VALUES ('20', null, '15565125335', '2', '0', '【医疗平台】您的验证码为736842', '201803161713454474563', '2', '2018-03-16 17:13:49', '0', '2018-03-16 17:13:49');
INSERT INTO `sms_send_code` VALUES ('21', null, '15565125335', '2', '0', '【医疗平台】您的验证码为844985', '201803161736514248931', '2', '2018-03-16 17:36:55', '0', '2018-03-16 17:36:55');
INSERT INTO `sms_send_code` VALUES ('22', null, '18701785384', '2', '0', '【医疗平台】您的验证码为411539', '201803161746494519885', '2', '2018-03-16 17:46:54', '0', '2018-03-16 17:46:54');
INSERT INTO `sms_send_code` VALUES ('23', null, '15821890403', '2', '0', '【医疗平台】您的验证码为076652', '201803301638464544316', '2', '2018-03-30 16:39:31', '0', '2018-03-30 16:39:31');
INSERT INTO `sms_send_code` VALUES ('24', null, '15821890403', '2', '0', '【医疗平台】您的验证码为481988', '201803301645571164796', '2', '2018-03-30 16:46:41', '0', '2018-03-30 16:46:41');
INSERT INTO `sms_send_code` VALUES ('25', null, '15821890403', '2', '0', '【医疗平台】您的验证码为924659', '201803301650430985013', '2', '2018-03-30 16:51:27', '0', '2018-03-30 16:51:27');
INSERT INTO `sms_send_code` VALUES ('26', null, '15565125335', '2', '0', '【医疗平台】您的验证码为753263', '201804031404533562267', '2', '2018-04-03 14:05:39', '0', '2018-04-03 14:05:39');
INSERT INTO `sms_send_code` VALUES ('27', null, '15565125335', '2', '0', '【医疗平台】您的验证码为249993', '201804031405581361158', '2', '2018-04-03 14:06:44', '0', '2018-04-03 14:06:44');
INSERT INTO `sms_send_code` VALUES ('28', null, '15565125335', '2', '0', '【医疗平台】您的验证码为285135', '201804031407048276833', '2', '2018-04-03 14:07:51', '0', '2018-04-03 14:07:51');
INSERT INTO `sms_send_code` VALUES ('29', null, '15565125335', '2', '0', '【医疗平台】您的验证码为632173', '201804031412125146125', '2', '2018-04-03 14:12:59', '0', '2018-04-03 14:12:59');
INSERT INTO `sms_send_code` VALUES ('30', null, '15565125335', '2', '0', '【医疗平台】您的验证码为022437', '201804031502071347043', '2', '2018-04-03 15:02:53', '0', '2018-04-03 15:02:53');
INSERT INTO `sms_send_code` VALUES ('31', null, '18701785384', '2', '0', '【医疗平台】您的验证码为496526', '201804031503302509682', '2', '2018-04-03 15:04:16', '0', '2018-04-03 15:04:16');
INSERT INTO `sms_send_code` VALUES ('32', null, '15565125335', '2', '0', '【医疗平台】您的验证码为285661', '201804031525304396875', '2', '2018-04-03 15:26:16', '0', '2018-04-03 15:26:16');
INSERT INTO `sms_send_code` VALUES ('33', null, '17708494021', '2', '0', '【医疗平台】您的验证码为201971', '201804181540165532557', '2', '2018-04-18 15:41:11', '0', '2018-04-18 15:41:11');
INSERT INTO `sms_send_code` VALUES ('34', null, '17708494023', '2', '0', '【医疗平台】您的验证码为321547', '201804181548216905933', '2', '2018-04-18 15:49:16', '0', '2018-04-18 15:49:16');
INSERT INTO `sms_send_code` VALUES ('35', null, '17708494023', '2', '0', '【医疗平台】您的验证码为064791', '201804181611050365554', '2', '2018-04-18 16:11:59', '0', '2018-04-18 16:11:59');
INSERT INTO `sms_send_code` VALUES ('36', null, '17708494021', '2', '0', '【医疗平台】您的验证码为383839', '201804181629526403338', '2', '2018-04-18 16:30:47', '0', '2018-04-18 16:30:47');
INSERT INTO `sms_send_code` VALUES ('37', null, '17708494023', '2', '0', '【医疗平台】您的验证码为162663', '201804181632303279220', '2', '2018-04-18 16:33:25', '0', '2018-04-18 16:33:25');
INSERT INTO `sms_send_code` VALUES ('38', null, '17708494023', '2', '0', '【医疗平台】您的验证码为988453', '201804181644010261643', '2', '2018-04-18 16:44:55', '0', '2018-04-18 16:44:55');
INSERT INTO `sms_send_code` VALUES ('39', null, '18701785384', '2', '0', '【医疗平台】您的验证码为542337', '201804181658379665555', '2', '2018-04-18 16:58:52', '0', '2018-04-18 16:58:52');
INSERT INTO `sms_send_code` VALUES ('40', null, '17708494021', '2', '0', '【医疗平台】您的验证码为600000', '201804181702588154855', '2', '2018-04-18 17:03:53', '0', '2018-04-18 17:03:53');
INSERT INTO `sms_send_code` VALUES ('41', null, '17708494023', '2', '0', '【医疗平台】您的验证码为244598', '201804181704457662963', '2', '2018-04-18 17:05:40', '0', '2018-04-18 17:05:40');
INSERT INTO `sms_send_code` VALUES ('42', null, '15608470049', '2', '0', '【医疗平台】您的验证码为414514', '201804181705591504933', '2', '2018-04-18 17:06:54', '0', '2018-04-18 17:06:54');
INSERT INTO `sms_send_code` VALUES ('43', null, '18994710039', '2', '0', '【医疗平台】您的验证码为926340', '201804181714340082109', '2', '2018-04-18 17:15:29', '0', '2018-04-18 17:15:29');
INSERT INTO `sms_send_code` VALUES ('44', null, '18994710039', '2', '0', '【医疗平台】您的验证码为713300', '201804181732191078758', '2', '2018-04-18 17:33:14', '0', '2018-04-18 17:33:14');
INSERT INTO `sms_send_code` VALUES ('45', null, '15821890403', '2', '0', '【医疗平台】您的验证码为788215', '201804191121116967859', '2', '2018-04-19 11:22:07', '0', '2018-04-19 11:22:07');
INSERT INTO `sms_send_code` VALUES ('46', null, '15821890403', '2', '0', '【医疗平台】您的验证码为143513', '201804191124074762372', '2', '2018-04-19 11:25:02', '0', '2018-04-19 11:25:02');
INSERT INTO `sms_send_code` VALUES ('47', null, '15821890403', '2', '0', '【医疗平台】您的验证码为999961', '201804191131093456695', '2', '2018-04-19 11:32:04', '0', '2018-04-19 11:32:04');
INSERT INTO `sms_send_code` VALUES ('48', null, '15565125335', '2', '0', '【医疗平台】您的验证码为490737', '201804191142377515052', '2', '2018-04-19 11:43:33', '0', '2018-04-19 11:43:33');
INSERT INTO `sms_send_code` VALUES ('49', null, '17708494021', '2', '0', '【医疗平台】您的验证码为149170', '201804191221399488521', '2', '2018-04-19 12:22:35', '0', '2018-04-19 12:22:35');
INSERT INTO `sms_send_code` VALUES ('50', null, '17708494023', '2', '0', '【医疗平台】您的验证码为457877', '201804191244453506453', '2', '2018-04-19 12:45:40', '0', '2018-04-19 12:45:40');
INSERT INTO `sms_send_code` VALUES ('51', null, '15608470049', '2', '0', '【医疗平台】您的验证码为677333', '201804191245058557252', '2', '2018-04-19 12:46:01', '0', '2018-04-19 12:46:01');
INSERT INTO `sms_send_code` VALUES ('52', null, '15608470049', '2', '0', '【医疗平台】您的验证码为442025', '201804191310205102654', '2', '2018-04-19 13:11:15', '0', '2018-04-19 13:11:15');
INSERT INTO `sms_send_code` VALUES ('53', null, '17708494021', '2', '0', '【医疗平台】您的验证码为659635', 'NO sum', '3', '2018-04-19 16:00:38', '0', '2018-04-19 16:00:38');
INSERT INTO `sms_send_code` VALUES ('54', null, '17708494021', '2', '0', '【医疗平台】您的验证码为284001', 'NO sum', '3', '2018-04-19 16:16:48', '0', '2018-04-19 16:16:48');

-- ----------------------------
-- Table structure for sms_send_marketing
-- ----------------------------
DROP TABLE IF EXISTS `sms_send_marketing`;
CREATE TABLE `sms_send_marketing` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `job_id` varchar(32) DEFAULT NULL COMMENT '回执ID',
  `send_mobile` varchar(11) DEFAULT NULL COMMENT '发送的手机号',
  `send_type` int(4) DEFAULT NULL COMMENT '1：营销，2：验证码，3：其他',
  `send_channel` int(4) DEFAULT NULL COMMENT '发送渠道 0.助通   1.阿里   2.云之讯',
  `send_body` varchar(200) DEFAULT NULL COMMENT '发送内容',
  `replay_id` varchar(32) DEFAULT NULL COMMENT '回执id',
  `send_status` int(4) DEFAULT NULL COMMENT '1.发送成功 2.提交成功 3.提交失败 4.回执失败',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` int(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='短信营销明细表';

-- ----------------------------
-- Records of sms_send_marketing
-- ----------------------------
INSERT INTO `sms_send_marketing` VALUES ('6', null, null, null, null, '测试内容', '12316545121', null, null, '0', null);
INSERT INTO `sms_send_marketing` VALUES ('7', null, null, null, null, '测试内容', '12316545121', null, null, '0', null);
INSERT INTO `sms_send_marketing` VALUES ('8', null, null, null, null, '测试内容', '12316545121', null, null, '0', null);
INSERT INTO `sms_send_marketing` VALUES ('9', null, null, null, null, '测试内容', '12316545121', null, null, '0', null);
INSERT INTO `sms_send_marketing` VALUES ('10', null, null, null, null, '测试内容', '12316545121', null, null, '0', null);
INSERT INTO `sms_send_marketing` VALUES ('11', null, null, null, null, '测试内容', '12316545121', null, null, '0', null);
INSERT INTO `sms_send_marketing` VALUES ('12', null, null, null, null, '测试内容', '12316545121', null, null, '0', null);
INSERT INTO `sms_send_marketing` VALUES ('13', null, '17768601406', '1', '0', '123123123', null, '3', '2018-04-16 09:21:59', '0', '2018-04-16 09:21:59');
INSERT INTO `sms_send_marketing` VALUES ('14', null, '17768601406', '1', '0', '【手动】123123123', '201804160922123399463', '2', '2018-04-16 09:23:06', '0', '2018-04-16 09:23:06');
INSERT INTO `sms_send_marketing` VALUES ('15', null, null, null, null, '测试内容', '12316545121', null, null, '0', null);
INSERT INTO `sms_send_marketing` VALUES ('16', null, null, null, null, '测试内容', '12316545121', null, null, '0', null);
INSERT INTO `sms_send_marketing` VALUES ('17', null, null, null, null, '测试内容', '12316545121', null, null, '0', null);
INSERT INTO `sms_send_marketing` VALUES ('18', null, null, null, null, '测试内容', '12316545121', null, null, '0', null);
INSERT INTO `sms_send_marketing` VALUES ('19', null, null, null, null, '测试内容', '12316545121', null, null, '0', null);

-- ----------------------------
-- Table structure for sms_send_notify
-- ----------------------------
DROP TABLE IF EXISTS `sms_send_notify`;
CREATE TABLE `sms_send_notify` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `job_id` varchar(32) DEFAULT NULL COMMENT '任务ID',
  `send_mobile` varchar(11) DEFAULT NULL COMMENT '发送的手机号',
  `send_type` int(4) DEFAULT NULL COMMENT '1：营销，2：验证码，3：通知，4：其他',
  `send_channel` int(4) DEFAULT NULL COMMENT '发送渠道 0.助通   1.阿里   2.云之讯',
  `send_body` varchar(200) DEFAULT NULL COMMENT '发送内容',
  `replay_id` varchar(32) DEFAULT NULL COMMENT '回执id',
  `send_status` int(4) DEFAULT NULL COMMENT '1.发送成功 2.提交成功 3.提交失败 4.回执失败',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` int(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COMMENT='短信通知明细表';

-- ----------------------------
-- Records of sms_send_notify
-- ----------------------------
INSERT INTO `sms_send_notify` VALUES ('1', null, '17768601406', '2', '0', '污水报警null', 'Signature format error', '3', '2018-04-13 18:01:14', '0', '2018-04-13 18:01:14');
INSERT INTO `sms_send_notify` VALUES ('2', null, '18701785384', '2', '0', '【测试】您好我在测试null', 'password wrong', '3', '2018-04-17 17:58:29', '0', '2018-04-17 17:58:29');
INSERT INTO `sms_send_notify` VALUES ('3', null, '18701785384', '2', '0', '【测试】正在测试null', 'password wrong', '3', '2018-04-17 18:26:13', '0', '2018-04-17 18:26:13');
INSERT INTO `sms_send_notify` VALUES ('4', null, '18701785384', '2', '0', '【测试】正在测试null', 'password wrong', '3', '2018-04-18 09:06:01', '0', '2018-04-18 09:06:01');
INSERT INTO `sms_send_notify` VALUES ('5', null, '18701785384', '2', '0', '【测试】测试null', '201804180911058530585', '2', '2018-04-18 09:11:14', '0', '2018-04-18 09:11:14');
INSERT INTO `sms_send_notify` VALUES ('6', null, '17768601406', '2', '0', '【测试】你好，设备deviceId报addr超出水位警戒值：value，请尽快处理null', '201804181046331272262', '2', '2018-04-18 10:47:27', '0', '2018-04-18 10:47:27');
INSERT INTO `sms_send_notify` VALUES ('7', null, '15565125335', '2', '0', 'nullnull', 'Signature format error', '3', '2018-04-18 16:38:19', '0', '2018-04-18 16:38:19');
INSERT INTO `sms_send_notify` VALUES ('8', null, '17768601406', '2', '0', '【测试】你好，设备deviceId报addr超出水位警戒值：value，请尽快处理null', '201804181733425554229', '2', '2018-04-18 17:34:37', '0', '2018-04-18 17:34:37');
INSERT INTO `sms_send_notify` VALUES ('9', null, '15565125335', '2', '0', '【测试】你好，设备deviceId报addr超出水位警戒值：value，请尽快处理null', '201804181734100775449', '2', '2018-04-18 17:35:05', '0', '2018-04-18 17:35:05');
INSERT INTO `sms_send_notify` VALUES ('10', null, '15565125335', '2', '0', '【测试】你好，设备deviceId报addr超出水位警戒值：value，请尽快处理null', '201804181736362558212', '2', '2018-04-18 17:37:31', '0', '2018-04-18 17:37:31');
INSERT INTO `sms_send_notify` VALUES ('11', null, '17768601406', '2', '0', '【测试】你好，设备deviceId报addr超出水位警戒值：value，请尽快处理null', '201804181736405374391', '2', '2018-04-18 17:37:35', '0', '2018-04-18 17:37:35');
INSERT INTO `sms_send_notify` VALUES ('12', null, '15565125335', '2', '0', '【测试】你好，设备deviceId报addr超出水位警戒值：value，请尽快处理null', '201804181736410432396', '2', '2018-04-18 17:37:35', '0', '2018-04-18 17:37:35');
INSERT INTO `sms_send_notify` VALUES ('13', null, '17768601406', '2', '0', '【测试】你好，设备deviceId报addr超出水位警戒值：value，请尽快处理null', '201804181744090483944', '2', '2018-04-18 17:45:04', '0', '2018-04-18 17:45:04');
INSERT INTO `sms_send_notify` VALUES ('14', null, '15565125335', '2', '0', '【测试】你好，设备deviceId报addr超出水位警戒值：value，请尽快处理null', '201804181745355081502', '2', '2018-04-18 17:46:30', '0', '2018-04-18 17:46:30');
INSERT INTO `sms_send_notify` VALUES ('15', null, '17768601406', '2', '0', '【测试】你好，设备deviceId报addr超出水位警戒值：value，请尽快处理null', '201804181746090455537', '2', '2018-04-18 17:47:04', '0', '2018-04-18 17:47:04');
INSERT INTO `sms_send_notify` VALUES ('16', null, '15565125335', '2', '0', '【测试】你好，设备deviceId报addr超出水位警戒值：value，请尽快处理null', '201804181746092031672', '2', '2018-04-18 17:47:04', '0', '2018-04-18 17:47:04');
INSERT INTO `sms_send_notify` VALUES ('17', null, '17768601406', '2', '0', '【蓝领】你好，设备deviceId报addr超出水位警戒值：value，请尽快处理null', '201804181755090554481', '2', '2018-04-18 17:56:04', '0', '2018-04-18 17:56:04');
INSERT INTO `sms_send_notify` VALUES ('18', null, '15565125335', '2', '0', '【蓝领】你好，设备deviceId报addr超出水位警戒值：value，请尽快处理null', '201804181755092065504', '2', '2018-04-18 17:56:04', '0', '2018-04-18 17:56:04');
INSERT INTO `sms_send_notify` VALUES ('19', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：32.0，请尽快处理null', '201804181824373406128', '2', '2018-04-18 18:25:32', '0', '2018-04-18 18:25:32');
INSERT INTO `sms_send_notify` VALUES ('20', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：32.0，请尽快处理null', '201804181824375503611', '2', '2018-04-18 18:25:32', '0', '2018-04-18 18:25:32');
INSERT INTO `sms_send_notify` VALUES ('21', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：24.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:42:51', '0', '2018-04-18 18:42:51');
INSERT INTO `sms_send_notify` VALUES ('22', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：24.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:42:51', '0', '2018-04-18 18:42:51');
INSERT INTO `sms_send_notify` VALUES ('23', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：24.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:43:51', '0', '2018-04-18 18:43:51');
INSERT INTO `sms_send_notify` VALUES ('24', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：24.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:43:51', '0', '2018-04-18 18:43:51');
INSERT INTO `sms_send_notify` VALUES ('25', null, '17708494021', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：23.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:46:51', '0', '2018-04-18 18:46:51');
INSERT INTO `sms_send_notify` VALUES ('26', null, '13968830916', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：23.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:50:51', '0', '2018-04-18 18:50:51');
INSERT INTO `sms_send_notify` VALUES ('27', null, '15821890403', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：23.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:50:51', '0', '2018-04-18 18:50:51');
INSERT INTO `sms_send_notify` VALUES ('28', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：24.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:50:51', '0', '2018-04-18 18:50:51');
INSERT INTO `sms_send_notify` VALUES ('29', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：24.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:50:52', '0', '2018-04-18 18:50:52');
INSERT INTO `sms_send_notify` VALUES ('30', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：41.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:51:51', '0', '2018-04-18 18:51:51');
INSERT INTO `sms_send_notify` VALUES ('31', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：41.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:51:51', '0', '2018-04-18 18:51:51');
INSERT INTO `sms_send_notify` VALUES ('32', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：37.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:52:51', '0', '2018-04-18 18:52:51');
INSERT INTO `sms_send_notify` VALUES ('33', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：37.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:52:51', '0', '2018-04-18 18:52:51');
INSERT INTO `sms_send_notify` VALUES ('34', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：37.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:53:51', '0', '2018-04-18 18:53:51');
INSERT INTO `sms_send_notify` VALUES ('35', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：37.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:53:51', '0', '2018-04-18 18:53:51');
INSERT INTO `sms_send_notify` VALUES ('36', null, '17708494021', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：41.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:54:51', '0', '2018-04-18 18:54:51');
INSERT INTO `sms_send_notify` VALUES ('37', null, '17708494021', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：25.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:56:51', '0', '2018-04-18 18:56:51');
INSERT INTO `sms_send_notify` VALUES ('38', null, '13968830916', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：41.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:58:51', '0', '2018-04-18 18:58:51');
INSERT INTO `sms_send_notify` VALUES ('39', null, '15821890403', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：41.0，请尽快处理null', 'NO sum', '3', '2018-04-18 18:58:51', '0', '2018-04-18 18:58:51');
INSERT INTO `sms_send_notify` VALUES ('40', null, '15821890403', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：25.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:00:51', '0', '2018-04-18 19:00:51');
INSERT INTO `sms_send_notify` VALUES ('41', null, '13968830916', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：25.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:00:51', '0', '2018-04-18 19:00:51');
INSERT INTO `sms_send_notify` VALUES ('42', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：23.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:02:51', '0', '2018-04-18 19:02:51');
INSERT INTO `sms_send_notify` VALUES ('43', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：23.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:02:51', '0', '2018-04-18 19:02:51');
INSERT INTO `sms_send_notify` VALUES ('44', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：23.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:03:51', '0', '2018-04-18 19:03:51');
INSERT INTO `sms_send_notify` VALUES ('45', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：23.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:03:51', '0', '2018-04-18 19:03:51');
INSERT INTO `sms_send_notify` VALUES ('46', null, '17708494021', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：17.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:06:51', '0', '2018-04-18 19:06:51');
INSERT INTO `sms_send_notify` VALUES ('47', null, '15821890403', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：17.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:10:51', '0', '2018-04-18 19:10:51');
INSERT INTO `sms_send_notify` VALUES ('48', null, '13968830916', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：17.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:10:51', '0', '2018-04-18 19:10:51');
INSERT INTO `sms_send_notify` VALUES ('49', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：13.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:10:51', '0', '2018-04-18 19:10:51');
INSERT INTO `sms_send_notify` VALUES ('50', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：13.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:10:52', '0', '2018-04-18 19:10:52');
INSERT INTO `sms_send_notify` VALUES ('51', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：13.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:11:51', '0', '2018-04-18 19:11:51');
INSERT INTO `sms_send_notify` VALUES ('52', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：13.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:11:51', '0', '2018-04-18 19:11:51');
INSERT INTO `sms_send_notify` VALUES ('53', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：25.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:12:51', '0', '2018-04-18 19:12:51');
INSERT INTO `sms_send_notify` VALUES ('54', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：25.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:12:51', '0', '2018-04-18 19:12:51');
INSERT INTO `sms_send_notify` VALUES ('55', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：25.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:13:51', '0', '2018-04-18 19:13:51');
INSERT INTO `sms_send_notify` VALUES ('56', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：25.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:13:51', '0', '2018-04-18 19:13:51');
INSERT INTO `sms_send_notify` VALUES ('57', null, '17708494021', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：13.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:14:51', '0', '2018-04-18 19:14:51');
INSERT INTO `sms_send_notify` VALUES ('58', null, '17708494021', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：12.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:16:51', '0', '2018-04-18 19:16:51');
INSERT INTO `sms_send_notify` VALUES ('59', null, '13968830916', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：13.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:18:51', '0', '2018-04-18 19:18:51');
INSERT INTO `sms_send_notify` VALUES ('60', null, '15821890403', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：13.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:18:51', '0', '2018-04-18 19:18:51');
INSERT INTO `sms_send_notify` VALUES ('61', null, '13968830916', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：12.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:20:51', '0', '2018-04-18 19:20:51');
INSERT INTO `sms_send_notify` VALUES ('62', null, '15821890403', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：12.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:20:51', '0', '2018-04-18 19:20:51');
INSERT INTO `sms_send_notify` VALUES ('63', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：29.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:22:51', '0', '2018-04-18 19:22:51');
INSERT INTO `sms_send_notify` VALUES ('64', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：29.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:22:51', '0', '2018-04-18 19:22:51');
INSERT INTO `sms_send_notify` VALUES ('65', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：29.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:23:51', '0', '2018-04-18 19:23:51');
INSERT INTO `sms_send_notify` VALUES ('66', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：29.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:23:51', '0', '2018-04-18 19:23:51');
INSERT INTO `sms_send_notify` VALUES ('67', null, '17708494021', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：15.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:26:51', '0', '2018-04-18 19:26:51');
INSERT INTO `sms_send_notify` VALUES ('68', null, '15821890403', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：15.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:30:51', '0', '2018-04-18 19:30:51');
INSERT INTO `sms_send_notify` VALUES ('69', null, '13968830916', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：15.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:30:51', '0', '2018-04-18 19:30:51');
INSERT INTO `sms_send_notify` VALUES ('70', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：15.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:30:51', '0', '2018-04-18 19:30:51');
INSERT INTO `sms_send_notify` VALUES ('71', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：15.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:30:52', '0', '2018-04-18 19:30:52');
INSERT INTO `sms_send_notify` VALUES ('72', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：15.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:31:51', '0', '2018-04-18 19:31:51');
INSERT INTO `sms_send_notify` VALUES ('73', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：15.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:31:51', '0', '2018-04-18 19:31:51');
INSERT INTO `sms_send_notify` VALUES ('74', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：36.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:32:51', '0', '2018-04-18 19:32:51');
INSERT INTO `sms_send_notify` VALUES ('75', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：36.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:32:51', '0', '2018-04-18 19:32:51');
INSERT INTO `sms_send_notify` VALUES ('76', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：36.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:33:51', '0', '2018-04-18 19:33:51');
INSERT INTO `sms_send_notify` VALUES ('77', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：36.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:33:51', '0', '2018-04-18 19:33:51');
INSERT INTO `sms_send_notify` VALUES ('78', null, '17708494021', '2', '0', '【蓝领】你好，设备4F006A80报B3西侧D05车位-污水井超出水位警戒值：15.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:34:51', '0', '2018-04-18 19:34:51');
INSERT INTO `sms_send_notify` VALUES ('79', null, '17708494021', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：17.0，请尽快处理null', 'NO sum', '3', '2018-04-18 19:36:51', '0', '2018-04-18 19:36:51');
INSERT INTO `sms_send_notify` VALUES ('80', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：24.0，请尽快处理null', 'NO sum', '3', '2018-04-18 20:13:45', '0', '2018-04-18 20:13:45');
INSERT INTO `sms_send_notify` VALUES ('81', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：24.0，请尽快处理null', 'NO sum', '3', '2018-04-18 20:13:45', '0', '2018-04-18 20:13:45');
INSERT INTO `sms_send_notify` VALUES ('82', null, '15821890403', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：25.0，请尽快处理null', 'NO sum', '3', '2018-04-18 20:15:45', '0', '2018-04-18 20:15:45');
INSERT INTO `sms_send_notify` VALUES ('83', null, '13968830916', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：25.0，请尽快处理null', 'NO sum', '3', '2018-04-18 20:15:45', '0', '2018-04-18 20:15:45');
INSERT INTO `sms_send_notify` VALUES ('84', null, '17708494021', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：14.0，请尽快处理null', 'NO sum', '3', '2018-04-18 20:16:45', '0', '2018-04-18 20:16:45');
INSERT INTO `sms_send_notify` VALUES ('85', null, '15821890403', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：14.0，请尽快处理null', 'NO sum', '3', '2018-04-18 20:20:45', '0', '2018-04-18 20:20:45');
INSERT INTO `sms_send_notify` VALUES ('86', null, '13968830916', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：14.0，请尽快处理null', 'NO sum', '3', '2018-04-18 20:20:45', '0', '2018-04-18 20:20:45');
INSERT INTO `sms_send_notify` VALUES ('87', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：23.0，请尽快处理null', 'NO sum', '3', '2018-04-18 20:23:45', '0', '2018-04-18 20:23:45');
INSERT INTO `sms_send_notify` VALUES ('88', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：23.0，请尽快处理null', 'NO sum', '3', '2018-04-18 20:23:45', '0', '2018-04-18 20:23:45');
INSERT INTO `sms_send_notify` VALUES ('89', null, '17708494021', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：16.0，请尽快处理null', 'NO sum', '3', '2018-04-18 20:26:45', '0', '2018-04-18 20:26:45');
INSERT INTO `sms_send_notify` VALUES ('90', null, '13968830916', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：16.0，请尽快处理null', 'NO sum', '3', '2018-04-18 20:30:45', '0', '2018-04-18 20:30:45');
INSERT INTO `sms_send_notify` VALUES ('91', null, '15821890403', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：16.0，请尽快处理null', 'NO sum', '3', '2018-04-18 20:32:26', '0', '2018-04-18 20:32:26');
INSERT INTO `sms_send_notify` VALUES ('92', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：37.0，请尽快处理null', 'NO sum', '3', '2018-04-18 21:03:14', '0', '2018-04-18 21:03:14');
INSERT INTO `sms_send_notify` VALUES ('93', null, '15821890403', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm_很污超出水位警戒值：37.0，请尽快处理null', 'NO sum', '3', '2018-04-18 21:13:53', '0', '2018-04-18 21:13:53');
INSERT INTO `sms_send_notify` VALUES ('94', null, '15565125335', '2', '0', '【蓝领】你好，设备4F006AD6报5F-0530IN温度超出警戒值：3.6，请尽快处理null', 'NO sum', '3', '2018-04-19 10:51:12', '0', '2018-04-19 10:51:12');
INSERT INTO `sms_send_notify` VALUES ('95', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006AD6报5F-0530IN温度超出警戒值：3.6，请尽快处理null', 'NO sum', '3', '2018-04-19 10:51:21', '0', '2018-04-19 10:51:21');
INSERT INTO `sms_send_notify` VALUES ('96', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm超出水位警戒值：26.0，请尽快处理null', 'NO sum', '3', '2018-04-19 17:25:12', '0', '2018-04-19 17:25:12');
INSERT INTO `sms_send_notify` VALUES ('97', null, '17708494021', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm超出水位警戒值：18.0，请尽快处理null', 'NO sum', '3', '2018-04-19 17:28:12', '0', '2018-04-19 17:28:12');
INSERT INTO `sms_send_notify` VALUES ('98', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A88报33层天台DTU左1-斜对面水箱超出水位警戒值：98.0，请尽快处理null', 'NO sum', '3', '2018-04-19 17:31:12', '0', '2018-04-19 17:31:12');
INSERT INTO `sms_send_notify` VALUES ('99', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm超出水位警戒值：19.0，请尽快处理null', 'NO sum', '3', '2018-04-19 17:32:12', '0', '2018-04-19 17:32:12');
INSERT INTO `sms_send_notify` VALUES ('100', null, '17708494021', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm超出水位警戒值：19.0，请尽快处理null', 'NO sum', '3', '2018-04-19 17:35:12', '0', '2018-04-19 17:35:12');
INSERT INTO `sms_send_notify` VALUES ('101', null, '13968830916', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm超出水位警戒值：20.0，请尽快处理null', 'NO sum', '3', '2018-04-19 17:55:31', '0', '2018-04-19 17:55:31');
INSERT INTO `sms_send_notify` VALUES ('102', null, '15821890403', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm超出水位警戒值：20.0，请尽快处理null', 'NO sum', '3', '2018-04-19 17:55:31', '0', '2018-04-19 17:55:31');
INSERT INTO `sms_send_notify` VALUES ('103', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A89报33层天台DTU左2-中间水箱超出水位警戒值：96.0，请尽快处理null', 'NO sum', '3', '2018-04-19 18:09:22', '0', '2018-04-19 18:09:22');
INSERT INTO `sms_send_notify` VALUES ('104', null, '13968830916', '2', '0', '【蓝领】你好，设备4F006A89报33层天台DTU左2-中间水箱超出水位警戒值：96.0，请尽快处理null', 'NO sum', '3', '2018-04-19 18:11:22', '0', '2018-04-19 18:11:22');
INSERT INTO `sms_send_notify` VALUES ('105', null, '15821890403', '2', '0', '【蓝领】你好，设备4F006A89报33层天台DTU左2-中间水箱超出水位警戒值：96.0，请尽快处理null', 'NO sum', '3', '2018-04-19 18:11:22', '0', '2018-04-19 18:11:22');
INSERT INTO `sms_send_notify` VALUES ('106', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm超出水位警戒值：30.0，请尽快处理null', 'NO sum', '3', '2018-04-19 18:18:22', '0', '2018-04-19 18:18:22');
INSERT INTO `sms_send_notify` VALUES ('107', null, '17768601406', '2', '0', '【蓝领】你好，设备4F006AE4报B2F-B247IN温度超出警戒值：2.5，请尽快处理null', 'NO sum', '3', '2018-04-19 18:18:22', '0', '2018-04-19 18:18:22');
INSERT INTO `sms_send_notify` VALUES ('108', null, '17708494021', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm超出水位警戒值：30.0，请尽快处理null', 'NO sum', '3', '2018-04-19 18:20:22', '0', '2018-04-19 18:20:22');
INSERT INTO `sms_send_notify` VALUES ('109', null, '15821890403', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm超出水位警戒值：23.0，请尽快处理null', 'NO sum', '3', '2018-04-19 18:22:22', '0', '2018-04-19 18:22:22');
INSERT INTO `sms_send_notify` VALUES ('110', null, '13968830916', '2', '0', '【蓝领】你好，设备4F006A81报B3南侧D73车位-污水井进门右_探头到池口约60cm超出水位警戒值：23.0，请尽快处理null', 'NO sum', '3', '2018-04-19 18:22:22', '0', '2018-04-19 18:22:22');

-- ----------------------------
-- Table structure for sms_task_job
-- ----------------------------
DROP TABLE IF EXISTS `sms_task_job`;
CREATE TABLE `sms_task_job` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `dist_label_id` varchar(11) DEFAULT NULL COMMENT '分发标签ID',
  `dist_templet_id` bigint(19) DEFAULT NULL COMMENT '分发模板ID',
  `is_delete` int(4) DEFAULT NULL COMMENT '0.失效 1.有效',
  `job_id` varchar(32) DEFAULT NULL COMMENT '任务id',
  `job_group` varchar(32) DEFAULT NULL COMMENT '任务分组',
  `corn` varchar(32) DEFAULT NULL COMMENT 'corn表达式',
  `job_status` int(4) DEFAULT NULL COMMENT '0.禁用 1.启用 3.暂停',
  `job_name` varchar(32) DEFAULT NULL COMMENT '任务名称',
  `desc` varchar(128) DEFAULT NULL COMMENT '任务描述',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务执行表';

-- ----------------------------
-- Records of sms_task_job
-- ----------------------------

-- ----------------------------
-- Table structure for sms_template
-- ----------------------------
DROP TABLE IF EXISTS `sms_template`;
CREATE TABLE `sms_template` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `template_id` bigint(19) DEFAULT NULL COMMENT '模板ID',
  `channel_id` int(4) DEFAULT NULL COMMENT '0.助通 1.阿里 2.云之讯',
  `channel_template_id` varchar(32) DEFAULT NULL COMMENT '渠道里面申请的模板ID',
  `template_status` int(4) DEFAULT NULL COMMENT '0.不允许使用 1.使用中',
  `template_body` varchar(200) DEFAULT NULL COMMENT '模板内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信模板表';

-- ----------------------------
-- Records of sms_template
-- ----------------------------

-- ----------------------------
-- Table structure for vi_goods
-- ----------------------------
DROP TABLE IF EXISTS `vi_goods`;
CREATE TABLE `vi_goods` (
  `goods_id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '服务ID',
  `product_id` bigint(19) NOT NULL COMMENT '产品ID',
  `unit` varchar(16) DEFAULT NULL COMMENT '单位',
  `goods_status` tinyint(2) DEFAULT NULL COMMENT '服务状态（0：仓库中；1：已发布；）',
  `sold_number` int(11) DEFAULT NULL COMMENT '销量',
  `sort` int(8) DEFAULT NULL COMMENT '排序权重',
  `creator` varchar(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务表';

-- ----------------------------
-- Records of vi_goods
-- ----------------------------

-- ----------------------------
-- Table structure for vi_goods_field
-- ----------------------------
DROP TABLE IF EXISTS `vi_goods_field`;
CREATE TABLE `vi_goods_field` (
  `attr_id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '属性ID',
  `product_id` bigint(19) DEFAULT NULL COMMENT '产品ID',
  `goods_id` bigint(19) DEFAULT NULL COMMENT '服务ID',
  `attr_name` varchar(128) DEFAULT NULL COMMENT '服务属性名称',
  `attr_type` tinyint(2) DEFAULT NULL COMMENT '服务属性类型（0：图片；1：文本；2：单选；3：复选）',
  `attr` varchar(256) DEFAULT NULL COMMENT '属性选项 或者 图片地址',
  `is_required` tinyint(2) DEFAULT NULL COMMENT '是否必填（0：选填；1：必填）',
  `is_show` tinyint(2) DEFAULT NULL COMMENT '是否作为显示（0：否；1：是）',
  `creator` varchar(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`attr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务属性表';

-- ----------------------------
-- Records of vi_goods_field
-- ----------------------------

-- ----------------------------
-- Table structure for vi_goods_gallery
-- ----------------------------
DROP TABLE IF EXISTS `vi_goods_gallery`;
CREATE TABLE `vi_goods_gallery` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `goods_id` bigint(19) DEFAULT NULL COMMENT '服务ID',
  `thumbnail` varchar(32) DEFAULT NULL COMMENT '图片KEY',
  `link` varchar(128) DEFAULT NULL COMMENT '图片链接',
  `sort` int(8) DEFAULT NULL COMMENT '排序权重',
  `creator` varchar(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vi_goods_gallery
-- ----------------------------

-- ----------------------------
-- Table structure for vi_goods_lv_price
-- ----------------------------
DROP TABLE IF EXISTS `vi_goods_lv_price`;
CREATE TABLE `vi_goods_lv_price` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `prodct_id` bigint(19) DEFAULT NULL COMMENT '产品ID',
  `goods_id` bigint(19) DEFAULT NULL COMMENT '服务ID',
  `lvid` int(8) DEFAULT NULL COMMENT '会员等级',
  `price` decimal(10,0) DEFAULT NULL COMMENT '服务价格',
  `plan_stime` datetime DEFAULT NULL COMMENT '接受预约开始时间',
  `plan_etime` datetime DEFAULT NULL COMMENT '接受预约结束时间',
  `creator` varchar(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vi_goods_lv_price
-- ----------------------------

-- ----------------------------
-- Table structure for vi_order
-- ----------------------------
DROP TABLE IF EXISTS `vi_order`;
CREATE TABLE `vi_order` (
  `order_id` varchar(24) NOT NULL COMMENT '订单编号',
  `product_id` bigint(19) DEFAULT NULL COMMENT '产品ID',
  `goods_id` bigint(19) DEFAULT NULL COMMENT '服务ID',
  `goods_name` varchar(128) DEFAULT NULL COMMENT '服务名称',
  `goods_unit` varchar(16) DEFAULT NULL COMMENT '单位',
  `goods_price` decimal(10,0) DEFAULT NULL COMMENT '价格',
  `plan_stime` datetime DEFAULT NULL COMMENT '预约开始时间',
  `plan_etime` datetime DEFAULT NULL COMMENT '预约结束时间',
  `addr` varchar(256) DEFAULT NULL COMMENT '预约地址',
  `amount` decimal(10,0) DEFAULT NULL COMMENT '订单金额',
  `pay_amount` decimal(10,0) DEFAULT NULL COMMENT '支付金额',
  `fee_amount` decimal(10,0) DEFAULT NULL COMMENT '优惠金额',
  `pay_type` tinyint(2) DEFAULT NULL COMMENT '支付方式（1：快捷通；2：海尔金融；3：支付宝；4：微信支付；5：apple pay）',
  `pay_status` tinyint(2) DEFAULT '0' COMMENT '支付状态（1：已支付；0：未支付）',
  `order_status` tinyint(2) DEFAULT NULL COMMENT '订单状态（0：已预约；1：已受理；2：已完成；3：已取消；4：拒绝受理）',
  `channel` varchar(16) DEFAULT NULL COMMENT '订单来源（web，ios，andriod，weixin）',
  `phone` varchar(11) DEFAULT NULL COMMENT '预约手机号',
  `real_name` varchar(255) DEFAULT NULL COMMENT '预约人真实姓名',
  `cancel_reason` varchar(128) DEFAULT NULL COMMENT '取消原因',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `pay_time` timestamp NULL DEFAULT NULL COMMENT '支付时间',
  `cancel_time` timestamp NULL DEFAULT NULL COMMENT '取消时间',
  `complate_time` timestamp NULL DEFAULT NULL COMMENT '完成时间',
  `handle_time` timestamp NULL DEFAULT NULL COMMENT '处理时间',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vi_order
-- ----------------------------

-- ----------------------------
-- Table structure for vi_order_goods_attr
-- ----------------------------
DROP TABLE IF EXISTS `vi_order_goods_attr`;
CREATE TABLE `vi_order_goods_attr` (
  `id` bigint(19) NOT NULL,
  `order_id` varchar(24) DEFAULT NULL COMMENT '订单编号',
  `product_id` bigint(19) DEFAULT NULL COMMENT '产品ID',
  `goods_id` bigint(19) DEFAULT NULL COMMENT '服务ID',
  `attr_id` bigint(19) DEFAULT NULL COMMENT '服务属性ID',
  `attr_name` varchar(128) DEFAULT NULL COMMENT '服务属性名称',
  `attr_type` tinyint(2) DEFAULT NULL COMMENT '属性类型',
  `attr_value` varchar(256) DEFAULT NULL COMMENT '服务属性值',
  `creator` varchar(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vi_order_goods_attr
-- ----------------------------

-- ----------------------------
-- Table structure for vi_product
-- ----------------------------
DROP TABLE IF EXISTS `vi_product`;
CREATE TABLE `vi_product` (
  `product_id` bigint(19) NOT NULL AUTO_INCREMENT COMMENT '产品ID',
  `name` varchar(128) DEFAULT NULL COMMENT '产品名称',
  `intro` varchar(128) DEFAULT NULL COMMENT '产品描述',
  `product_status` tinyint(2) DEFAULT NULL COMMENT '产品状态（0：仓库中；1：发布中）',
  `thumbnail` varchar(32) DEFAULT NULL COMMENT '产品图标',
  `creator` varchar(11) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_delete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0：未删除，1：已删除',
  `update_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vi_product
-- ----------------------------
