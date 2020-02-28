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

 Date: 03/02/2020 13:48:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for fiction
-- ----------------------------
DROP TABLE IF EXISTS `fiction`;
CREATE TABLE `fiction`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '小说名',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '小说路径',
  `num` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最新',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of fiction
-- ----------------------------
INSERT INTO `fiction` VALUES (1, '斗破苍穹', 'https://www.x33xs.com/image/217/217214/217214s.jpg', '玄幻小说', '天蚕土豆', '/33xs/217/217214/', '关于离开', '2013-05-21');
INSERT INTO `fiction` VALUES (2, '斗罗大陆', 'https://www.xsbiquge.com/cover/2/2278/2278s.jpg', '玄幻奇幻', '唐家三少', 'https://www.xsbiquge.com/2_2278/', '第三百三十六章 大结局', '2020-01-08');
INSERT INTO `fiction` VALUES (3, '斗罗大陆II绝世唐门', 'https://www.x33xs.com/image/272/272856/272856s.jpg', '玄幻小说', '唐家三少', '/33xs/272/272856/', '全本结局', '2016-09-22');
INSERT INTO `fiction` VALUES (4, '斗罗大陆3龙王传说', 'https://www.xsbiquge.com/cover/9/9647/9647s.jpg', '玄幻奇幻', '唐家三少', 'https://www.xsbiquge.com/9_9647/', '第一千九百八十一章 永', '2018-08-24');
INSERT INTO `fiction` VALUES (5, '斗罗大陆4终极斗罗', 'ttps://www.xsbiquge.com/3_3004/', '玄幻奇幻', '唐家三少', 'https://www.xsbiquge.com/3_3004/', '第八百一十六章 龙神投', '2020-01-20');
INSERT INTO `fiction` VALUES (6, '生肖守护神', 'https://www.x33xs.com/image/10/10956/10956s.jpg', '都市小说', '唐家三少', '/33xs/10/10956/', '第三百六十章 婚礼（下', '2013-04-09');
INSERT INTO `fiction` VALUES (7, '元尊', 'https://www.xsbiquge.com/cover/78/78513/78513s.jpg', '玄幻奇幻', '天蚕土豆', 'https://www.xsbiquge.com/78_78513/', '第一千一百二十章??试', '2020-01-20');
INSERT INTO `fiction` VALUES (8, '雪中悍刀行', 'https://www.xsbiquge.com/cover/0/807/807s.jpg', '玄幻奇幻', '烽火戏诸侯', 'https://www.xsbiquge.com/0_807/', '番外第九章', '2017-06-06');
INSERT INTO `fiction` VALUES (9, '正道潜龙', 'https://www.xsbiquge.com/cover/8/8939/8939s.jpg', '都市言情', '伪戒', 'https://www.xsbiquge.com/8_8939/', '后记 揭匾远东商会', '2019-08-14');
INSERT INTO `fiction` VALUES (10, '逆鳞', 'https://www.xsbiquge.com/cover/76/76345/76345s.jpg', '都市言情', '柳下挥', 'https://www.xsbiquge.com/76_76345/', '第八百八十二章、华夏图', '2018-06-27');
INSERT INTO `fiction` VALUES (11, '厚黑学', 'https://www.x33xs.com/image/272/272048/272048s.jpg', '玄幻小说', '李宗吾', '/33xs/272/272048/', '第44章 厚黑原理（心', '2013-05-14');
INSERT INTO `fiction` VALUES (12, '最强狂兵', 'https://www.kygso.com//cover/da/3d/18/da3d18e3bff5a9f1e6c382352bbda655.jpg', '玄幻', '烈焰滔滔', 'kyg/wapnovel/4391/', '第4254章 不请自来', '');
INSERT INTO `fiction` VALUES (13, '仙王的日常生活', 'https://www.xsbiquge.com/cover/76/76534/76534s.jpg', '网游竞技', '枯玄', 'https://www.xsbiquge.com/76_76534/', '第一千一百七十五章 幕', '2020-01-21');

SET FOREIGN_KEY_CHECKS = 1;
