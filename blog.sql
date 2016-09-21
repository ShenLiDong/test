/*
Navicat MySQL Data Transfer

Source Server         : 111
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001
111111111111111111111111111111111111
Date: 2016-09-20 11:34:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for blog_article
-- ----------------------------
DROP TABLE IF EXISTS `blog_article`;
CREATE TABLE `blog_article` (
  `aid` int(10) NOT NULL AUTO_INCREMENT,
  `cid` int(10) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content` text,
  `image` char(255) DEFAULT NULL,
  `agree` int(10) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_article
-- ----------------------------
INSERT INTO `blog_article` VALUES ('37', null, '吕小布', '美女', '<p>&nbsp; &nbsp;这是第二篇文章,选择了美女类</p>', null, null, '2016-09-12 16:51:32', '2016-09-12 16:51:32');
INSERT INTO `blog_article` VALUES ('39', null, '吕小布', '全部', '<p>这是第3篇文章,没有选择分类 &nbsp;</p>', null, null, '2016-09-12 16:53:32', '2016-09-12 16:53:32');
INSERT INTO `blog_article` VALUES ('40', null, '吕小布', '美女', '<p>&nbsp; 哈哈<img src=\"http://www.blog.com/home/emotion/bobo/B_0002.gif\" _src=\"http://www.blog.com/home/emotion/bobo/B_0002.gif\"/>&nbsp;</p>', '2016091257d68425eae7f.jpg', null, '2016-09-12 18:32:05', '2016-09-12 18:32:05');
INSERT INTO `blog_article` VALUES ('41', null, '吕小布', '自然', '<p>啊啊</p>', '2016091257d68b6683315.jpeg', null, '2016-09-12 19:03:02', '2016-09-20 11:08:48');
INSERT INTO `blog_article` VALUES ('44', null, '吕子乔', '全部', '<p>一千年以后~ &nbsp;</p>', null, null, '2016-09-18 18:14:01', '2016-09-18 18:14:01');
INSERT INTO `blog_article` VALUES ('45', null, '吕子乔', '人文', '<p>&nbsp; &nbsp;这里写你的初始化内容\r\n &nbsp; &nbsp;</p>', null, null, '2016-09-18 18:19:40', '2016-09-20 11:09:10');
INSERT INTO `blog_article` VALUES ('46', null, '吕子乔', '全部', '<p><img src=\"http://www.blog.com/home/emotion/bobo/B_0002.gif\" _src=\"http://www.blog.com/home/emotion/bobo/B_0002.gif\"/>我是吕子乔&nbsp;</p>', null, null, '2016-09-20 09:14:45', '2016-09-20 09:14:45');
INSERT INTO `blog_article` VALUES ('47', null, 'ariess', '自然', '<p>我是ariess &nbsp;</p>', null, null, '2016-09-20 09:50:31', '2016-09-20 09:50:31');

-- ----------------------------
-- Table structure for blog_collection
-- ----------------------------
DROP TABLE IF EXISTS `blog_collection`;
CREATE TABLE `blog_collection` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '这个表用来收藏文章',
  `uid` int(10) DEFAULT NULL COMMENT '用户ID',
  `aid` int(10) DEFAULT NULL COMMENT '文章ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of blog_collection
-- ----------------------------
INSERT INTO `blog_collection` VALUES ('6', '10', '41');

-- ----------------------------
-- Table structure for blog_comment
-- ----------------------------
DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户主键自增字段',
  `username` varchar(255) NOT NULL COMMENT '评论人用户名',
  `content` varchar(50) NOT NULL COMMENT '评论内容',
  `cid` varchar(255) NOT NULL COMMENT '评论人ID',
  `uid` varchar(255) NOT NULL COMMENT '被评论人ID',
  `token` varchar(255) NOT NULL,
  `status` int(10) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_comment
-- ----------------------------
INSERT INTO `blog_comment` VALUES ('1', '昨夜', '你好美！', '40', '6', '', '0', '2016-09-17 12:24:37', '2016-09-18 16:32:38');
INSERT INTO `blog_comment` VALUES ('2', '昨夜', '其实你是最美的！', '40', '6', '', '1', '2016-09-17 16:24:14', '2016-09-18 16:16:29');
INSERT INTO `blog_comment` VALUES ('3', '昨夜', '世上，你最美！！！', '40', '6', '', '1', '2016-09-17 16:32:45', '2016-09-18 16:16:27');
INSERT INTO `blog_comment` VALUES ('14', '吕子乔', 'wqw', '45', '10', '', '0', '2016-09-18 19:19:37', '2016-09-18 20:33:41');
INSERT INTO `blog_comment` VALUES ('15', '吕子乔', '22', '45', '10', '', '1', '2016-09-18 19:56:33', '2016-09-18 19:56:33');
INSERT INTO `blog_comment` VALUES ('16', '吕子乔', '孙相明最帅', '45', '10', '', '1', '2016-09-18 20:15:34', '2016-09-18 20:15:34');
INSERT INTO `blog_comment` VALUES ('17', '吕子乔', '方法', '45', '10', '', '1', '2016-09-18 20:25:45', '2016-09-18 20:25:45');
INSERT INTO `blog_comment` VALUES ('18', '吕子乔', '呵呵', '44', '10', '', '1', '2016-09-18 20:42:34', '2016-09-18 20:42:34');
INSERT INTO `blog_comment` VALUES ('19', '吕子乔', 'ww', '45', '10', '', '1', '2016-09-19 22:39:35', '2016-09-19 22:39:35');
INSERT INTO `blog_comment` VALUES ('20', '吕子乔', 'aaa', '47', '10', '', '1', '2016-09-20 10:29:22', '2016-09-20 10:29:22');
INSERT INTO `blog_comment` VALUES ('21', '吕子乔', '撒上', '47', '10', '', '1', '2016-09-20 11:33:43', '2016-09-20 11:33:43');

-- ----------------------------
-- Table structure for blog_focus
-- ----------------------------
DROP TABLE IF EXISTS `blog_focus`;
CREATE TABLE `blog_focus` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL COMMENT '用户ID',
  `username` varchar(255) DEFAULT '' COMMENT '用户名',
  `fid` int(10) DEFAULT NULL COMMENT '被关注者ID',
  `focusname` varchar(255) DEFAULT '' COMMENT '被关注者名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_focus
-- ----------------------------
INSERT INTO `blog_focus` VALUES ('2', '9', '吕小布', '10', '吕子乔');
INSERT INTO `blog_focus` VALUES ('9', '10', '吕子乔', '9', '吕小布');

-- ----------------------------
-- Table structure for blog_link
-- ----------------------------
DROP TABLE IF EXISTS `blog_link`;
CREATE TABLE `blog_link` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `web` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_link
-- ----------------------------
INSERT INTO `blog_link` VALUES ('1', '百度', 'www.baidu.com');
INSERT INTO `blog_link` VALUES ('3', '新浪', 'www.sina.com.cn/');
INSERT INTO `blog_link` VALUES ('4', 'ECHO回声', 'www.app-echo.com/');

-- ----------------------------
-- Table structure for blog_logo
-- ----------------------------
DROP TABLE IF EXISTS `blog_logo`;
CREATE TABLE `blog_logo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户主键自增字段',
  `image` varchar(255) NOT NULL,
  `uid` int(255) NOT NULL,
  `status` tinyint(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_logo
-- ----------------------------
INSERT INTO `blog_logo` VALUES ('23', '2016090757d01c27ac5eb.jpg', '6', '1', '2016-09-07 21:54:47', '2016-09-07 22:17:41');
INSERT INTO `blog_logo` VALUES ('24', './uploads/logo/2016/09/20/2016092057e0a32b9deca.jpg', '12', '1', '2016-09-20 09:58:25', '2016-09-20 10:47:07');

-- ----------------------------
-- Table structure for blog_manager
-- ----------------------------
DROP TABLE IF EXISTS `blog_manager`;
CREATE TABLE `blog_manager` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户主键自增字段',
  `username` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `status` tinyint(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_manager
-- ----------------------------
INSERT INTO `blog_manager` VALUES ('1', 'root', '小牛', '$2y$10$HN/gKhPMrmyUDVlCgofPx.zT4EfqaB2OUwebqyJNovLcx4oGsW9OW', '', '', '1', '2016-09-11 18:00:52', '2016-09-12 19:46:16');
INSERT INTO `blog_manager` VALUES ('2', 'admin', '刘钢', '$2y$10$6rbM4ktc6pKze/dGQMolCe26MfPOeXk3zts8ISHy6m91uRodNZrdS', '', '', '1', '2016-09-11 19:24:58', '2016-09-12 19:46:09');
INSERT INTO `blog_manager` VALUES ('3', '沈立栋', '沈立栋', '$2y$10$a0wcOHT.ewo2zIiT6gisxO2qDAOG/LPu7g1cqF9Ue4K5qPc2Rr50y', '', '', '1', '2016-09-12 09:32:09', '2016-09-12 15:22:49');
INSERT INTO `blog_manager` VALUES ('4', '小马', '马文军', '$2y$10$H2ZIUi3Ro9fIYiozy7pdUeiWssDVOCt066cWv2Iiiz1ucI2C0IL.q', '', '', '1', '2016-09-12 15:24:51', '2016-09-12 15:28:56');
INSERT INTO `blog_manager` VALUES ('5', '小孙', '孙相明', '$2y$10$O5rP5InFJvsSZMQo1aYHlO6sc5SaO8cyNN8njRVaK9tvj.4nQq5TC', '', '', '1', '2016-09-12 15:25:30', '2016-09-12 15:29:02');
INSERT INTO `blog_manager` VALUES ('6', '小王', '王敏', '$2y$10$AZqiBtISiQ89siIRERTt.u4d7UPZh3YSep/wxpU.mKIReESdE03Y.', '', '', '1', '2016-09-12 15:26:00', '2016-09-12 15:29:06');
INSERT INTO `blog_manager` VALUES ('7', '小龙', '玉龙', '$2y$10$Ns4dpPETRMMRgRfi6BscXOlzAjSHc86hnLXHvRh3gDKKQDSxPZ0vy', '', '', '1', '2016-09-12 15:26:37', '2016-09-12 15:28:45');
INSERT INTO `blog_manager` VALUES ('8', '想静静', '徐晓静', '$2y$10$LRoAQHLPdgTC6UQaJKTUGuKPCsRTj3TpEQ/78ZYlKqAeEdTVBfkym', '', '', '1', '2016-09-12 15:28:31', '2016-09-12 15:28:31');
INSERT INTO `blog_manager` VALUES ('9', '小黄', '黄敏', '$2y$10$BphoQEkcbyUDy0zjSwUgau7tFZoopJBiEzPOjoZ3de/1DlXH6RhQO', '123@qq.com', '', '1', '2016-09-13 09:51:50', '2016-09-13 09:51:50');

-- ----------------------------
-- Table structure for blog_photo
-- ----------------------------
DROP TABLE IF EXISTS `blog_photo`;
CREATE TABLE `blog_photo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户主键自增字段',
  `image` varchar(255) NOT NULL,
  `uid` int(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_photo
-- ----------------------------
INSERT INTO `blog_photo` VALUES ('35', '2016090757d028d2a00f2.jpg', '6', '2016-09-07 22:48:50', '2016-09-07 22:49:54');
INSERT INTO `blog_photo` VALUES ('36', '2016090757d029be41975.jpg', '6', '2016-09-07 22:52:46', '2016-09-07 22:53:00');
INSERT INTO `blog_photo` VALUES ('37', '2016090757d029c46bf09.jpg', '6', '2016-09-07 22:52:52', '2016-09-07 22:53:07');
INSERT INTO `blog_photo` VALUES ('38', '2016090757d02b78724f3.jpg', '6', '2016-09-07 23:00:08', '2016-09-07 23:02:47');
INSERT INTO `blog_photo` VALUES ('39', '2016090757d02b88f2db5.jpg', '6', '2016-09-07 23:00:25', '2016-09-07 23:02:51');
INSERT INTO `blog_photo` VALUES ('40', '2016090757d02b959b0a6.jpg', '6', '2016-09-07 23:00:37', '2016-09-07 23:02:53');
INSERT INTO `blog_photo` VALUES ('41', '2016090757d02b9d1bc79.jpg', '6', '2016-09-07 23:00:45', '2016-09-07 23:02:55');
INSERT INTO `blog_photo` VALUES ('42', '2016090757d02baaee834.jpg', '6', '2016-09-07 23:00:59', '2016-09-07 23:02:57');
INSERT INTO `blog_photo` VALUES ('43', '2016090757d02bbbf0877.jpg', '6', '2016-09-07 23:01:16', '2016-09-07 23:02:58');
INSERT INTO `blog_photo` VALUES ('44', '2016090757d02bc387bec.jpg', '6', '2016-09-07 23:01:23', '2016-09-07 23:03:00');
INSERT INTO `blog_photo` VALUES ('45', '2016090757d02bc94ad5a.jpg', '6', '2016-09-07 23:01:29', '2016-09-07 23:03:01');
INSERT INTO `blog_photo` VALUES ('46', '2016090757d02bcec869a.jpg', '6', '2016-09-07 23:01:34', '2016-09-07 23:03:03');
INSERT INTO `blog_photo` VALUES ('47', '2016090757d02bd6546bd.jpg', '6', '2016-09-07 23:01:42', '2016-09-07 23:03:05');
INSERT INTO `blog_photo` VALUES ('48', '2016090757d02bdca523a.jpg', '6', '2016-09-07 23:01:48', '2016-09-07 23:03:09');
INSERT INTO `blog_photo` VALUES ('49', '2016090757d02be3f15de.jpg', '6', '2016-09-07 23:01:56', '2016-09-07 23:03:10');
INSERT INTO `blog_photo` VALUES ('50', '2016090757d02be8e90bf.jpg', '6', '2016-09-07 23:02:01', '2016-09-07 23:03:12');
INSERT INTO `blog_photo` VALUES ('51', '2016090757d02bee5ca02.jpg', '6', '2016-09-07 23:02:06', '2016-09-07 23:03:13');
INSERT INTO `blog_photo` VALUES ('52', '2016090757d02bf4d0419.jpg', '6', '2016-09-07 23:02:13', '2016-09-07 23:03:14');
INSERT INTO `blog_photo` VALUES ('53', '2016090757d02bf9a69de.jpg', '6', '2016-09-07 23:02:17', '2016-09-07 23:03:16');
INSERT INTO `blog_photo` VALUES ('54', '2016090757d02bff47cc6.jpg', '6', '2016-09-07 23:02:23', '2016-09-07 23:03:17');
INSERT INTO `blog_photo` VALUES ('55', '2016090757d02c06aa22e.jpg', '6', '2016-09-07 23:02:30', '2016-09-07 23:03:18');
INSERT INTO `blog_photo` VALUES ('56', '2016090757d02c0c2fb1a.jpg', '6', '2016-09-07 23:02:36', '2016-09-07 23:03:23');
INSERT INTO `blog_photo` VALUES ('57', '2016090857d0c4cd84391.jpg', '0', '2016-09-08 09:54:21', '2016-09-08 09:54:21');
INSERT INTO `blog_photo` VALUES ('58', '2016090957d216bdd4afc.jpg', '0', '2016-09-09 09:56:13', '2016-09-09 09:56:13');

-- ----------------------------
-- Table structure for blog_point
-- ----------------------------
DROP TABLE IF EXISTS `blog_point`;
CREATE TABLE `blog_point` (
  `pid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL COMMENT '用户id',
  `point` int(20) DEFAULT NULL COMMENT '获得的积分',
  `status` int(10) DEFAULT NULL COMMENT '1为注册10分，2为发表文章5分，3为评论5分',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_point
-- ----------------------------
INSERT INTO `blog_point` VALUES ('1', '47', '10', '1', '2016-09-19 20:53:56', '2016-09-19 20:53:56');
INSERT INTO `blog_point` VALUES ('3', '27', '5', '2', '2016-09-19 21:55:12', '2016-09-19 21:55:12');
INSERT INTO `blog_point` VALUES ('4', '27', '5', '2', '2016-09-19 21:56:10', '2016-09-19 21:56:10');
INSERT INTO `blog_point` VALUES ('5', '12', '10', '1', '2016-09-20 09:37:11', '2016-09-20 09:37:11');
INSERT INTO `blog_point` VALUES ('7', '12', '5', '2', '2016-09-20 09:50:31', '2016-09-20 09:50:31');

-- ----------------------------
-- Table structure for blog_report
-- ----------------------------
DROP TABLE IF EXISTS `blog_report`;
CREATE TABLE `blog_report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户主键自增字段',
  `cid` varchar(255) NOT NULL COMMENT '评论id',
  `uid` varchar(50) NOT NULL COMMENT '举报人id',
  `token` varchar(255) NOT NULL,
  `status` tinyint(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_report
-- ----------------------------
INSERT INTO `blog_report` VALUES ('12', '1', '2', '', '0', '2016-09-18 20:28:15', '2016-09-18 20:28:15');
INSERT INTO `blog_report` VALUES ('13', '1', '2', '', '0', '2016-09-18 20:28:21', '2016-09-18 20:28:21');
INSERT INTO `blog_report` VALUES ('14', '1', '2', '', '0', '2016-09-18 20:32:28', '2016-09-18 20:32:28');
INSERT INTO `blog_report` VALUES ('15', '1', '2', '', '0', '2016-09-18 20:32:42', '2016-09-18 20:32:42');
INSERT INTO `blog_report` VALUES ('16', '14', '2', '', '0', '2016-09-18 20:33:10', '2016-09-18 20:33:10');
INSERT INTO `blog_report` VALUES ('17', '14', '2', '', '0', '2016-09-18 20:33:41', '2016-09-18 20:33:41');

-- ----------------------------
-- Table structure for blog_sign
-- ----------------------------
DROP TABLE IF EXISTS `blog_sign`;
CREATE TABLE `blog_sign` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(10) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `status` int(10) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL COMMENT '签到用的时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_sign
-- ----------------------------
INSERT INTO `blog_sign` VALUES ('1', '10', '吕子乔', '1', '1474341089');

-- ----------------------------
-- Table structure for blog_type
-- ----------------------------
DROP TABLE IF EXISTS `blog_type`;
CREATE TABLE `blog_type` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT 'f',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_type
-- ----------------------------
INSERT INTO `blog_type` VALUES ('3', '自然', 't', '2016-09-10 12:00:09', '2016-09-12 16:45:15');
INSERT INTO `blog_type` VALUES ('10', '美女', 't', '2016-09-10 15:50:29', '2016-09-10 15:50:42');
INSERT INTO `blog_type` VALUES ('24', '人文', 't', '2016-09-10 16:25:05', '2016-09-10 16:29:26');
INSERT INTO `blog_type` VALUES ('26', '时尚', 't', '2016-09-11 16:53:49', '2016-09-11 16:54:26');
INSERT INTO `blog_type` VALUES ('27', '全部', 't', '2016-09-12 16:56:54', '2016-09-12 16:57:58');

-- ----------------------------
-- Table structure for blog_user
-- ----------------------------
DROP TABLE IF EXISTS `blog_user`;
CREATE TABLE `blog_user` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `username` char(255) DEFAULT NULL,
  `userpwd` char(255) DEFAULT NULL,
  `email` char(255) DEFAULT NULL,
  `telephone` char(255) DEFAULT NULL,
  `level` int(10) DEFAULT NULL COMMENT '用户等级',
  `status` int(1) DEFAULT '1' COMMENT '用户状态',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_user
-- ----------------------------
INSERT INTO `blog_user` VALUES ('1', 'aaa', '123', '12345', '', null, '1', '2016-09-08 10:35:49', '2016-09-13 18:10:19');
INSERT INTO `blog_user` VALUES ('2', 'cccc', '9999', '12345', '', null, '1', '2016-09-08 10:35:49', '2016-09-13 18:10:30');
INSERT INTO `blog_user` VALUES ('3', 'shenlidong', '', '', null, null, '1', '2016-09-08 10:35:49', '2016-09-08 10:35:49');
INSERT INTO `blog_user` VALUES ('4', '沈立栋', '', '', null, null, '1', '2016-09-08 10:35:49', '2016-09-08 10:35:49');
INSERT INTO `blog_user` VALUES ('5', 'www', '', '', null, null, '1', '2016-09-08 10:35:49', '2016-09-08 10:35:49');
INSERT INTO `blog_user` VALUES ('6', 'klklk', '', '', '', null, '1', '2016-09-08 10:35:49', '2016-09-13 18:10:33');
INSERT INTO `blog_user` VALUES ('7', 'shen', '666', '55955', null, null, '1', '2016-09-08 10:35:49', '2016-09-08 10:35:49');
INSERT INTO `blog_user` VALUES ('8', '张新', '', '', '', null, '1', '2016-09-08 11:12:43', '2016-09-08 11:12:43');
INSERT INTO `blog_user` VALUES ('9', '吕小布', '$2y$10$utDyXFE.U4CG0zm4Wr.Fuu7WC06e0AYqY7TovRKCasBSs7tw3f29S', '8888', '1111', null, '1', '2016-09-11 16:41:09', '2016-09-11 16:41:09');
INSERT INTO `blog_user` VALUES ('10', '吕子乔', '$2y$10$JVmNL1L3mUvZKXfSBCmuXu3VX5eKx7Jb8ajgG0K2OGtyI7m8VS07G', '12345@qq.com', '111', null, '1', '2016-09-17 09:34:29', '2016-09-17 09:34:29');
INSERT INTO `blog_user` VALUES ('12', 'ariess', '$2y$10$ZLnqfZnsBw0hyQ6dfCIyJu6vj6JJ5yUpI9/IO0MgUSHS1N7JDGO3K', '595@qq.com', '13718255522', null, '1', '2016-09-20 09:37:11', '2016-09-20 09:59:35');

-- ----------------------------
-- Table structure for blog_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `blog_userinfo`;
CREATE TABLE `blog_userinfo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(255) DEFAULT NULL COMMENT '用户名',
  `head` char(100) DEFAULT NULL COMMENT '头像',
  `uid` int(10) DEFAULT NULL COMMENT '用户id',
  `signature` char(255) DEFAULT NULL COMMENT '个人签名',
  `address` char(255) DEFAULT NULL COMMENT '地址',
  `sex` char(2) DEFAULT '1' COMMENT '男是1，女是2',
  `nickname` char(30) DEFAULT NULL COMMENT '昵称',
  `school` char(30) DEFAULT NULL COMMENT '毕业学校',
  `jobs` char(30) DEFAULT NULL COMMENT '职业',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_userinfo
-- ----------------------------
INSERT INTO `blog_userinfo` VALUES ('3', 'sss', null, '27', '我是大主宰', '浙江绍兴', '2', '大少爷', '北京大学', '搞基程序员');
INSERT INTO `blog_userinfo` VALUES ('4', 'ariess', null, '12', '宇宙大魔王', '火星', '1', '大魔王', '宇宙院校', '海盗');

-- ----------------------------
-- Table structure for blog_vip
-- ----------------------------
DROP TABLE IF EXISTS `blog_vip`;
CREATE TABLE `blog_vip` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `level` int(10) DEFAULT NULL,
  `exe` int(10) DEFAULT NULL,
  `time` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_vip
-- ----------------------------
INSERT INTO `blog_vip` VALUES ('1', '10', '吕子乔', '2', '10', '1476931166');

-- ----------------------------
-- Table structure for node
-- ----------------------------
DROP TABLE IF EXISTS `node`;
CREATE TABLE `node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `controller` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of node
-- ----------------------------
INSERT INTO `node` VALUES ('1', '前台用户添加', 'User', 'add', '0');
INSERT INTO `node` VALUES ('2', '前台用户删除', 'User', 'delete', '0');
INSERT INTO `node` VALUES ('3', '后台照片管理', 'photo', '', '0');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '总经理', '0', '公司日常经营管理');
INSERT INTO `role` VALUES ('2', '董事长', '0', '主持公司各部门管理工作');
INSERT INTO `role` VALUES ('3', '技术总监', '0', '电脑部总经理、负责公司信息技术');
INSERT INTO `role` VALUES ('4', '财务总监', '0', '负责公司财务管理');
INSERT INTO `role` VALUES ('5', '奥巴马老婆', '0', '指定给董事长');
INSERT INTO `role` VALUES ('7', 'ssssaaa', '1', '111');
INSERT INTO `role` VALUES ('8', '部门主管', '0', '牛逼');
INSERT INTO `role` VALUES ('9', '部门主管', '0', '牛逼');

-- ----------------------------
-- Table structure for role_node
-- ----------------------------
DROP TABLE IF EXISTS `role_node`;
CREATE TABLE `role_node` (
  `rid` smallint(6) unsigned NOT NULL,
  `nid` smallint(6) unsigned NOT NULL,
  KEY `groupId` (`rid`),
  KEY `nodeId` (`nid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_node
-- ----------------------------
INSERT INTO `role_node` VALUES ('3', '2');
INSERT INTO `role_node` VALUES ('3', '1');
INSERT INTO `role_node` VALUES ('4', '1');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `rid` mediumint(9) unsigned DEFAULT NULL,
  `uid` int(6) unsigned NOT NULL,
  KEY `group_id` (`rid`),
  KEY `user_id` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('4', '8');
INSERT INTO `user_role` VALUES ('3', '7');
INSERT INTO `user_role` VALUES ('1', '3');
INSERT INTO `user_role` VALUES ('2', '3');
