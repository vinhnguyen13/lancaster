/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50626
Source Host           : localhost:3306
Source Database       : metvuong

Target Server Type    : MYSQL
Target Server Version : 50626
File Encoding         : 65001

Date: 2015-09-16 09:40:03
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
INSERT INTO `session` VALUES ('3fvmqf7c3ilhg6n0ereg50i490', '1439484748', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A31333A222F6261636B656E642F7765622F223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('3q46rbme7qll553l6s2bs1kfj0', '1440385070', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A31333A222F6261636B656E642F7765622F223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('7757873s1ujvfcijskn19ii237', '1439807501', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A31333A222F6261636B656E642F7765622F223B);
INSERT INTO `session` VALUES ('a894i4bcvi2vflia1rrgftfuk6', '1439784636', 0x5F5F666C6173687C613A303A7B7D5F5F69647C693A333B);
INSERT INTO `session` VALUES ('aoijhlup81o2260hlgqlqosck3', '1439291392', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A32333A222F6261636B656E642F7765622F736974652F696E646578223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('ben8htg51hccrbgkeufds5no50', '1441120310', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A32333A222F6261636B656E642F7765622F736974652F696E646578223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('euhj99pnsdj9scd3pnvpf30oi4', '1439466685', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A31333A222F6261636B656E642F7765622F223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('hfsrdasc0hbhc7q7jfj7m4e9j3', '1440091739', 0x5F5F666C6173687C613A303A7B7D5F5F72657475726E55726C7C733A31333A222F6261636B656E642F7765622F223B5F5F69647C693A313B);
INSERT INTO `session` VALUES ('hmslfrj23uol8ju4l8m57edff2', '1439309676', 0x5F5F666C6173687C613A303A7B7D5F5F69647C693A313B616374696F6E732D72656469726563747C733A32333A222F6261636B656E642F7765622F757365722F61646D696E223B);
INSERT INTO `session` VALUES ('lukqjh1mctsnep2qj1unqs86v4', '1439308458', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('m00l46ccek59vjrgrv47kvpad4', '1439513266', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('m8tjgnvto332cf5uqkftmd8kf6', '1439362816', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('mnisrkoms7vlofbrmjep93fhv0', '1439528071', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('ms6re6fd8hrfcsjrp12eqdd301', '1438673214', 0x5F5F666C6173687C613A303A7B7D5F5F636170746368612F736974652F636170746368617C733A373A226365786F756C78223B5F5F636170746368612F736974652F63617074636861636F756E747C693A313B);
INSERT INTO `session` VALUES ('mvvmn9oe3haat380g7v28ttpt2', '1439550011', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('nc2bl9su0hqkc8jm7hgm5ut0r4', '1439357438', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('qgfg60motjqkppifhj3tj8s480', '1439350217', 0x5F5F666C6173687C613A303A7B7D);
INSERT INTO `session` VALUES ('r3e5vuc6g1asjnh3cpm1d5k0s5', '1439784638', 0x5F5F666C6173687C613A303A7B7D5F5F69647C693A333B);
INSERT INTO `session` VALUES ('r73s1llijpl4mh4h3c9bpmsm95', '1439784637', 0x5F5F666C6173687C613A303A7B7D5F5F69647C693A333B);
INSERT INTO `session` VALUES ('rl6v3288rgni69hpq83aj0h1d7', '1439784635', 0x5F5F666C6173687C613A303A7B7D5F5F69647C693A333B);
INSERT INTO `session` VALUES ('tqt8ogfc3p3l8vl527qosm5h44', '1439485669', 0x5F5F666C6173687C613A303A7B7D);
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
