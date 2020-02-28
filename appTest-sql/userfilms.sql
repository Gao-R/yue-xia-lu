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

 Date: 03/02/2020 13:49:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for userfilms
-- ----------------------------
DROP TABLE IF EXISTS `userfilms`;
CREATE TABLE `userfilms`  (
  `last` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名字',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `genre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '时间',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of userfilms
-- ----------------------------
INSERT INTO `userfilms` VALUES ('https://qq.ziyuan605.com/20191224/v6XJHivV/index.m3u8', '精英律师', '605vod-detail-id-33148.html', '连续剧 ', '2020-01-13 09:58:00', '222');

SET FOREIGN_KEY_CHECKS = 1;
