/*
 Navicat Premium Data Transfer

 Source Server         : eiei
 Source Server Type    : MySQL
 Source Server Version : 100133
 Source Host           : localhost:3306
 Source Schema         : jotform

 Target Server Type    : MySQL
 Target Server Version : 100133
 File Encoding         : 65001

 Date: 12/06/2019 16:15:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for 90361021784452
-- ----------------------------
DROP TABLE IF EXISTS `90361021784452`;
CREATE TABLE `90361021784452`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `submission_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `formID` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `typea` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `typea8` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `name0` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `name1` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `phonenumber0` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `phonenumber1` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `date` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of 90361021784452
-- ----------------------------
INSERT INTO `90361021784452` VALUES (1, '4323166411228504951', '90361021784452', '61.19.202.221', 'textbox_sample4', 'textbox_sample5', 'John', 'Smith', '312', '312', '2019-04-29 10:10:41');
INSERT INTO `90361021784452` VALUES (2, '4323168971226828643', '90361021784452', '61.19.202.221', '20312', '2314', 'ทดสอบ', 'ว่า', '0dlk', '28319กดฟหกด', '2019-04-29 10:14:57');
INSERT INTO `90361021784452` VALUES (3, '4323170761226774852', '90361021784452', '61.19.202.221', 'textbox_sample4', 'textbox_sample5', 'John', 'Smith', '312', '312', '2019-04-29 10:17:56');

-- ----------------------------
-- Table structure for amphur
-- ----------------------------
DROP TABLE IF EXISTS `amphur`;
CREATE TABLE `amphur`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a1` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a2` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a3` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a4` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a5` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a6` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a7` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a8` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a9` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a10` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a11` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a12` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b1` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b2` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b3` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b4` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b5` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b6` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b7` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b8` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b9` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b10` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b11` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b12` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `apcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `apname` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of amphur
-- ----------------------------
INSERT INTO `amphur` VALUES (2, '12', '11', '4', '0', '5', '14', '7', '0', '0', '0', '0', '2', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '4', '1', 'เมือง');
INSERT INTO `amphur` VALUES (4, '13', '14', '0', '10', '10', '10', '0', '0', '10', '0', '0', '1', '10', '10', '0', '10', '10', '0', '10', '0', '10', '0', '10', '0', '2', 'ท่าศาลา');

-- ----------------------------
-- Table structure for amphur2
-- ----------------------------
DROP TABLE IF EXISTS `amphur2`;
CREATE TABLE `amphur2`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `a` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `b` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `pvcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of amphur2
-- ----------------------------
INSERT INTO `amphur2` VALUES (1, '1', '10', '', '');
INSERT INTO `amphur2` VALUES (2, '2', '14', '', '');

-- ----------------------------
-- Table structure for form1
-- ----------------------------
DROP TABLE IF EXISTS `form1`;
CREATE TABLE `form1`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `submission_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `formID` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `13` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `2` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `3` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `column_1` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `column_2` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of form1
-- ----------------------------
INSERT INTO `form1` VALUES (1, '', '', '', 'ทดสอบ', '', '', NULL, NULL);
INSERT INTO `form1` VALUES (2, '4252327591229629174', '90350664758464', '61.19.202.221', NULL, '', '', NULL, NULL);
INSERT INTO `form1` VALUES (3, '425166582122684', '9999', '5555', 'eiei', 'งิงิ', 'งะงะ', NULL, NULL);
INSERT INTO `form1` VALUES (4, '4252330981225544192', '90350664758464', '61.19.202.221', 'อิอิ', 'งุงิ', 'งะงะ', NULL, NULL);
INSERT INTO `form1` VALUES (5, '4252336691221636051', '90350664758464', '61.19.202.221', 'กำ', 'จิง', 'ว่ะ', NULL, NULL);

-- ----------------------------
-- Table structure for form_list
-- ----------------------------
DROP TABLE IF EXISTS `form_list`;
CREATE TABLE `form_list`  (
  `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `formID` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `formName` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of form_list
-- ----------------------------
INSERT INTO `form_list` VALUES (1, '90361021784452', NULL);

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a1` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a2` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a3` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a4` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a5` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a6` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a7` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a8` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a9` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a10` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a11` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a12` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b1` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b2` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b3` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b4` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b5` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b6` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b7` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b8` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b9` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b10` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b11` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b12` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `apcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `apname` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES (1, '25', '25', '4', '10', '15', '24', '7', '0', '10', '0', '0', '3', '10', '10', '0', '10', '10', '0', '10', '0', '10', '0', '10', '4', '', '');

-- ----------------------------
-- Table structure for rpst
-- ----------------------------
DROP TABLE IF EXISTS `rpst`;
CREATE TABLE `rpst`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `a1` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a2` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a3` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a4` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a5` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a6` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a7` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a8` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a9` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a10` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a11` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `a12` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b1` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b2` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b3` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b4` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b5` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b6` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b7` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b8` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b9` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b10` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b11` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `b12` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `apcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `rpstcode` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of rpst
-- ----------------------------
INSERT INTO `rpst` VALUES (1, '4', '3', '4', '', '5', '7', '7', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1', '08756');
INSERT INTO `rpst` VALUES (2, '3', '4', '', '', '', '', '', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '2', '08768');
INSERT INTO `rpst` VALUES (3, '5', '5', NULL, '5', '5', '5', NULL, NULL, '5', NULL, NULL, NULL, '5', '5', NULL, '5', '5', NULL, '5', NULL, '5', NULL, '5', NULL, '2', '09991');
INSERT INTO `rpst` VALUES (4, '5', '5', NULL, '5', '5', '5', NULL, NULL, '5', NULL, NULL, NULL, '5', '5', NULL, '5', '5', NULL, '5', NULL, '5', NULL, '5', NULL, '2', '09990');
INSERT INTO `rpst` VALUES (5, '6', '6', '', '', '', '', '', '', '', '', '', '2', '', '', '', '', '', '', '', '', '', '', '', '', '1', '08778');
INSERT INTO `rpst` VALUES (6, '2', '2', NULL, NULL, NULL, '7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '1', '08756');
INSERT INTO `rpst` VALUES (7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `rpst` VALUES (8, '2', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `rpst` VALUES (9, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');
INSERT INTO `rpst` VALUES (10, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Compact;

-- ----------------------------
-- Records of test
-- ----------------------------
INSERT INTO `test` VALUES (2, '12421', '323');
INSERT INTO `test` VALUES (3, 'fuc', 'thisshit');
INSERT INTO `test` VALUES (4, 'fuck', 'this shit');
INSERT INTO `test` VALUES (5, 'fuck', 'this shit');
INSERT INTO `test` VALUES (7, '12421', '12123');
INSERT INTO `test` VALUES (8, 'hahhaa', 'laugh');
INSERT INTO `test` VALUES (9, 'weiieie', 'dhcuudud');
INSERT INTO `test` VALUES (10, 'fuck', 'this shit huhu');
INSERT INTO `test` VALUES (11, 'sail', 'sail');
INSERT INTO `test` VALUES (12, 'eiei', 'uu');
INSERT INTO `test` VALUES (13, 'eiei', 'uu');
INSERT INTO `test` VALUES (14, 'test', 'redirect');
INSERT INTO `test` VALUES (15, 'test', 'redirect');
INSERT INTO `test` VALUES (16, '123123', '41243123');
INSERT INTO `test` VALUES (17, 'redirect', 'susu');
INSERT INTO `test` VALUES (18, 'baby', 'sail');
INSERT INTO `test` VALUES (19, 'fuck', 'fucksuxlux');

-- ----------------------------
-- Triggers structure for table amphur
-- ----------------------------
DROP TRIGGER IF EXISTS `resultap`;
delimiter ;;
CREATE TRIGGER `resultap` AFTER UPDATE ON `amphur` FOR EACH ROW UPDATE province SET 
a1 = (SELECT SUM(a1) FROM amphur WHERE 1),
a2 = (SELECT SUM(a2) FROM amphur WHERE 1),
a3 = (SELECT SUM(a3) FROM amphur WHERE 1),
a4 = (SELECT SUM(a4) FROM amphur WHERE 1),
a5 = (SELECT SUM(a5) FROM amphur WHERE 1),
a6 = (SELECT SUM(a6) FROM amphur WHERE 1),
a7 = (SELECT SUM(a7) FROM amphur WHERE 1),
a8 = (SELECT SUM(a8) FROM amphur WHERE 1),
a9 = (SELECT SUM(a9) FROM amphur WHERE 1),
a10 = (SELECT SUM(a10) FROM amphur WHERE 1),
a11 = (SELECT SUM(a11) FROM amphur WHERE 1),
a12 = (SELECT SUM(a12) FROM amphur WHERE 1),
b1 = (SELECT SUM(b1) FROM amphur WHERE 1),
b2 = (SELECT SUM(b2) FROM amphur WHERE 1),
b3 = (SELECT SUM(b3) FROM amphur WHERE 1),
b4 = (SELECT SUM(b4) FROM amphur WHERE 1),
b5 = (SELECT SUM(b5) FROM amphur WHERE 1),
b6 = (SELECT SUM(b6) FROM amphur WHERE 1),
b7 = (SELECT SUM(b7) FROM amphur WHERE 1),
b8 = (SELECT SUM(b8) FROM amphur WHERE 1),
b9 = (SELECT SUM(b9) FROM amphur WHERE 1),
b10 = (SELECT SUM(b10) FROM amphur WHERE 1),
b11 = (SELECT SUM(b11) FROM amphur WHERE 1),
b12 = (SELECT SUM(b12) FROM amphur WHERE 1)
;;
delimiter ;

-- ----------------------------
-- Triggers structure for table rpst
-- ----------------------------
DROP TRIGGER IF EXISTS `result`;
delimiter ;;
CREATE TRIGGER `result` AFTER UPDATE ON `rpst` FOR EACH ROW UPDATE amphur SET 
a1 = (SELECT SUM(a1) FROM rpst WHERE rpst.apcode = amphur.apcode),
a2 = (SELECT SUM(a2) FROM rpst WHERE rpst.apcode = amphur.apcode),
a3 = (SELECT SUM(a3) FROM rpst WHERE rpst.apcode = amphur.apcode),
a4 = (SELECT SUM(a4) FROM rpst WHERE rpst.apcode = amphur.apcode),
a5 = (SELECT SUM(a5) FROM rpst WHERE rpst.apcode = amphur.apcode),
a6 = (SELECT SUM(a6) FROM rpst WHERE rpst.apcode = amphur.apcode),
a7 = (SELECT SUM(a7) FROM rpst WHERE rpst.apcode = amphur.apcode),
a8 = (SELECT SUM(a8) FROM rpst WHERE rpst.apcode = amphur.apcode),
a9 = (SELECT SUM(a9) FROM rpst WHERE rpst.apcode = amphur.apcode),
a10 = (SELECT SUM(a10) FROM rpst WHERE rpst.apcode = amphur.apcode),
a11 = (SELECT SUM(a11) FROM rpst WHERE rpst.apcode = amphur.apcode),
a12 = (SELECT SUM(a12) FROM rpst WHERE rpst.apcode = amphur.apcode),
b1 = (SELECT SUM(b1) FROM rpst WHERE rpst.apcode = amphur.apcode),
b2 = (SELECT SUM(b2) FROM rpst WHERE rpst.apcode = amphur.apcode),
b3 = (SELECT SUM(b3) FROM rpst WHERE rpst.apcode = amphur.apcode),
b4 = (SELECT SUM(b4) FROM rpst WHERE rpst.apcode = amphur.apcode),
b5 = (SELECT SUM(b5) FROM rpst WHERE rpst.apcode = amphur.apcode),
b6 = (SELECT SUM(b6) FROM rpst WHERE rpst.apcode = amphur.apcode),
b7 = (SELECT SUM(b7) FROM rpst WHERE rpst.apcode = amphur.apcode),
b8 = (SELECT SUM(b8) FROM rpst WHERE rpst.apcode = amphur.apcode),
b9 = (SELECT SUM(b9) FROM rpst WHERE rpst.apcode = amphur.apcode),
b10 = (SELECT SUM(b10) FROM rpst WHERE rpst.apcode = amphur.apcode),
b11 = (SELECT SUM(b11) FROM rpst WHERE rpst.apcode = amphur.apcode),
b12 = (SELECT SUM(b12) FROM rpst WHERE rpst.apcode = amphur.apcode)
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
