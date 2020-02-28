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

 Date: 03/02/2020 13:48:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for films
-- ----------------------------
DROP TABLE IF EXISTS `films`;
CREATE TABLE `films`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '名字',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `genre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of films
-- ----------------------------
INSERT INTO `films` VALUES (1, '复仇者联盟4：终局之战 BD1080P中字', '605vod-detail-id-24019.html', '科幻片', '2019-08-02');
INSERT INTO `films` VALUES (2, '复仇者联盟3：无限战争.修复版 BD1080P中字', '605vod-detail-id-23359.html', '科幻片', '2019-04-14');
INSERT INTO `films` VALUES (3, '复仇者联盟2：奥创纪元', 'zdvod-detail-id-47557.html', '科幻片', '2018-04-15');
INSERT INTO `films` VALUES (4, '复仇者联盟', 'zdvod-detail-id-47489.html', '科幻片', '2018-04-14');
INSERT INTO `films` VALUES (5, '盗梦空间HD高清', 'okvod-detail-id-4054.html', '剧情片', '2017-12-12');
INSERT INTO `films` VALUES (6, '幻影车神2HD', 'okvod-detail-id-37770.html', '动作片', '2019-08-02');
INSERT INTO `films` VALUES (7, '幻影车神HD', 'okvod-detail-id-37769.html', '动作片', '2019-08-02');

SET FOREIGN_KEY_CHECKS = 1;
