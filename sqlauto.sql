/*
 Navicat Premium Data Transfer

 Source Server         : 1
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 11/05/2022 23:25:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_bd_diary
-- ----------------------------
DROP TABLE IF EXISTS `t_bd_diary`;
CREATE TABLE `t_bd_diary`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `diary` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_bd_diary
-- ----------------------------

-- ----------------------------
-- Table structure for t_bd_reserve
-- ----------------------------
DROP TABLE IF EXISTS `t_bd_reserve`;
CREATE TABLE `t_bd_reserve`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oper_data` datetime NULL DEFAULT NULL,
  `dest` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL COMMENT '目的地',
  `people` int(4) NULL DEFAULT NULL COMMENT '同行人数',
  `start_date` datetime NOT NULL COMMENT '出发日期',
  `end_date` datetime NOT NULL COMMENT '离开日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_bd_reserve
-- ----------------------------
INSERT INTO `t_bd_reserve` VALUES (1, '2022-05-11 22:30:31', '1', 123, '2022-05-11 22:30:38', '2022-05-11 22:30:42');
INSERT INTO `t_bd_reserve` VALUES (2, '2022-05-11 23:02:56', '中国', 3, '2022-05-11 22:30:38', '2022-05-11 22:30:38');

-- ----------------------------
-- Table structure for t_bd_user
-- ----------------------------
DROP TABLE IF EXISTS `t_bd_user`;
CREATE TABLE `t_bd_user`  (
  `user` int(4) NOT NULL,
  `pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`user`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_bd_user
-- ----------------------------
INSERT INTO `t_bd_user` VALUES (1, '1');
INSERT INTO `t_bd_user` VALUES (22, '22');
INSERT INTO `t_bd_user` VALUES (2222, '22');
INSERT INTO `t_bd_user` VALUES (2342, 'bcbe3365e6ac95ea2c0343a2395834dd');
INSERT INTO `t_bd_user` VALUES (1233, '81dc9bdb52d04dc20036dbd8313ed055');
INSERT INTO `t_bd_user` VALUES (1237, '81dc9bdb52d04dc20036dbd8313ed055');
INSERT INTO `t_bd_user` VALUES (1234, '81dc9bdb52d04dc20036dbd8313ed055');

SET FOREIGN_KEY_CHECKS = 1;
