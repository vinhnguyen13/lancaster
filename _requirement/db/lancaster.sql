/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : lancaster

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2015-10-07 13:30:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_assignment`
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_item`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `group_code` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  KEY `fk_auth_item_group_code` (`group_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('//*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('//controller', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('//crud', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('//extension', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('//form', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('//index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('//model', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('//module', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/asset/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/asset/compress', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/asset/template', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/cache/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/cache/flush', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/cache/flush-all', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/cache/flush-schema', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/cache/index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/fixture/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/fixture/load', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/fixture/unload', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/gii/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/gii/default/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/gii/default/action', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/gii/default/index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/gii/default/view', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/hello/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/hello/index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/help/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/help/index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/message/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/message/config', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/message/extract', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/migrate/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/migrate/create', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/migrate/down', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/migrate/history', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/migrate/mark', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/migrate/new', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/migrate/redo', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/migrate/to', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/migrate/up', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/bulk-activate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/bulk-deactivate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/bulk-delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/create', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/grid-page-size', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/grid-sort', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/toggle-attribute', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/update', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth-item-group/view', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/captcha', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/change-own-password', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/confirm-email', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/confirm-email-receive', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/confirm-registration-email', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/login', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/logout', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/password-recovery', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/password-recovery-receive', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/auth/registration', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/bulk-activate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/bulk-deactivate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/bulk-delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/create', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/grid-page-size', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/grid-sort', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/refresh-routes', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/set-child-permissions', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/set-child-routes', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/toggle-attribute', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/update', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/permission/view', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/bulk-activate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/bulk-deactivate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/bulk-delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/create', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/grid-page-size', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/grid-sort', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/set-child-permissions', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/set-child-roles', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/toggle-attribute', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/update', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/role/view', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-permission/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-permission/set', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-permission/set-roles', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/bulk-activate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/bulk-deactivate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/bulk-delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/create', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/grid-page-size', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/grid-sort', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/toggle-attribute', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/update', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user-visit-log/view', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/*', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/bulk-activate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/bulk-deactivate', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/bulk-delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/change-password', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/create', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/delete', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/grid-page-size', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/grid-sort', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/index', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/toggle-attribute', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/update', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('/user-management/user/view', '3', null, null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('Admin', '1', 'Admin', null, null, '1426062189', '1426062189', null);
INSERT INTO `auth_item` VALUES ('assignRolesToUsers', '2', 'Assign roles to users', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('bindUserToIp', '2', 'Bind user to IP', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('changeOwnPassword', '2', 'Change own password', null, null, '1426062189', '1426062189', 'userCommonPermissions');
INSERT INTO `auth_item` VALUES ('changeUserPassword', '2', 'Change user password', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('commonPermission', '2', 'Common permission', null, null, '1426062188', '1426062188', null);
INSERT INTO `auth_item` VALUES ('createUsers', '2', 'Create users', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('deleteUsers', '2', 'Delete users', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('editUserEmail', '2', 'Edit user email', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('editUsers', '2', 'Edit users', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('viewRegistrationIp', '2', 'View registration IP', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('viewUserEmail', '2', 'View user email', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('viewUserRoles', '2', 'View user roles', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('viewUsers', '2', 'View users', null, null, '1426062189', '1426062189', 'userManagement');
INSERT INTO `auth_item` VALUES ('viewVisitLog', '2', 'View visit log', null, null, '1426062189', '1426062189', 'userManagement');

-- ----------------------------
-- Table structure for `auth_item_child`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('changeOwnPassword', '/user-management/auth/change-own-password');
INSERT INTO `auth_item_child` VALUES ('assignRolesToUsers', '/user-management/user-permission/set');
INSERT INTO `auth_item_child` VALUES ('assignRolesToUsers', '/user-management/user-permission/set-roles');
INSERT INTO `auth_item_child` VALUES ('viewVisitLog', '/user-management/user-visit-log/grid-page-size');
INSERT INTO `auth_item_child` VALUES ('viewVisitLog', '/user-management/user-visit-log/index');
INSERT INTO `auth_item_child` VALUES ('viewVisitLog', '/user-management/user-visit-log/view');
INSERT INTO `auth_item_child` VALUES ('editUsers', '/user-management/user/bulk-activate');
INSERT INTO `auth_item_child` VALUES ('editUsers', '/user-management/user/bulk-deactivate');
INSERT INTO `auth_item_child` VALUES ('deleteUsers', '/user-management/user/bulk-delete');
INSERT INTO `auth_item_child` VALUES ('changeUserPassword', '/user-management/user/change-password');
INSERT INTO `auth_item_child` VALUES ('createUsers', '/user-management/user/create');
INSERT INTO `auth_item_child` VALUES ('deleteUsers', '/user-management/user/delete');
INSERT INTO `auth_item_child` VALUES ('viewUsers', '/user-management/user/grid-page-size');
INSERT INTO `auth_item_child` VALUES ('viewUsers', '/user-management/user/index');
INSERT INTO `auth_item_child` VALUES ('editUsers', '/user-management/user/update');
INSERT INTO `auth_item_child` VALUES ('viewUsers', '/user-management/user/view');
INSERT INTO `auth_item_child` VALUES ('Admin', 'assignRolesToUsers');
INSERT INTO `auth_item_child` VALUES ('Admin', 'changeOwnPassword');
INSERT INTO `auth_item_child` VALUES ('Admin', 'changeUserPassword');
INSERT INTO `auth_item_child` VALUES ('Admin', 'createUsers');
INSERT INTO `auth_item_child` VALUES ('Admin', 'deleteUsers');
INSERT INTO `auth_item_child` VALUES ('Admin', 'editUsers');
INSERT INTO `auth_item_child` VALUES ('editUserEmail', 'viewUserEmail');
INSERT INTO `auth_item_child` VALUES ('assignRolesToUsers', 'viewUserRoles');
INSERT INTO `auth_item_child` VALUES ('Admin', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('assignRolesToUsers', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('changeUserPassword', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('createUsers', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('deleteUsers', 'viewUsers');
INSERT INTO `auth_item_child` VALUES ('editUsers', 'viewUsers');

-- ----------------------------
-- Table structure for `auth_item_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_group`;
CREATE TABLE `auth_item_group` (
  `code` varchar(64) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item_group
-- ----------------------------
INSERT INTO `auth_item_group` VALUES ('userCommonPermissions', 'User common permission', '1426062189', '1426062189');
INSERT INTO `auth_item_group` VALUES ('userManagement', 'User management', '1426062189', '1426062189');

-- ----------------------------
-- Table structure for `auth_rule`
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for `blog_catalog`
-- ----------------------------
DROP TABLE IF EXISTS `blog_catalog`;
CREATE TABLE `blog_catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `surname` varchar(128) NOT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `is_nav` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '50',
  `page_size` int(11) NOT NULL DEFAULT '10',
  `template` varchar(255) NOT NULL DEFAULT 'post',
  `redirect_url` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `is_nav` (`is_nav`),
  KEY `sort_order` (`sort_order`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_catalog
-- ----------------------------

-- ----------------------------
-- Table structure for `blog_comment`
-- ----------------------------
DROP TABLE IF EXISTS `blog_comment`;
CREATE TABLE `blog_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `author` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `post_id` (`post_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`),
  CONSTRAINT `blog_comment_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `blog_post` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_comment
-- ----------------------------

-- ----------------------------
-- Table structure for `blog_post`
-- ----------------------------
DROP TABLE IF EXISTS `blog_post`;
CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `surname` varchar(128) NOT NULL,
  `click` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_id` (`catalog_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`),
  KEY `FK_post_user` (`user_id`),
  CONSTRAINT `blog_post_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `blog_catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `blog_post_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_post
-- ----------------------------

-- ----------------------------
-- Table structure for `blog_tag`
-- ----------------------------
DROP TABLE IF EXISTS `blog_tag`;
CREATE TABLE `blog_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `frequency` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `frequency` (`frequency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of blog_tag
-- ----------------------------

-- ----------------------------
-- Table structure for `cms_catalog`
-- ----------------------------
DROP TABLE IF EXISTS `cms_catalog`;
CREATE TABLE `cms_catalog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `brief` varchar(1022) DEFAULT NULL,
  `content` text,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `is_nav` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '50',
  `page_type` varchar(255) NOT NULL DEFAULT 'page',
  `page_size` int(11) NOT NULL DEFAULT '10',
  `template_list` varchar(255) NOT NULL DEFAULT 'list',
  `template_show` varchar(255) NOT NULL DEFAULT 'show',
  `template_page` varchar(255) NOT NULL DEFAULT 'page',
  `redirect_url` varchar(255) DEFAULT NULL,
  `click` int(11) DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `is_nav` (`is_nav`),
  KEY `sort_order` (`sort_order`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_catalog
-- ----------------------------
INSERT INTO `cms_catalog` VALUES ('1', '0', 'Static Page', 'Static Page', '', '<p>Static Page</p>\r\n', '', '', '', null, '1', '50', 'page', '10', 'list', 'show', 'page', '', '0', '1', '1438335832', '1442910007');
INSERT INTO `cms_catalog` VALUES ('2', '0', 'News', 'NEWS', '', '<p>News</p>\r\n', '', '', '', null, '1', '50', 'list', '10', 'list', 'show', 'page', '', '0', '1', '1438336780', '1442822522');
INSERT INTO `cms_catalog` VALUES ('3', '0', 'About Us', 'ABOUT', '', '<p>About Us</p>\r\n', '', '', '', null, '1', '50', 'list', '10', 'list', 'show', 'page', '', '0', '1', '1442800235', '1442826958');

-- ----------------------------
-- Table structure for `cms_show`
-- ----------------------------
DROP TABLE IF EXISTS `cms_show`;
CREATE TABLE `cms_show` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `surname` varchar(128) DEFAULT NULL,
  `brief` varchar(1022) DEFAULT NULL,
  `content` text,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `banner` varchar(255) DEFAULT NULL,
  `template_show` varchar(255) NOT NULL DEFAULT 'show',
  `author` varchar(255) NOT NULL DEFAULT 'admin',
  `click` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `create_by` int(11) NOT NULL,
  `update_by` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catalog_id` (`catalog_id`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`),
  CONSTRAINT `cms_show_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `cms_catalog` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cms_show
-- ----------------------------
INSERT INTO `cms_show` VALUES ('4', '2', 'Lorem ipsum dolor sit amet dolor sit amet', 'lorem-ipsum-dolor-sit-amet-dolor-sit-amet', 'Yii2 News 1', '', '<p>Republican Party leaders, whose presidential nominees have not won a majority of female voters since 1988, are setting their sights on making electoral gains among women in the 2016 presidential race and trying to close the gender gap in swing states like Florida and Colorado. But the remarks and tone about women at Thursday&rsquo;s debate &mdash; and the sight of 10 male candidates owning the stage &mdash; may have only damaged the party&rsquo;s standing among female voters in the 2016 general election, according to pollsters and some Republican leaders.<br />\r\n<br />\r\n&ldquo;So much of the debate was all about appealing to male voters and other parts of the Republican base, rather than doing anything to help the party&rsquo;s general election goal of trying to be more inclusive,&rdquo; said Lee M. Miringoff, director of the Marist College Institute for Public Opinion. &ldquo;By being callous or showing disregard toward women, and then laughing it off with a charge of political correctness or simply saying they&rsquo;re taking conservative stands, the Republicans could win over some of the older male Republican voters out there. But what about female voters?&rdquo;<br />\r\n<br />\r\nDemocrats were gleeful at the tone of the debate, already imagining future campaign advertisements featuring debate cutaways with Mr. Rubio saying that future Americans will &ldquo;call us barbarians for murdering millions of babies.&rdquo;<br />\r\n<br />\r\nIn the short term, however, the political peril for the Republican candidates may not be so grave. They are largely focused now on winning over likely Republican voters who will decide the party&rsquo;s nomination &mdash; an electorate that tends to skew male and older in many key states.<br />\r\n<br />\r\nRecent polls of Republican voters indicate that Mr. Trump is performing strongly among men and to a slightly lesser extent among women, though sizable numbers of women also say they would not support him. It remains an open question whether Mr. Trump offended his supporters, or many other likely primary voters, by refusing to renounce his past descriptions of women as &ldquo;fat pigs&rdquo; during the debate; indeed, pollsters say he may have struck a chord with some voters by saying he doesn&rsquo;t &ldquo;have time for political correctness&rdquo; when he was asked about his remarks.</p>\r\n', '', '', '', '04.png', 'show', 'admin', '0', '1', '1438336814', '2147483647', '0', '1');
INSERT INTO `cms_show` VALUES ('5', '3', 'Lancaster Nguyen Trai', 'lancaster-nguyen-trai', '', '', '<p>Located on an area of over 5.000 m2, the building Lancaster Nguyen Trai is a complex including commercial center, office area and apartments for the upper class value. With the reputation of the brand Lancaster, the project promises to bring our investors excellent investment opportunities as well as to provide the inhabitants in the area with a luxurious living environment with superior services</p>\r\n', '', '', '', '04.png', 'show', 'admin', '0', '1', '2147483647', '2147483647', '1', '1');
INSERT INTO `cms_show` VALUES ('6', '3', 'Lancaster Le Thanh Ton', 'lancaster-le-thanh-ton', '', '', '<p>ancaster offers you a sweeping panoramic view of the city skyline from virtually every window. Besides 109 ultra-luxury and graciously furnished apartments ranging from studios to penthouses, the building also features 6 floors of working space for setting up professional and supreme offices.In addition, Lancaster also offers you all of the exceptional amenities and renowned white-glove services of Trung Thuy Group, promising to be the ideal place for both personal life and business..</p>\r\n', '', '', '', '04.png', 'show', 'admin', '0', '1', '0', '2147483647', '0', '1');
INSERT INTO `cms_show` VALUES ('7', '2', 'Lorem ipsum dolor sit amet dolor sit amet 2', 'lorem-ipsum-dolor-sit-amet-dolor-sit-amet-2', '', '', '<p>Located on an area of over 5.000 m2, the building Lancaster Nguyen Trai is a complex including commercial center, office area and apartments for the upper class value. With the reputation of the brand Lancaster, the project promises to bring our investors excellent investment opportunities as well as to provide the inhabitants in the area with a luxurious living environment with superior services</p>\r\n', '', '', '', '01.png', 'show', 'admin', '0', '1', '2147483647', '2147483647', '1', '1');
INSERT INTO `cms_show` VALUES ('8', '2', 'Lorem ipsum dolor sit amet dolor sit amet 3', 'lorem-ipsum-dolor-sit-amet-dolor-sit-amet-3', '', '', '<p>Located on an area of over 5.000 m2, the building Lancaster Nguyen Trai is a complex including commercial center, office area and apartments for the upper class value. With the reputation of the brand Lancaster, the project promises to bring our investors excellent investment opportunities as well as to provide the inhabitants in the area with a luxurious living environment with superior services</p>\r\n', '', '', '', '02.png', 'show', 'admin', '0', '1', '2147483647', '2147483647', '1', '1');
INSERT INTO `cms_show` VALUES ('9', '2', 'Lorem ipsum dolor sit amet dolor sit amet 4', 'lorem-ipsum-dolor-sit-amet-dolor-sit-amet-4', '', '', '<p>Located on an area of over 5.000 m2, the building Lancaster Nguyen Trai is a complex including commercial center, office area and apartments for the upper class value. With the reputation of the brand Lancaster, the project promises to bring our investors excellent investment opportunities as well as to provide the inhabitants in the area with a luxurious living environment with superior services</p>\r\n', '', '', '', '03.png', 'show', 'admin', '0', '1', '2147483647', '2147483647', '1', '1');

-- ----------------------------
-- Table structure for `gallery`
-- ----------------------------
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gallery
-- ----------------------------
INSERT INTO `gallery` VALUES ('1', 'Apartments', 'Apartments', '1');
INSERT INTO `gallery` VALUES ('2', 'Amenities', 'Amenities', '1');
INSERT INTO `gallery` VALUES ('3', 'Views', 'Views', '1');
INSERT INTO `gallery` VALUES ('4', 'Neighborhood', 'Neighborhood', '1');

-- ----------------------------
-- Table structure for `gallery_photo`
-- ----------------------------
DROP TABLE IF EXISTS `gallery_photo`;
CREATE TABLE `gallery_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `dirname` varchar(255) DEFAULT NULL,
  `alt` varchar(100) DEFAULT NULL,
  `thumbs` varchar(255) DEFAULT NULL,
  `settings` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gallery_photo
-- ----------------------------
INSERT INTO `gallery_photo` VALUES ('15', '3', 'North', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '35603b7f34599a.png', null, 'image/png', '1147751', 'views_3', null, 'a:3:{s:5:\"small\";s:25:\"35603b7f34599a-120x80.png\";s:6:\"medium\";s:26:\"35603b7f34599a-400x300.png\";s:5:\"large\";s:26:\"35603b7f34599a-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('16', '3', 'East', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '35603b7f7e8f65.png', null, 'image/png', '904738', 'views_3', null, 'a:3:{s:5:\"small\";s:25:\"35603b7f7e8f65-120x80.png\";s:6:\"medium\";s:26:\"35603b7f7e8f65-400x300.png\";s:5:\"large\";s:26:\"35603b7f7e8f65-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('18', '3', 'South', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '35603b808876de.png', null, 'image/png', '1537808', 'views_3', null, 'a:3:{s:5:\"small\";s:25:\"35603b808876de-120x80.png\";s:6:\"medium\";s:26:\"35603b808876de-400x300.png\";s:5:\"large\";s:26:\"35603b808876de-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('20', '2', 'Swimming Pool', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '25603b8bfa4704.png', null, 'image/png', '1043911', 'amenities_2', null, 'a:3:{s:5:\"small\";s:25:\"25603b8bfa4704-120x80.png\";s:6:\"medium\";s:26:\"25603b8bfa4704-400x300.png\";s:5:\"large\";s:26:\"25603b8bfa4704-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('21', '2', 'Fitness Center', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '25603b8c2d4137.png', null, 'image/png', '904738', 'amenities_2', null, 'a:3:{s:5:\"small\";s:25:\"25603b8c2d4137-120x80.png\";s:6:\"medium\";s:26:\"25603b8c2d4137-400x300.png\";s:5:\"large\";s:26:\"25603b8c2d4137-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('22', '2', 'Healthy Care', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '25603b8c5615ad.png', null, 'image/png', '1537808', 'amenities_2', null, 'a:3:{s:5:\"small\";s:25:\"25603b8c5615ad-120x80.png\";s:6:\"medium\";s:26:\"25603b8c5615ad-400x300.png\";s:5:\"large\";s:26:\"25603b8c5615ad-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('23', '2', 'Skybar', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '25603b8c6e95be.png', null, 'image/png', '1147751', 'amenities_2', null, 'a:3:{s:5:\"small\";s:25:\"25603b8c6e95be-120x80.png\";s:6:\"medium\";s:26:\"25603b8c6e95be-400x300.png\";s:5:\"large\";s:26:\"25603b8c6e95be-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('26', '4', 'Restaurants', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '45603d30b47531.png', null, 'image/png', '904738', 'neighborhood_4', null, 'a:3:{s:5:\"small\";s:25:\"45603d30b47531-120x80.png\";s:6:\"medium\";s:26:\"45603d30b47531-400x300.png\";s:5:\"large\";s:26:\"45603d30b47531-800x600.png\";}', '{\"displayCaption\":\"1\"}');
INSERT INTO `gallery_photo` VALUES ('29', '1', 'Living Room', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '15603d3d218434.png', null, 'image/png', '1537808', 'apartments_1', null, 'a:3:{s:5:\"small\";s:25:\"15603d3d218434-120x80.png\";s:6:\"medium\";s:26:\"15603d3d218434-400x300.png\";s:5:\"large\";s:26:\"15603d3d218434-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('30', '1', 'Kitchen', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '15603d3d497404.png', null, 'image/png', '1147751', 'apartments_1', null, 'a:3:{s:5:\"small\";s:25:\"15603d3d497404-120x80.png\";s:6:\"medium\";s:26:\"15603d3d497404-400x300.png\";s:5:\"large\";s:26:\"15603d3d497404-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('31', '1', 'Bathroom', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '15603d3dd1dff1.png', null, 'image/png', '1043911', 'apartments_1', null, 'a:3:{s:5:\"small\";s:25:\"15603d3dd1dff1-120x80.png\";s:6:\"medium\";s:26:\"15603d3dd1dff1-400x300.png\";s:5:\"large\";s:26:\"15603d3dd1dff1-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('32', '1', 'Bedroom', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '15603d3df1a1c6.png', null, 'image/png', '904738', 'apartments_1', null, 'a:3:{s:5:\"small\";s:25:\"15603d3df1a1c6-120x80.png\";s:6:\"medium\";s:26:\"15603d3df1a1c6-400x300.png\";s:5:\"large\";s:26:\"15603d3df1a1c6-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('33', '3', 'West', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '35604c3ded6c22.png', null, 'image/png', '479123', 'views_3', null, 'a:3:{s:5:\"small\";s:25:\"35604c3ded6c22-120x80.png\";s:6:\"medium\";s:26:\"35604c3ded6c22-400x300.png\";s:5:\"large\";s:26:\"35604c3ded6c22-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('34', '4', 'Markets', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '45604c43125477.png', null, 'image/png', '1043911', 'neighborhood_4', null, 'a:3:{s:5:\"small\";s:25:\"45604c43125477-120x80.png\";s:6:\"medium\";s:26:\"45604c43125477-400x300.png\";s:5:\"large\";s:26:\"45604c43125477-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('35', '4', 'Shopping', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '45604c433d5552.png', null, 'image/png', '1147751', 'neighborhood_4', null, 'a:3:{s:5:\"small\";s:25:\"45604c433d5552-120x80.png\";s:6:\"medium\";s:26:\"45604c433d5552-400x300.png\";s:5:\"large\";s:26:\"45604c433d5552-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('36', '4', 'Entertaiment', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '45604c43609fb2.png', null, 'image/png', '1537808', 'neighborhood_4', null, 'a:3:{s:5:\"small\";s:25:\"45604c43609fb2-120x80.png\";s:6:\"medium\";s:26:\"45604c43609fb2-400x300.png\";s:5:\"large\";s:26:\"45604c43609fb2-800x600.png\";}', null);
INSERT INTO `gallery_photo` VALUES ('37', '4', 'Parks', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the</p>\r\n', '45604c472e7e83.png', null, 'image/png', '972316', 'neighborhood_4', null, 'a:3:{s:5:\"small\";s:25:\"45604c472e7e83-120x80.png\";s:6:\"medium\";s:26:\"45604c472e7e83-400x300.png\";s:5:\"large\";s:26:\"45604c472e7e83-800x600.png\";}', null);

-- ----------------------------
-- Table structure for `language`
-- ----------------------------
DROP TABLE IF EXISTS `language`;
CREATE TABLE `language` (
  `language_id` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(3) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name_ascii` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of language
-- ----------------------------
INSERT INTO `language` VALUES ('af-ZA', 'af', 'za', 'Afrikaans', 'Afrikaans', '1');
INSERT INTO `language` VALUES ('ar-AR', 'ar', 'ar', '‏العربية‏', 'Arabic', '0');
INSERT INTO `language` VALUES ('az-AZ', 'az', 'az', 'Azərbaycan dili', 'Azerbaijani', '0');
INSERT INTO `language` VALUES ('be-BY', 'be', 'by', 'Беларуская', 'Belarusian', '0');
INSERT INTO `language` VALUES ('bg-BG', 'bg', 'bg', 'Български', 'Bulgarian', '0');
INSERT INTO `language` VALUES ('bn-IN', 'bn', 'in', 'বাংলা', 'Bengali', '0');
INSERT INTO `language` VALUES ('bs-BA', 'bs', 'ba', 'Bosanski', 'Bosnian', '0');
INSERT INTO `language` VALUES ('ca-ES', 'ca', 'es', 'Català', 'Catalan', '0');
INSERT INTO `language` VALUES ('cs-CZ', 'cs', 'cz', 'Čeština', 'Czech', '0');
INSERT INTO `language` VALUES ('cy-GB', 'cy', 'gb', 'Cymraeg', 'Welsh', '0');
INSERT INTO `language` VALUES ('da-DK', 'da', 'dk', 'Dansk', 'Danish', '0');
INSERT INTO `language` VALUES ('de-DE', 'de', 'de', 'Deutsch', 'German', '0');
INSERT INTO `language` VALUES ('el-GR', 'el', 'gr', 'Ελληνικά', 'Greek', '0');
INSERT INTO `language` VALUES ('en-GB', 'en', 'gb', 'English (UK)', 'English (UK)', '1');
INSERT INTO `language` VALUES ('en-PI', 'en', 'pi', 'English (Pirate)', 'English (Pirate)', '0');
INSERT INTO `language` VALUES ('en-UD', 'en', 'ud', 'English (Upside Down)', 'English (Upside Down)', '0');
INSERT INTO `language` VALUES ('en-US', 'en', 'us', 'English (US)', 'English (US)', '1');
INSERT INTO `language` VALUES ('eo-EO', 'eo', 'eo', 'Esperanto', 'Esperanto', '0');
INSERT INTO `language` VALUES ('es-ES', 'es', 'es', 'Español (España)', 'Spanish (Spain)', '0');
INSERT INTO `language` VALUES ('es-LA', 'es', 'la', 'Español', 'Spanish', '0');
INSERT INTO `language` VALUES ('et-EE', 'et', 'ee', 'Eesti', 'Estonian', '0');
INSERT INTO `language` VALUES ('eu-ES', 'eu', 'es', 'Euskara', 'Basque', '0');
INSERT INTO `language` VALUES ('fa-IR', 'fa', 'ir', '‏فارسی‏', 'Persian', '0');
INSERT INTO `language` VALUES ('fb-LT', 'fb', 'lt', 'Leet Speak', 'Leet Speak', '0');
INSERT INTO `language` VALUES ('fi-FI', 'fi', 'fi', 'Suomi', 'Finnish', '0');
INSERT INTO `language` VALUES ('fo-FO', 'fo', 'fo', 'Føroyskt', 'Faroese', '0');
INSERT INTO `language` VALUES ('fr-CA', 'fr', 'ca', 'Français (Canada)', 'French (Canada)', '0');
INSERT INTO `language` VALUES ('fr-FR', 'fr', 'fr', 'Français (France)', 'French (France)', '0');
INSERT INTO `language` VALUES ('fy-NL', 'fy', 'nl', 'Frysk', 'Frisian', '0');
INSERT INTO `language` VALUES ('ga-IE', 'ga', 'ie', 'Gaeilge', 'Irish', '0');
INSERT INTO `language` VALUES ('gl-ES', 'gl', 'es', 'Galego', 'Galician', '0');
INSERT INTO `language` VALUES ('he-IL', 'he', 'il', '‏עברית‏', 'Hebrew', '0');
INSERT INTO `language` VALUES ('hi-IN', 'hi', 'in', 'हिन्दी', 'Hindi', '0');
INSERT INTO `language` VALUES ('hr-HR', 'hr', 'hr', 'Hrvatski', 'Croatian', '0');
INSERT INTO `language` VALUES ('hu-HU', 'hu', 'hu', 'Magyar', 'Hungarian', '0');
INSERT INTO `language` VALUES ('hy-AM', 'hy', 'am', 'Հայերեն', 'Armenian', '0');
INSERT INTO `language` VALUES ('id-ID', 'id', 'id', 'Bahasa Indonesia', 'Indonesian', '0');
INSERT INTO `language` VALUES ('is-IS', 'is', 'is', 'Íslenska', 'Icelandic', '0');
INSERT INTO `language` VALUES ('it-IT', 'it', 'it', 'Italiano', 'Italian', '0');
INSERT INTO `language` VALUES ('ja-JP', 'ja', 'jp', '日本語', 'Japanese', '0');
INSERT INTO `language` VALUES ('ka-GE', 'ka', 'ge', 'ქართული', 'Georgian', '0');
INSERT INTO `language` VALUES ('km-KH', 'km', 'kh', 'ភាសាខ្មែរ', 'Khmer', '0');
INSERT INTO `language` VALUES ('ko-KR', 'ko', 'kr', '한국어', 'Korean', '0');
INSERT INTO `language` VALUES ('ku-TR', 'ku', 'tr', 'Kurdî', 'Kurdish', '0');
INSERT INTO `language` VALUES ('la-VA', 'la', 'va', 'lingua latina', 'Latin', '0');
INSERT INTO `language` VALUES ('lt-LT', 'lt', 'lt', 'Lietuvių', 'Lithuanian', '0');
INSERT INTO `language` VALUES ('lv-LV', 'lv', 'lv', 'Latviešu', 'Latvian', '0');
INSERT INTO `language` VALUES ('mk-MK', 'mk', 'mk', 'Македонски', 'Macedonian', '0');
INSERT INTO `language` VALUES ('ml-IN', 'ml', 'in', 'മലയാളം', 'Malayalam', '0');
INSERT INTO `language` VALUES ('ms-MY', 'ms', 'my', 'Bahasa Melayu', 'Malay', '0');
INSERT INTO `language` VALUES ('nb-NO', 'nb', 'no', 'Norsk (bokmål)', 'Norwegian (bokmal)', '0');
INSERT INTO `language` VALUES ('ne-NP', 'ne', 'np', 'नेपाली', 'Nepali', '0');
INSERT INTO `language` VALUES ('nl-NL', 'nl', 'nl', 'Nederlands', 'Dutch', '0');
INSERT INTO `language` VALUES ('nn-NO', 'nn', 'no', 'Norsk (nynorsk)', 'Norwegian (nynorsk)', '0');
INSERT INTO `language` VALUES ('pa-IN', 'pa', 'in', 'ਪੰਜਾਬੀ', 'Punjabi', '0');
INSERT INTO `language` VALUES ('pl-PL', 'pl', 'pl', 'Polski', 'Polish', '0');
INSERT INTO `language` VALUES ('ps-AF', 'ps', 'af', '‏پښتو‏', 'Pashto', '0');
INSERT INTO `language` VALUES ('pt-BR', 'pt', 'br', 'Português (Brasil)', 'Portuguese (Brazil)', '0');
INSERT INTO `language` VALUES ('pt-PT', 'pt', 'pt', 'Português (Portugal)', 'Portuguese (Portugal)', '0');
INSERT INTO `language` VALUES ('ro-RO', 'ro', 'ro', 'Română', 'Romanian', '0');
INSERT INTO `language` VALUES ('ru-RU', 'ru', 'ru', 'Русский', 'Russian', '0');
INSERT INTO `language` VALUES ('sk-SK', 'sk', 'sk', 'Slovenčina', 'Slovak', '0');
INSERT INTO `language` VALUES ('sl-SI', 'sl', 'si', 'Slovenščina', 'Slovenian', '0');
INSERT INTO `language` VALUES ('sq-AL', 'sq', 'al', 'Shqip', 'Albanian', '0');
INSERT INTO `language` VALUES ('sr-RS', 'sr', 'rs', 'Српски', 'Serbian', '0');
INSERT INTO `language` VALUES ('sv-SE', 'sv', 'se', 'Svenska', 'Swedish', '0');
INSERT INTO `language` VALUES ('sw-KE', 'sw', 'ke', 'Kiswahili', 'Swahili', '0');
INSERT INTO `language` VALUES ('ta-IN', 'ta', 'in', 'தமிழ்', 'Tamil', '0');
INSERT INTO `language` VALUES ('te-IN', 'te', 'in', 'తెలుగు', 'Telugu', '0');
INSERT INTO `language` VALUES ('th-TH', 'th', 'th', 'ภาษาไทย', 'Thai', '0');
INSERT INTO `language` VALUES ('tl-PH', 'tl', 'ph', 'Filipino', 'Filipino', '0');
INSERT INTO `language` VALUES ('tr-TR', 'tr', 'tr', 'Türkçe', 'Turkish', '0');
INSERT INTO `language` VALUES ('uk-UA', 'uk', 'ua', 'Українська', 'Ukrainian', '0');
INSERT INTO `language` VALUES ('vi-VN', 'vi', 'vn', 'Tiếng Việt', 'Vietnamese', '0');
INSERT INTO `language` VALUES ('xx-XX', 'xx', 'xx', 'Fejlesztő', 'Developer', '0');
INSERT INTO `language` VALUES ('zh-CN', 'zh', 'cn', '中文(简体)', 'Simplified Chinese (China)', '0');
INSERT INTO `language` VALUES ('zh-HK', 'zh', 'hk', '中文(香港)', 'Traditional Chinese (Hong Kong)', '0');
INSERT INTO `language` VALUES ('zh-TW', 'zh', 'tw', '中文(台灣)', 'Traditional Chinese (Taiwan)', '0');

-- ----------------------------
-- Table structure for `language_source`
-- ----------------------------
DROP TABLE IF EXISTS `language_source`;
CREATE TABLE `language_source` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of language_source
-- ----------------------------
INSERT INTO `language_source` VALUES ('7', 'javascript', 'Translation Language: {name}');
INSERT INTO `language_source` VALUES ('8', 'javascript', 'Save');
INSERT INTO `language_source` VALUES ('9', 'javascript', 'Close');
INSERT INTO `language_source` VALUES ('10', 'javascript', 'Hello!');
INSERT INTO `language_source` VALUES ('11', 'javascript', 'Hello {name}');
INSERT INTO `language_source` VALUES ('12', 'javascript', 'Hello {first_name} {last_name}');

-- ----------------------------
-- Table structure for `language_translate`
-- ----------------------------
DROP TABLE IF EXISTS `language_translate`;
CREATE TABLE `language_translate` (
  `id` int(10) unsigned NOT NULL,
  `language` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `translation` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`,`language`),
  KEY `language` (`language`),
  CONSTRAINT `language_translate_ibfk_1` FOREIGN KEY (`language`) REFERENCES `language` (`language_id`) ON DELETE CASCADE,
  CONSTRAINT `language_translate_ibfk_2` FOREIGN KEY (`id`) REFERENCES `language_source` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of language_translate
-- ----------------------------
INSERT INTO `language_translate` VALUES ('7', 'vi-VN', null);

-- ----------------------------
-- Table structure for `lc_apartment_type`
-- ----------------------------
DROP TABLE IF EXISTS `lc_apartment_type`;
CREATE TABLE `lc_apartment_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lc_apartment_type
-- ----------------------------
INSERT INTO `lc_apartment_type` VALUES ('1', '1-Bedroom', '', '2015-09-24 10:07:30', '2015-09-24 10:07:30', '1', '1');
INSERT INTO `lc_apartment_type` VALUES ('2', '2-Bedroom', '', '2015-09-24 10:07:44', '2015-09-24 10:13:20', '1', '1');
INSERT INTO `lc_apartment_type` VALUES ('3', '3-Bedroom', '', '2015-09-24 10:08:33', '2015-09-24 10:08:33', '1', '1');
INSERT INTO `lc_apartment_type` VALUES ('4', 'Penhouse', '', '2015-09-24 10:08:48', '2015-09-24 10:08:48', '1', '1');
INSERT INTO `lc_apartment_type` VALUES ('5', 'Studio', '', '2015-09-24 10:09:01', '2015-09-24 10:09:01', '1', '1');
INSERT INTO `lc_apartment_type` VALUES ('6', 'Villa', '', '2015-09-24 16:14:28', '2015-09-24 16:14:28', null, null);

-- ----------------------------
-- Table structure for `lc_banner`
-- ----------------------------
DROP TABLE IF EXISTS `lc_banner`;
CREATE TABLE `lc_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `url` varchar(500) DEFAULT NULL,
  `ad_link` varchar(500) DEFAULT NULL COMMENT 'Link for advertisement',
  `height` smallint(6) DEFAULT NULL,
  `width` smallint(6) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lc_banner
-- ----------------------------

-- ----------------------------
-- Table structure for `lc_booking`
-- ----------------------------
DROP TABLE IF EXISTS `lc_booking`;
CREATE TABLE `lc_booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lc_building_id` int(11) DEFAULT NULL,
  `checkin` datetime DEFAULT NULL,
  `checkout` datetime DEFAULT NULL,
  `apart_type` smallint(6) DEFAULT NULL,
  `floorplan` smallint(6) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `passport_no` varchar(15) DEFAULT NULL,
  `nationality` varchar(60) DEFAULT NULL,
  `info` text,
  `ip` varchar(40) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `browser_type` varchar(45) DEFAULT NULL,
  `browser_name` varchar(60) DEFAULT NULL,
  `browser_version` varchar(10) DEFAULT NULL,
  `platform` varchar(60) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_building_idx` (`lc_building_id`),
  CONSTRAINT `fk_building_booking` FOREIGN KEY (`lc_building_id`) REFERENCES `lc_building` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lc_booking
-- ----------------------------
INSERT INTO `lc_booking` VALUES ('9', '2', '2015-09-22 12:00:45', '2015-09-25 12:00:45', '2', '10', 'Nhut Tran', '01222144700', 'nhut.tran@trungthuygroup.vn', '111', 'def', '333', 'ddd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-22 12:56:21', '2015-09-23 15:04:54', null, '1');
INSERT INTO `lc_booking` VALUES ('10', '2', '2015-09-27 12:00:33', '2015-09-29 12:00:33', '3', '20', 'Tran', '123456', 'nhut.love@gmail.com', 'ddd', 'ffff', 'ggggg', 'hhhhhhh', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-22 12:58:29', '2015-09-23 10:25:19', null, null);
INSERT INTO `lc_booking` VALUES ('11', '2', '2015-09-22 13:00:03', '2015-09-24 14:00:03', '2', '22', 'Nhut Tran', '01222144700', 'nhut.love@gmail.com', '111', '111', 'hg', 'gfgfgfg', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-22 13:16:58', '2015-09-23 10:25:19', null, null);
INSERT INTO `lc_booking` VALUES ('12', '2', '2015-09-29 12:00:21', '2015-09-30 12:00:21', '1', '22', 'Nhut Tran', '01222144700', 'nhut.tran@trungthuygroup.vn', 'abc', 'def', '333', '12345678', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-22 13:49:47', '2015-09-23 10:25:19', null, null);
INSERT INTO `lc_booking` VALUES ('14', '3', '2015-09-22 12:00:03', '2015-09-23 12:00:03', '1', '9', 'Mr. White', '123456', 'nhut.love@gmail.com', 'abc1', 'e', 'ghi', 'poopop', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-22 14:51:39', '2015-09-23 10:25:19', null, null);
INSERT INTO `lc_booking` VALUES ('15', '2', '2015-09-30 12:00:11', '2015-10-02 09:00:00', '1', '14', 'Mr. Steed', '80008000', 'nhut.love@gmail.com', 'abc1', '111', 'ghi', 'erw', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-22 15:12:29', '2015-09-23 10:25:19', null, null);
INSERT INTO `lc_booking` VALUES ('16', '2', '2015-09-27 08:00:29', '2015-09-30 12:00:29', '1', '22', 'Mr. Tree', '01222144700', 'nhut.love@gmail.com', 'ddd', 'def', 'hg', 'eeee', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-22 15:16:21', '2015-09-23 10:25:19', null, null);
INSERT INTO `lc_booking` VALUES ('17', '2', '2015-09-22 12:00:01', '2015-09-23 12:20:01', '1', '22', 'Mr. White', '123456', 'nhut.love@gmail.com', 'abc', '', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-22 15:32:19', '2015-09-23 10:25:19', null, null);
INSERT INTO `lc_booking` VALUES ('18', '3', '2015-09-16 12:00:36', '2015-09-19 12:00:00', '1', '11', 'Mr. White', '80008000', 'nhut.tran@trungthuygroup.vn', '111', 'def', 'hg', '76666', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-22 15:37:23', '2015-09-23 10:25:19', null, null);
INSERT INTO `lc_booking` VALUES ('19', '2', '2015-09-23 00:00:24', '2015-09-30 00:00:24', '1', '13', 'Mr. Black', '01222144700', 'nhut.tran@trungthuygroup.vn', 'abc1', '222', 'ghi', '12121212', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-22 15:38:32', '2015-09-23 10:25:19', null, null);
INSERT INTO `lc_booking` VALUES ('20', '2', '2015-09-08 05:00:42', '2015-09-15 15:55:42', '1', '16', 'Nhut Tran', '123456', 'nhut.love@gmail.com', 'abc', '222', 'hg', '789789789', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-22 15:39:25', '2015-09-23 10:25:19', null, null);
INSERT INTO `lc_booking` VALUES ('21', '2', '2015-09-03 01:00:17', '2015-09-05 22:20:17', '1', '22', 'Mr. Steed', '01222144800', 'nhut.tran@trungthuygroup.vn', 'abc', 'def', 'ghi', '123456789', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-22 15:40:50', '2015-09-23 10:25:19', null, null);
INSERT INTO `lc_booking` VALUES ('22', '2', '2015-09-23 12:00:43', '2015-09-25 08:40:00', '1', '22', 'Ms. Thuy', '987654321', 'nhut.love@gmail.com', 'abc1', 'def', 'hg', 'asdasd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-23 09:25:39', '2015-09-23 10:25:19', null, null);
INSERT INTO `lc_booking` VALUES ('23', '3', '2015-09-22 12:00:31', '2015-09-24 12:00:31', '1', '4', 'Nhut Tran', '01222144700', 'nhut.tran@trungthuygroup.vn', 'abc', '222', 'ghi', '234567', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '0000-00-00 00:00:00', '2015-09-23 10:30:05', null, null);
INSERT INTO `lc_booking` VALUES ('25', '2', '2015-09-24 08:40:18', '2015-09-25 16:40:19', '1', '19', 'Tran Minh Nhut', '01222144700', 'nhuttranm@gmail.com', '111', 'def', 'hg', 'aaaa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '0000-00-00 00:00:00', '2015-09-23 13:52:14', null, null);
INSERT INTO `lc_booking` VALUES ('26', '2', '2015-09-26 16:00:15', '2015-09-27 16:00:00', '1', '13', 'Tran', '987654321', 'nhuttranm@gmail.com', 'abc', 'VN1001', 'ghi', 'www', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '0000-00-00 00:00:00', '2015-09-23 13:55:07', null, null);
INSERT INTO `lc_booking` VALUES ('27', '3', '2015-09-22 00:00:00', '2015-09-24 00:00:00', '1', '20', 'Nhut Tran', '01222144700', 'nhut.tran@trungthuygroup.vn', 'abc', 'def', 'ghi', '55555', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-23 14:49:02', '2015-09-23 15:10:09', '1', '1');
INSERT INTO `lc_booking` VALUES ('28', '3', '2015-09-24 14:00:02', '2015-09-25 14:00:00', '1', '10', 'Nhut Tran', '123456', 'nhut.love@gmail.com', 'abc1', '222', 'fddssd', 'sfdfd', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-23 14:44:36', '2015-09-23 14:44:36', '1', '1');
INSERT INTO `lc_booking` VALUES ('29', '3', '2015-10-08 12:00:36', '2015-10-10 12:00:36', '1', '29', 'Ms. Helen', '987654321', 'helen@trungthuygroup.vn', '111', 'def', 'hg', 'aaaa', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-23 15:07:28', '2015-09-23 15:07:28', '1', '1');
INSERT INTO `lc_booking` VALUES ('30', '2', '2015-09-30 21:00:28', '2015-10-02 22:45:28', '1', '18', 'Ms. Natalee', '090909090912222', 'nhut@gmail.com', '111', '222', 'hg', 'ddadsda', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-23 15:08:28', '2015-09-23 15:08:28', '1', '1');
INSERT INTO `lc_booking` VALUES ('31', '3', '2015-09-28 22:50:35', '2015-10-02 22:50:35', '1', '27', 'Mr. Rocky', '0123434', 'rocky@gmail.com', 'ddddddddddddd', 'sssssssss', 'NNNNNNNNNNNN', 'ffffffffffffffffffffffffff', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-23 15:11:30', '2015-09-23 15:11:30', '1', '1');
INSERT INTO `lc_booking` VALUES ('32', '2', '2015-09-23 16:00:14', '2015-09-30 04:00:14', '1', '11', 'Mr. White', '01222144700', 'nhuttranm@gmail.com', 'abc', 'def', '333', 'yuyuy', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-23 16:44:00', '2015-09-23 16:44:00', '1', '1');
INSERT INTO `lc_booking` VALUES ('33', '2', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '22', 'Iron Man', '232332323', 'nhut.love@gmail.com', 'abc', 'def', 'ghi', '8888888', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-23 16:48:07', '2015-09-23 16:48:07', '1', '1');
INSERT INTO `lc_booking` VALUES ('34', '6', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '1', '22', 'Tran', '01222144800', 'nhuttranm@gmail.com', '', '', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-23 16:57:36', '2015-09-23 16:57:36', '1', '1');
INSERT INTO `lc_booking` VALUES ('35', '2', '2015-09-22 12:00:00', '2015-09-30 16:00:00', '1', '22', 'Mr. Black', '01222144800', 'nhut.love@gmail.com', '', '', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-23 17:11:35', '2015-09-23 17:11:35', '1', '1');
INSERT INTO `lc_booking` VALUES ('36', '3', '2015-09-21 08:00:00', '2015-09-23 17:00:00', '1', '22', 'Nhut Tran', '01222144700', 'nhut.tran@trungthuygroup.vn', 'dung roi', 'true', 'yes', 'ok', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-23 17:13:25', '2015-09-23 17:13:25', '1', '1');
INSERT INTO `lc_booking` VALUES ('37', '3', '2015-09-21 12:00:00', '2015-09-23 12:00:00', '1', '5', 'Mr. Steed', '01222144800', 'nhut.love@gmail.com', '', '', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-23 17:14:58', '2015-09-23 17:14:58', null, null);
INSERT INTO `lc_booking` VALUES ('38', '5', '2015-09-24 12:00:00', '2015-09-26 12:40:00', '1', '24', 'Tam', '0909292929', 'tam@gmail.com', 'T', 'TVN', '3510990909', 'Tam Info', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-24 16:00:21', '2015-09-24 16:00:21', null, null);
INSERT INTO `lc_booking` VALUES ('39', '5', '2015-09-30 12:00:52', '2015-10-02 14:30:52', '1', '22', 'Nhut Tran', '01222144700', 'nhut.tran@trungthuygroup.vn', '', '', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-24 16:46:37', '2015-09-24 16:46:37', null, null);
INSERT INTO `lc_booking` VALUES ('40', '6', '2015-09-30 16:00:00', '2015-10-03 16:00:00', '4', '22', 'Nhut Tran', '01222144700', 'nhuttranm@gmail.com', 'An Giang', '3519887344', 'VN', 'Developer', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-24 16:58:45', '2015-09-24 16:58:45', null, null);
INSERT INTO `lc_booking` VALUES ('41', '3', '2015-09-30 17:00:00', '2015-10-02 17:00:00', '3', '11', 'Nhut Tran', '123456', 'nhut@gmail.com', '', '', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-24 17:16:47', '2015-09-24 17:16:47', null, null);
INSERT INTO `lc_booking` VALUES ('42', '2', '2015-09-30 17:00:00', '2015-10-02 16:00:00', '2', '5', 'Nhut', '123456', 'nhut.love@gmail.com', '', '', '', '', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-24 17:21:39', '2015-09-24 17:21:39', null, null);
INSERT INTO `lc_booking` VALUES ('43', '6', '2015-09-25 08:55:00', '2015-09-26 08:55:00', '2', '30', 'Nguyễn Quang Vinh', '0908100060', 'quangvinhit2007@gmail.com', '27 Lê Thị Hồng', '3131465464564', 'Viet Nam', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:40.0) Gecko/20100101 Firefox/40.0', 'firefox', 'Mozilla Firefox', '40.0', 'windows', '2015-09-25 09:17:20', '2015-09-25 09:17:20', null, null);

-- ----------------------------
-- Table structure for `lc_building`
-- ----------------------------
DROP TABLE IF EXISTS `lc_building`;
CREATE TABLE `lc_building` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `building_name` varchar(60) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `hotline` varchar(20) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `isbooking` tinyint(4) DEFAULT NULL,
  `floor` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lc_building
-- ----------------------------
INSERT INTO `lc_building` VALUES ('2', 'Lancaster Legacy', '78 Tôn Thất Thuyết, P.16, Quận 4, Hồ Chí Minh', '+ 84 8 3 8246810', '+ 84 8 3 8298163', 'sales@trungthuygroup.vn', '0903 090 909', 'district 4', '2015-09-23 16:30:27', '2015-09-23 16:30:27', '1', '1', '1', '30');
INSERT INTO `lc_building` VALUES ('3', 'Lancaster Lê Thánh Tôn', '22 – 22 Bis Lê Thánh Tôn, P. Bến Nghé, Quận 1, Hồ Chí Minh', '+ 84 8 3 8246666', '+ 84 8 3 8299556', 'sales@trungthuygroup.vn', '0903 090 909', 'district 1', '2015-09-23 16:29:08', '2015-09-23 16:29:08', '1', '1', '1', '22');
INSERT INTO `lc_building` VALUES ('5', 'Lancaster Nguyễn Trãi', '230 Nguyễn Trãi, Quận 1, Hồ Chí Minh', '+ 84 8 3 8246810', '+ 84 8 3 8298163', 'sales@trungthuygroup.vn', '0903 090 909', 'district 1 Nguyen Trai', '2015-09-23 16:31:41', '2015-09-23 16:31:41', '1', '1', '1', '30');
INSERT INTO `lc_building` VALUES ('6', 'Lancaster Hà Nội', '20 Núi Trúc, Ba Đình, Hà Nội', '+ 84 4 3 726 3865', '+ 84 4 3 726 3864', 'sales@trungthuygroup.vn', '0903 090 909', 'Ha Noi', '2015-09-23 16:32:44', '2015-09-23 16:32:44', '1', '1', '1', '30');
INSERT INTO `lc_building` VALUES ('7', 'Trung Thuy Group JSC', '21 Nguyễn Trung Ngạn, Quận 1, Hồ Chí Minh', '+ 84 8 3 8246810', '+ 84 8 3 8298163', 'sales@trungthuygroup.vn', '0903 090 909', 'district 1', '2015-09-23 16:34:25', '2015-09-23 16:34:25', '1', '1', '0', '14');

-- ----------------------------
-- Table structure for `lc_contact`
-- ----------------------------
DROP TABLE IF EXISTS `lc_contact`;
CREATE TABLE `lc_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` text,
  `ip` varchar(40) DEFAULT NULL,
  `agent` varchar(255) DEFAULT NULL,
  `browser_type` varchar(45) DEFAULT NULL,
  `browser_name` varchar(60) DEFAULT NULL,
  `browser_version` varchar(10) DEFAULT NULL,
  `platform` varchar(60) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lc_contact
-- ----------------------------
INSERT INTO `lc_contact` VALUES ('1', 'Nhut', 'nhuttranm@gmail.com', 'Test title', 'This is message', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', null, '2015-09-23 14:10:21', null, null);
INSERT INTO `lc_contact` VALUES ('2', 'Thanh', 'thanh@yahoo.com', 'Thanh', 'Message', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', null, '2015-09-23 14:10:21', null, null);
INSERT INTO `lc_contact` VALUES ('3', 'Thanh', 'thanh@yahoo.com', 'Thanh', 'MESSAGE', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', null, '2015-09-23 14:10:21', null, null);
INSERT INTO `lc_contact` VALUES ('4', 'Thanh', 'thanh@yahoo.com', 'Thanh', 'M', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', null, '2015-09-23 14:10:21', null, null);
INSERT INTO `lc_contact` VALUES ('5', 'Thanh', 'thanh@yahoo.com', 'Thanh', 'MMM', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', null, '2015-09-23 14:10:21', null, null);
INSERT INTO `lc_contact` VALUES ('6', 'Thanh', 'thanh@yahoo.com', 'Thanh', 'mmmm', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', null, '2015-09-23 14:10:21', null, null);
INSERT INTO `lc_contact` VALUES ('7', 'Thanh', 'thanh@yahoo.com', 'Thanh', 'mmmm', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', null, '2015-09-23 14:10:21', null, null);
INSERT INTO `lc_contact` VALUES ('8', 'Thanh', 'thanh@yahoo.com', 'Thanh', 'OOOOOOOO', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', null, '2015-09-23 14:10:21', null, null);
INSERT INTO `lc_contact` VALUES ('9', 'Vinh', 'vinh_rau@gmail.com', 'Vinh Title', 'Vinh Message was updated', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-23 14:41:32', '2015-09-23 14:41:32', '1', '1');
INSERT INTO `lc_contact` VALUES ('10', 'Nhut Tran', 'nhuttranm@gmail.com', 'This is title', 'Message was updated', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-23 14:38:26', '2015-09-23 14:40:55', '1', '1');
INSERT INTO `lc_contact` VALUES ('11', 'Nhut Tran', 'nhut.tran@trungthuygroup.vn', 'Title', 'Message : ABC', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '0000-00-00 00:00:00', '2015-09-23 14:10:21', null, null);
INSERT INTO `lc_contact` VALUES ('12', 'Nhut Tran', 'nhuttranm@gmail.com', 'This is title', 'Mess', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-23 14:07:12', '2015-09-23 14:10:21', null, null);
INSERT INTO `lc_contact` VALUES ('13', 'Vinh', 'vinh_rau@abc.com', 'ddd', 'ddddddd', '', '', '', '', '', '', '2015-09-23 14:08:27', '2015-09-23 14:10:21', null, null);
INSERT INTO `lc_contact` VALUES ('14', 'Nhut', 'nhuttranm@gmail.com', 'Test title', 'Msg', '', '', '', '', '', '', '2015-09-23 14:16:20', '2015-09-23 14:16:20', '1', '1');
INSERT INTO `lc_contact` VALUES ('15', 'Nhut Tran', 'nhut.tran@trungthuygroup.vn', 'Alo 123', 'Msg...Msg', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-23 14:22:38', '2015-09-23 14:22:38', '1', '1');
INSERT INTO `lc_contact` VALUES ('16', 'Thanh Nguyen', 'thanhnguyen@gmail.com', 'Thanh', 'TN', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-23 14:43:43', '2015-09-23 14:43:43', '1', '1');
INSERT INTO `lc_contact` VALUES ('17', 'Nhut Tran', 'nhut.tran@trungthuygroup.vn', 'test title', 'kkkkkk', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.93 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-23 15:37:29', '2015-09-23 15:37:29', '1', '1');
INSERT INTO `lc_contact` VALUES ('18', 'Nhut Tran', 'thanh@yahoo.com', 'test title', 'info', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-24 16:01:23', '2015-09-24 16:01:23', null, null);
INSERT INTO `lc_contact` VALUES ('19', 'Vinh', 'vinh_ko_rau@gmail.com', 'Test title', 'IF', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-24 16:02:08', '2015-09-24 16:02:08', null, null);
INSERT INTO `lc_contact` VALUES ('20', 'Vinh', 'vinh_rau@gmail.com', 'test title', '999999', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-24 16:02:46', '2015-09-24 16:02:46', null, null);
INSERT INTO `lc_contact` VALUES ('21', 'Nhut Tran', 'nhuttranm@gmail.com', 'test title', 'tttt', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-24 16:03:15', '2015-09-24 16:03:15', null, null);
INSERT INTO `lc_contact` VALUES ('22', 'ai do', 'ai@gmail.com ', 'ai do', 'ai do', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/45.0.2454.99 Safari/537.36', 'chrome', 'Google Chrome', '45.0', 'windows', '2015-09-24 17:25:12', '2015-09-24 17:25:12', '4', '4');

-- ----------------------------
-- Table structure for `lc_home_gallery`
-- ----------------------------
DROP TABLE IF EXISTS `lc_home_gallery`;
CREATE TABLE `lc_home_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lc_home_gallery
-- ----------------------------
INSERT INTO `lc_home_gallery` VALUES ('1', '1', 'APARTMENTS', '1');
INSERT INTO `lc_home_gallery` VALUES ('2', '2', 'AMENITIES', '1');
INSERT INTO `lc_home_gallery` VALUES ('3', '3', 'VIEWS', '1');
INSERT INTO `lc_home_gallery` VALUES ('4', '4', 'NEIGHBORHOOD', '1');

-- ----------------------------
-- Table structure for `lc_pricing`
-- ----------------------------
DROP TABLE IF EXISTS `lc_pricing`;
CREATE TABLE `lc_pricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `apart_type_id` int(11) DEFAULT NULL,
  `area` decimal(10,2) DEFAULT NULL,
  `monthly_rates` decimal(12,2) DEFAULT NULL,
  `daily_rates` decimal(10,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_apartment_type_idx` (`apart_type_id`),
  CONSTRAINT `fk_apartment_type` FOREIGN KEY (`apart_type_id`) REFERENCES `lc_apartment_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lc_pricing
-- ----------------------------
INSERT INTO `lc_pricing` VALUES ('1', '1', '150.00', '80660000.00', '3270000.00', '', '2015-09-24 13:35:37', '2015-09-24 14:53:38', null, null);
INSERT INTO `lc_pricing` VALUES ('2', '2', '86.00', '61040000.00', '2616000.00', '', '2015-09-24 14:56:44', '2015-09-24 14:57:43', '1', '1');
INSERT INTO `lc_pricing` VALUES ('3', '3', '71.00', '54500000.00', '2398000.00', '', '2015-09-24 14:57:35', '2015-09-24 14:57:35', '1', '1');
INSERT INTO `lc_pricing` VALUES ('4', '4', '55.00', '50140000.00', '2140000.00', '', '2015-09-24 14:58:25', '2015-09-24 14:58:25', '1', '1');
INSERT INTO `lc_pricing` VALUES ('5', '5', '38.00', '43600000.00', '1600000.00', '', '2015-09-24 14:58:55', '2015-09-24 14:58:55', '1', '1');
INSERT INTO `lc_pricing` VALUES ('6', '5', '38.00', '40330000.00', '1330000.00', '', '2015-09-24 14:59:25', '2015-09-24 14:59:25', '1', '1');

-- ----------------------------
-- Table structure for `migration`
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1438101640');
INSERT INTO `migration` VALUES ('m130524_201442_init', '1438101785');
INSERT INTO `migration` VALUES ('m140209_132017_init', '1438102235');
INSERT INTO `migration` VALUES ('m140403_174025_create_account_table', '1438102237');
INSERT INTO `migration` VALUES ('m140504_113157_update_tables', '1438102243');
INSERT INTO `migration` VALUES ('m140504_130429_create_token_table', '1438102245');
INSERT INTO `migration` VALUES ('m140830_171933_fix_ip_field', '1438102246');
INSERT INTO `migration` VALUES ('m140830_172703_change_account_table_name', '1438102246');
INSERT INTO `migration` VALUES ('m141002_030233_translate_manager', '1438335293');
INSERT INTO `migration` VALUES ('m141208_201480_blog_init', '1438336167');
INSERT INTO `migration` VALUES ('m141208_201481_cms_init', '1438334883');
INSERT INTO `migration` VALUES ('m141208_201488_setting_init', '1438337955');
INSERT INTO `migration` VALUES ('m141222_110026_update_ip_field', '1438102247');
INSERT INTO `migration` VALUES ('m141222_135246_alter_username_length', '1438102248');
INSERT INTO `migration` VALUES ('m150614_103145_update_social_account_table', '1438102252');
INSERT INTO `migration` VALUES ('m150623_212711_fix_username_notnull', '1438102253');

-- ----------------------------
-- Table structure for `profile`
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `public_email` varchar(255) DEFAULT NULL,
  `gravatar_email` varchar(255) DEFAULT NULL,
  `gravatar_id` varchar(32) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `bio` text,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('1', null, null, null, null, null, null, null);
INSERT INTO `profile` VALUES ('2', 'Vinh', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '');
INSERT INTO `profile` VALUES ('3', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for `session`
-- ----------------------------
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` char(40) NOT NULL,
  `expire` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of session
-- ----------------------------
INSERT INTO `session` VALUES ('06ogufe7l2q7l5lmq9ko9uehc5', '1441039173', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('0qj92i1ditg6s3t9pjtkn0as52', '1439224576', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A32333A222F6261636B656E642F7765622F736974652F696E646578223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('15qov7ttrulis5lt8bhkhsg5c0', '1438673324', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('1cm4dmefpjvuavh1fqdrpkau43', '1442372590', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('1qso1lmog93fivhfg9lsqq5rj1', '1439784635', 0x5F5F666C6173687C613A303A7B7D5F5F69647C693A333B);
INSERT INTO `session` VALUES ('2gm2n1bin3r5m3dk3hg2968nv7', '1443158756', 0x5F5F666C6173687C613A313A7B733A353A2272654C6F67223B693A2D313B7D5F5F72657475726E55726C7C733A373A222F61646D696E2F223B5F5F69647C693A313B72654C6F677C733A33303A2250617373776F7264204368616E676564205375636365737366756C6C792E223B);
INSERT INTO `session` VALUES ('3fvmqf7c3ilhg6n0ereg50i490', '1439484748', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A31333A222F6261636B656E642F7765622F223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('3q46rbme7qll553l6s2bs1kfj0', '1440385070', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A31333A222F6261636B656E642F7765622F223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('404jue7uus39kgktidqqbpk7a7', '1442807341', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A32323A222F61646D696E2F636D732F636D732D636174616C6F67223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('6tuuknttht12uua38vd1fs6r42', '1443428640', 0x5F5F666C6173687C613A313A7B733A353A2272654C6F67223B693A2D313B7D72654C6F677C733A33303A2250617373776F7264204368616E676564205375636365737366756C6C792E223B);
INSERT INTO `session` VALUES ('7757873s1ujvfcijskn19ii237', '1439807501', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A31333A222F6261636B656E642F7765622F223B);
INSERT INTO `session` VALUES ('7f6jo35lm0k63hk1qhb75lrhq1', '1443614359', 0x5F5F666C6173687C613A313A7B733A353A2272654C6F67223B693A2D313B7D72654C6F677C733A33303A2250617373776F7264204368616E676564205375636365737366756C6C792E223B);
INSERT INTO `session` VALUES ('a894i4bcvi2vflia1rrgftfuk6', '1439784636', 0x5F5F666C6173687C613A303A7B7D5F5F69647C693A333B);
INSERT INTO `session` VALUES ('aegjt6bh28l4v2fqmmt8s58ao6', '1442998153', 0x5F5F666C6173687C613A313A7B733A353A2272654C6F67223B693A2D313B7D72654C6F677C733A33303A2250617373776F7264204368616E676564205375636365737366756C6C792E223B);
INSERT INTO `session` VALUES ('alv8gpjtmp1oopd50rmk3ah866', '1443587633', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A373A222F61646D696E2F223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('aoijhlup81o2260hlgqlqosck3', '1439291392', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A32333A222F6261636B656E642F7765622F736974652F696E646578223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('ben8htg51hccrbgkeufds5no50', '1441120310', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A32333A222F6261636B656E642F7765622F736974652F696E646578223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('c79prcdla2u24k6v73jco817n3', '1442807344', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A32323A222F61646D696E2F636D732F636D732D636174616C6F67223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('desprei782ql7jcer1dt644ao4', '1442807348', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A32323A222F61646D696E2F636D732F636D732D636174616C6F67223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('euhj99pnsdj9scd3pnvpf30oi4', '1439466685', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A31333A222F6261636B656E642F7765622F223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('f3emgcu9n9be9ulahpf0jp8il3', '1444195450', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A373A222F61646D696E2F223B5F5F69647C693A313B616374696F6E732D72656469726563747C733A31373A222F61646D696E2F757365722F61646D696E223B);
INSERT INTO `session` VALUES ('fdqsh9hs4rp1vlrdr3ctlpcnm3', '1443613256', 0x5F5F666C6173687C613A313A7B733A353A2272654C6F67223B693A2D313B7D72654C6F677C733A33303A2250617373776F7264204368616E676564205375636365737366756C6C792E223B);
INSERT INTO `session` VALUES ('g4qmt32j18ptjml0ssn11p4931', '1442893470', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A33313A222F61646D696E2F636D732F636D732D73686F772F7570646174653F69643D35223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('hfsrdasc0hbhc7q7jfj7m4e9j3', '1440091739', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A31333A222F6261636B656E642F7765622F223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('hmslfrj23uol8ju4l8m57edff2', '1439309676', 0x5F5F666C6173687C613A303A7B7D5F5F69647C693A313B616374696F6E732D72656469726563747C733A32333A222F6261636B656E642F7765622F757365722F61646D696E223B);
INSERT INTO `session` VALUES ('iljmg88s2o4dn4vnja7v39n896', '1443424844', 0x5F5F666C6173687C613A313A7B733A353A2272654C6F67223B693A2D313B7D72654C6F677C733A33303A2250617373776F7264204368616E676564205375636365737366756C6C792E223B);
INSERT INTO `session` VALUES ('jd9kivbslrr9r6cfqo6lb7u9h3', '1442975854', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A32353A222F61646D696E2F636D732F636D732D73686F772F696E646578223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('krgbme4snuo89oj382g2868m62', '1443083193', 0x5F5F666C6173687C613A313A7B733A353A2272654C6F67223B693A2D313B7D72654C6F677C733A33303A2250617373776F7264204368616E676564205375636365737366756C6C792E223B);
INSERT INTO `session` VALUES ('la0i81h0uprfpnmbtcmk6a1u51', '1442807335', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A32323A222F61646D696E2F636D732F636D732D636174616C6F67223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('ll71g5gimoedd3rqv7ge6di7s7', '1442998275', 0x5F5F666C6173687C613A313A7B733A353A2272654C6F67223B693A2D313B7D72654C6F677C733A33303A2250617373776F7264204368616E676564205375636365737366756C6C792E223B);
INSERT INTO `session` VALUES ('lukqjh1mctsnep2qj1unqs86v4', '1439308458', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('m00l46ccek59vjrgrv47kvpad4', '1439513266', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('m8tjgnvto332cf5uqkftmd8kf6', '1439362816', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('mnisrkoms7vlofbrmjep93fhv0', '1439528071', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('mqqp9gobks2235400lecbnnah0', '1442489865', 0x5F5F666C6173687C613A303A7B7D66726F6E74656E645472616E736C6174696F6E5F456E61626C655472616E736C6174657C623A313B5F5F72657475726E55726C7C733A32353A222F6261636B656E642F7765622F636D732F636D732D73686F77223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('ms6re6fd8hrfcsjrp12eqdd301', '1438673214', 0x5F5F666C6173687C613A303A7B7D5F5F636170746368612F736974652F636170746368617C733A373A226365786F756C78223B5F5F636170746368612F736974652F63617074636861636F756E747C693A313B);
INSERT INTO `session` VALUES ('mvvmn9oe3haat380g7v28ttpt2', '1439550011', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('nc2bl9su0hqkc8jm7hgm5ut0r4', '1439357438', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('nh3bsf1m0t28tv5rjj0f8bn914', '1442400322', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('qgfg60motjqkppifhj3tj8s480', '1439350217', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('r3e5vuc6g1asjnh3cpm1d5k0s5', '1439784638', 0x5F5F666C6173687C613A303A7B7D5F5F69647C693A333B);
INSERT INTO `session` VALUES ('r73s1llijpl4mh4h3c9bpmsm95', '1439784637', 0x5F5F666C6173687C613A303A7B7D5F5F69647C693A333B);
INSERT INTO `session` VALUES ('rl6v3288rgni69hpq83aj0h1d7', '1439784635', 0x5F5F666C6173687C613A303A7B7D5F5F69647C693A333B);
INSERT INTO `session` VALUES ('rsbks5d3a90g9risfdj0ka9og4', '1442807350', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A32323A222F61646D696E2F636D732F636D732D636174616C6F67223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('tik03jqdgv7u9shka5b4kr5k63', '1442576647', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A33303A222F6261636B656E642F7765622F6769692F64656661756C742F696E646578223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('tqt8ogfc3p3l8vl527qosm5h44', '1439485669', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('ts6oscumvsoqfddpretc2bu3t7', '1442807337', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A32323A222F61646D696E2F636D732F636D732D636174616C6F67223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('u75umtnachfp2ciiasrjifbaj5', '1439350217', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A31333A222F6261636B656E642F7765622F223B);
INSERT INTO `session` VALUES ('ujlnc0d8i8pls0q0c6sk3laro2', '1439784635', 0x5F5F666C6173687C613A303A7B7D5F5F69647C693A333B);
INSERT INTO `session` VALUES ('va8f19co3a6fbabk7m09lc2o42', '1439207242', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('vmo3tqljev1lt7dvli4gesmqk4', '1439784636', 0x5F5F666C6173687C613A303A7B7D5F5F69647C693A333B);
INSERT INTO `session` VALUES ('vtfqk2bfotui11me3ri4s9g9n2', '1439485668', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A31333A222F6261636B656E642F7765622F223B);

-- ----------------------------
-- Table structure for `setting`
-- ----------------------------
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `type` varchar(32) NOT NULL,
  `store_range` varchar(255) DEFAULT NULL,
  `store_dir` varchar(255) DEFAULT NULL,
  `value` text,
  `sort_order` int(11) NOT NULL DEFAULT '50',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `code` (`code`),
  KEY `sort_order` (`sort_order`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setting
-- ----------------------------
INSERT INTO `setting` VALUES ('1', '0', 'info', 'group', '', '', '', '1');
INSERT INTO `setting` VALUES ('2', '0', 'basic', 'group', '', '', '', '2');
INSERT INTO `setting` VALUES ('3', '0', 'smtp', 'group', '', '', '', '3');
INSERT INTO `setting` VALUES ('4', '1', 'siteName', 'text', '', '', 'Your Site', '1');
INSERT INTO `setting` VALUES ('5', '1', 'siteTitle', 'text', '', '', 'Your Site Title', '2');
INSERT INTO `setting` VALUES ('6', '1', 'siteKeyword', 'text', '', '', 'Your Site Keyword', '3');
INSERT INTO `setting` VALUES ('7', '2', 'timezone', 'select', '-12,-11,-10,-9,-8,-7,-6,-5,-4,-3.5,-3,-2,-1,0,1,2,3,3.5,4,4.5,5,5.5,5.75,6,6.5,7,8,9,9.5,10,11,12', '', '8', '1');
INSERT INTO `setting` VALUES ('8', '2', 'commentCheck', 'select', '0,1', '', '1', '2');
INSERT INTO `setting` VALUES ('9', '3', 'smtpHost', 'text', '', '', 'localhost', '1');
INSERT INTO `setting` VALUES ('10', '3', 'smtpPort', 'text', '', '', '', '2');
INSERT INTO `setting` VALUES ('11', '3', 'smtpUser', 'text', '', '', '', '3');
INSERT INTO `setting` VALUES ('12', '3', 'smtpPassword', 'password', '', '', '', '4');
INSERT INTO `setting` VALUES ('13', '3', 'smtpMail', 'text', '', '', '', '5');

-- ----------------------------
-- Table structure for `token`
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL,
  UNIQUE KEY `token_unique` (`user_id`,`code`,`type`),
  CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES ('1', 'U9V3YHPopgiEfyvvl4ovCrOscZaoOwVv', '1438102356', '0');
INSERT INTO `token` VALUES ('2', 'Zra290fQEAxIlkB-tPXxYUCiL4lPMqKy', '1438104800', '0');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_unique_email` (`email`),
  UNIQUE KEY `user_unique_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'superadmin', 'quangvinhit2007@gmail.com', '$2y$12$dM/nHKQdlSl8Af8BbdHN1e6glbi1raY7Torsrthmd84dVQcjWzXSO', 'fgFGWWvuymLapEpJTrr0wG6UZGD79Bsc', '1438102356', null, null, '127.0.0.1', '1438102356', '1438102356', '0');
INSERT INTO `user` VALUES ('2', 'vinhnguyen', 'quangvinhit@gmail.com', '$2y$12$ScqjOXSqp0gKZmWAEvppYebj88PMCaZ1hPp4PqYm2YILziYb7sCdS', 'fgFGWWvuymLapEpJTrr0wG6UZGD79Bsc', '1438104800', null, null, '127.0.0.1', '1438104800', '1438106599', '0');
INSERT INTO `user` VALUES ('3', 'vinhnguyen2', 'quangvinhit2010@gmail.com', '$2y$12$7BoGTWhMTHLrT1CDvjUAy.mxhPNFBGdC14n443hP0QBQCsT4nnpEW', 'okVO0y3EuzF9A-TXVqjqd0UZZaWzAbDl', '1438668322', null, null, '127.0.0.1', '1438668323', '1438668323', '0');
