/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : febs_cloud_base

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 01/09/2019 11:07:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_dept
-- ----------------------------
DROP TABLE IF EXISTS `t_dept`;
CREATE TABLE `t_dept`  (
  `DEPT_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `PARENT_ID` bigint(20) NOT NULL COMMENT '上级部门ID',
  `DEPT_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称',
  `ORDER_NUM` double(20, 0) NULL DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`DEPT_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_dept
-- ----------------------------
INSERT INTO `t_dept` VALUES (1, 0, '开发部', 1, '2018-01-04 15:42:26', '2019-01-05 21:08:27');
INSERT INTO `t_dept` VALUES (2, 1, '开发一部', 1, '2018-01-04 15:42:34', '2019-01-18 00:59:37');
INSERT INTO `t_dept` VALUES (3, 1, '开发二部', 2, '2018-01-04 15:42:29', '2019-01-05 14:09:39');
INSERT INTO `t_dept` VALUES (4, 0, '市场部', 2, '2018-01-04 15:42:36', '2019-01-23 06:27:56');
INSERT INTO `t_dept` VALUES (5, 0, '人事部', 3, '2018-01-04 15:42:32', '2019-01-23 06:27:59');
INSERT INTO `t_dept` VALUES (6, 0, '测试部', 4, '2018-01-04 15:42:38', '2019-01-17 08:15:47');

-- ----------------------------
-- Table structure for t_eximport
-- ----------------------------
DROP TABLE IF EXISTS `t_eximport`;
CREATE TABLE `t_eximport`  (
  `FIELD1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FIELD2` int(11) NOT NULL,
  `FIELD3` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CREATE_TIME` datetime(0) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = 'Excel导入导出测试' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_eximport
-- ----------------------------
INSERT INTO `t_eximport` VALUES ('字段1', 1, 'mrbird0@gmail.com', '2019-07-25 19:08:01');
INSERT INTO `t_eximport` VALUES ('字段1', 2, 'mrbird1@gmail.com', '2019-07-25 19:08:01');
INSERT INTO `t_eximport` VALUES ('字段1', 3, 'mrbird2@gmail.com', '2019-07-25 19:08:01');
INSERT INTO `t_eximport` VALUES ('字段1', 4, 'mrbird3@gmail.com', '2019-07-25 19:08:01');
INSERT INTO `t_eximport` VALUES ('字段1', 5, 'mrbird4@gmail.com', '2019-07-25 19:08:01');
INSERT INTO `t_eximport` VALUES ('字段1', 6, 'mrbird5@gmail.com', '2019-07-25 19:08:01');
INSERT INTO `t_eximport` VALUES ('字段1', 7, 'mrbird6@gmail.com', '2019-07-25 19:08:01');
INSERT INTO `t_eximport` VALUES ('字段1', 8, 'mrbird7@gmail.com', '2019-07-25 19:08:01');

-- ----------------------------
-- Table structure for t_generator_config
-- ----------------------------
DROP TABLE IF EXISTS `t_generator_config`;
CREATE TABLE `t_generator_config`  (
  `id` int(11) NOT NULL COMMENT '主键',
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '作者',
  `base_package` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '基础包名',
  `entity_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'entity文件存放路径',
  `mapper_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'mapper文件存放路径',
  `mapper_xml_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'mapper xml文件存放路径',
  `service_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'servcie文件存放路径',
  `service_impl_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'serviceImpl文件存放路径',
  `controller_package` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'controller文件存放路径',
  `is_trim` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否去除前缀 1是 0否',
  `trim_value` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前缀内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_generator_config
-- ----------------------------
INSERT INTO `t_generator_config` VALUES (1, 'MrBird', 'cc.mrbird.febs.gen', 'entity', 'mapper', 'mapper', 'service', 'service.impl', 'controller', '1', 't_');

-- ----------------------------
-- Table structure for t_log
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log`  (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作用户',
  `OPERATION` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '操作内容',
  `TIME` decimal(11, 0) NULL DEFAULT NULL COMMENT '耗时',
  `METHOD` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '操作方法',
  `PARAMS` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '方法参数',
  `IP` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作者IP',
  `CREATE_TIME` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作地点',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1863 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户操作日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_login_log
-- ----------------------------
DROP TABLE IF EXISTS `t_login_log`;
CREATE TABLE `t_login_log`  (
  `ID` bigint(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `LOGIN_TIME` datetime(0) NOT NULL COMMENT '登录时间',
  `LOCATION` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录地点',
  `IP` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `SYSTEM` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  `BROWSER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '浏览器',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 171 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '登录日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu`  (
  `MENU_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `PARENT_ID` bigint(20) NOT NULL COMMENT '上级菜单ID',
  `MENU_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单/按钮名称',
  `PATH` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对应路由path',
  `COMPONENT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对应路由组件component',
  `PERMS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `ICON` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `TYPE` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类型 0菜单 1按钮',
  `ORDER_NUM` double(20, 0) NULL DEFAULT NULL COMMENT '排序',
  `CREATE_TIME` datetime(0) NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`MENU_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 163 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_menu
-- ----------------------------
INSERT INTO `t_menu` VALUES (1, 0, '系统管理', '/system', 'Layout', NULL, 'el-icon-set-up', '0', 1, '2017-12-27 16:39:07', '2019-07-20 16:19:04');
INSERT INTO `t_menu` VALUES (2, 0, '系统监控', '/monitor', 'Layout', NULL, 'el-icon-data-line', '0', 2, '2017-12-27 16:45:51', '2019-01-23 06:27:12');
INSERT INTO `t_menu` VALUES (3, 1, '用户管理', '/system/user', 'febs/system/user/Index', 'user:view', '', '0', 1, '2017-12-27 16:47:13', '2019-01-22 06:45:55');
INSERT INTO `t_menu` VALUES (4, 1, '角色管理', '/system/role', 'febs/system/role/Index', 'role:view', '', '0', 2, '2017-12-27 16:48:09', '2018-04-25 09:01:12');
INSERT INTO `t_menu` VALUES (5, 1, '菜单管理', '/system/menu', 'febs/system/menu/Index', 'menu:view', '', '0', 3, '2017-12-27 16:48:57', '2018-04-25 09:01:30');
INSERT INTO `t_menu` VALUES (6, 1, '部门管理', '/system/dept', 'febs/system/dept/Index', 'dept:view', '', '0', 4, '2017-12-27 16:57:33', '2018-04-25 09:01:40');
INSERT INTO `t_menu` VALUES (10, 2, '系统日志', '/monitor/systemlog', 'febs/monitor/systemlog/Index', 'log:view', '', '0', 1, '2017-12-27 17:00:50', '2019-07-22 20:22:31');
INSERT INTO `t_menu` VALUES (11, 3, '新增用户', '', '', 'user:add', NULL, '1', NULL, '2017-12-27 17:02:58', NULL);
INSERT INTO `t_menu` VALUES (12, 3, '修改用户', '', '', 'user:update', NULL, '1', NULL, '2017-12-27 17:04:07', NULL);
INSERT INTO `t_menu` VALUES (13, 3, '删除用户', '', '', 'user:delete', NULL, '1', NULL, '2017-12-27 17:04:58', NULL);
INSERT INTO `t_menu` VALUES (14, 4, '新增角色', '', '', 'role:add', NULL, '1', NULL, '2017-12-27 17:06:38', NULL);
INSERT INTO `t_menu` VALUES (15, 4, '修改角色', '', '', 'role:update', NULL, '1', NULL, '2017-12-27 17:06:38', NULL);
INSERT INTO `t_menu` VALUES (16, 4, '删除角色', '', '', 'role:delete', NULL, '1', NULL, '2017-12-27 17:06:38', NULL);
INSERT INTO `t_menu` VALUES (17, 5, '新增菜单', '', '', 'menu:add', NULL, '1', NULL, '2017-12-27 17:08:02', NULL);
INSERT INTO `t_menu` VALUES (18, 5, '修改菜单', '', '', 'menu:update', NULL, '1', NULL, '2017-12-27 17:08:02', NULL);
INSERT INTO `t_menu` VALUES (19, 5, '删除菜单', '', '', 'menu:delete', NULL, '1', NULL, '2017-12-27 17:08:02', NULL);
INSERT INTO `t_menu` VALUES (20, 6, '新增部门', '', '', 'dept:add', NULL, '1', NULL, '2017-12-27 17:09:24', NULL);
INSERT INTO `t_menu` VALUES (21, 6, '修改部门', '', '', 'dept:update', NULL, '1', NULL, '2017-12-27 17:09:24', NULL);
INSERT INTO `t_menu` VALUES (22, 6, '删除部门', '', '', 'dept:delete', NULL, '1', NULL, '2017-12-27 17:09:24', NULL);
INSERT INTO `t_menu` VALUES (24, 10, '删除日志', '', '', 'log:delete', NULL, '1', NULL, '2017-12-27 17:11:45', NULL);
INSERT INTO `t_menu` VALUES (130, 3, '导出Excel', NULL, NULL, 'user:export', NULL, '1', NULL, '2019-01-23 06:35:16', NULL);
INSERT INTO `t_menu` VALUES (131, 4, '导出Excel', NULL, NULL, 'role:export', NULL, '1', NULL, '2019-01-23 06:35:36', NULL);
INSERT INTO `t_menu` VALUES (132, 5, '导出Excel', NULL, NULL, 'menu:export', NULL, '1', NULL, '2019-01-23 06:36:05', NULL);
INSERT INTO `t_menu` VALUES (133, 6, '导出Excel', NULL, NULL, 'dept:export', NULL, '1', NULL, '2019-01-23 06:36:25', NULL);
INSERT INTO `t_menu` VALUES (135, 3, '密码重置', NULL, NULL, 'user:reset', NULL, '1', NULL, '2019-01-23 06:37:00', NULL);
INSERT INTO `t_menu` VALUES (136, 10, '导出Excel', NULL, NULL, 'log:export', NULL, '1', NULL, '2019-01-23 06:37:27', NULL);
INSERT INTO `t_menu` VALUES (148, 2, '监控中心', '/monitor/admin', 'febs/monitor/admin/Index', 'mobitor:admin', '', '0', 6, '2019-07-20 19:42:07', '2019-09-01 10:48:12');
INSERT INTO `t_menu` VALUES (149, 2, '注册中心', '/monitor/register', 'febs/monitor/register/Index', 'monitor:register', '', '0', 3, '2019-07-20 20:07:00', '2019-07-22 20:22:43');
INSERT INTO `t_menu` VALUES (150, 2, '登录日志', '/monitor/loginlog', 'febs/monitor/loginlog/Index', 'monitor:loginlog', '', '0', 2, '2019-07-22 13:41:17', '2019-07-22 20:22:35');
INSERT INTO `t_menu` VALUES (151, 150, '删除日志', NULL, NULL, 'loginlog:delete', NULL, '1', NULL, '2019-07-22 13:43:04', NULL);
INSERT INTO `t_menu` VALUES (152, 150, '导出Excel', NULL, NULL, 'loginlog:export', NULL, '1', NULL, '2019-07-22 13:43:30', NULL);
INSERT INTO `t_menu` VALUES (153, 2, '接口文档', '/monitor/swagger', 'febs/monitor/swagger/Index', 'monitor:swagger', '', '0', 7, '2019-07-22 20:59:46', '2019-09-01 10:48:16');
INSERT INTO `t_menu` VALUES (154, 0, '其他模块', '/others', 'Layout', '', 'el-icon-present', '0', 4, '2019-07-25 10:16:16', '2019-07-25 10:22:59');
INSERT INTO `t_menu` VALUES (155, 154, '导入导出', '/others/eximport', 'febs/others/eximport/Index', 'others:eximport', '', '0', 1, '2019-07-25 10:19:31', NULL);
INSERT INTO `t_menu` VALUES (156, 0, '代码生成', '/gen', 'Layout', '', 'el-icon-printer', '0', 3, '2019-07-25 10:24:03', NULL);
INSERT INTO `t_menu` VALUES (157, 156, '生成配置', '/gen/config', 'febs/gen/config/Index', 'gen:config', '', '0', 1, '2019-07-25 10:24:55', NULL);
INSERT INTO `t_menu` VALUES (158, 156, '生成代码', '/gen/generate', 'febs/gen/generate/Index', 'gen:generate', '', '0', 2, '2019-07-25 10:25:26', '2019-07-25 11:13:20');
INSERT INTO `t_menu` VALUES (159, 157, '修改配置', NULL, NULL, 'gen:config:update', NULL, '1', NULL, '2019-07-26 16:22:56', NULL);
INSERT INTO `t_menu` VALUES (160, 158, '打包生成', NULL, NULL, 'gen:generate:gen', NULL, '1', NULL, '2019-07-26 16:23:38', '2019-07-26 16:23:53');
INSERT INTO `t_menu` VALUES (161, 2, '请求追踪', '/monitor/zipkin', 'febs/monitor/zipkin/Index', 'monitor:zipkin', '', '0', 4, '2019-09-01 10:41:49', NULL);
INSERT INTO `t_menu` VALUES (162, 2, '日志收集', '/monitor/kibana', 'febs/monitor/kibana/Index', 'monitor:kibana', '', '0', 5, '2019-09-01 10:48:07', NULL);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role`  (
  `ROLE_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `ROLE_NAME` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `REMARK` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色描述',
  `CREATE_TIME` datetime(0) NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES (1, '管理员', '管理员', '2017-12-27 16:23:11', '2019-09-01 10:48:25');
INSERT INTO `t_role` VALUES (2, '注册用户', '可查看，新增，导出', '2019-01-04 14:11:28', '2019-07-26 15:20:49');
INSERT INTO `t_role` VALUES (3, '系统监控员', '负责系统监控模块', '2019-09-01 10:30:25', '2019-09-01 10:30:37');

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu`  (
  `ROLE_ID` bigint(20) NOT NULL,
  `MENU_ID` bigint(20) NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_role_menu
-- ----------------------------
INSERT INTO `t_role_menu` VALUES (2, 1);
INSERT INTO `t_role_menu` VALUES (2, 3);
INSERT INTO `t_role_menu` VALUES (2, 4);
INSERT INTO `t_role_menu` VALUES (2, 5);
INSERT INTO `t_role_menu` VALUES (2, 6);
INSERT INTO `t_role_menu` VALUES (2, 2);
INSERT INTO `t_role_menu` VALUES (2, 10);
INSERT INTO `t_role_menu` VALUES (2, 150);
INSERT INTO `t_role_menu` VALUES (2, 149);
INSERT INTO `t_role_menu` VALUES (2, 148);
INSERT INTO `t_role_menu` VALUES (2, 153);
INSERT INTO `t_role_menu` VALUES (2, 156);
INSERT INTO `t_role_menu` VALUES (2, 157);
INSERT INTO `t_role_menu` VALUES (2, 158);
INSERT INTO `t_role_menu` VALUES (2, 154);
INSERT INTO `t_role_menu` VALUES (2, 155);
INSERT INTO `t_role_menu` VALUES (3, 2);
INSERT INTO `t_role_menu` VALUES (3, 10);
INSERT INTO `t_role_menu` VALUES (3, 24);
INSERT INTO `t_role_menu` VALUES (3, 136);
INSERT INTO `t_role_menu` VALUES (3, 150);
INSERT INTO `t_role_menu` VALUES (3, 151);
INSERT INTO `t_role_menu` VALUES (3, 152);
INSERT INTO `t_role_menu` VALUES (3, 149);
INSERT INTO `t_role_menu` VALUES (3, 148);
INSERT INTO `t_role_menu` VALUES (3, 153);
INSERT INTO `t_role_menu` VALUES (1, 1);
INSERT INTO `t_role_menu` VALUES (1, 3);
INSERT INTO `t_role_menu` VALUES (1, 11);
INSERT INTO `t_role_menu` VALUES (1, 12);
INSERT INTO `t_role_menu` VALUES (1, 13);
INSERT INTO `t_role_menu` VALUES (1, 130);
INSERT INTO `t_role_menu` VALUES (1, 135);
INSERT INTO `t_role_menu` VALUES (1, 4);
INSERT INTO `t_role_menu` VALUES (1, 14);
INSERT INTO `t_role_menu` VALUES (1, 15);
INSERT INTO `t_role_menu` VALUES (1, 16);
INSERT INTO `t_role_menu` VALUES (1, 131);
INSERT INTO `t_role_menu` VALUES (1, 5);
INSERT INTO `t_role_menu` VALUES (1, 17);
INSERT INTO `t_role_menu` VALUES (1, 18);
INSERT INTO `t_role_menu` VALUES (1, 19);
INSERT INTO `t_role_menu` VALUES (1, 132);
INSERT INTO `t_role_menu` VALUES (1, 6);
INSERT INTO `t_role_menu` VALUES (1, 20);
INSERT INTO `t_role_menu` VALUES (1, 21);
INSERT INTO `t_role_menu` VALUES (1, 22);
INSERT INTO `t_role_menu` VALUES (1, 133);
INSERT INTO `t_role_menu` VALUES (1, 2);
INSERT INTO `t_role_menu` VALUES (1, 10);
INSERT INTO `t_role_menu` VALUES (1, 24);
INSERT INTO `t_role_menu` VALUES (1, 136);
INSERT INTO `t_role_menu` VALUES (1, 150);
INSERT INTO `t_role_menu` VALUES (1, 151);
INSERT INTO `t_role_menu` VALUES (1, 152);
INSERT INTO `t_role_menu` VALUES (1, 149);
INSERT INTO `t_role_menu` VALUES (1, 161);
INSERT INTO `t_role_menu` VALUES (1, 162);
INSERT INTO `t_role_menu` VALUES (1, 148);
INSERT INTO `t_role_menu` VALUES (1, 153);
INSERT INTO `t_role_menu` VALUES (1, 156);
INSERT INTO `t_role_menu` VALUES (1, 157);
INSERT INTO `t_role_menu` VALUES (1, 159);
INSERT INTO `t_role_menu` VALUES (1, 158);
INSERT INTO `t_role_menu` VALUES (1, 160);
INSERT INTO `t_role_menu` VALUES (1, 154);
INSERT INTO `t_role_menu` VALUES (1, 155);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `USER_ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `PASSWORD` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `DEPT_ID` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `EMAIL` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `MOBILE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `STATUS` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态 0锁定 1有效',
  `CREATE_TIME` datetime(0) NOT NULL COMMENT '创建时间',
  `MODIFY_TIME` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `LAST_LOGIN_TIME` datetime(0) NULL DEFAULT NULL COMMENT '最近访问时间',
  `SSEX` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别 0男 1女 2保密',
  `IS_TAB` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否开启tab，0关闭 1开启',
  `THEME` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主题',
  `AVATAR` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `DESCRIPTION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`USER_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 'MrBird', '$2a$10$gzhiUb1ldc1Rf3lka4k/WOoFKKGPepHSzJxzcPSN5/65SzkMdc.SK', 2, 'mrbird@qq.com', '17788888888', '1', '2019-06-14 20:39:22', '2019-07-19 10:18:36', '2019-09-01 10:39:20', '0', '1', 'white', 'gaOngJwsRYRaVAuXXcmB.png', '我是帅比作者。');
INSERT INTO `t_user` VALUES (15, 'scott', '$2a$10$7tATi2STciLHnEgO/RfIxOYf2MQBu/SDVMRDs54rlSYVj2VmwwCHC', 5, 'scott@hotmail.com', '17720888888', '1', '2019-07-20 19:00:32', '2019-07-31 10:14:29', '2019-09-01 10:35:31', '2', NULL, NULL, 'BiazfanxmamNRoxxVxka.png', NULL);
INSERT INTO `t_user` VALUES (16, 'Jane', '$2a$10$ECkfipOPY7hORVdlSzIOX.8hnig0shAZQPG8pQ7D5iVP.uVogmmHy', 4, 'Jane@hotmail.com', '13489898989', '1', '2019-09-01 10:31:21', '2019-09-01 10:32:10', '2019-09-01 10:32:27', '1', NULL, NULL, '2dd7a2d09fa94bf8b5c52e5318868b4d9.jpg', NULL);

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role`  (
  `USER_ID` bigint(20) NOT NULL COMMENT '用户ID',
  `ROLE_ID` bigint(20) NOT NULL COMMENT '角色ID'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES (1, 1);
INSERT INTO `t_user_role` VALUES (15, 2);
INSERT INTO `t_user_role` VALUES (16, 3);