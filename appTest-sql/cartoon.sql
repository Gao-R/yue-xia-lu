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

 Date: 03/02/2020 13:48:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cartoon
-- ----------------------------
DROP TABLE IF EXISTS `cartoon`;
CREATE TABLE `cartoon`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '漫画名',
  `cover` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片',
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '类型',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '作者',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '漫画地址',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '时间',
  `latest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '最新',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cartoon
-- ----------------------------
INSERT INTO `cartoon` VALUES (1, '鎮魂街', 'http://img.94201314.net/comicui/37739.JPG', '親情', '許辰', 'http://99770.hhxxee.com/comic/37739', '2019-05-04 22:00', NULL);
INSERT INTO `cartoon` VALUES (2, '全职法师', 'https://img01.eshanyao.com/images/cover/201905/15592100646663578fe8368fb.jpg', '少年漫画|魔法', NULL, 'mhdhttps://m.manhuadui.com/manhua/quanzhifashi/', NULL, '442话 活路是杀出来的！');
INSERT INTO `cartoon` VALUES (3, '斗罗大陆', 'https://res.gufengmh.com/gufeng/images/cover/201807/1530537387O-NvKf3ZohGRjv6E.jpg', '少年漫画|竞技', '唐家三少,,,穆逢春,,,知音漫客', 'gfmhhttps://m.gufengmh.com/manhua/douluodalu/', '2019-07-31 17:00', '第22册');
INSERT INTO `cartoon` VALUES (4, '斗罗大陆2绝世唐门', 'http://oss.mkzcdn.com/comic/cover/20180817/5b76248a0e889-600x800.jpg!width-300', '万年之后，唐门重振辉煌', NULL, 'mhz211692', NULL, '第525话 阴谋2');
INSERT INTO `cartoon` VALUES (5, '斗罗大陆3龙王传说', 'http://oss.mkzcdn.com/zymkcover/999/mh/86080.jpg!width-300', '旷世之才，龙王之争', NULL, 'mhz210839', NULL, '第248话 完胜2');
INSERT INTO `cartoon` VALUES (6, '斗罗大陆4终极斗罗', 'https://res.gufengmh.com/gufeng/images/cover/201905/1556724952QFbIWWWt1H1FwDzQ.jpg', '少年漫画|冒险|玄幻', NULL, 'gfmhhttps://m.gufengmh.com/manhua/douluodalu4zhongjidouluo/', '2019-07-09 14:47', '是你！');
INSERT INTO `cartoon` VALUES (7, '长安幻想', 'http://cover.u17i.com/2019/07/29213354_1564562969_NNNo59nW9nvn.small.jpg', '少年 / 搞笑 / 动作', '青亭文化', 'http://www.u17.com/comic/186752.html', NULL, NULL);
INSERT INTO `cartoon` VALUES (8, '原罪', 'http://cover.u17i.com/2018/03/19867355_1519887404_pspV04jZV66p.small.jpg', '少女 / 推理', '灰烬男', 'http://www.u17.com/comic/170243.html', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
