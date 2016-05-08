-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-04-29 12:43:12
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `advance`
--

-- --------------------------------------------------------

--
-- 表的结构 `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('全部权限', '1', 1461922514),
('基本工具库', '1', 1461922123),
('管理员', '1', 1461921307);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1461919288, 1461919288),
('/admin/*', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1461919285, 1461919285),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1461919285, 1461919285),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1461919285, 1461919285),
('/admin/default/*', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/default/index', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/menu/*', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/menu/create', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/menu/index', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/menu/update', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/menu/view', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/permission/*', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/permission/create', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/permission/index', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/permission/update', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/permission/view', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/role/*', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/role/assign', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/role/create', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/role/delete', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/role/index', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/role/remove', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/role/update', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/role/view', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/route/*', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/route/assign', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/route/create', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/route/index', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/route/remove', 2, NULL, NULL, NULL, 1461919286, 1461919286),
('/admin/rule/*', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/admin/rule/create', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/admin/rule/index', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/admin/rule/update', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/admin/rule/view', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/admin/user/*', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/admin/user/activate', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/admin/user/delete', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/admin/user/index', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/admin/user/login', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/admin/user/logout', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/admin/user/signup', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/admin/user/view', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/debug/*', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/debug/default/*', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/debug/default/index', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/debug/default/view', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/gii/*', 2, NULL, NULL, NULL, 1461919288, 1461919288),
('/gii/default/*', 2, NULL, NULL, NULL, 1461919288, 1461919288),
('/gii/default/action', 2, NULL, NULL, NULL, 1461919288, 1461919288),
('/gii/default/diff', 2, NULL, NULL, NULL, 1461919288, 1461919288),
('/gii/default/index', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/gii/default/preview', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/gii/default/view', 2, NULL, NULL, NULL, 1461919287, 1461919287),
('/site/*', 2, NULL, NULL, NULL, 1461919288, 1461919288),
('/site/error', 2, NULL, NULL, NULL, 1461919288, 1461919288),
('/site/index', 2, NULL, NULL, NULL, 1461919288, 1461919288),
('/site/login', 2, NULL, NULL, NULL, 1461919288, 1461919288),
('/site/logout', 2, NULL, NULL, NULL, 1461919288, 1461919288),
('全部权限', 2, '全部权限', NULL, NULL, 1461922500, 1461922500),
('后台权限', 2, NULL, NULL, NULL, 1461921185, 1461921185),
('基本工具库', 2, '基本工具库', NULL, NULL, 1461922097, 1461922097),
('管理员', 1, '登录后台的管理员', NULL, NULL, 1461921256, 1461921256);

-- --------------------------------------------------------

--
-- 表的结构 `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('后台权限', '/admin/*'),
('基本工具库', '/debug/*'),
('基本工具库', '/gii/*'),
('管理员', '后台权限');

-- --------------------------------------------------------

--
-- 表的结构 `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `menu`
--

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(4, '权限管理', NULL, NULL, 1, NULL),
(5, '路由', 4, '/admin/route/index', 0, NULL),
(6, '权限', 4, '/admin/permission/index', 2, NULL),
(7, '角色', 4, '/admin/role/index', 3, NULL),
(8, '分配', 4, '/admin/assignment/index', 4, NULL),
(9, '菜单', 4, '/admin/menu/index', 5, NULL),
(10, '基本菜单', NULL, NULL, 999, NULL),
(11, 'Gii操作', 10, '/gii/default/index', 1, NULL),
(12, 'DEBUG', 10, '/debug/default/index', NULL, NULL),
(13, '基本信息', NULL, NULL, 2, 0x7b22636c617373223a2022686561646572227d);

-- --------------------------------------------------------

--
-- 表的结构 `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1461916868),
('m130524_201442_init', 1461916870),
('m140506_102106_rbac_init', 1461919001),
('m140602_111327_create_menu_table', 1461918916),
('m160312_050000_create_user', 1461918916);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', '8F5Zg3UJ4Ue77QMZlV8p8FTXJL5b5Aei', '$2y$13$aKXTbSkQntLGovVj1l9jBOQJ6bFPu26SJQjEBbcVrsl.y/yca8gpy', NULL, '853898868@qq.com', 10, 1461917471, 1461917471);

--
-- 限制导出的表
--

--
-- 限制表 `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- 限制表 `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 限制表 `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
