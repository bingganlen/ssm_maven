/*
Navicat MySQL Data Transfer

Source Server         : jdbc
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : ssm_crud

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-07-04 14:31:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_dept`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_dept`;
CREATE TABLE `tbl_dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(45) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_dept
-- ----------------------------
INSERT INTO `tbl_dept` VALUES ('3', '开发部');
INSERT INTO `tbl_dept` VALUES ('4', '后勤部');
INSERT INTO `tbl_dept` VALUES ('5', '质量管理部');

-- ----------------------------
-- Table structure for `tbl_emp`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_emp`;
CREATE TABLE `tbl_emp` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(45) NOT NULL,
  `gender` char(1) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `d_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `fk_emp_dept_idx` (`d_id`),
  CONSTRAINT `fk_emp_dept` FOREIGN KEY (`d_id`) REFERENCES `tbl_dept` (`dept_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1024 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_emp
-- ----------------------------
INSERT INTO `tbl_emp` VALUES ('1001', 'admin', 'M', '563658@qq.com', '3');
INSERT INTO `tbl_emp` VALUES ('1005', '豪哥', 'M', 'sahaskl@qq.com', '4');
INSERT INTO `tbl_emp` VALUES ('1008', '美女', 'F', 'sdaga@qq.com', '5');
INSERT INTO `tbl_emp` VALUES ('1009', 'SGSWSD', 'F', 'SGSGSG@QQ.COM', '5');
INSERT INTO `tbl_emp` VALUES ('1010', '黄俊豪1', 'M', '665657@QQ.COM', '3');
INSERT INTO `tbl_emp` VALUES ('1011', '黄俊豪1', 'F', '665657@QQ.COM', '3');
INSERT INTO `tbl_emp` VALUES ('1012', '黄俊豪1', 'F', '665657@QQ.COM', '4');
INSERT INTO `tbl_emp` VALUES ('1013', '黄俊豪1', 'F', '665657@QQ.COM', '3');
INSERT INTO `tbl_emp` VALUES ('1014', '黄俊豪1', 'F', '665657@QQ.COM', '3');
INSERT INTO `tbl_emp` VALUES ('1015', '黄俊豪1', 'F', '665657@QQ.COM', '3');
INSERT INTO `tbl_emp` VALUES ('1016', '黄俊豪1', 'F', '665657@QQ.COM', '3');
INSERT INTO `tbl_emp` VALUES ('1017', '黄俊豪1', 'F', '665657@QQ.COM', '5');
INSERT INTO `tbl_emp` VALUES ('1018', '黄俊豪1', 'F', '665657@QQ.COM', '3');
INSERT INTO `tbl_emp` VALUES ('1019', '黄俊豪1', 'F', '665657@QQ.COM', '3');
INSERT INTO `tbl_emp` VALUES ('1020', '黄俊豪1', 'F', '665657@QQ.COM', '3');
INSERT INTO `tbl_emp` VALUES ('1021', '黄俊豪1', 'F', '665657@QQ.COM', '3');
INSERT INTO `tbl_emp` VALUES ('1022', '黄俊豪1', 'F', '665657@QQ.COM', '3');
INSERT INTO `tbl_emp` VALUES ('1023', '黄俊豪1', 'F', '665657@QQ.COM', '4');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id,自增长',
  `name` char(40) DEFAULT NULL COMMENT '用户名',
  `password` char(50) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'chenkaihua', 'chenkaihua');
INSERT INTO `user` VALUES ('2', 'test_user', 'test');
INSERT INTO `user` VALUES ('3', '陈开华', 'mypassword');
INSERT INTO `user` VALUES ('6', 'myname', 'mypass');
INSERT INTO `user` VALUES ('7', 'chenhua', 'chss');
