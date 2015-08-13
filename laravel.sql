/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50535
Source Host           : localhost:3306
Source Database       : laravel

Target Server Type    : MYSQL
Target Server Version : 50535
File Encoding         : 65001

Date: 2015-08-13 11:40:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `page_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '福仔', 'xuhaifu2008@163.com', '123', '1231231222222223123想休息惺惺惜惺惺', '2', '2015-03-12 06:21:50', '2015-07-24 09:41:43');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('2015_03_11_073225_create_articels_table', '2');
INSERT INTO `migrations` VALUES ('2015_03_11_073243_create_pages_table', '2');
INSERT INTO `migrations` VALUES ('2015_03_12_061328_create_comments_table', '3');

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES ('2', 'Title 1111', 'first-page', 'Body 1', '1', '2015-03-11 07:38:17', '2015-03-11 07:55:47');
INSERT INTO `pages` VALUES ('3', 'Title 2', 'first-page', 'Body 2', '1', '2015-03-11 07:38:17', '2015-03-11 07:38:17');
INSERT INTO `pages` VALUES ('4', 'Title 3', 'first-page', 'Body 3', '1', '2015-03-11 07:38:17', '2015-03-11 07:38:17');
INSERT INTO `pages` VALUES ('5', 'Title 4', 'first-page', 'Body 4', '1', '2015-03-11 07:38:17', '2015-03-11 07:38:17');
INSERT INTO `pages` VALUES ('6', 'Title 5', 'first-page', 'Body 5', '1', '2015-03-11 07:38:17', '2015-03-11 07:38:17');
INSERT INTO `pages` VALUES ('7', 'Title 6', 'first-page', 'Body 6', '1', '2015-03-11 07:38:17', '2015-03-11 07:38:17');
INSERT INTO `pages` VALUES ('8', 'Title 7', 'first-page', 'Body 7', '1', '2015-03-11 07:38:17', '2015-03-11 07:38:17');
INSERT INTO `pages` VALUES ('9', 'Title 8', 'first-page', 'Body 8', '1', '2015-03-11 07:38:17', '2015-03-11 07:38:17');
INSERT INTO `pages` VALUES ('10', 'Title 9', 'first-page', 'Body 9', '1', '2015-03-11 07:38:17', '2015-03-11 07:38:17');
INSERT INTO `pages` VALUES ('11', '幸福男孩', null, '123123幸福男孩幸福男孩幸福男孩幸福男孩', '1', '2015-03-11 07:55:32', '2015-03-11 07:55:32');
INSERT INTO `pages` VALUES ('12', '<script> alert(\"支付管理\");</script>', null, '123ControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerControllerController<p>aaaaaaaaaaaaaa</p>', '6', '2015-07-29 10:26:37', '2015-07-29 10:28:58');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '徐海福', 'xuhaifu2008@163.com', '$2y$10$x5ie0lSsVuWcXL4cORPSO.RINflTcFXQpJoY/Zkr1xTecu/BfArDa', 'AubDNNkmaRbYZdCtl5yQpD0EeIL6hpKWcgDriCS8sa5lCqF9vhrHNkD0Mb3k', '2015-03-11 07:57:17', '2015-08-12 09:31:24');
INSERT INTO `users` VALUES ('3', 'PHP', '360373416@qq.com', '$2y$10$HS0/P2XzznksPIYGX7ta4eeVIVx6fInsKrg7YyOK4e8OOZ7VJc9yy', '9lxzZIV5hsDU1DucSWEScXf7QGvDrqDgyvhcX5RK9mMorrl0Q7srIQmjmYLw', '2015-03-12 07:21:34', '2015-03-12 07:27:52');
INSERT INTO `users` VALUES ('4', 'xhf', '36033416@qq.com', '$2y$10$Mc2M3uzu.QmcV3OSs1vj..jLjI7h5iupQX2g.z9bZdL70OnmLKFFe', null, '2015-03-12 07:28:16', '2015-03-12 07:28:16');
INSERT INTO `users` VALUES ('5', '支付报警', '123@qq.com', '$2y$10$tEfZfBUZ2BecWsVSEHqeS.nueDbXcAO7V8G2fFsEZsgtxZUaqQOnG', 'wNrZO2R4lMAezdThfTQYauUC1C9HoOvpt24m0AClNIIh7BCNfBmGO4tKtHxl', '2015-03-13 02:00:01', '2015-03-13 02:01:03');
INSERT INTO `users` VALUES ('6', '国雷22', '123123@11.com', '$2y$10$J6BywzoupGD9zpYko8v9t.L8yNDA7IVTS4Q2ETw1RGYFkT9H6k57a', 'W7rWbVCE1UJILfzmGvVrVozCXMA8pKfBGpfiMkwHGjeHplAdN1LJLeqZ85m3', '2015-07-29 10:09:19', '2015-07-29 10:10:47');
