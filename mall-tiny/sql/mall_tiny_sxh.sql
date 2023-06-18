/*
 Navicat Premium Data Transfer

 Source Server         : 47.96.1.184
 Source Server Type    : MySQL
 Source Server Version : 50742
 Source Host           : 47.96.1.184:3306
 Source Schema         : mall_tiny

 Target Server Type    : MySQL
 Target Server Version : 50742
 File Encoding         : 65001

 Date: 18/06/2023 20:25:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ums_admin
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin`;
CREATE TABLE `ums_admin`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `icon` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `nick_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `status` int(11) NULL DEFAULT 1 COMMENT '帐号启用状态：0->禁用；1->启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_admin
-- ----------------------------
INSERT INTO `ums_admin` VALUES (3, 'admin', '$2a$10$5v88Pqly1RxR03rFd09pTObQ6/OHn3rQzoC/f8UEkEkdE5BVBabPq', NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg', 'admin@163.com', '管理员（username是账号）', '系统管理员', '2018-10-08 13:32:47', '2019-04-20 12:45:16', 1);
INSERT INTO `ums_admin` VALUES (18, '15256728901', '$2a$10$5v88Pqly1RxR03rFd09pTObQ6/OHn3rQzoC/f8UEkEkdE5BVBabPq', NULL, '', '15256728901@163.com', '小海1', '这是一个什么什么样的主持人', '2023-04-15 13:48:13', '2023-05-17 22:36:11', 1);
INSERT INTO `ums_admin` VALUES (19, '15256728902', '$2a$10$5v88Pqly1RxR03rFd09pTObQ6/OHn3rQzoC/f8UEkEkdE5BVBabPq', NULL, 'string', '15256728901@163.com', '小海', 'string1', '2023-04-15 20:54:38', '2023-05-17 22:36:14', 1);
INSERT INTO `ums_admin` VALUES (20, 'xiaoming', '$2a$10$mIL3MGAFbiQqxz7zy/1xqe8ZjtwB9U3U/my.oFSVLvrVaRmkEUSkS', NULL, NULL, '15256728902@163.com', '哈哈', NULL, '2023-04-25 22:28:53', NULL, 1);
INSERT INTO `ums_admin` VALUES (21, 'xiaoming2', '$2a$10$oc6TFOJAIdEcJsrTzJYaJOT1XDcW6rAdnC308J8/hoGQn0epAQ6qe', NULL, NULL, NULL, '小a', NULL, '2023-04-25 22:29:11', NULL, 1);
INSERT INTO `ums_admin` VALUES (22, 'xiaoming3', '$2a$10$pRhj7lKlzi5eAFX59/owOeCQtMzd3iRc1s5NITullZfLYTD.gS16G', NULL, NULL, NULL, '嘿嘿', NULL, '2023-05-17 22:37:11', NULL, 1);

-- ----------------------------
-- Table structure for ums_admin_login_log
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_login_log`;
CREATE TABLE `ums_admin_login_log`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_agent` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器登录类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 386 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户登录日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_admin_login_log
-- ----------------------------
INSERT INTO `ums_admin_login_log` VALUES (285, 3, '2020-08-24 14:05:21', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (286, 10, '2020-08-24 14:05:39', '0:0:0:0:0:0:0:1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (287, 3, '2023-04-15 13:48:52', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (288, 3, '2023-04-15 13:55:25', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (289, 3, '2023-04-15 13:56:27', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (290, 18, '2023-04-15 18:09:27', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (291, 18, '2023-04-15 18:35:14', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (292, 18, '2023-04-15 18:36:53', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (293, 18, '2023-04-15 18:43:32', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (294, 18, '2023-04-15 19:20:50', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (295, 18, '2023-04-16 10:14:38', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (296, 19, '2023-04-19 00:34:24', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (297, 19, '2023-04-19 00:35:25', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (298, 19, '2023-04-19 00:39:13', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (299, 19, '2023-04-19 00:39:17', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (300, 19, '2023-04-19 00:52:27', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (301, 19, '2023-04-19 00:52:32', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (302, 19, '2023-04-19 00:52:36', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (303, 19, '2023-04-19 00:58:37', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (304, 3, '2023-05-04 19:37:47', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (305, 3, '2023-05-04 19:37:52', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (306, 3, '2023-05-10 20:50:50', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (307, 3, '2023-05-17 20:12:24', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (308, 3, '2023-05-17 20:15:27', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (309, 3, '2023-05-17 20:29:03', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (310, 3, '2023-05-17 21:52:36', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (311, 19, '2023-05-17 22:07:07', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (312, 19, '2023-05-17 22:08:30', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (313, 19, '2023-05-17 22:09:43', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (314, 19, '2023-05-17 22:09:59', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (315, 18, '2023-05-17 22:11:10', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (316, 19, '2023-05-17 22:13:37', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (317, 19, '2023-05-17 22:27:14', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (318, 19, '2023-05-17 22:32:58', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (319, 19, '2023-05-17 22:33:01', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (320, 22, '2023-05-17 22:38:24', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (321, 19, '2023-05-17 22:40:19', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (322, 19, '2023-05-17 22:45:38', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (323, 3, '2023-05-18 23:14:24', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (324, 3, '2023-05-19 00:39:41', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (325, 3, '2023-05-19 00:39:44', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (326, 3, '2023-05-25 18:39:46', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (327, 3, '2023-06-17 20:17:23', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (328, 18, '2023-06-17 20:56:23', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (329, 3, '2023-06-18 09:50:29', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (330, 3, '2023-06-18 09:51:19', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (331, 3, '2023-06-18 09:51:36', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (332, 3, '2023-06-18 16:37:49', '39.186.180.237', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (333, 3, '2023-06-18 18:18:59', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (334, 3, '2023-06-18 18:20:30', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (335, 3, '2023-06-18 18:21:31', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (336, 3, '2023-06-18 18:21:58', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (337, 3, '2023-06-18 18:22:06', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (338, 3, '2023-06-18 18:23:52', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (339, 3, '2023-06-18 18:30:19', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (340, 3, '2023-06-18 18:31:05', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (341, 3, '2023-06-18 18:31:13', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (342, 3, '2023-06-18 18:31:31', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (343, 3, '2023-06-18 18:31:38', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (344, 3, '2023-06-18 18:40:58', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (345, 3, '2023-06-18 18:41:36', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (346, 3, '2023-06-18 18:45:33', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (347, 3, '2023-06-18 18:46:41', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (348, 3, '2023-06-18 18:47:09', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (349, 3, '2023-06-18 19:12:06', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (350, 3, '2023-06-18 19:13:34', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (351, 3, '2023-06-18 19:13:51', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (352, 3, '2023-06-18 19:13:57', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (353, 3, '2023-06-18 19:15:54', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (354, 3, '2023-06-18 19:16:23', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (355, 3, '2023-06-18 19:16:32', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (356, 3, '2023-06-18 19:16:53', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (357, 3, '2023-06-18 19:18:15', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (358, 3, '2023-06-18 19:18:38', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (359, 3, '2023-06-18 19:20:12', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (360, 3, '2023-06-18 19:21:54', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (361, 3, '2023-06-18 19:22:15', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (362, 3, '2023-06-18 19:22:56', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (363, 3, '2023-06-18 19:23:24', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (364, 3, '2023-06-18 19:25:28', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (365, 3, '2023-06-18 19:25:30', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (366, 3, '2023-06-18 19:26:00', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (367, 3, '2023-06-18 19:26:31', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (368, 3, '2023-06-18 19:26:55', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (369, 3, '2023-06-18 19:27:17', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (370, 3, '2023-06-18 19:27:26', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (371, 3, '2023-06-18 19:27:33', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (372, 3, '2023-06-18 19:30:45', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (373, 3, '2023-06-18 19:42:15', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (374, 3, '2023-06-18 19:42:33', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (375, 3, '2023-06-18 19:43:23', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (376, 3, '2023-06-18 19:48:45', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (377, 3, '2023-06-18 19:55:18', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (378, 3, '2023-06-18 19:55:34', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (379, 3, '2023-06-18 19:58:03', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (380, 3, '2023-06-18 20:13:32', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (381, 3, '2023-06-18 20:13:36', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (382, 3, '2023-06-18 20:14:02', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (383, 3, '2023-06-18 20:14:04', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (384, 3, '2023-06-18 20:14:32', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (385, 3, '2023-06-18 20:14:38', '125.113.58.183', NULL, NULL);

-- ----------------------------
-- Table structure for ums_admin_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_role_relation`;
CREATE TABLE `ums_admin_role_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户和角色关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_admin_role_relation
-- ----------------------------
INSERT INTO `ums_admin_role_relation` VALUES (26, 3, 5);
INSERT INTO `ums_admin_role_relation` VALUES (40, 18, 9);
INSERT INTO `ums_admin_role_relation` VALUES (41, 19, 10);
INSERT INTO `ums_admin_role_relation` VALUES (42, 22, 10);
INSERT INTO `ums_admin_role_relation` VALUES (48, 21, 10);

-- ----------------------------
-- Table structure for ums_business_anchor_detail
-- ----------------------------
DROP TABLE IF EXISTS `ums_business_anchor_detail`;
CREATE TABLE `ums_business_anchor_detail`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `anchor_id` bigint(20) NOT NULL COMMENT '主持人id',
  `anchor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主持人真实姓名',
  `anchor_height` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主持人身高',
  `anchor_weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主持人体重',
  `anchor_constellation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主持人星座',
  `entry_time` datetime(0) NULL DEFAULT NULL COMMENT '入行时间',
  `anchor_stytle` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主持人风格',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `anchorId`(`anchor_id`) USING BTREE COMMENT '唯一用户id'
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_anchor_detail
-- ----------------------------
INSERT INTO `ums_business_anchor_detail` VALUES (8, 4, '主持人真实姓名', '升高175', '体重72', '主持人星座', '2023-05-17 18:55:30', '主持人风格');

-- ----------------------------
-- Table structure for ums_business_company
-- ----------------------------
DROP TABLE IF EXISTS `ums_business_company`;
CREATE TABLE `ums_business_company`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司或团队logo',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司或者团队名称',
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司或团队地址',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司或者团队补充描述',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司或团队联系电话',
  `wechat_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司或者团队微信号码',
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司图片',
  `video_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司视频',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '公司简介描述' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_company
-- ----------------------------
INSERT INTO `ums_business_company` VALUES (1, NULL, '婚礼团队2', '浙江金华', '我们是一个什么什么公司', '15245433', '12adbxxx12', NULL, NULL);

-- ----------------------------
-- Table structure for ums_business_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `ums_business_dictionary`;
CREATE TABLE `ums_business_dictionary`  (
  `pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `dic_id` int(11) NOT NULL,
  `dic_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '枚举类名称',
  `dic_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '排序值',
  `dic_parent_id` int(11) NOT NULL COMMENT '父pk_id',
  `dic_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '枚举类状态值',
  `dic_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '枚举类状态值的含义',
  `state` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state_time` date NOT NULL,
  PRIMARY KEY (`pk_id`) USING BTREE,
  INDEX `idx_dicparentid`(`dic_parent_id`) USING BTREE,
  INDEX `idx_dicname_value`(`dic_name`, `dic_key`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 757 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_dictionary
-- ----------------------------
INSERT INTO `ums_business_dictionary` VALUES (1, 1, 'ROOT', NULL, 0, '0', 'ROOT', 'A', '2017-04-10');
INSERT INTO `ums_business_dictionary` VALUES (2, 1, 'DIC', NULL, 1, '0', '字典', 'A', '2019-02-12');
INSERT INTO `ums_business_dictionary` VALUES (420, 1, 'AREA', NULL, 636, '330703', '金东区', 'A', '2021-07-28');
INSERT INTO `ums_business_dictionary` VALUES (421, 1, 'AREA', NULL, 421, '330702', '婺城区', 'A', '2021-07-28');
INSERT INTO `ums_business_dictionary` VALUES (756, 1, 'PATROL_TYPE', NULL, 754, '13', '文物保护单位企业巡查', 'A', '2023-01-10');

-- ----------------------------
-- Table structure for ums_business_work
-- ----------------------------
DROP TABLE IF EXISTS `ums_business_work`;
CREATE TABLE `ums_business_work`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '作品',
  `author_id` bigint(20) NULL DEFAULT NULL COMMENT '主持人id',
  `anthor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主持人名字',
  `cover_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '作品封面图片地址',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '作品标题',
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '作品地点',
  `view_number` int(11) NULL DEFAULT 0 COMMENT '作品查看数量',
  `created_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '作品创建时间',
  `type` int(11) NULL DEFAULT NULL COMMENT '作品类型，1婚礼作品，2主持人动态',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '动态内容',
  `img_url` varchar(6000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `video_rul` varchar(6000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '作品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_work
-- ----------------------------
INSERT INTO `ums_business_work` VALUES (1, 19, '小海', NULL, '测试作品名字', NULL, 86, '2023-05-18 22:49:12', 1, NULL, NULL, NULL);
INSERT INTO `ums_business_work` VALUES (2, 3, '管理员（这里的nickname是真实的主持人名称和用户名称前面的username是账号和后面接口查询出来的username无关）', '作品封面图片地址', '作品标题', '作品地点', 13, '2023-06-18 15:50:48', 1, NULL, NULL, NULL);
INSERT INTO `ums_business_work` VALUES (3, 3, '管理员（这里的nickname是真实的主持人名称和用户名称前面的username是账号和后面接口查询出来的username无关）', '作品封面图片地址', '作品标题或者动态标题', '作品地点', 0, '2023-05-18 22:48:50', 1, '动态内容,当type为1时发表作品,type为2时设置content', NULL, NULL);

-- ----------------------------
-- Table structure for ums_business_workcomment
-- ----------------------------
DROP TABLE IF EXISTS `ums_business_workcomment`;
CREATE TABLE `ums_business_workcomment`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `work_id` bigint(20) NULL DEFAULT NULL COMMENT '作品id',
  `anchor_id` bigint(20) NULL DEFAULT NULL COMMENT '主持人id',
  `anchor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主持人名称',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '用户id',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户名称',
  `user_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户评论',
  `type` int(11) NULL DEFAULT NULL COMMENT '作品类型，1婚礼作品，2主持人动态',
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父评论id',
  `created_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建评论的时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_workcomment
-- ----------------------------
INSERT INTO `ums_business_workcomment` VALUES (4, 1, 20, '小海', 3, '小海2', '这是个测试评论，嘿嘿', 1, NULL, '2023-06-18 12:23:28');
INSERT INTO `ums_business_workcomment` VALUES (8, 1, 19, '小海', 18, '小海1', '这是个测试评论，嘿嘿', 1, NULL, '2023-06-18 14:04:12');
INSERT INTO `ums_business_workcomment` VALUES (9, 1, 19, '小海', 3, '管理员（username是账号）', '这是留言评论', 1, 4, '2023-06-18 14:24:48');
INSERT INTO `ums_business_workcomment` VALUES (10, 1, 19, '小海', 3, '管理员（username是账号）', '继续回复留言', 1, 4, '2023-06-18 14:22:12');

-- ----------------------------
-- Table structure for ums_business_workimg
-- ----------------------------
DROP TABLE IF EXISTS `ums_business_workimg`;
CREATE TABLE `ums_business_workimg`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '作品图片主键',
  `work_id` int(11) NULL DEFAULT NULL COMMENT '作品id',
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '作品图片',
  `type` int(11) NULL DEFAULT NULL COMMENT '作品类型，1婚礼作品，2主持人动态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_workimg
-- ----------------------------
INSERT INTO `ums_business_workimg` VALUES (1, 2, 'http://2.jpg', 1);
INSERT INTO `ums_business_workimg` VALUES (2, 2, 'http://22w.bai', 2);
INSERT INTO `ums_business_workimg` VALUES (3, 1, 'http://sdfa', 1);
INSERT INTO `ums_business_workimg` VALUES (4, 1, '/abcd/1.png', 1);

-- ----------------------------
-- Table structure for ums_business_workreserve
-- ----------------------------
DROP TABLE IF EXISTS `ums_business_workreserve`;
CREATE TABLE `ums_business_workreserve`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appointment_service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预约服务',
  `created_time` datetime(0) NOT NULL COMMENT '预约服务时间',
  `contact_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT 0 COMMENT '预约状态 0 预约中，1 预约完成',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_workreserve
-- ----------------------------
INSERT INTO `ums_business_workreserve` VALUES (2, '预约服务', '2023-04-25 19:06:01', '联系人', '1234', '提交相关1', 1);
INSERT INTO `ums_business_workreserve` VALUES (3, '预约服务', '2023-04-25 19:06:01', '联系人', '1234', '提交相关1', 0);
INSERT INTO `ums_business_workreserve` VALUES (4, '预约服务', '2023-04-25 19:06:01', '联系人', '1234', '提交相关1', 0);

-- ----------------------------
-- Table structure for ums_business_workstar
-- ----------------------------
DROP TABLE IF EXISTS `ums_business_workstar`;
CREATE TABLE `ums_business_workstar`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `work_id` bigint(20) NULL DEFAULT NULL COMMENT '作品id',
  `anchor_id` bigint(20) NULL DEFAULT NULL COMMENT '作品主持人id',
  `user_id` bigint(20) NULL DEFAULT NULL COMMENT '关注作品的用户id',
  `type` int(11) NULL DEFAULT NULL COMMENT '1婚礼作品点赞，2主持人动态点赞，3.婚礼作品评论点赞, 4 主持人动态评论点赞, 5婚礼作品收藏,6主持人动态收藏',
  `comment_id` int(11) NULL DEFAULT NULL COMMENT '评论id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '点赞收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_workstar
-- ----------------------------
INSERT INTO `ums_business_workstar` VALUES (1, 1, 19, 21, 1, NULL);
INSERT INTO `ums_business_workstar` VALUES (10, 1, 19, 3, 3, 4);
INSERT INTO `ums_business_workstar` VALUES (11, 1, 19, 18, 2, NULL);
INSERT INTO `ums_business_workstar` VALUES (15, 1, 19, 20, 3, 4);
INSERT INTO `ums_business_workstar` VALUES (16, 1, 19, 20, 3, 8);
INSERT INTO `ums_business_workstar` VALUES (17, 1, 19, 3, 3, 9);
INSERT INTO `ums_business_workstar` VALUES (18, 1, 19, 3, 1, NULL);

-- ----------------------------
-- Table structure for ums_business_workvideo
-- ----------------------------
DROP TABLE IF EXISTS `ums_business_workvideo`;
CREATE TABLE `ums_business_workvideo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '作品视频id',
  `work_id` int(11) NULL DEFAULT NULL COMMENT '作品id',
  `video_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '作品视频url',
  `type` int(11) NULL DEFAULT NULL COMMENT '作品类型，1婚礼作品，2主持人动态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_workvideo
-- ----------------------------
INSERT INTO `ums_business_workvideo` VALUES (1, 1, '/abcd/1.mp4', 1);

-- ----------------------------
-- Table structure for ums_menu
-- ----------------------------
DROP TABLE IF EXISTS `ums_menu`;
CREATE TABLE `ums_menu`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) NULL DEFAULT NULL COMMENT '父级ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `level` int(11) NULL DEFAULT NULL COMMENT '菜单级数',
  `sort` int(11) NULL DEFAULT NULL COMMENT '菜单排序',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端名称',
  `icon` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端图标',
  `hidden` int(11) NULL DEFAULT NULL COMMENT '前端隐藏',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_menu
-- ----------------------------
INSERT INTO `ums_menu` VALUES (21, 0, '2020-02-07 16:29:13', '权限', 0, 0, 'ums', 'ums', 0);
INSERT INTO `ums_menu` VALUES (22, 21, '2020-02-07 16:29:51', '用户列表', 1, 0, 'admin', 'ums-admin', 0);
INSERT INTO `ums_menu` VALUES (23, 21, '2020-02-07 16:30:13', '角色列表', 1, 0, 'role', 'ums-role', 0);
INSERT INTO `ums_menu` VALUES (24, 21, '2020-02-07 16:30:53', '菜单列表', 1, 0, 'menu', 'ums-menu', 0);
INSERT INTO `ums_menu` VALUES (25, 21, '2020-02-07 16:31:13', '资源列表', 1, 0, 'resource', 'ums-resource', 0);

-- ----------------------------
-- Table structure for ums_resource
-- ----------------------------
DROP TABLE IF EXISTS `ums_resource`;
CREATE TABLE `ums_resource`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源名称',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '资源URL',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `category_id` bigint(20) NULL DEFAULT NULL COMMENT '资源分类ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_resource
-- ----------------------------
INSERT INTO `ums_resource` VALUES (25, '2020-02-07 16:47:34', '后台用户管理', '/admin/**', '', 4);
INSERT INTO `ums_resource` VALUES (26, '2020-02-07 16:48:24', '后台用户角色管理', '/role/**', '', 4);
INSERT INTO `ums_resource` VALUES (27, '2020-02-07 16:48:48', '后台菜单管理', '/menu/**', '', 4);
INSERT INTO `ums_resource` VALUES (28, '2020-02-07 16:49:18', '后台资源分类管理', '/resourceCategory/**', '', 4);
INSERT INTO `ums_resource` VALUES (29, '2020-02-07 16:49:45', '后台资源管理', '/resource/**', '', 4);
INSERT INTO `ums_resource` VALUES (32, '2023-04-15 18:46:48', '微信登陆接口', '/wechat/**', NULL, 5);
INSERT INTO `ums_resource` VALUES (33, '2023-04-16 10:13:45', '公司描述信息', '/companyDescription/**', NULL, 5);
INSERT INTO `ums_resource` VALUES (34, '2023-04-16 18:14:25', '作品管理', '/work/**', NULL, 5);
INSERT INTO `ums_resource` VALUES (35, '2023-05-17 20:11:31', '主持人详细信息', '/anchorDetail/**', NULL, 5);
INSERT INTO `ums_resource` VALUES (36, '2023-05-18 20:32:17', '前端字典表', '/dictionary/**', NULL, 5);

-- ----------------------------
-- Table structure for ums_resource_category
-- ----------------------------
DROP TABLE IF EXISTS `ums_resource_category`;
CREATE TABLE `ums_resource_category`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '资源分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_resource_category
-- ----------------------------
INSERT INTO `ums_resource_category` VALUES (4, '2020-02-05 10:23:04', '权限模块', 0);
INSERT INTO `ums_resource_category` VALUES (5, '2023-04-15 18:46:25', '业务模块', 0);

-- ----------------------------
-- Table structure for ums_role
-- ----------------------------
DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE `ums_role`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `admin_count` int(11) NULL DEFAULT NULL COMMENT '后台用户数量',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `status` int(11) NULL DEFAULT 1 COMMENT '启用状态：0->禁用；1->启用',
  `sort` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_role
-- ----------------------------
INSERT INTO `ums_role` VALUES (5, '超级管理员', '拥有所有查看和操作功能(企业管理人员)', 0, '2020-02-02 15:11:05', 1, 0);
INSERT INTO `ums_role` VALUES (9, '普通用户', '微信默认登陆用户', 0, '2023-04-15 18:37:45', 1, 0);
INSERT INTO `ums_role` VALUES (10, '主持人', '主持人用户（管理员需要后台给微信登陆用户调角色）', 0, '2023-04-16 09:02:11', 1, 0);

-- ----------------------------
-- Table structure for ums_role_menu_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_menu_relation`;
CREATE TABLE `ums_role_menu_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台角色菜单关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_role_menu_relation
-- ----------------------------
INSERT INTO `ums_role_menu_relation` VALUES (91, 5, 21);
INSERT INTO `ums_role_menu_relation` VALUES (92, 5, 22);
INSERT INTO `ums_role_menu_relation` VALUES (93, 5, 23);
INSERT INTO `ums_role_menu_relation` VALUES (94, 5, 24);
INSERT INTO `ums_role_menu_relation` VALUES (95, 5, 25);

-- ----------------------------
-- Table structure for ums_role_resource_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_resource_relation`;
CREATE TABLE `ums_role_resource_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `resource_id` bigint(20) NULL DEFAULT NULL COMMENT '资源ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 234 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台角色资源关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_role_resource_relation
-- ----------------------------
INSERT INTO `ums_role_resource_relation` VALUES (165, 5, 25);
INSERT INTO `ums_role_resource_relation` VALUES (166, 5, 26);
INSERT INTO `ums_role_resource_relation` VALUES (167, 5, 27);
INSERT INTO `ums_role_resource_relation` VALUES (168, 5, 28);
INSERT INTO `ums_role_resource_relation` VALUES (169, 5, 29);
INSERT INTO `ums_role_resource_relation` VALUES (218, 9, 32);
INSERT INTO `ums_role_resource_relation` VALUES (219, 5, 32);
INSERT INTO `ums_role_resource_relation` VALUES (221, 10, 32);
INSERT INTO `ums_role_resource_relation` VALUES (222, 5, 33);
INSERT INTO `ums_role_resource_relation` VALUES (223, 9, 33);
INSERT INTO `ums_role_resource_relation` VALUES (224, 10, 33);
INSERT INTO `ums_role_resource_relation` VALUES (225, 5, 34);
INSERT INTO `ums_role_resource_relation` VALUES (226, 9, 34);
INSERT INTO `ums_role_resource_relation` VALUES (227, 10, 34);
INSERT INTO `ums_role_resource_relation` VALUES (228, 5, 35);
INSERT INTO `ums_role_resource_relation` VALUES (229, 9, 35);
INSERT INTO `ums_role_resource_relation` VALUES (230, 10, 35);
INSERT INTO `ums_role_resource_relation` VALUES (231, 5, 36);
INSERT INTO `ums_role_resource_relation` VALUES (232, 9, 36);
INSERT INTO `ums_role_resource_relation` VALUES (233, 10, 36);

SET FOREIGN_KEY_CHECKS = 1;
