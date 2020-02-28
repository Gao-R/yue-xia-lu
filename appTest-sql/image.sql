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

 Date: 03/02/2020 13:48:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS `image`;
CREATE TABLE `image`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstImage` int(255) NULL DEFAULT NULL COMMENT '首图，true=0,false=1',
  `Identification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片父级id',
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  `img_publisher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片发布者',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图片标题',
  `img_introduce` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL COMMENT '图片介绍',
  `time` datetime NULL DEFAULT NULL COMMENT '发表时间',
  `portraits` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '头像',
  `likes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '点赞数',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 60 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of image
-- ----------------------------
INSERT INTO `image` VALUES (1, 0, '1', 'https://ys.qn.img-space.com/201909/20/ca3230c195b70b3ce5db7ccba8044c41.jpg?imageView2/2/w/1200/q/100/ignore-error/1/', '老A', '跨上拱桥', '相机品牌: 佳能(Canon) 相机型号: 佳能 650D 光圈：f/18.0 曝光时间：1/125 ISO：100 焦距：18.0', '2020-01-14 21:38:36', 'https://c-ssl.duitang.com/uploads/item/201612/07/20161207084408_ShBHC.thumb.700_0.jpeg', '15', '222');
INSERT INTO `image` VALUES (2, 0, '2', 'https://ys.qn.img-space.com/201909/21/85e6ac7245b0ebf6c3642d18c1ba0599.jpg?imageView2/2/w/1200/q/100/ignore-error/1/', '老A', '夏日之夜', '相机品牌: 佳能(Canon) 相机型号: 佳能 650D 光圈：f/18.0 曝光时间：1s ISO：400 焦距：18.0', '2020-01-18 21:38:31', 'https://c-ssl.duitang.com/uploads/item/201612/07/20161207084408_ShBHC.thumb.700_0.jpeg', '23', '222');
INSERT INTO `image` VALUES (3, 0, '3', 'https://ys.qn.img-space.com/201909/20/99693d490656138d57724ec202780813.jpg?imageView2/2/w/1200/q/100/ignore-error/1/', '二营长', '最魅的城 - 成都', NULL, '2020-01-08 21:38:27', 'https://c-ssl.duitang.com/uploads/item/201612/07/20161207084408_ShBHC.thumb.700_0.jpeg', '34', '222');
INSERT INTO `image` VALUES (6, 0, '4', 'https://ys.qn.img-space.com/202001/17/38b23d37d07694dcaf30e1f8362322d5.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '李云龙', '回家', NULL, '2020-01-22 21:38:24', 'http://123.56.254.73/headImgs/1579692742302e.jpg', '34', '111');
INSERT INTO `image` VALUES (7, 0, '5', 'https://ys.qn.img-space.com/202001/20/d5466bfc095a84a2006efaa03ae4ef67.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '老A', '迎着晨曦的复兴号', '2020年铁路春运，重联的复兴号动车组迎着晨曦驶入站台。', '2020-01-21 22:32:54', 'http://123.56.254.73/headImgs/1579692742302e.jpg', '36', '111');
INSERT INTO `image` VALUES (8, 0, '6', 'https://ys.qn.img-space.com/202001/22/099a9b246add0d691d963cbb9866134a.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '赵政委', '《侯车》', '拍摄于北京站前广场。', '2020-01-21 22:32:54', 'http://123.56.254.73/headImgs/1579692742302e.jpg', '665', '111');
INSERT INTO `image` VALUES (9, 0, '7', 'https://ys.qn.img-space.com/202001/21/64d99e4950739bdd8955e29c95f898b6.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '老丁', '玉树琼花', '进入大寒时节,随着一股强冷空气的到来,家乡进入了“速冻”时节，高山上都是凝冻的玉树琼花，白茫茫一片。', '2020-01-21 22:32:54', 'http://123.56.254.73/headImgs/1579692742302e.jpg', '43', '111');
INSERT INTO `image` VALUES (10, 1, '7', 'https://ys.qn.img-space.com/202001/21/cb433abec6f74f0837a93226df6e9a35.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '', NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `image` VALUES (11, 1, '7', 'https://ys.qn.img-space.com/202001/21/444a9eeee7aba09a4a5660c636bc89a4.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '', NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `image` VALUES (12, 0, '8', 'https://ys.qn.img-space.com/202001/19/780ddcbc167ef9811e3da1e8b0dd2d16.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '和尚', '《相逢》', '上海长途客运总站，当班执勤的武警战士和前来探望的父母亲相逢……', '2020-01-25 22:33:16', 'http://123.56.254.73/headImgs/1579692742302e.jpg', '45', '111');
INSERT INTO `image` VALUES (13, 0, '9', 'https://pp.qn.img-space.com/201912/31/8b14c226554d7f88a1c791aae9c98e7e.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '清风寨大当家', '默认相册', NULL, '2020-01-25 22:33:16', 'http://123.56.254.73/headImgs/1579692742302e.jpg', '675', '111');
INSERT INTO `image` VALUES (14, 1, '9', 'https://pp.qn.img-space.com/201912/31/c2ea5c25b11dc7c658039e4710ff6b31.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '清风寨二当家', '月亮与六便士', '月亮你想要 六便士还嫌少 六便士还嫌少', '2020-01-25 22:33:16', 'http://123.56.254.73/headImgs/1579692742302e.jpg', '34', '111');
INSERT INTO `image` VALUES (15, 1, '9', 'https://pp.qn.img-space.com/201912/31/1a81ab622076076c8d0264017b2fb2a5.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `image` VALUES (16, 0, '10', 'https://ys.qn.img-space.com/201911/13/7b50e362ad406c929b13216fa59805ff.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '暴揍小鬼子', '思念', NULL, NULL, NULL, '657', NULL);
INSERT INTO `image` VALUES (17, 0, '11', 'https://bbs.qn.img-space.com/201910/23/b7c54bf8cdda6d94ce6d5e25e78c3c71.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '张伟', '夕照新都桥', NULL, '2020-01-02 22:33:30', 'http://123.56.254.73/headImgs/1579692742302e.jpg', '34', '111');
INSERT INTO `image` VALUES (18, 1, '11', 'https://bbs.qn.img-space.com/201910/23/db58d807a0023a427ed4e1974e457aad.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `image` VALUES (19, 1, '11', 'https://bbs.qn.img-space.com/201910/23/df507bebcf4f0b6a35fdae76f95f58c8.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `image` VALUES (20, 1, '11', 'https://bbs.qn.img-space.com/201910/23/ec78266f2912208fad049a3c9c483886.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `image` VALUES (21, 0, '12', 'https://ys.qn.img-space.com/201909/22/22ef92a6d65c75da0d35a6bcd612c494.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '张伟', '城市地标', '著名城市夜景', '2020-01-02 22:33:30', 'http://123.56.254.73/headImgs/1579692742302e.jpg', '45645', '111');
INSERT INTO `image` VALUES (22, 1, '12', 'https://ys.qn.img-space.com/201909/22/4513a052b600f586fe574f4ae55e04b2.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `image` VALUES (23, 1, '12', 'https://ys.qn.img-space.com/201909/22/7125e12e436a01095069f14a79c416b0.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `image` VALUES (24, 1, '12', 'https://ys.qn.img-space.com/201909/22/b4ca35e6ad24c1719dc2b89a9b286900.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `image` VALUES (25, 0, '13', 'https://ys.qn.img-space.com/201908/2/b0a35c3faa5259944bc17695baeb1391.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '小六子', '粉红色的回忆', '喜欢看孩子天真烂漫的笑容……', '2020-01-02 22:33:30', 'http://123.56.254.73/headImgs/1579692742302e.jpg', '768', '111');
INSERT INTO `image` VALUES (26, 0, '14', 'https://ys.qn.img-space.com/201908/3/ac41d73dd2159602c2b4467a30fc6d8b.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '假如给我三天假期', '我有一双勤劳的手', '小时候的儿歌《我有一双勤劳的手》，不知道现在孩子们还唱不唱了……', '2020-01-02 22:33:30', 'http://123.56.254.73/headImgs/1579692742302e.jpg', '768', '111');
INSERT INTO `image` VALUES (27, 0, '15', 'https://ys.qn.img-space.com/201908/11/f02682741e2d6cdfe6f6e0d2763ebd0c.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '老A', '天空中的鱼', NULL, '2020-01-02 22:33:30', 'http://123.56.254.73/headImgs/1579692742302e.jpg', '76', '111');
INSERT INTO `image` VALUES (28, 0, '16', 'https://ys.qn.img-space.com/201908/6/f727ff1fd7c3a25a5e1080f744ad22e0.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '真相只有一个', '奈良鹿先生', '餐厅门前，鹿先生打算进门找东西吃。', '2020-01-02 22:33:30', 'http://123.56.254.73/headImgs/1579692742302e.jpg', '456', '111');
INSERT INTO `image` VALUES (29, 0, '17', 'https://ys.qn.img-space.com/201908/6/1d636830ff52ae9af366f6ed6d43cc79.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '楼下小黑', '手对脚的馈赠', '悄悄给自己做个“足疗”......   尼康D7000机身；16mm镜头；ISO-800；光圈值f/4；曝光时间1/500秒。', '2020-01-02 22:33:30', 'http://123.56.254.73/headImgs/1579692375768p.jpg', '789', '222');
INSERT INTO `image` VALUES (30, 0, '18', 'https://ys.qn.img-space.com/201907/12/ea304fd88faf8bbd10d92ac67df22195.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '清风寨-二狗', '湖光中的孩子', '下班途中，偶遇湖边霞光中的俄罗斯男孩', '2020-01-19 22:33:49', 'http://123.56.254.73/headImgs/1579692742302e.jpg', '754', '111');
INSERT INTO `image` VALUES (31, 0, '19', 'https://ys.qn.img-space.com/201907/8/bc073e3f68f546622c016e4d7654898c.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '过儿', 'warm and cold', '器材：索尼a7r2 + 35定 拍到这张的时候，妹子有点已经疲倦，换上大光圈的35定，边闲聊边抓拍。妹子颧骨高，下颌棱角明显，配上微张的覆舟唇，很有港风味的长相。抓到这张的瞬间，她刚好扬起下巴，手指撩着头发，乜斜着眼睛，一副漫不经心又放松的样子，当时就觉得到拍到点上了。身穿一身红衣，眼神却冷冷的，隐含着一种冲突情绪在里头。', '2020-01-19 22:33:49', 'http://123.56.254.73/headImgs/1579692375768p.jpg', '346', '222');
INSERT INTO `image` VALUES (32, 0, '20', 'https://ys.qn.img-space.com/201907/11/ba0bbbeb49fbfcded0d71717a28d27ef.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '姑姑', '无处安放的未来', '尼泊尔首都加德满都的街头，破旧的小店门口，女孩放学后替父母照看店面。单手托腮看着路人发呆，好似一种无处安放的未来', '2020-01-19 22:33:49', 'http://123.56.254.73/headImgs/1579692375768p.jpg', '7', '222');
INSERT INTO `image` VALUES (33, 0, '21', 'https://ys.qn.img-space.com/201907/17/6db8aa56d0ac53eadf3c8aa506319d2b.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '谢逊', '警惕的目光', '2018年1月，我到云南沧源县翁丁佤族村采风，这是中国最后一个原始村落，一村民用警惕的目光看着我们这些外来人。', '2020-01-19 22:33:49', 'http://123.56.254.73/headImgs/1579692375768p.jpg', '768', '222');
INSERT INTO `image` VALUES (34, 0, '22', 'https://ys.qn.img-space.com/201906/4/9ab686bf10462e48c0e9435478a86b17.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '二师兄', '夏日的一抹清凉', '炎炎夏日，孩子们离不开徐徐的海风、清凉的泳池和甜蜜凉爽的雪糕。', '2020-01-19 22:33:49', 'http://123.56.254.73/headImgs/1579692375768p.jpg', '6756', '222');
INSERT INTO `image` VALUES (35, 1, '22', 'https://ys.qn.img-space.com/201906/4/0020a929e78c730125af50845404d482.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `image` VALUES (36, 1, '22', 'https://ys.qn.img-space.com/201906/4/00e520bfd3a8cc58ba514eed01adfb83.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `image` VALUES (37, 0, '23', 'https://ys.qn.img-space.com/201806/30/aba19f6f5e2c59a381bbffeb9dae064e.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '大师兄', '老窑工', '一生都在从事自己喜欢的手艺 做的土陶虽然算不上艺术品 但是能够养家糊口 满足 快乐', '2020-01-19 22:33:49', 'http://123.56.254.73/headImgs/1579692375768p.jpg', '46', '222');
INSERT INTO `image` VALUES (38, 0, '24', 'https://ys.qn.img-space.com/201807/27/cf70135bfc2222f786d238cbc8815855.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '老白', '雄狮争霸', '假面胡人假面狮，刻木为头丝作尾，金镀眼睛银作齿，奋迅毛衣摆双耳”。一千多年的习俗流传至今，这就是它的魅力。', '2020-01-19 22:33:49', 'http://123.56.254.73/headImgs/1579692375768p.jpg', '43', '222');
INSERT INTO `image` VALUES (39, 1, '24', 'https://ys.qn.img-space.com/201807/27/f3bf3e3ec5763566f0014743b171444d.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `image` VALUES (40, 1, '24', 'https://ys.qn.img-space.com/201807/27/c6f8ac27e391bab5b11725b99e775005.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `image` VALUES (41, 1, '24', 'https://ys.qn.img-space.com/201807/27/2c400fb149ef31741da7611b86b745b2.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `image` VALUES (42, 0, '25', 'https://ys.qn.img-space.com/201804/10/8e0361b81e02882d5af3400b27bcc780.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '恰', '冰雕之恋', '拍于2018年1月正式东北的寒冷季节0下37度时节。在窗户上变换着世间百态。   东北的冰窗花神奇，迷幻，每个图像都是唯一的一次。像山像水', '2020-01-19 22:33:49', 'http://123.56.254.73/headImgs/1579692375768p.jpg', '64', '222');
INSERT INTO `image` VALUES (43, 0, '26', 'https://ys.qn.img-space.com/g2/M00/05/88/Cg-4klkMiNGIHWjdAAFB4NOf4uEAAIlnAKMn4oAAUH4442.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '二花', '牵牛的春天', NULL, '2020-01-19 22:33:49', 'http://123.56.254.73/headImgs/1579692375768p.jpg', '5466', '222');
INSERT INTO `image` VALUES (44, 0, '27', 'https://ys.qn.img-space.com/201905/26/e99e451af7e2f4f02702360a8716d368.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', '小灰灰', '小灰灰', '一支神牛AD200，一块吸光布，一只领养的小喵喵……由于灰色和黑色颜色单一，故拿来了跳色的围巾做道具！小喵活跃，不太好控制，只有耐心陪它玩咯~', '2020-01-24 10:40:53', 'http://123.56.254.73/headImgs/1579692375768p.jpg', '8801', '111');
INSERT INTO `image` VALUES (45, 1, '27', 'https://ys.qn.img-space.com/201905/26/e78ee2c6b99da42a0a376a5d1d703cdd.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `image` VALUES (46, 1, '27', 'https://ys.qn.img-space.com/201905/26/01fcb26b010bd0777a3f8f3649d1ea35.jpg?imageView2/2/w/1200/q/75/ignore-error/1/', NULL, NULL, NULL, NULL, NULL, '0', NULL);
INSERT INTO `image` VALUES (59, 0, '1580207522452', 'http://123.56.254.73/images/1580207522824wx_camera_1579319992181.jpg', 'G', '魔鬼标题', '', '2020-01-28 10:32:02', 'http://123.56.254.73/headImgs/1580138421884n.jpg', '0', '222');

SET FOREIGN_KEY_CHECKS = 1;
