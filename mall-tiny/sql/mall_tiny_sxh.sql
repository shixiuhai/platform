/*
 Navicat Premium Data Transfer

 Source Server         : 自己的数据库
 Source Server Type    : MySQL
 Source Server Version : 80031
 Source Host           : 127.0.0.1:3306
 Source Schema         : mall_tiny

 Target Server Type    : MySQL
 Target Server Version : 80031
 File Encoding         : 65001

 Date: 04/05/2023 19:18:29
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ums_admin
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin`;
CREATE TABLE `ums_admin`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `password` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `open_id` varchar(0) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '微信登陆用户唯一id',
  `icon` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '头像',
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `nick_name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `note` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '备注信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `status` int(0) NULL DEFAULT 1 COMMENT '帐号启用状态：0->禁用；1->启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '后台用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_admin
-- ----------------------------
INSERT INTO `ums_admin` VALUES (3, 'admin', '$2a$10$5v88Pqly1RxR03rFd09pTObQ6/OHn3rQzoC/f8UEkEkdE5BVBabPq', NULL, NULL, 'http://macro-oss.oss-cn-shenzhen.aliyuncs.com/mall/images/20180607/timg.jpg', 'admin@163.com', '系统管理员', '系统管理员', '2018-10-08 13:32:47', '2019-04-20 12:45:16', 1);
INSERT INTO `ums_admin` VALUES (18, 'shixiuhai1', '$2a$10$5v88Pqly1RxR03rFd09pTObQ6/OHn3rQzoC/f8UEkEkdE5BVBabPq', NULL, NULL, 'string', '15256728901@163.com', '小海', '这是一个什么什么样的主持人', '2023-04-15 13:48:13', NULL, 1);
INSERT INTO `ums_admin` VALUES (19, 'shixiuhai', '$2a$10$5v88Pqly1RxR03rFd09pTObQ6/OHn3rQzoC/f8UEkEkdE5BVBabPq', NULL, NULL, 'string', '15256728901@163.com', '小海', 'string1', '2023-04-15 20:54:38', NULL, 1);
INSERT INTO `ums_admin` VALUES (20, 'xiaoming', '$2a$10$mIL3MGAFbiQqxz7zy/1xqe8ZjtwB9U3U/my.oFSVLvrVaRmkEUSkS', NULL, NULL, NULL, '15256728902@163.com', NULL, NULL, '2023-04-25 22:28:53', NULL, 1);
INSERT INTO `ums_admin` VALUES (21, 'xiaoming2', '$2a$10$oc6TFOJAIdEcJsrTzJYaJOT1XDcW6rAdnC308J8/hoGQn0epAQ6qe', NULL, NULL, NULL, NULL, NULL, NULL, '2023-04-25 22:29:11', NULL, 1);

-- ----------------------------
-- Table structure for ums_admin_login_log
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_login_log`;
CREATE TABLE `ums_admin_login_log`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `ip` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL,
  `user_agent` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '浏览器登录类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 304 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '后台用户登录日志表' ROW_FORMAT = Dynamic;

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

-- ----------------------------
-- Table structure for ums_admin_role_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_admin_role_relation`;
CREATE TABLE `ums_admin_role_relation`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(0) NULL DEFAULT NULL,
  `role_id` bigint(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 42 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '后台用户和角色关系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_admin_role_relation
-- ----------------------------
INSERT INTO `ums_admin_role_relation` VALUES (26, 3, 5);
INSERT INTO `ums_admin_role_relation` VALUES (40, 18, 9);
INSERT INTO `ums_admin_role_relation` VALUES (41, 19, 9);

-- ----------------------------
-- Table structure for ums_business_company
-- ----------------------------
DROP TABLE IF EXISTS `ums_business_company`;
CREATE TABLE `ums_business_company`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司或团队logo',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司或者团队名称',
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司或团队地址',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司或者团队补充描述',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司或团队联系电话',
  `wechat_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '公司或者团队微信号码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '公司简介描述' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_company
-- ----------------------------
INSERT INTO `ums_business_company` VALUES (1, NULL, '婚礼团队2', '浙江金华', '我们是一个什么什么公司', '15245433', '12adbxxx12');

-- ----------------------------
-- Table structure for ums_business_work
-- ----------------------------
DROP TABLE IF EXISTS `ums_business_work`;
CREATE TABLE `ums_business_work`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '作品',
  `author_id` bigint(0) NULL DEFAULT NULL COMMENT '主持人id',
  `anthor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主持人名字',
  `cover_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '作品封面图片地址',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '作品标题',
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '作品地点',
  `view_number` int(0) NULL DEFAULT 0 COMMENT '作品查看数量',
  `created_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '作品创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin COMMENT = '作品表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_work
-- ----------------------------
INSERT INTO `ums_business_work` VALUES (1, 19, '小明', NULL, '测试作品名字', NULL, 13, '2023-04-23 19:12:21');
INSERT INTO `ums_business_work` VALUES (2, 3, 'admin', '作品封面图片地址', '作品标题', '作品地点', 9, '2023-04-23 23:02:27');

-- ----------------------------
-- Table structure for ums_business_workcomment
-- ----------------------------
DROP TABLE IF EXISTS `ums_business_workcomment`;
CREATE TABLE `ums_business_workcomment`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '评论id',
  `work_id` bigint(0) NULL DEFAULT NULL COMMENT '作品id',
  `anchor_id` bigint(0) NULL DEFAULT NULL COMMENT '主持人id',
  `anchor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '主持人名称',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '用户id',
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户名称',
  `user_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '用户评论',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_workcomment
-- ----------------------------
INSERT INTO `ums_business_workcomment` VALUES (2, 1, 19, '小明', 18, 'shixiuhai1', '这是个测试评论，嘿嘿');

-- ----------------------------
-- Table structure for ums_business_workimg
-- ----------------------------
DROP TABLE IF EXISTS `ums_business_workimg`;
CREATE TABLE `ums_business_workimg`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '作品图片主键',
  `work_id` int(0) NULL DEFAULT NULL COMMENT '作品id',
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '作品图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_workimg
-- ----------------------------
INSERT INTO `ums_business_workimg` VALUES (1, 2, 'http://2.jpg');
INSERT INTO `ums_business_workimg` VALUES (2, 2, 'http://22w.bai');
INSERT INTO `ums_business_workimg` VALUES (3, 1, 'http://sdfa');

-- ----------------------------
-- Table structure for ums_business_workreserve
-- ----------------------------
DROP TABLE IF EXISTS `ums_business_workreserve`;
CREATE TABLE `ums_business_workreserve`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `appointment_service` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '预约服务',
  `created_time` datetime(0) NOT NULL COMMENT '预约服务时间',
  `contact_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `status` int(0) NULL DEFAULT 0 COMMENT '预约状态 0 预约中，1 预约完成',
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
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `work_id` bigint(0) NULL DEFAULT NULL COMMENT '作品id',
  `anchor_id` bigint(0) NULL DEFAULT NULL COMMENT '作品主持人id',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '关注作品的用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_workstar
-- ----------------------------
INSERT INTO `ums_business_workstar` VALUES (1, 1, 19, 3);
INSERT INTO `ums_business_workstar` VALUES (9, 1, 19, 18);

-- ----------------------------
-- Table structure for ums_business_workvideo
-- ----------------------------
DROP TABLE IF EXISTS `ums_business_workvideo`;
CREATE TABLE `ums_business_workvideo`  (
  `id` int(0) NOT NULL COMMENT '作品视频id',
  `work_id` int(0) NULL DEFAULT NULL COMMENT '作品id',
  `video_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT '作品视频url',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_business_workvideo
-- ----------------------------
INSERT INTO `ums_business_workvideo` VALUES (1, 3, 'htasdf');
INSERT INTO `ums_business_workvideo` VALUES (2, 3, 'sdfasd');
INSERT INTO `ums_business_workvideo` VALUES (3, 4, 'dsfas');

-- ----------------------------
-- Table structure for ums_menu
-- ----------------------------
DROP TABLE IF EXISTS `ums_menu`;
CREATE TABLE `ums_menu`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(0) NULL DEFAULT NULL COMMENT '父级ID',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `title` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `level` int(0) NULL DEFAULT NULL COMMENT '菜单级数',
  `sort` int(0) NULL DEFAULT NULL COMMENT '菜单排序',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '前端名称',
  `icon` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '前端图标',
  `hidden` int(0) NULL DEFAULT NULL COMMENT '前端隐藏',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '后台菜单表' ROW_FORMAT = Dynamic;

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
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '资源名称',
  `url` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '资源URL',
  `description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '描述',
  `category_id` bigint(0) NULL DEFAULT NULL COMMENT '资源分类ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '后台资源表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_resource
-- ----------------------------
INSERT INTO `ums_resource` VALUES (25, '2020-02-07 16:47:34', '后台用户管理', '/admin/**', '', 4);
INSERT INTO `ums_resource` VALUES (26, '2020-02-07 16:48:24', '后台用户角色管理', '/role/**', '', 4);
INSERT INTO `ums_resource` VALUES (27, '2020-02-07 16:48:48', '后台菜单管理', '/menu/**', '', 4);
INSERT INTO `ums_resource` VALUES (28, '2020-02-07 16:49:18', '后台资源分类管理', '/resourceCategory/**', '', 4);
INSERT INTO `ums_resource` VALUES (29, '2020-02-07 16:49:45', '后台资源管理', '/resource/**', '', 4);
INSERT INTO `ums_resource` VALUES (32, '2023-04-15 18:46:48', '微信登陆接口', '/wechat', NULL, 5);
INSERT INTO `ums_resource` VALUES (33, '2023-04-16 10:13:45', '公司描述信息', '/companyDescription', NULL, 5);
INSERT INTO `ums_resource` VALUES (34, '2023-04-16 18:14:25', '作品管理', '/work', NULL, 5);

-- ----------------------------
-- Table structure for ums_resource_category
-- ----------------------------
DROP TABLE IF EXISTS `ums_resource_category`;
CREATE TABLE `ums_resource_category`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '资源分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_resource_category
-- ----------------------------
INSERT INTO `ums_resource_category` VALUES (4, '2020-02-05 10:23:04', '权限模块', 0);
INSERT INTO `ums_resource_category` VALUES (9, '2023-04-15 18:46:25', '业务模块', 0);

-- ----------------------------
-- Table structure for ums_role
-- ----------------------------
DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE `ums_role`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '名称',
  `description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '描述',
  `admin_count` int(0) NULL DEFAULT NULL COMMENT '后台用户数量',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `status` int(0) NULL DEFAULT 1 COMMENT '启用状态：0->禁用；1->启用',
  `sort` int(0) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '后台用户角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ums_role
-- ----------------------------
INSERT INTO `ums_role` VALUES (5, '超级管理员', '拥有所有查看和操作功能', 0, '2020-02-02 15:11:05', 1, 0);
INSERT INTO `ums_role` VALUES (9, '普通用户', '微信用户登陆', 0, '2023-04-15 18:37:45', 1, 0);
INSERT INTO `ums_role` VALUES (10, '主持人', '主持人用户', 0, '2023-04-16 09:02:11', 1, 0);

-- ----------------------------
-- Table structure for ums_role_menu_relation
-- ----------------------------
DROP TABLE IF EXISTS `ums_role_menu_relation`;
CREATE TABLE `ums_role_menu_relation`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(0) NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(0) NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 112 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '后台角色菜单关系表' ROW_FORMAT = Dynamic;

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
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(0) NULL DEFAULT NULL COMMENT '角色ID',
  `resource_id` bigint(0) NULL DEFAULT NULL COMMENT '资源ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 228 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '后台角色资源关系表' ROW_FORMAT = Dynamic;

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

SET FOREIGN_KEY_CHECKS = 1;
