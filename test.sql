/*
 Navicat Premium Data Transfer

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : localhost:3306
 Source Schema         : test

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 29/10/2019 15:27:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `id` int(11) NULL DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, '中国', '北京');
INSERT INTO `city` VALUES (2, '中国', '上海');
INSERT INTO `city` VALUES (3, '美国', '纽约');
INSERT INTO `city` VALUES (4, '美国', '洛杉矶');
INSERT INTO `city` VALUES (5, '美国', '肯塔基');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  `filename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '系统设置', 0, NULL);
INSERT INTO `menu` VALUES (2, '系统公告', 0, NULL);
INSERT INTO `menu` VALUES (3, '角色管理', 1, '/easyui/page/sys/role.jsp');
INSERT INTO `menu` VALUES (4, '部门管理', 1, '/easyui/page/sys/dept.jsp');
INSERT INTO `menu` VALUES (5, '权限管理', 1, '/easyui/page/sys/privilege.jsp');
INSERT INTO `menu` VALUES (6, '公告管理', 2, '/easyui/page/notice/notice.jsp');
INSERT INTO `menu` VALUES (7, '公告类别', 2, '/easyui/page/notice/type.jsp');
INSERT INTO `menu` VALUES (8, 'aaa', 3, NULL);
INSERT INTO `menu` VALUES (9, 'bb', 3, NULL);

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '小明', 11);
INSERT INTO `student` VALUES (2, '大红', 10);
INSERT INTO `student` VALUES (3, 'tom', 3);

SET FOREIGN_KEY_CHECKS = 1;
