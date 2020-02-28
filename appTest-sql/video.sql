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

 Date: 03/02/2020 13:49:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'id',
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '视频展示时的图片',
  `mv_url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '地址',
  `mv_publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '发布者',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `likes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '赞',
  `portraits` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `mv_introduce` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '介绍',
  `Identification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 43 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES (1, 'https://image.pearvideo.com/cont/20200106/10042874-161200-1.png', 'https://video.pearvideo.com/mp4/third/20200106/cont-1639387-10042874-161120-hd.mp4', '文肆四', '腾龙后洞', '1366', 'https://c-ssl.duitang.com/uploads/item/201612/07/20161207084408_ShBHC.thumb.700_0.jpeg', '腾龙后洞美轮美奂，赶上激光秀表演', '1', '111', '2020-01-20 15:12:03');
INSERT INTO `video` VALUES (2, 'https://image1.pearvideo.com/cont/20200105/12840542-163353-1.png', 'https://video.pearvideo.com/mp4/third/20200105/cont-1639081-12840542-160211-hd.mp4', '萌猫宝哥哥', ' 送两只奶猫给女朋友，什么反应？', '2718', 'https://c-ssl.duitang.com/uploads/item/201612/07/20161207084408_ShBHC.thumb.700_0.jpeg', '新年新开始！我们家多了两只新成员！ 短腿三花妹妹：10月28日生、征集名字~ 短腿乳白弟弟：10月20日生、征集名字~ 快发挥大家的想象力~给它们取名呀。', '2', '222', '2020-01-20 15:12:04');
INSERT INTO `video` VALUES (15, 'https://image1.pearvideo.com/cont/20200121/13460687-133126-1.png', 'https://video.pearvideo.com/mp4/third/20200121/cont-1644799-13460687-133047-hd.mp4', '二营长', '厦门六中合唱团献唱周杰伦《稻香》', '6666', 'http://123.56.254.73/headImgs/1579692742302e.jpg', '最美基层高校毕业生颁奖礼现场，厦门六中合唱团温情演唱周杰伦《稻香》，对那些离开家乡、奔赴梦想的基层高校毕业生送去祝福。', '', '222', '2020-01-21 18:35:27');
INSERT INTO `video` VALUES (16, 'https://image2.pearvideo.com/cont/20200123/14186922-103653-1.png', 'https://video.pearvideo.com/mp4/third/20200123/cont-1645396-14186922-103601-hd.mp4', '李云龙', '经济学与物理学的相同与不同', '1', 'https://c-ssl.duitang.com/uploads/item/201612/07/20161207084408_ShBHC.thumb.700_0.jpeg', '经济学与物理学的相同与不同', '', '111', '2020-01-14 20:29:56');

SET FOREIGN_KEY_CHECKS = 1;
