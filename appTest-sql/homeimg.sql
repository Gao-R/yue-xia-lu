/*
 Navicat Premium Data Transfer

 Source Server         : 111
 Source Server Type    : MySQL
 Source Server Version : 50546
 Source Host           : 112.121.164.118:0
 Source Schema         : sqlapptest

 Target Server Type    : MySQL
 Target Server Version : 50546
 File Encoding         : 65001

 Date: 03/02/2020 13:48:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for homeimg
-- ----------------------------
DROP TABLE IF EXISTS `homeimg`;
CREATE TABLE `homeimg`  (
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of homeimg
-- ----------------------------
INSERT INTO `homeimg` VALUES ('http://123.56.254.73/headImgs/aa.jpg');

SET FOREIGN_KEY_CHECKS = 1;
