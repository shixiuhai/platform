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

 Date: 26/06/2023 18:52:19
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
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_admin
-- ----------------------------
INSERT INTO `ums_admin` VALUES (3, 'admin', '$2a$10$5v88Pqly1RxR03rFd09pTObQ6/OHn3rQzoC/f8UEkEkdE5BVBabPq', NULL, '/static/file/20230620/9c1a5eb34c5e4d6ead5779b21ddc8bd1.jpg', '15256728901@163.com', '管理员', '这是一个什么什么样的主持人', '2023-04-15 13:48:13', '2023-05-17 22:36:11', 1);
INSERT INTO `ums_admin` VALUES (18, '15256728901', '$2a$10$5v88Pqly1RxR03rFd09pTObQ6/OHn3rQzoC/f8UEkEkdE5BVBabPq', NULL, '/static/file/20230620/691d026d7ebe40d68737d60144ad274c.jpg', '15256728901@163.com', '测试主持人', '这是一个什么什么样的主持人1234', '2023-04-15 13:48:13', '2023-05-17 22:36:11', 1);
INSERT INTO `ums_admin` VALUES (19, '15256728902', '$2a$10$5v88Pqly1RxR03rFd09pTObQ6/OHn3rQzoC/f8UEkEkdE5BVBabPq', NULL, '/xiaowang', '15256728901@163.com', '小王', 'string1', '2023-04-15 20:54:38', '2023-05-17 22:36:14', 1);
INSERT INTO `ums_admin` VALUES (20, 'xiaoming', '$2a$10$mIL3MGAFbiQqxz7zy/1xqe8ZjtwB9U3U/my.oFSVLvrVaRmkEUSkS', NULL, NULL, '15256728902@163.com', '哈哈', NULL, '2023-04-25 22:28:53', NULL, 1);
INSERT INTO `ums_admin` VALUES (21, 'xiaoming2', '$2a$10$oc6TFOJAIdEcJsrTzJYaJOT1XDcW6rAdnC308J8/hoGQn0epAQ6qe', NULL, NULL, NULL, '小a', NULL, '2023-04-25 22:29:11', NULL, 1);
INSERT INTO `ums_admin` VALUES (22, 'xiaoming3', '$2a$10$pRhj7lKlzi5eAFX59/owOeCQtMzd3iRc1s5NITullZfLYTD.gS16G', NULL, NULL, NULL, '嘿嘿', NULL, '2023-05-17 22:37:11', NULL, 1);
INSERT INTO `ums_admin` VALUES (29, 'owQK84mZKlQdBkHW_P2Yqlo7NWPA', '$2a$10$reCeHZO2rTnm/tBdEWecKOaNZbGTQKOCzx9Y60mcGdbTaKxQ.TQkK', NULL, '1', NULL, '至简用户', NULL, '2023-06-20 00:45:55', NULL, 1);
INSERT INTO `ums_admin` VALUES (30, 'owQK84hEM3RGzg9entBgdxFW9cmA', '$2a$10$6q0ZfgejZVUK0iFnLznciucQrnIPuG8sVfg4oyWNnkAJCskHd2tFW', NULL, '1', NULL, '至简用户', NULL, '2023-06-20 00:45:55', NULL, 1);
INSERT INTO `ums_admin` VALUES (32, 'owQK84sHuMb_vyKjNJDVmoRuHF-0', '$2a$10$pC2bPRzOpqVZRx04OWbTyOoFb9JU09WLjUWTtHe/MRWJKMIo2RKLK', NULL, '1', NULL, '至简用户', NULL, '2023-06-20 13:14:22', NULL, 1);
INSERT INTO `ums_admin` VALUES (33, 'owQK84lQN1taloihx8UpgsPypEzo', '$2a$10$ueUS.taVb43KPHlNo1qrEe9yDkSIqEJ58lAp08oU.w//dAfKvCunK', NULL, '1', NULL, '至简用户', NULL, '2023-06-20 13:14:23', NULL, 1);
INSERT INTO `ums_admin` VALUES (34, 'owQK84ttJHLcXhWII3mLl-_je3xw', '$2a$10$FcGyXgkwANJ.ep4WkS4Y5esDwovrxemu0.ePSFcEU6TZpP7NL6D2.', NULL, '1', NULL, '至简用户', NULL, '2023-06-20 15:32:35', NULL, 1);
INSERT INTO `ums_admin` VALUES (35, 'owQK84kPD31GVMShcxy4j3RO0IS8', '$2a$10$Ne5xGEnQJfG2EFKgqwX/mujx3/fnHvud6LPHeaaGeypExbwLK2VRG', NULL, '1', NULL, '至简用户', NULL, '2023-06-20 15:33:33', NULL, 1);
INSERT INTO `ums_admin` VALUES (36, 'owQK84nb-UaO6xAT8FE5j7IIgUL4', '$2a$10$pHjXqnVY/7xnl.15jN44ruDFLmFhwVu3SLSvAnyh8h9bjgmwgc0dC', NULL, '/static/file/20230620/c254e9e6f9c84dffbfdb9ae41f93549d.jpg', NULL, '追ྂ铭ྂ', NULL, '2023-06-20 16:16:32', NULL, 1);
INSERT INTO `ums_admin` VALUES (37, 'owQK84nIH8rOUbVPlduAn43VVhC0', '$2a$10$u2/zi4JnwvAhrtZEvryi1efIx5Mul9at8zgoKM5KrjBvugyasn7pG', NULL, '1', NULL, '至简用户', NULL, '2023-06-20 16:20:45', NULL, 1);
INSERT INTO `ums_admin` VALUES (38, 'owQK84uPPTn2ZKqnZDlcekGnriHk', '$2a$10$MWf6IG03vmapLV7xyAmN4O7rdlD2qkvVDZjRnTnQuTAjglIQHJG/O', NULL, '1', NULL, '至简用户', NULL, '2023-06-20 16:22:05', NULL, 1);
INSERT INTO `ums_admin` VALUES (45, 'owQK84gQV7BjRes8iwcA7Wa05fko', '$2a$10$TE5/STnPjvCUuCUikgIlVO/kL7ByZtUC6kCNjCZryZZEa0/44FFSa', NULL, '1', NULL, '普通用户', NULL, '2023-06-20 17:23:02', NULL, 1);
INSERT INTO `ums_admin` VALUES (46, 'owQK84ncyB_4pn2kh1XnFI8W5eXI', '$2a$10$qXYhCpPIT75Ki/pBIMm1quFX7cOfuWRhCrr3IW1OHeN27OT3kcpK2', NULL, '1', NULL, '至简用户', NULL, '2023-06-20 21:39:22', NULL, 1);
INSERT INTO `ums_admin` VALUES (48, 'owQK84qWk9w5qWYE4bpkl1sHJkL8', '$2a$10$c9RGDSmXszYrgkLol2U.Xu3HjlFsaBKFgMRUAkpGyRF42TRe9n9HC', '15058598907', '/static/file/20230626/56bcfd540dd54b22b29b8436f9c91114.jpg', NULL, '葫芦娃', NULL, '2023-06-21 11:09:58', NULL, 1);
INSERT INTO `ums_admin` VALUES (49, 'owQK84tVeQB0HYPlS2tmatNEaSas', '$2a$10$nekbTDKbz3LkEL6yq7.1BOk/PA3.OPaPiEc36u8JW5xxblGuhDXdq', NULL, '1', NULL, '普通用户', NULL, '2023-06-21 15:29:44', NULL, 1);
INSERT INTO `ums_admin` VALUES (50, 'owQK84uXDJjFb8DatdCUytCFbas4', '$2a$10$LU7GLgd8Dt5akBoL7pkja.VRoXrp48DZJo74zudwJUeUFmGqy1vwC', NULL, '1', NULL, '普通用户', NULL, '2023-06-21 16:37:01', NULL, 1);
INSERT INTO `ums_admin` VALUES (51, 'owQK84geUWdHIQbzKSdCZgEo8jHw', '$2a$10$C6IVaN8dlKxAyovvou6gzOQfuS.4XY5dBYaDELq3gKqEYfcKs6eLO', NULL, '1', NULL, '普通用户', NULL, '2023-06-21 16:55:27', NULL, 1);
INSERT INTO `ums_admin` VALUES (52, 'owQK84gb0LB7l0C54C_Yb6BNKQ1Q', '$2a$10$bfBvWgZvKVTSpy6P4V4l0uSMJO5q6N2EQJtvSKpzLY30cLDBSYt56', NULL, '1', NULL, '普通用户', NULL, '2023-06-24 12:45:21', NULL, 1);
INSERT INTO `ums_admin` VALUES (53, 'owQK84kjsjFwq1o0ctJwSMJDEWjw', '$2a$10$u59HRX/Ix6UzcO9T70q20eiKM22XfVmxolOJkYAKlCWD12yQSFcSW', NULL, '1', NULL, '普通用户', NULL, '2023-06-24 21:30:20', NULL, 1);
INSERT INTO `ums_admin` VALUES (54, 'owQK84tTwQQ4I8V7_bZC4pgXa_m8', '$2a$10$pUP265F2F8QyJRchj9XI8eyvP7YenCcE1pBZ4FpKSAXxANQcLkB7u', NULL, '1', NULL, '普通用户', NULL, '2023-06-26 14:26:40', NULL, 1);

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
) ENGINE = InnoDB AUTO_INCREMENT = 963 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户登录日志表' ROW_FORMAT = Dynamic;

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
INSERT INTO `ums_admin_login_log` VALUES (386, 3, '2023-06-18 21:05:06', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (387, 3, '2023-06-18 21:06:19', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (388, 3, '2023-06-18 21:13:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (389, 3, '2023-06-18 21:51:02', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (390, 3, '2023-06-18 21:59:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (391, 3, '2023-06-18 22:01:55', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (392, 3, '2023-06-18 22:06:14', '125.113.58.183', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (393, 3, '2023-06-18 22:07:11', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (394, 3, '2023-06-18 22:08:09', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (395, 3, '2023-06-18 22:08:38', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (396, 3, '2023-06-18 22:10:48', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (397, 3, '2023-06-18 22:11:08', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (398, 3, '2023-06-18 22:11:30', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (399, 3, '2023-06-18 22:16:29', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (400, 3, '2023-06-18 22:18:01', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (401, 3, '2023-06-18 22:22:04', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (402, 3, '2023-06-18 22:29:33', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (403, 3, '2023-06-18 22:29:51', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (404, 3, '2023-06-18 22:30:16', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (405, 3, '2023-06-18 22:32:21', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (406, 3, '2023-06-18 22:32:28', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (407, 3, '2023-06-18 22:33:23', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (408, 3, '2023-06-18 22:33:41', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (409, 3, '2023-06-18 22:34:21', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (410, 3, '2023-06-18 22:36:31', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (411, 3, '2023-06-18 22:36:44', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (412, 3, '2023-06-18 22:39:03', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (413, 3, '2023-06-18 22:39:35', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (414, 3, '2023-06-18 22:39:51', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (415, 3, '2023-06-18 22:41:28', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (416, 3, '2023-06-18 22:47:19', '39.186.180.237', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (417, 3, '2023-06-18 23:37:21', '39.186.180.237', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (418, 3, '2023-06-18 23:38:53', '39.186.180.237', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (419, 3, '2023-06-18 23:43:01', '39.186.180.237', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (420, 3, '2023-06-18 23:43:06', '39.186.180.237', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (421, 3, '2023-06-18 23:48:40', '39.186.180.237', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (422, 3, '2023-06-19 09:43:22', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (423, 3, '2023-06-19 09:43:44', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (424, 3, '2023-06-19 09:43:49', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (425, 3, '2023-06-19 09:44:59', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (426, 3, '2023-06-19 09:46:46', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (427, 3, '2023-06-19 09:46:57', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (428, 3, '2023-06-19 09:47:29', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (429, 3, '2023-06-19 09:47:32', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (430, 3, '2023-06-19 09:47:37', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (431, 3, '2023-06-19 09:47:41', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (432, 3, '2023-06-19 09:48:41', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (433, 3, '2023-06-19 09:48:56', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (434, 3, '2023-06-19 09:49:16', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (435, 3, '2023-06-19 09:49:18', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (436, 3, '2023-06-19 09:50:09', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (437, 3, '2023-06-19 11:10:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (438, 3, '2023-06-19 11:23:35', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (439, 3, '2023-06-19 11:25:00', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (440, 3, '2023-06-19 11:26:42', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (441, 3, '2023-06-19 11:26:57', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (442, 3, '2023-06-19 11:27:02', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (443, 3, '2023-06-19 11:27:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (444, 3, '2023-06-19 11:27:10', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (445, 3, '2023-06-19 11:56:37', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (446, 3, '2023-06-19 11:57:12', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (447, 3, '2023-06-19 11:57:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (448, 3, '2023-06-19 11:57:45', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (449, 3, '2023-06-19 11:58:56', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (450, 3, '2023-06-19 11:59:21', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (451, 3, '2023-06-19 11:59:24', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (452, 3, '2023-06-19 11:59:27', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (453, 3, '2023-06-19 11:59:30', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (454, 3, '2023-06-19 11:59:37', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (455, 3, '2023-06-19 11:59:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (456, 3, '2023-06-19 11:59:42', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (457, 3, '2023-06-19 11:59:45', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (458, 3, '2023-06-19 11:59:48', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (459, 3, '2023-06-19 11:59:51', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (460, 3, '2023-06-19 12:06:21', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (461, 3, '2023-06-19 12:09:11', '111.2.91.38', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (462, 3, '2023-06-19 12:10:01', '111.2.91.38', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (463, 3, '2023-06-19 12:15:33', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (464, 3, '2023-06-19 12:15:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (465, 3, '2023-06-19 12:16:57', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (466, 3, '2023-06-19 12:17:04', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (467, 3, '2023-06-19 12:17:17', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (468, 3, '2023-06-19 12:17:49', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (469, 3, '2023-06-19 12:18:36', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (470, 3, '2023-06-19 12:18:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (471, 3, '2023-06-19 13:10:11', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (472, 3, '2023-06-19 13:10:24', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (473, 3, '2023-06-19 13:10:45', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (474, 3, '2023-06-19 13:12:21', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (475, 3, '2023-06-19 13:12:25', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (476, 3, '2023-06-19 13:40:23', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (477, 3, '2023-06-19 13:41:53', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (478, 3, '2023-06-19 13:42:22', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (479, 3, '2023-06-19 13:42:32', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (480, 3, '2023-06-19 13:42:48', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (481, 3, '2023-06-19 13:42:55', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (482, 3, '2023-06-19 13:43:14', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (483, 3, '2023-06-19 13:43:32', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (484, 3, '2023-06-19 13:43:35', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (485, 3, '2023-06-19 13:43:53', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (486, 3, '2023-06-19 13:43:55', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (487, 3, '2023-06-19 13:44:08', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (488, 3, '2023-06-19 13:45:49', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (489, 3, '2023-06-19 13:45:49', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (490, 3, '2023-06-19 13:46:23', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (491, 3, '2023-06-19 13:46:36', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (492, 3, '2023-06-19 13:46:51', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (493, 3, '2023-06-19 13:47:44', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (494, 3, '2023-06-19 13:52:04', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (495, 3, '2023-06-19 13:59:10', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (496, 3, '2023-06-19 13:59:42', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (497, 3, '2023-06-19 13:59:50', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (498, 3, '2023-06-19 14:02:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (499, 3, '2023-06-19 14:03:16', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (500, 3, '2023-06-19 14:25:51', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (501, 3, '2023-06-19 16:22:43', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (502, 3, '2023-06-19 16:23:14', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (503, 3, '2023-06-19 16:24:56', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (504, 3, '2023-06-19 16:25:05', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (505, 3, '2023-06-19 16:26:22', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (506, 3, '2023-06-19 16:27:07', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (507, 3, '2023-06-19 16:27:09', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (508, 3, '2023-06-19 16:27:57', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (509, 3, '2023-06-19 16:28:31', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (510, 3, '2023-06-19 16:29:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (511, 3, '2023-06-19 16:29:12', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (512, 3, '2023-06-19 16:29:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (513, 3, '2023-06-19 16:29:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (514, 3, '2023-06-19 16:30:21', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (515, 3, '2023-06-19 16:30:26', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (516, 3, '2023-06-19 16:30:29', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (517, 3, '2023-06-19 16:33:45', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (518, 3, '2023-06-19 16:34:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (519, 3, '2023-06-19 16:34:56', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (520, 3, '2023-06-19 16:35:08', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (521, 3, '2023-06-19 16:36:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (522, 3, '2023-06-19 16:36:45', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (523, 3, '2023-06-19 16:37:30', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (524, 3, '2023-06-19 16:37:41', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (525, 3, '2023-06-19 16:37:45', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (526, 3, '2023-06-19 16:37:51', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (527, 3, '2023-06-19 16:37:57', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (528, 3, '2023-06-19 16:38:01', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (529, 3, '2023-06-19 16:38:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (530, 3, '2023-06-19 16:38:55', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (531, 3, '2023-06-19 16:39:34', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (532, 3, '2023-06-19 16:40:07', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (533, 3, '2023-06-19 16:41:08', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (534, 3, '2023-06-19 16:41:24', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (535, 3, '2023-06-19 16:43:13', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (536, 3, '2023-06-19 16:43:59', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (537, 3, '2023-06-19 16:44:27', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (538, 3, '2023-06-19 16:44:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (539, 3, '2023-06-19 16:44:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (540, 3, '2023-06-19 16:44:45', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (541, 3, '2023-06-19 16:44:59', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (542, 3, '2023-06-19 16:45:02', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (543, 3, '2023-06-19 16:45:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (544, 3, '2023-06-19 16:45:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (545, 3, '2023-06-19 16:45:18', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (546, 3, '2023-06-19 16:45:22', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (547, 3, '2023-06-19 16:45:45', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (548, 3, '2023-06-19 17:01:03', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (549, 3, '2023-06-19 17:04:31', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (550, 3, '2023-06-19 17:04:35', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (551, 3, '2023-06-19 17:07:03', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (552, 3, '2023-06-19 17:07:10', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (553, 3, '2023-06-19 17:07:14', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (554, 3, '2023-06-19 17:07:58', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (555, 3, '2023-06-19 17:08:07', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (556, 3, '2023-06-19 17:08:36', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (557, 3, '2023-06-19 17:08:38', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (558, 3, '2023-06-19 17:08:52', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (559, 3, '2023-06-19 17:10:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (560, 3, '2023-06-19 17:10:28', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (561, 3, '2023-06-19 17:10:31', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (562, 3, '2023-06-19 17:10:42', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (563, 3, '2023-06-19 17:10:46', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (564, 3, '2023-06-19 17:20:19', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (565, 3, '2023-06-19 17:28:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (566, 3, '2023-06-19 17:35:04', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (567, 3, '2023-06-19 17:35:52', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (568, 3, '2023-06-19 17:36:00', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (569, 3, '2023-06-19 17:36:05', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (570, 3, '2023-06-19 18:45:23', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (571, 3, '2023-06-19 18:45:36', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (572, 3, '2023-06-19 18:46:21', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (573, 3, '2023-06-19 18:46:33', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (574, 3, '2023-06-19 18:46:56', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (575, 3, '2023-06-19 18:47:08', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (576, 3, '2023-06-19 18:47:23', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (577, 3, '2023-06-19 18:47:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (578, 3, '2023-06-19 18:48:16', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (579, 3, '2023-06-19 18:48:27', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (580, 3, '2023-06-19 18:48:39', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (581, 3, '2023-06-19 18:49:44', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (582, 3, '2023-06-19 18:51:12', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (583, 3, '2023-06-19 18:53:03', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (584, 3, '2023-06-19 18:53:09', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (585, 3, '2023-06-19 18:53:11', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (586, 3, '2023-06-19 18:53:30', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (587, 3, '2023-06-19 18:54:34', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (588, 3, '2023-06-19 19:02:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (589, 3, '2023-06-19 19:05:32', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (590, 3, '2023-06-19 19:30:17', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (591, 3, '2023-06-19 19:33:20', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (592, 3, '2023-06-19 19:33:51', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (593, 3, '2023-06-19 19:41:56', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (594, 3, '2023-06-19 19:42:28', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (595, 3, '2023-06-19 19:43:02', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (596, 3, '2023-06-19 19:43:18', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (597, 3, '2023-06-19 19:43:41', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (598, 3, '2023-06-19 19:43:52', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (599, 3, '2023-06-19 19:44:12', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (600, 3, '2023-06-19 19:44:26', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (601, 3, '2023-06-19 19:45:10', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (602, 3, '2023-06-19 19:48:53', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (603, 3, '2023-06-19 19:49:32', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (604, 3, '2023-06-19 19:51:33', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (605, 3, '2023-06-19 19:53:17', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (606, 3, '2023-06-19 19:53:24', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (607, 3, '2023-06-19 19:53:56', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (608, 3, '2023-06-19 19:57:57', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (609, 3, '2023-06-19 19:58:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (610, 3, '2023-06-19 20:02:04', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (611, 3, '2023-06-19 20:06:58', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (612, 3, '2023-06-19 20:09:10', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (613, 3, '2023-06-19 20:10:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (614, 3, '2023-06-19 20:14:10', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (615, 3, '2023-06-19 20:14:11', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (616, 3, '2023-06-19 20:15:07', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (617, 3, '2023-06-19 20:16:55', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (618, 3, '2023-06-19 20:17:01', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (619, 3, '2023-06-19 20:17:31', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (620, 3, '2023-06-19 20:17:45', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (621, 3, '2023-06-19 20:18:41', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (622, 3, '2023-06-19 20:18:58', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (623, 3, '2023-06-19 20:19:02', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (624, 3, '2023-06-19 20:22:00', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (625, 3, '2023-06-19 20:22:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (626, 3, '2023-06-19 20:22:18', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (627, 3, '2023-06-19 20:25:46', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (628, 3, '2023-06-19 20:26:03', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (629, 3, '2023-06-19 20:28:56', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (630, 3, '2023-06-19 20:32:08', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (631, 3, '2023-06-19 20:50:24', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (632, 3, '2023-06-19 20:50:59', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (633, 3, '2023-06-19 20:51:08', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (634, 3, '2023-06-19 20:52:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (635, 3, '2023-06-19 20:52:21', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (636, 3, '2023-06-19 20:52:41', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (637, 3, '2023-06-19 20:53:09', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (638, 3, '2023-06-19 20:53:31', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (639, 3, '2023-06-19 20:53:36', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (640, 3, '2023-06-19 20:54:16', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (641, 3, '2023-06-19 20:54:23', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (642, 3, '2023-06-19 20:57:08', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (643, 3, '2023-06-19 20:57:14', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (644, 3, '2023-06-19 20:57:21', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (645, 3, '2023-06-19 20:57:46', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (646, 3, '2023-06-19 20:58:08', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (647, 3, '2023-06-19 20:59:19', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (648, 3, '2023-06-19 20:59:23', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (649, 3, '2023-06-19 20:59:28', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (650, 3, '2023-06-19 20:59:30', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (651, 3, '2023-06-19 20:59:32', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (652, 3, '2023-06-19 20:59:58', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (653, 3, '2023-06-19 21:00:13', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (654, 3, '2023-06-19 21:00:23', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (655, 3, '2023-06-19 21:00:34', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (656, 3, '2023-06-19 21:01:48', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (657, 3, '2023-06-19 21:02:03', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (658, 3, '2023-06-19 21:02:12', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (659, 3, '2023-06-19 21:02:14', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (660, 3, '2023-06-19 21:02:58', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (661, 3, '2023-06-19 21:03:09', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (662, 3, '2023-06-19 21:03:12', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (663, 3, '2023-06-19 21:03:19', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (664, 3, '2023-06-19 21:03:25', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (665, 3, '2023-06-19 21:05:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (666, 3, '2023-06-19 21:06:51', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (667, 3, '2023-06-19 21:06:55', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (668, 3, '2023-06-19 21:06:57', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (669, 3, '2023-06-19 21:07:04', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (670, 3, '2023-06-19 21:07:05', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (671, 3, '2023-06-19 21:07:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (672, 3, '2023-06-19 21:07:36', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (673, 3, '2023-06-19 21:08:09', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (674, 3, '2023-06-19 21:08:14', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (675, 3, '2023-06-19 21:08:20', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (676, 3, '2023-06-19 21:08:48', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (677, 3, '2023-06-19 21:09:00', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (678, 3, '2023-06-19 21:09:05', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (679, 3, '2023-06-19 21:14:12', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (680, 3, '2023-06-19 21:14:16', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (681, 3, '2023-06-19 21:14:23', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (682, 3, '2023-06-19 21:14:50', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (683, 3, '2023-06-19 21:15:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (684, 3, '2023-06-19 21:15:29', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (685, 3, '2023-06-19 21:15:39', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (686, 3, '2023-06-19 21:15:50', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (687, 3, '2023-06-19 21:15:57', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (688, 3, '2023-06-19 21:16:10', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (689, 3, '2023-06-19 21:16:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (690, 3, '2023-06-19 21:16:21', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (691, 3, '2023-06-19 21:16:48', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (692, 3, '2023-06-19 21:17:04', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (693, 3, '2023-06-19 21:17:14', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (694, 3, '2023-06-19 21:17:22', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (695, 3, '2023-06-19 21:17:25', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (696, 3, '2023-06-19 21:17:46', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (697, 3, '2023-06-19 21:18:05', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (698, 3, '2023-06-19 21:22:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (699, 3, '2023-06-19 21:23:02', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (700, 3, '2023-06-19 21:25:08', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (701, 3, '2023-06-19 21:27:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (702, 3, '2023-06-19 21:27:48', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (703, 3, '2023-06-19 21:28:28', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (704, 3, '2023-06-19 21:28:30', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (705, 3, '2023-06-19 21:29:47', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (706, 3, '2023-06-19 21:30:01', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (707, 3, '2023-06-19 21:30:18', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (708, 3, '2023-06-19 21:31:14', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (709, 3, '2023-06-19 21:31:18', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (710, 3, '2023-06-19 21:31:28', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (711, 3, '2023-06-19 21:32:50', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (712, 3, '2023-06-19 21:33:28', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (713, 3, '2023-06-19 21:34:51', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (714, 3, '2023-06-19 21:35:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (715, 3, '2023-06-19 21:36:44', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (716, 3, '2023-06-19 21:37:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (717, 3, '2023-06-19 21:37:50', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (718, 3, '2023-06-19 21:40:03', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (719, 3, '2023-06-19 21:41:26', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (720, 3, '2023-06-19 21:41:29', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (721, 3, '2023-06-19 21:41:33', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (722, 3, '2023-06-19 21:41:53', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (723, 3, '2023-06-19 21:41:58', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (724, 3, '2023-06-19 21:42:03', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (725, 3, '2023-06-19 21:42:26', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (726, 3, '2023-06-19 21:42:28', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (727, 3, '2023-06-19 21:43:05', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (728, 3, '2023-06-19 21:43:09', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (729, 3, '2023-06-19 21:43:23', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (730, 3, '2023-06-19 21:44:29', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (731, 3, '2023-06-19 21:44:32', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (732, 3, '2023-06-19 21:44:37', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (733, 3, '2023-06-19 21:45:42', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (734, 3, '2023-06-19 21:45:48', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (735, 3, '2023-06-19 21:46:01', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (736, 3, '2023-06-19 21:46:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (737, 3, '2023-06-19 21:46:18', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (738, 3, '2023-06-19 21:46:51', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (739, 3, '2023-06-19 21:46:54', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (740, 3, '2023-06-19 21:47:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (741, 3, '2023-06-19 21:48:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (742, 3, '2023-06-19 21:48:14', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (743, 3, '2023-06-19 21:48:23', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (744, 3, '2023-06-19 21:48:37', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (745, 3, '2023-06-19 21:48:41', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (746, 3, '2023-06-19 21:48:52', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (747, 3, '2023-06-19 21:49:01', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (748, 3, '2023-06-19 21:49:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (749, 3, '2023-06-19 21:49:21', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (750, 3, '2023-06-19 21:49:26', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (751, 3, '2023-06-19 21:49:32', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (752, 3, '2023-06-19 21:49:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (753, 3, '2023-06-19 21:50:26', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (754, 3, '2023-06-19 21:50:31', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (755, 3, '2023-06-19 21:50:35', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (756, 3, '2023-06-19 22:11:30', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (757, 3, '2023-06-19 22:13:26', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (758, 3, '2023-06-19 22:14:07', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (759, 3, '2023-06-19 22:16:22', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (760, 3, '2023-06-19 22:17:14', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (761, 3, '2023-06-20 00:34:31', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (762, 3, '2023-06-20 00:35:56', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (763, 3, '2023-06-20 00:35:58', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (764, 3, '2023-06-20 00:36:37', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (765, 3, '2023-06-20 00:36:52', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (766, 3, '2023-06-20 00:37:12', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (767, 3, '2023-06-20 00:37:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (768, 3, '2023-06-20 00:37:29', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (769, 3, '2023-06-20 00:37:55', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (770, 3, '2023-06-20 00:38:02', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (771, 3, '2023-06-20 00:38:24', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (772, 3, '2023-06-20 00:38:42', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (773, 3, '2023-06-20 00:38:51', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (774, 3, '2023-06-20 00:39:07', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (775, 18, '2023-06-20 00:59:31', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (776, 18, '2023-06-20 09:22:19', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (777, 19, '2023-06-20 09:23:08', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (778, 3, '2023-06-20 09:52:05', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (779, 3, '2023-06-20 09:54:44', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (780, 3, '2023-06-20 09:57:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (781, 3, '2023-06-20 09:58:34', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (782, 3, '2023-06-20 10:01:46', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (783, 3, '2023-06-20 10:18:57', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (784, 3, '2023-06-20 10:19:10', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (785, 3, '2023-06-20 10:20:00', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (786, 3, '2023-06-20 10:20:17', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (787, 3, '2023-06-20 10:20:21', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (788, 3, '2023-06-20 10:20:53', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (789, 3, '2023-06-20 10:22:24', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (790, 3, '2023-06-20 10:23:02', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (791, 3, '2023-06-20 10:24:34', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (792, 3, '2023-06-20 10:25:54', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (793, 3, '2023-06-20 10:30:36', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (794, 19, '2023-06-20 10:30:46', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (795, 3, '2023-06-20 10:33:34', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (796, 3, '2023-06-20 10:52:48', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (797, 3, '2023-06-20 10:59:35', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (798, 3, '2023-06-20 11:05:50', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (799, 3, '2023-06-20 13:59:17', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (800, 3, '2023-06-20 13:59:59', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (801, 3, '2023-06-20 14:01:21', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (802, 3, '2023-06-20 14:01:51', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (803, 3, '2023-06-20 14:02:04', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (804, 3, '2023-06-20 14:02:17', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (805, 3, '2023-06-20 14:02:32', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (806, 3, '2023-06-20 14:03:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (807, 3, '2023-06-20 14:03:09', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (808, 3, '2023-06-20 14:03:25', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (809, 3, '2023-06-20 14:46:51', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (810, 3, '2023-06-21 11:07:11', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (811, 19, '2023-06-21 11:27:30', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (812, 19, '2023-06-21 11:27:54', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (813, 3, '2023-06-21 11:31:33', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (814, 3, '2023-06-21 11:32:48', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (815, 3, '2023-06-21 11:35:21', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (816, 3, '2023-06-21 11:35:27', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (817, 3, '2023-06-21 11:36:41', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (818, 3, '2023-06-21 11:38:04', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (819, 3, '2023-06-21 11:40:50', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (820, 3, '2023-06-21 11:41:07', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (821, 3, '2023-06-21 11:42:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (822, 3, '2023-06-21 11:43:36', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (823, 3, '2023-06-21 11:45:16', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (824, 3, '2023-06-21 11:46:36', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (825, 3, '2023-06-21 11:48:27', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (826, 3, '2023-06-21 11:50:04', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (827, 3, '2023-06-21 11:52:35', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (828, 3, '2023-06-21 11:52:52', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (829, 3, '2023-06-21 11:52:58', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (830, 3, '2023-06-21 11:53:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (831, 3, '2023-06-21 11:53:23', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (832, 3, '2023-06-21 11:53:33', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (833, 3, '2023-06-21 11:57:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (834, 3, '2023-06-21 11:57:49', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (835, 3, '2023-06-21 11:57:52', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (836, 3, '2023-06-21 11:58:48', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (837, 3, '2023-06-21 11:59:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (838, 3, '2023-06-21 12:00:56', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (839, 3, '2023-06-21 12:02:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (840, 3, '2023-06-21 12:02:09', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (841, 3, '2023-06-21 12:02:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (842, 3, '2023-06-21 12:02:22', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (843, 3, '2023-06-21 12:02:24', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (844, 3, '2023-06-21 12:02:43', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (845, 3, '2023-06-21 12:02:46', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (846, 3, '2023-06-21 12:09:43', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (847, 3, '2023-06-21 12:09:48', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (848, 3, '2023-06-21 12:09:54', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (849, 3, '2023-06-21 12:10:02', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (850, 3, '2023-06-21 12:10:19', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (851, 3, '2023-06-21 12:10:26', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (852, 3, '2023-06-21 12:10:30', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (853, 3, '2023-06-21 12:10:35', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (854, 3, '2023-06-21 12:10:37', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (855, 3, '2023-06-21 12:10:41', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (856, 3, '2023-06-21 12:10:42', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (857, 3, '2023-06-21 12:10:45', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (858, 3, '2023-06-21 12:10:47', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (859, 3, '2023-06-21 12:11:17', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (860, 3, '2023-06-21 12:12:34', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (861, 3, '2023-06-21 12:12:36', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (862, 3, '2023-06-21 12:12:49', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (863, 3, '2023-06-21 12:14:59', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (864, 3, '2023-06-21 12:15:34', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (865, 3, '2023-06-21 12:15:42', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (866, 3, '2023-06-21 12:16:57', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (867, 3, '2023-06-21 12:17:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (868, 3, '2023-06-21 12:17:10', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (869, 3, '2023-06-21 12:17:57', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (870, 3, '2023-06-21 12:18:42', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (871, 3, '2023-06-21 12:25:34', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (872, 3, '2023-06-21 12:27:55', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (873, 3, '2023-06-21 12:28:11', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (874, 3, '2023-06-21 12:28:19', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (875, 3, '2023-06-21 12:28:59', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (876, 3, '2023-06-21 13:09:52', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (877, 3, '2023-06-21 13:14:17', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (878, 3, '2023-06-21 13:16:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (879, 3, '2023-06-21 13:16:50', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (880, 3, '2023-06-21 13:17:20', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (881, 3, '2023-06-21 13:17:41', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (882, 3, '2023-06-21 13:21:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (883, 3, '2023-06-21 13:21:24', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (884, 3, '2023-06-21 13:21:58', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (885, 3, '2023-06-21 13:23:26', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (886, 3, '2023-06-21 13:23:29', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (887, 3, '2023-06-21 13:23:31', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (888, 3, '2023-06-21 13:23:37', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (889, 3, '2023-06-21 13:25:12', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (890, 3, '2023-06-21 13:26:05', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (891, 3, '2023-06-21 13:27:10', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (892, 3, '2023-06-21 13:28:04', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (893, 3, '2023-06-21 13:29:07', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (894, 3, '2023-06-21 13:29:10', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (895, 3, '2023-06-21 13:29:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (896, 3, '2023-06-21 13:30:05', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (897, 3, '2023-06-21 13:30:11', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (898, 3, '2023-06-21 13:31:37', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (899, 3, '2023-06-21 13:32:17', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (900, 3, '2023-06-21 13:32:20', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (901, 3, '2023-06-21 13:32:27', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (902, 3, '2023-06-21 13:34:09', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (903, 3, '2023-06-21 13:36:25', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (904, 3, '2023-06-21 13:36:57', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (905, 3, '2023-06-21 13:38:48', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (906, 3, '2023-06-21 13:38:59', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (907, 3, '2023-06-21 13:39:12', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (908, 3, '2023-06-21 13:40:43', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (909, 3, '2023-06-21 13:41:39', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (910, 3, '2023-06-21 13:41:42', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (911, 3, '2023-06-21 13:41:45', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (912, 3, '2023-06-21 13:42:09', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (913, 3, '2023-06-21 13:43:55', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (914, 3, '2023-06-21 13:44:34', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (915, 3, '2023-06-21 13:44:37', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (916, 3, '2023-06-21 13:44:50', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (917, 3, '2023-06-21 13:45:41', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (918, 3, '2023-06-21 13:45:49', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (919, 3, '2023-06-21 13:46:29', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (920, 3, '2023-06-21 13:58:26', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (921, 3, '2023-06-21 13:58:50', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (922, 3, '2023-06-21 14:04:13', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (923, 3, '2023-06-21 14:04:18', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (924, 3, '2023-06-21 14:05:32', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (925, 3, '2023-06-21 14:05:41', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (926, 3, '2023-06-21 14:05:47', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (927, 3, '2023-06-21 14:08:18', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (928, 3, '2023-06-21 14:09:47', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (929, 3, '2023-06-21 14:11:06', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (930, 3, '2023-06-21 14:12:33', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (931, 3, '2023-06-21 14:12:56', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (932, 3, '2023-06-21 14:13:00', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (933, 3, '2023-06-21 14:48:56', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (934, 3, '2023-06-21 14:55:50', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (935, 3, '2023-06-21 14:56:48', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (936, 3, '2023-06-21 15:12:39', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (937, 3, '2023-06-21 15:13:43', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (938, 3, '2023-06-21 15:14:12', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (939, 3, '2023-06-21 15:14:38', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (940, 3, '2023-06-21 15:15:47', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (941, 3, '2023-06-21 15:15:55', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (942, 3, '2023-06-21 15:16:08', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (943, 3, '2023-06-21 15:16:35', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (944, 3, '2023-06-21 15:16:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (945, 19, '2023-06-21 20:34:15', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (946, 3, '2023-06-24 12:10:12', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (947, 3, '2023-06-25 11:15:28', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (948, 3, '2023-06-25 15:16:39', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (949, 3, '2023-06-25 15:18:19', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (950, 18, '2023-06-25 15:20:35', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (951, 19, '2023-06-25 15:22:26', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (952, 3, '2023-06-26 10:43:38', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (953, 3, '2023-06-26 11:22:31', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (954, 3, '2023-06-26 11:28:55', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (955, 3, '2023-06-26 14:48:58', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (956, 3, '2023-06-26 14:49:00', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (957, 3, '2023-06-26 14:49:40', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (958, 3, '2023-06-26 14:50:22', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (959, 3, '2023-06-26 15:58:46', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (960, 3, '2023-06-26 15:58:49', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (961, 3, '2023-06-26 15:59:04', '127.0.0.1', NULL, NULL);
INSERT INTO `ums_admin_login_log` VALUES (962, 3, '2023-06-26 16:00:23', '127.0.0.1', NULL, NULL);

-- ----------------------------
-- Table structure for ums_admin_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_role_relation`;
CREATE TABLE `ums_admin_role_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) NULL DEFAULT NULL,
  `role_id` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台用户和角色关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_admin_role_relation
-- ----------------------------
INSERT INTO `ums_admin_role_relation` VALUES (40, 18, 9);
INSERT INTO `ums_admin_role_relation` VALUES (41, 19, 10);
INSERT INTO `ums_admin_role_relation` VALUES (42, 22, 10);
INSERT INTO `ums_admin_role_relation` VALUES (48, 21, 10);
INSERT INTO `ums_admin_role_relation` VALUES (49, 20, 10);
INSERT INTO `ums_admin_role_relation` VALUES (57, 3, 5);
INSERT INTO `ums_admin_role_relation` VALUES (58, 26, 9);
INSERT INTO `ums_admin_role_relation` VALUES (59, 27, 9);
INSERT INTO `ums_admin_role_relation` VALUES (61, 28, 10);
INSERT INTO `ums_admin_role_relation` VALUES (62, 29, 9);
INSERT INTO `ums_admin_role_relation` VALUES (63, 30, 9);
INSERT INTO `ums_admin_role_relation` VALUES (65, 31, 10);
INSERT INTO `ums_admin_role_relation` VALUES (66, 32, 9);
INSERT INTO `ums_admin_role_relation` VALUES (67, 33, 9);
INSERT INTO `ums_admin_role_relation` VALUES (68, 34, 9);
INSERT INTO `ums_admin_role_relation` VALUES (69, 35, 9);
INSERT INTO `ums_admin_role_relation` VALUES (70, 36, 9);
INSERT INTO `ums_admin_role_relation` VALUES (72, 38, 9);
INSERT INTO `ums_admin_role_relation` VALUES (73, 37, 5);
INSERT INTO `ums_admin_role_relation` VALUES (74, 39, 9);
INSERT INTO `ums_admin_role_relation` VALUES (75, 40, 9);
INSERT INTO `ums_admin_role_relation` VALUES (76, 41, 9);
INSERT INTO `ums_admin_role_relation` VALUES (77, 42, 9);
INSERT INTO `ums_admin_role_relation` VALUES (78, 43, 9);
INSERT INTO `ums_admin_role_relation` VALUES (79, 44, 9);
INSERT INTO `ums_admin_role_relation` VALUES (80, 45, 9);
INSERT INTO `ums_admin_role_relation` VALUES (81, 46, 9);
INSERT INTO `ums_admin_role_relation` VALUES (82, 47, 9);
INSERT INTO `ums_admin_role_relation` VALUES (84, 49, 9);
INSERT INTO `ums_admin_role_relation` VALUES (85, 50, 9);
INSERT INTO `ums_admin_role_relation` VALUES (86, 51, 9);
INSERT INTO `ums_admin_role_relation` VALUES (87, 52, 9);
INSERT INTO `ums_admin_role_relation` VALUES (88, 53, 9);
INSERT INTO `ums_admin_role_relation` VALUES (89, 48, 10);
INSERT INTO `ums_admin_role_relation` VALUES (90, 54, 9);

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
  `icon` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主持人头像',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `anchorId`(`anchor_id`) USING BTREE COMMENT '唯一用户id'
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_anchor_detail
-- ----------------------------
INSERT INTO `ums_business_anchor_detail` VALUES (33, 48, '葫芦娃', '200', '28', '金牛座', '2023-06-26 00:00:00', '婚礼', '/static/file/20230626/56bcfd540dd54b22b29b8436f9c91114.jpg');
INSERT INTO `ums_business_anchor_detail` VALUES (48, 18, '测试主持人', '173', '23', '水瓶座', '2023-05-17 00:00:00', '婚礼', '/static/file/20230620/691d026d7ebe40d68737d60144ad274c.jpg');

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
  `wechat_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公众号图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '公司简介描述' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_company
-- ----------------------------
INSERT INTO `ums_business_company` VALUES (1, '/static/file/20230619/a504498ac3bf46e6bb6d80887d1b6121.jpg', '婚礼团队2', '浙江省金华市婺城区李渔路1313号', '至简主持人团队是一家集主持经纪，培训，活动执\n行为一体的综合性服务机构。业务范围，商务主持\n婚礼主持赛事主持。本机构拥有专业主持人四十余\n位。曾荣获浙江省婚庆行业协会杰出主持人，长三\n角主持人大赛金奖，全国主持人大赛金奖等多类奖\n项。至简文化期待与您相遇。', '18957900010', '', '', NULL, '');

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
  `img_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `video_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '作品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_work
-- ----------------------------
INSERT INTO `ums_business_work` VALUES (6, 3, '管理员（username是账号）', NULL, NULL, NULL, 92, '2023-06-20 22:08:32', 2, '作品描述内容', NULL, '/static/file/20230619/a8cb082fc3844238bb5cc59af49fcb53.mp4');
INSERT INTO `ums_business_work` VALUES (19, 3, '管理员', '/', '测试', NULL, 0, '2023-06-25 12:39:31', 0, '测试数据', '/static/file/20230625/453f4f4812244093a95538c893f059ef.jpg', '/static/file/20230625/fb5c1ad3a42b4646ad053e41329e9b4e.mp4');
INSERT INTO `ums_business_work` VALUES (20, 3, '管理员', '/', '测试', NULL, 0, '2023-06-25 12:41:27', 0, '测试数据', '/static/file/20230625/8f11a18482064b0eb4c3d2903201a248.jpg', '/static/file/20230625/5b86af346a7d442b90deea312ec9cbd4.mp4');
INSERT INTO `ums_business_work` VALUES (21, 3, '管理员', '/', '测试', NULL, 0, '2023-06-25 12:50:08', 0, '支持踩踩踩', '/static/file/20230625/ec5d314da6c9430d94940e8451483132.jpg', '/static/file/20230625/27b0d05a36a742be84cc0c2e18913369.mp4');
INSERT INTO `ums_business_work` VALUES (24, 3, '管理员', '/', '大饼', NULL, 21, '2023-06-26 11:26:01', 1, '婚礼主持', '/static/file/20230626/ae3aeb71b4404220a4b7a92019f40af8.png', '/static/file/20230626/f1be059e9c7a448a96ec61688dfa21bd.mp4');
INSERT INTO `ums_business_work` VALUES (25, 48, '葫芦娃', '/static/file/20230626/f324becb24ca4edbabce2358405b34f2.png', '测试', NULL, 187, '2023-06-26 12:00:33', 1, '测试', '/static/file/20230626/f324becb24ca4edbabce2358405b34f2.png', '/static/file/20230626/a47dae0322f948a7a8d82ec8c91d274f.mp4,/static/file/20230626/56ce1f59c8ec4eb3a9a177f0c89e3229.mp4');

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
  `respondent_id` bigint(20) NULL DEFAULT NULL COMMENT '被回复人id',
  `respondent_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '被回复人的姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_workcomment
-- ----------------------------
INSERT INTO `ums_business_workcomment` VALUES (4, 1, 20, '小海', 3, '小海2', '这是个测试评论，嘿嘿', 1, NULL, '2023-06-18 12:23:28', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (8, 1, 19, '小海', 18, '小海1', '这是个测试评论，嘿嘿', 2, NULL, '2023-06-18 20:43:26', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (9, 1, 19, '小海', 3, '管理员（username是账号）', '这是留言评论', 1, 4, '2023-06-18 14:24:48', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (10, 1, 19, '小海', 3, '管理员（username是账号）', '继续回复留言', 1, 4, '2023-06-18 14:22:12', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (11, 6, 3, '管理员（username是账号）', 28, '至简用户', 'cs', 2, NULL, '2023-06-20 00:24:31', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (12, 4, 3, '管理员（username是账号）', 28, '至简用户', 'cs', 1, NULL, '2023-06-20 00:27:29', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (13, 4, 3, '管理员（username是账号）', 28, '至简用户', 'cs', 1, NULL, '2023-06-20 00:28:13', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (14, 4, 3, '管理员（username是账号）', 36, '至简用户', '你好', 1, NULL, '2023-06-20 16:17:03', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (15, 6, 3, '管理员（username是账号）', 36, '亦知', '哈哈', 2, NULL, '2023-06-20 16:20:39', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (16, 1, 19, '小海', 36, '亦知', '哈哈', 1, NULL, '2023-06-20 17:23:39', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (17, 1, 31, '小海', 36, '追ྂ铭ྂ', '测试', 1, NULL, '2023-06-20 22:49:23', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (18, 4, 3, '管理员（username是账号）', 36, '追ྂ铭ྂ', '测试', 1, NULL, '2023-06-21 11:36:29', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (19, 10, 3, '管理员', 36, '追ྂ铭ྂ', '这是一个测试', 1, NULL, '2023-06-21 19:44:35', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (20, 10, 3, '管理员', 36, '追ྂ铭ྂ', '这是一个测试', 1, NULL, '2023-06-21 19:44:35', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (21, 10, 3, '管理员', 36, '追ྂ铭ྂ', '你好', 1, NULL, '2023-06-21 19:45:00', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (22, 10, 3, '管理员', 36, '追ྂ铭ྂ', '你好', 1, NULL, '2023-06-21 19:45:00', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (23, 10, 3, '管理员', 36, '追ྂ铭ྂ', '判断一下', 1, NULL, '2023-06-21 20:35:51', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (24, 10, 3, '管理员', 36, '追ྂ铭ྂ', '判断一下', 1, NULL, '2023-06-21 20:36:12', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (25, 6, 3, '管理员（username是账号）', 36, '追ྂ铭ྂ', 'test', 2, NULL, '2023-06-22 18:53:23', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (26, 25, 48, '葫芦娃', 3, '管理员', '测试', 1, NULL, '2023-06-26 14:52:49', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (27, 6, 3, '管理员（username是账号）', 3, '管理员', '测试', 2, NULL, '2023-06-26 14:53:12', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (28, 25, 48, '葫芦娃', 48, '葫芦娃', '测试吗', 1, NULL, '2023-06-26 15:41:47', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (29, 25, 48, '葫芦娃', 48, '葫芦娃', '测试', 1, 26, '2023-06-26 15:45:50', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (30, 25, 48, '葫芦娃', 3, '管理员', '测试啊啊啊啊', 1, 26, '2023-06-26 15:59:19', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (31, 24, 3, '管理员', 3, '管理员', '这是条测试数据', 1, NULL, '2023-06-26 16:00:39', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (32, 24, 3, '管理员', 48, '葫芦娃', '我回复一下你', 1, 31, '2023-06-26 16:01:12', NULL, NULL);
INSERT INTO `ums_business_workcomment` VALUES (33, 6, 3, '管理员（username是账号）', 48, '葫芦娃', '啊啊啊啊啊', 2, NULL, '2023-06-26 16:49:31', NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '点赞收藏表' ROW_FORMAT = Dynamic;

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
INSERT INTO `ums_business_workstar` VALUES (19, 6, 3, 28, 1, NULL);
INSERT INTO `ums_business_workstar` VALUES (20, 6, 3, 28, 2, NULL);
INSERT INTO `ums_business_workstar` VALUES (21, 6, 3, 29, 2, NULL);
INSERT INTO `ums_business_workstar` VALUES (22, 6, 3, 30, 2, NULL);
INSERT INTO `ums_business_workstar` VALUES (23, 9, 31, 29, 1, NULL);
INSERT INTO `ums_business_workstar` VALUES (24, 9, 31, 30, 1, NULL);
INSERT INTO `ums_business_workstar` VALUES (25, 6, 3, 32, 2, NULL);
INSERT INTO `ums_business_workstar` VALUES (26, 6, 3, 33, 2, NULL);
INSERT INTO `ums_business_workstar` VALUES (27, 9, 31, 32, 1, NULL);
INSERT INTO `ums_business_workstar` VALUES (28, 9, 31, 33, 1, NULL);
INSERT INTO `ums_business_workstar` VALUES (29, 2, 3, 36, 1, NULL);
INSERT INTO `ums_business_workstar` VALUES (30, 4, 3, 36, 1, NULL);
INSERT INTO `ums_business_workstar` VALUES (31, 1, 19, 36, 1, NULL);
INSERT INTO `ums_business_workstar` VALUES (32, 3, 3, 36, 1, NULL);
INSERT INTO `ums_business_workstar` VALUES (33, 6, 3, 36, 2, NULL);
INSERT INTO `ums_business_workstar` VALUES (34, 6, 3, 45, 2, NULL);
INSERT INTO `ums_business_workstar` VALUES (35, 10, 3, 36, 1, NULL);
INSERT INTO `ums_business_workstar` VALUES (42, 6, 3, 49, 2, NULL);
INSERT INTO `ums_business_workstar` VALUES (43, 6, 3, 51, 2, NULL);
INSERT INTO `ums_business_workstar` VALUES (53, 6, 3, 34, 2, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_menu
-- ----------------------------
INSERT INTO `ums_menu` VALUES (21, 0, '2020-02-07 16:29:13', '系统管理', 0, 0, 'ums', 'ums', 0);
INSERT INTO `ums_menu` VALUES (22, 21, '2020-02-07 16:29:51', '用户列表', 1, 0, 'admin', 'ums-admin', 0);
INSERT INTO `ums_menu` VALUES (23, 21, '2020-02-07 16:30:13', '角色列表', 1, 0, 'role', 'ums-role', 0);
INSERT INTO `ums_menu` VALUES (24, 21, '2020-02-07 16:30:53', '菜单列表', 1, 0, 'menu', 'ums-menu', 0);
INSERT INTO `ums_menu` VALUES (25, 21, '2020-02-07 16:31:13', '资源列表', 1, 0, 'resource', 'ums-resource', 0);
INSERT INTO `ums_menu` VALUES (29, 0, '2023-06-20 11:03:23', '作品管理', 0, 2, 'work', 'ums-menu', 0);
INSERT INTO `ums_menu` VALUES (30, 0, '2023-06-20 11:04:42', '动态管理', 0, 1, 'news', 'ums-menu', 0);
INSERT INTO `ums_menu` VALUES (31, 29, '2023-06-20 11:43:12', '作品列表', 1, 0, 'workList', 'ums-menu', 0);
INSERT INTO `ums_menu` VALUES (32, 30, '2023-06-20 11:43:39', '动态列表', 1, 0, 'newsList', 'ums-menu', 0);
INSERT INTO `ums_menu` VALUES (33, 0, '2023-06-25 13:15:02', '主持人管理', 0, 0, 'host', 'ums-menu', 0);
INSERT INTO `ums_menu` VALUES (35, 33, '2023-06-25 13:20:41', '主持人列表', 1, 0, 'hostList', 'ums-menu', 0);

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
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台资源表' ROW_FORMAT = Dynamic;

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
INSERT INTO `ums_resource` VALUES (37, '2023-06-19 21:36:52', '修改用户信息', '/admin/update/**', NULL, 5);
INSERT INTO `ums_resource` VALUES (38, '2023-06-20 09:21:26', '用户修改自己信息', '/admin/myself', NULL, 5);

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
) ENGINE = InnoDB AUTO_INCREMENT = 210 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台角色菜单关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_role_menu_relation
-- ----------------------------
INSERT INTO `ums_role_menu_relation` VALUES (188, 10, 29);
INSERT INTO `ums_role_menu_relation` VALUES (189, 10, 31);
INSERT INTO `ums_role_menu_relation` VALUES (199, 5, 21);
INSERT INTO `ums_role_menu_relation` VALUES (200, 5, 22);
INSERT INTO `ums_role_menu_relation` VALUES (201, 5, 23);
INSERT INTO `ums_role_menu_relation` VALUES (202, 5, 24);
INSERT INTO `ums_role_menu_relation` VALUES (203, 5, 25);
INSERT INTO `ums_role_menu_relation` VALUES (204, 5, 29);
INSERT INTO `ums_role_menu_relation` VALUES (205, 5, 31);
INSERT INTO `ums_role_menu_relation` VALUES (206, 5, 30);
INSERT INTO `ums_role_menu_relation` VALUES (207, 5, 32);
INSERT INTO `ums_role_menu_relation` VALUES (208, 5, 33);
INSERT INTO `ums_role_menu_relation` VALUES (209, 5, 35);

-- ----------------------------
-- Table structure for ums_role_resource_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_resource_relation`;
CREATE TABLE `ums_role_resource_relation`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) NULL DEFAULT NULL COMMENT '角色ID',
  `resource_id` bigint(20) NULL DEFAULT NULL COMMENT '资源ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 242 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '后台角色资源关系表' ROW_FORMAT = Dynamic;

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
INSERT INTO `ums_role_resource_relation` VALUES (234, 5, 37);
INSERT INTO `ums_role_resource_relation` VALUES (235, 9, 37);
INSERT INTO `ums_role_resource_relation` VALUES (236, 10, 37);
INSERT INTO `ums_role_resource_relation` VALUES (237, 9, 25);
INSERT INTO `ums_role_resource_relation` VALUES (238, 10, 25);
INSERT INTO `ums_role_resource_relation` VALUES (239, 5, 38);
INSERT INTO `ums_role_resource_relation` VALUES (240, 9, 38);
INSERT INTO `ums_role_resource_relation` VALUES (241, 10, 38);

SET FOREIGN_KEY_CHECKS = 1;
