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

 Date: 03/02/2020 13:47:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for artcle
-- ----------------------------
DROP TABLE IF EXISTS `artcle`;
CREATE TABLE `artcle`  (
  `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '图片id',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `lead` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '导语',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `time` datetime NULL DEFAULT NULL COMMENT '发表时间',
  `Identification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片属于',
  `likes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '点赞数',
  `is_artcle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `head_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `art_publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文章作者',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of artcle
-- ----------------------------
INSERT INTO `artcle` VALUES (30, '11', '', 'wwwww\nssss', 'http://123.56.254.73/artcles/1580188727465a.jpg', '2020-01-28 05:18:47', '1580188727087', '2', '0', 'http://123.56.254.73/headImgs/1580136802429p.jpg', '三亿少女的梦', '111');

SET FOREIGN_KEY_CHECKS = 1;
