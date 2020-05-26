/*
 Navicat Premium Data Transfer

 Source Server         : self
 Source Server Type    : MySQL
 Source Server Version : 50644
 Source Host           : localhost:3306
 Source Schema         : yanan

 Target Server Type    : MySQL
 Target Server Version : 50644
 File Encoding         : 65001

 Date: 14/05/2020 15:02:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for kit_access
-- ----------------------------
DROP TABLE IF EXISTS `kit_access`;
CREATE TABLE `kit_access`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `access_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限名称',
  `access_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '权限的地址',
  `access_parent_id` int(11) NOT NULL COMMENT '上级权限',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 120 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kit_access
-- ----------------------------
INSERT INTO `kit_access` VALUES (1, 'PC、APP 端', '/admin/Homepage', 0, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (2, '网站总配置', '/admin/Website/index', 1, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (3, '网站总配置 修改', '/admin/Website/update_edit', 2, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (7, '头像管理', '/admin/Head_pic/index', 1, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (8, '头像管理 修改', '/admin/Head_pic/update_edit', 7, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (9, '爱情历程', '/admin/Love_history', 1, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (10, '爱情历程 列表', '/admin/Love_history/index', 9, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (11, '爱情历程 添加', '/admin/Love_history/add_img', 9, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (12, '爱情历程 删除', '/admin/Love_history/img_del', 9, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (13, '爱情历程 修改', '/admin/Love_history/update_edit', 9, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (14, '经典时刻', '/admin/Fine_mark', 1, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (15, '经典时刻 列表', '/admin/Fine_mark/index', 14, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (16, '经典时刻 添加', '/admin/Fine_mark/add_img', 14, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (17, '经典时刻 删除', '/admin/Fine_mark/img_del', 14, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (18, '经典时刻 修改', '/admin/Fine_mark/update_edit', 14, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (103, '系统管理', '/admin/system', 0, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (104, '权限管理', 'admin/access', 103, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (105, '管理员', '/admin/user', 104, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (106, '管理员 列表', '/admin/user/index', 105, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (107, '管理员 添加', '/admin/user/add_img', 105, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (108, '管理员 删除', '/admin/user/img_del', 105, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (109, '管理员 修改', '/admin/user/update_edit', 105, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (110, '角色', '/admin/role', 104, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (111, '角色 列表', '/admin/role/index', 110, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (112, '角色 添加', '/admin/role/add_img', 110, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (113, '角色 删除', '/admin/role/img_del', 110, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (114, '角色 修改', '/admin/role/update_edit', 110, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (115, '权限资源', '/admin/access', 104, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (116, '权限资源 列表', '/admin/access/index', 115, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (117, '权限资源 添加', '/admin/access/add_img', 115, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (118, '权限资源 删除', '/admin/access/img_del', 115, '2019-10-28 20:10:15', '2019-10-28 20:10:15');
INSERT INTO `kit_access` VALUES (119, '权限资源 修改', '/admin/access/update_edit', 115, '2019-10-28 20:10:15', '2019-10-28 20:10:15');

-- ----------------------------
-- Table structure for kit_fine_mark
-- ----------------------------
DROP TABLE IF EXISTS `kit_fine_mark`;
CREATE TABLE `kit_fine_mark`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `mark_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `mark_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(10) NOT NULL DEFAULT 100,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '心动时刻' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kit_fine_mark
-- ----------------------------
INSERT INTO `kit_fine_mark` VALUES (4, '第一次相见', '/uploads/20191224/6b49898807bd70ab7868c1913fc98eb0.jpg', 100, '2019-12-20 09:45:59', '2019-12-24 13:38:19');
INSERT INTO `kit_fine_mark` VALUES (5, '第一次约会', '/uploads/20191224/76d065032e8ec88e0e6a52c8a0d1f37f.jpg', 20, '2019-12-20 09:46:15', '2019-12-24 14:00:22');
INSERT INTO `kit_fine_mark` VALUES (6, '约会', '/uploads/20191224/9dbf0a94cc370da2da829019026ba646.jpg', 40, '2019-12-20 09:46:31', '2019-12-24 14:00:40');
INSERT INTO `kit_fine_mark` VALUES (7, '看电影', '/uploads/20191224/8208e4a6eb120235168bbc9ed4f46ec4.jpg', 30, '2019-12-20 09:47:00', '2019-12-24 14:00:30');
INSERT INTO `kit_fine_mark` VALUES (8, '拥抱', '/uploads/20191224/2515e2fa65acd7a43305c24c6702235d.jpg', 100, '2019-12-20 09:47:15', '2019-12-24 13:34:24');
INSERT INTO `kit_fine_mark` VALUES (9, '婚纱照', '/uploads/20191224/3380ff2ccb06695999bf8bdde99d9cc4.jpg', 10, '2019-12-24 13:45:09', '2019-12-24 13:59:42');
INSERT INTO `kit_fine_mark` VALUES (10, '婚纱照', '/uploads/20191224/5ccd549f545ea3aa50f1b33bd8917f4e.jpg', 50, '2019-12-24 13:47:07', '2019-12-24 14:00:52');
INSERT INTO `kit_fine_mark` VALUES (11, '想吃双铺烧饼', '/uploads/20191224/bf992f70d8ddbbd9ed7bc83181b22096.jpg', 100, '2019-12-24 13:48:46', '2019-12-24 13:48:46');
INSERT INTO `kit_fine_mark` VALUES (12, '旅游', '/uploads/20191224/9d6da67c26f0d915602dac718ad57bb2.jpg', 100, '2019-12-24 13:50:30', '2019-12-24 13:50:30');

-- ----------------------------
-- Table structure for kit_head_pic
-- ----------------------------
DROP TABLE IF EXISTS `kit_head_pic`;
CREATE TABLE `kit_head_pic`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `boy_head` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `girl_head` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '头像' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kit_head_pic
-- ----------------------------
INSERT INTO `kit_head_pic` VALUES (1, '/uploads/20191224/a57d6bae7d1fcfbabedd1e77f64f19ae.jpg', '/uploads/20191224/e14e68ac6ec70454f1445dd97faf7ab6.jpg', '2019-12-20 15:45:01', '2019-12-24 13:15:58');

-- ----------------------------
-- Table structure for kit_love_history
-- ----------------------------
DROP TABLE IF EXISTS `kit_love_history`;
CREATE TABLE `kit_love_history`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `history_year` datetime(0) NOT NULL COMMENT '时间',
  `history_contents` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '故事',
  `history_pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '代表图',
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '爱情历史' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kit_love_history
-- ----------------------------
INSERT INTO `kit_love_history` VALUES (8, '2019-07-05 00:00:00', '之前不认识，这是首次加上微信', '/uploads/20191220/f655e07ca3b98072e32ba9f49eefd3ae.jpg', '2019-12-20 17:12:03', '2019-12-20 17:12:03');
INSERT INTO `kit_love_history` VALUES (9, '2019-07-19 00:00:00', '第一次见面', '/uploads/20191224/2d2a67aca97bee23f0bcecd5a6fb7a0b.jpg', '2019-12-20 17:23:45', '2019-12-24 13:21:14');
INSERT INTO `kit_love_history` VALUES (10, '2019-08-09 00:00:00', '第一次约会', '/uploads/20191224/9e1aa5d9e2467964312ae8aa728d55b0.jpg', '2019-12-20 17:24:40', '2019-12-24 13:23:21');
INSERT INTO `kit_love_history` VALUES (11, '2019-08-10 00:00:00', '第一次看电影', '/uploads/20191220/7d1a466c20928d5a2839ab6ea6554a91.png', '2019-12-20 17:25:15', '2019-12-20 17:25:15');
INSERT INTO `kit_love_history` VALUES (12, '2019-08-10 00:00:00', '第一次逛街', '/uploads/20191224/e1a4381f519e20bcf2297b6b7a3e8a53.jpg', '2019-12-20 17:25:47', '2019-12-24 13:26:39');
INSERT INTO `kit_love_history` VALUES (13, '2019-07-20 00:00:00', '第一次牵手', '/uploads/20191220/7c38be3514529305a7588bfb107aca03.jpg', '2019-12-20 17:26:19', '2019-12-20 17:34:30');
INSERT INTO `kit_love_history` VALUES (14, '2019-08-10 00:00:00', '第一次合影', '/uploads/20191220/6826f9adc1daeee0a02edf9b7110d273.jpg', '2019-12-20 17:27:14', '2019-12-20 17:36:45');
INSERT INTO `kit_love_history` VALUES (15, '2019-07-19 00:00:00', '第一次送花', '/uploads/20191224/435f71f2c9f10947559a01dba1193c81.jpg', '2019-12-20 17:27:41', '2019-12-24 13:19:55');
INSERT INTO `kit_love_history` VALUES (16, '2019-08-10 00:00:00', '第一次旅行', '/uploads/20191220/168433abb2c1376d8e5ada752d7e1c1a.jpg', '2019-12-20 17:29:17', '2019-12-20 17:39:28');
INSERT INTO `kit_love_history` VALUES (17, '2019-10-04 00:00:00', '拍婚纱照', '/uploads/20191220/81bc675c0706de379fcead15498defd2.jpg', '2019-12-20 17:32:04', '2019-12-20 17:32:04');
INSERT INTO `kit_love_history` VALUES (18, '2019-08-06 00:00:00', '第一送巧克力', '/uploads/20191220/48888ac711f1d0db3f6342c664d9cfb1.jpg', '2019-12-20 17:43:12', '2019-12-20 17:43:12');
INSERT INTO `kit_love_history` VALUES (19, '2019-08-02 00:00:00', '第一次送项链', '/uploads/20191220/b63e8d196eb4c1add8a3e1f919a3374c.jpg', '2019-12-20 17:45:41', '2019-12-20 18:01:02');

-- ----------------------------
-- Table structure for kit_role
-- ----------------------------
DROP TABLE IF EXISTS `kit_role`;
CREATE TABLE `kit_role`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT '父类角色id',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kit_role
-- ----------------------------
INSERT INTO `kit_role` VALUES (1, '老大', 0, '2019-10-17 16:11:38', '2019-10-17 16:11:38');

-- ----------------------------
-- Table structure for kit_role_access
-- ----------------------------
DROP TABLE IF EXISTS `kit_role_access`;
CREATE TABLE `kit_role_access`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `access_id` int(11) NOT NULL COMMENT '权限id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 127 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色-权限' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kit_role_access
-- ----------------------------
INSERT INTO `kit_role_access` VALUES (112, 1, 1, '2019-12-24 14:59:38', '2019-12-24 14:59:38');
INSERT INTO `kit_role_access` VALUES (113, 2, 1, '2019-12-24 14:59:38', '2019-12-24 14:59:38');
INSERT INTO `kit_role_access` VALUES (114, 3, 1, '2019-12-24 14:59:38', '2019-12-24 14:59:38');
INSERT INTO `kit_role_access` VALUES (115, 7, 1, '2019-12-24 14:59:38', '2019-12-24 14:59:38');
INSERT INTO `kit_role_access` VALUES (116, 8, 1, '2019-12-24 14:59:38', '2019-12-24 14:59:38');
INSERT INTO `kit_role_access` VALUES (117, 9, 1, '2019-12-24 14:59:38', '2019-12-24 14:59:38');
INSERT INTO `kit_role_access` VALUES (118, 10, 1, '2019-12-24 14:59:38', '2019-12-24 14:59:38');
INSERT INTO `kit_role_access` VALUES (119, 11, 1, '2019-12-24 14:59:38', '2019-12-24 14:59:38');
INSERT INTO `kit_role_access` VALUES (120, 12, 1, '2019-12-24 14:59:38', '2019-12-24 14:59:38');
INSERT INTO `kit_role_access` VALUES (121, 13, 1, '2019-12-24 14:59:38', '2019-12-24 14:59:38');
INSERT INTO `kit_role_access` VALUES (122, 14, 1, '2019-12-24 14:59:38', '2019-12-24 14:59:38');
INSERT INTO `kit_role_access` VALUES (123, 15, 1, '2019-12-24 14:59:38', '2019-12-24 14:59:38');
INSERT INTO `kit_role_access` VALUES (124, 16, 1, '2019-12-24 14:59:38', '2019-12-24 14:59:38');
INSERT INTO `kit_role_access` VALUES (125, 17, 1, '2019-12-24 14:59:38', '2019-12-24 14:59:38');
INSERT INTO `kit_role_access` VALUES (126, 18, 1, '2019-12-24 14:59:38', '2019-12-24 14:59:38');

-- ----------------------------
-- Table structure for kit_user
-- ----------------------------
DROP TABLE IF EXISTS `kit_user`;
CREATE TABLE `kit_user`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `is_superme` int(3) NOT NULL DEFAULT 2 COMMENT '是否为超级管理员 1是 2否',
  `user_sex` int(3) NOT NULL DEFAULT 1 COMMENT '性别 1男 2女 ',
  `user_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `user_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户密码',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kit_user
-- ----------------------------
INSERT INTO `kit_user` VALUES (1, 'hyn', 1, 1, '1465935391@qq.com', '15638861289', '2d7de9da0b0a970e2f5dd0f12a133438', '2019-07-18 14:49:58', '2019-07-18 14:50:03');
INSERT INTO `kit_user` VALUES (3, 'root', 2, 1, '5123@qq.com', '15638861256', '5b9c56ff3fcaeb43beb5afc289cfa673', '2019-10-17 16:27:46', '2019-10-28 20:20:21');

-- ----------------------------
-- Table structure for kit_user_role
-- ----------------------------
DROP TABLE IF EXISTS `kit_user_role`;
CREATE TABLE `kit_user_role`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `role_id` int(11) NOT NULL COMMENT '角色id',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户-角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kit_user_role
-- ----------------------------
INSERT INTO `kit_user_role` VALUES (1, 3, 1, '2019-10-17 16:27:46', '2019-10-17 16:27:46');

-- ----------------------------
-- Table structure for kit_website
-- ----------------------------
DROP TABLE IF EXISTS `kit_website`;
CREATE TABLE `kit_website`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `web_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网站名称',
  `web_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网站logo',
  `head_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '头部标题',
  `head_dec` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '头部描述',
  `love_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agree_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agree_des` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wintness_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `website_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `footer` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `update_time` datetime(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网站配置信息' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of kit_website
-- ----------------------------
INSERT INTO `kit_website` VALUES (1, 'HXC & HYL', '/uploads/20191219/589c7030d1a3e620d680da53040de8fa.png', '陪伴是最长情的告白', '我们的遇见，是爱情的开始@\n我们的爱情，是幸福的开始@\n我们的幸福，是平平淡淡的陪伴', '我们的爱情历程', '我们的山盟海誓', '与你的相遇，是命中注定的一生一世。与你的相爱，是命中注定的地老天荒@\n今生携手徜徉天地间，为你遮风挡雨，相濡以沫，并肩悠游滚滚红尘中@\n即使有一天，你的步履变得蹒跚，青丝变成白发，红润的脸上爬满了皱纹，但我仍要携着你的手，漫步在夕阳的余辉下@\n你，我一生最爱的人;你，我一生最想的人;你，我一生守候的人;你，我一生唯一的人@\n不论你生病或是健康、富有或贫穷，始终忠於你，直到离开世界', '我们的爱情见证', NULL, '最终版权归 HXC & HYN 所有', '2019-12-19 14:30:08', '2019-12-19 17:39:32');

SET FOREIGN_KEY_CHECKS = 1;
