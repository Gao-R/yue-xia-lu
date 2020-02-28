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

 Date: 03/02/2020 13:49:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `pass` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `csprng` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '盐值',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `qq` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'qq号',
  `cell_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电话',
  `mottot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '签名',
  `head_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `passold` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `administrator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('三亿少女的梦', '$2a$08$g4SrYvOFSIv6/j7LhepoPOXGVfq1krkzE7/U/34s3F1luZLwubzRK', '-653354602', '111', '111', '11', '我爱恰饭', 'http://123.56.254.73/headImgs/1580136802429p.jpg', '11', 'grg');
INSERT INTO `users` VALUES ('G', '$2a$08$hwIwuNcQDtDMLfjzASQlsu3BzE7R16W//3GAUoGft72mkqSrLEs8m', '-823672865', '222', '110', '22', 'qiang qiang', 'http://123.56.254.73/headImgs/1580138421884n.jpg', '22', '');
INSERT INTO `users` VALUES ('蓝天计划创始人', '$2a$08$RHlTGZ7AnMsN49uaNWYTbuqMurRXRRQ5nP.d1bqMdOqh.R7DwoMc6', '-1830952546', '333', '120', '333', '官方认证：蓝天计划', 'http://123.56.254.73/headImgs/1580138506536c.jpg', '33', '');

SET FOREIGN_KEY_CHECKS = 1;
