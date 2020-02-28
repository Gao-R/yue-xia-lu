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

 Date: 03/02/2020 13:48:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for commentimg
-- ----------------------------
DROP TABLE IF EXISTS `commentimg`;
CREATE TABLE `commentimg`  (
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `head_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  `parent_id` int(11) NULL DEFAULT NULL
) ENGINE = MyISAM CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of commentimg
-- ----------------------------
INSERT INTO `commentimg` VALUES ('假如给我三天假期', 'http://localhost:3000/headImgs/1579692375768p.jpg', '楼上的，味道醇香，认真的？？？', '2020-01-23 14:50:00', 29);
INSERT INTO `commentimg` VALUES ('楼下小黑', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=3506062391,3328838502&fm=11&gp=0.jpg', '小黑常年出售金坷垃，原材料为自己制造，手工制作，味道醇香，纯生态，无污染，用了都说好', '2020-01-23 14:49:15', 29);
INSERT INTO `commentimg` VALUES ('大师兄', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3503376562,2909638299&fm=26&gp=0.jpg', '呆子，别以为这两天涨价就飘', '2020-01-23 14:43:11', 29);
INSERT INTO `commentimg` VALUES ('二师兄', 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=2075654245,1941494636&fm=26&gp=0.jpg', '手动@大师兄', '2020-01-23 14:42:21', 29);
INSERT INTO `commentimg` VALUES ('清风寨大当家', 'https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3379007868,3807129825&fm=26&gp=0.jpg', '这不云龙兄村里的李老头儿吗？', '2020-01-23 14:54:23', 29);
INSERT INTO `commentimg` VALUES ('李云龙', 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=949106121,1604191745&fm=15&gp=0.jpg', '二营长，你他娘的意大利炮呢？', '2020-01-23 14:54:48', 29);
INSERT INTO `commentimg` VALUES ('二营长', 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=2015773288,1545652728&fm=26&gp=0.jpg', '我c，我的意大利炮呢？', '2020-01-23 14:55:03', 29);
INSERT INTO `commentimg` VALUES ('', 'http://123.56.254.73/headImgs/1580135605621b.jpg', 'nb plus', '2020-01-27 14:51:51', 29);

SET FOREIGN_KEY_CHECKS = 1;
