/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50548
Source Host           : localhost:3306
Source Database       : webblog

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2018-11-17 19:53:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for review
-- ----------------------------
DROP TABLE IF EXISTS `review`;
CREATE TABLE `review` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `floor` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `floor_owner` int(11) NOT NULL,
  `message` varchar(200) NOT NULL,
  `send_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_senderId` (`sender_id`),
  KEY `fk_receiverId` (`receiver_id`),
  KEY `fk_floorOwnerId` (`floor_owner`),
  CONSTRAINT `fk_senderId` FOREIGN KEY (`sender_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_receiverId` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_floorOwnerId` FOREIGN KEY (`floor_owner`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of review
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `tybz` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role
-- ----------------------------

-- ----------------------------
-- Table structure for technology_blog
-- ----------------------------
DROP TABLE IF EXISTS `technology_blog`;
CREATE TABLE `technology_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `content` text NOT NULL,
  `publish_time` datetime NOT NULL,
  `tag` varchar(20) NOT NULL,
  `favour` int(11) DEFAULT NULL,
  `blog_type` varchar(4) NOT NULL,
  `reading_num` int(11) DEFAULT NULL,
  `hit_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_authorId` (`author_id`),
  CONSTRAINT `fk_authorId` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of technology_blog
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(8) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL,
  `salt` varchar(6) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_roleId` (`role_id`),
  CONSTRAINT `fk_roleId` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `gender` varchar(2) NOT NULL,
  `age` int(2) DEFAULT NULL,
  `brief` varchar(100) DEFAULT NULL,
  `city` varchar(10) NOT NULL,
  `school` varchar(10) DEFAULT NULL,
  `github` varchar(50) DEFAULT NULL,
  `mobile_phone` varchar(11) DEFAULT NULL,
  `email` varchar(24) NOT NULL,
  `personal_web` varchar(50) DEFAULT NULL,
  `profile_img` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userid` (`user_id`),
  CONSTRAINT `fk_userid` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_info
-- ----------------------------
