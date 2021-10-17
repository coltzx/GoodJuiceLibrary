/*
MySQL Data Transfer
Source Host: localhost
Source Database: web
Target Host: localhost
Target Database: web
Date: 2021/10/17 18:55:44
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for author
-- ----------------------------
DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `author` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `press` varchar(20) DEFAULT NULL,
  `stay` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '可借阅',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `sex` char(2) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `phone` int DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `job` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for press
-- ----------------------------
DROP TABLE IF EXISTS `press`;
CREATE TABLE `press` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `author` VALUES ('1', '虎弟');
INSERT INTO `author` VALUES ('2', '刀哥');
INSERT INTO `author` VALUES ('3', '东北往事');
INSERT INTO `author` VALUES ('4', '唐老鸭');
INSERT INTO `author` VALUES ('5', '小亮');
INSERT INTO `book` VALUES ('1', '虎弟讲Java', '88', '虎弟', '好果汁工业出版社', '可借阅');
INSERT INTO `book` VALUES ('2', '刀哥传', '20', '东北往事', '好果汁出版社', '可借阅');
INSERT INTO `book` VALUES ('3', '东北往事', '22', '刀哥', '好果汁现代出版社', '可借阅');
INSERT INTO `book` VALUES ('4', '虎弟传', '33', '东北往事', '好果汁出版社', '可借阅');
INSERT INTO `book` VALUES ('5', '虎弟讲C++', '77', '虎弟', '好果汁工业出版社', '可借阅');
INSERT INTO `book` VALUES ('37', '唐老鸭传', '23', '唐老鸭', '好果汁出版社', '可借阅');
INSERT INTO `book` VALUES ('40', '独立宣言', '198', '虎弟', '好果汁现代出版社', '可借阅');
INSERT INTO `book` VALUES ('41', '小亮传', '32', '小亮', '好果汁出版社', '可借阅');
INSERT INTO `book` VALUES ('42', '小亮讲虎弟', '67', '小亮', '好果汁现代出版社', '可借阅');
INSERT INTO `book` VALUES ('43', '唐老鸭之谜', '56', '虎弟', '好果汁出版社', '可借阅');
INSERT INTO `book` VALUES ('52', '23123', '1', '12312', '123', '可借阅');
INSERT INTO `person` VALUES ('1', 'a', 'a', null, null, null, 'a', null);
INSERT INTO `person` VALUES ('23', 'cc', '1', null, null, null, '1', null);
INSERT INTO `person` VALUES ('24', 'b', 'b', null, null, null, 'b', null);
INSERT INTO `person` VALUES ('30', 'admin', 'a', null, null, null, 'admin', null);
INSERT INTO `person` VALUES ('31', 'dd', 'a', null, null, null, '123@qq.com', null);
INSERT INTO `person` VALUES ('32', 'asas', 'asas', null, null, null, 'sasa', null);
INSERT INTO `press` VALUES ('1', '好果汁出版社');
INSERT INTO `press` VALUES ('2', '好果汁工业出版社');
INSERT INTO `press` VALUES ('3', '好果汁现代出版社');
