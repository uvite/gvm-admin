/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 101102 (10.11.2-MariaDB)
 Source Host           : 127.0.0.1:3306
 Source Schema         : adp

 Target Server Type    : MySQL
 Target Server Version : 101102 (10.11.2-MariaDB)
 File Encoding         : 65001

 Date: 19/03/2023 04:03:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for casbin_rule
-- ----------------------------
DROP TABLE IF EXISTS `casbin_rule`;
CREATE TABLE `casbin_rule` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ptype` varchar(100) DEFAULT NULL,
  `v0` varchar(100) DEFAULT NULL,
  `v1` varchar(100) DEFAULT NULL,
  `v2` varchar(100) DEFAULT NULL,
  `v3` varchar(100) DEFAULT NULL,
  `v4` varchar(100) DEFAULT NULL,
  `v5` varchar(100) DEFAULT NULL,
  `v6` varchar(25) DEFAULT NULL,
  `v7` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_casbin_rule` (`ptype`,`v0`,`v1`,`v2`,`v3`,`v4`,`v5`,`v6`,`v7`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of casbin_rule
-- ----------------------------
BEGIN;
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (179, 'p', '12', '/base/login', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (178, 'p', '12', '/jwt/jsonInBlacklist', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (177, 'p', '12', '/menu/getMenu', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (180, 'p', '12', '/user/admin_register', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (181, 'p', '12', '/user/changePassword', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (184, 'p', '12', '/user/getUserInfo', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (182, 'p', '12', '/user/setUserAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (183, 'p', '12', '/user/setUserInfo', 'PUT', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (203, 'p', '123', '/base/login', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (202, 'p', '123', '/jwt/jsonInBlacklist', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (201, 'p', '123', '/menu/getMenu', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (204, 'p', '123', '/user/admin_register', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (205, 'p', '123', '/user/changePassword', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (208, 'p', '123', '/user/getUserInfo', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (206, 'p', '123', '/user/setUserAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (207, 'p', '123', '/user/setUserInfo', 'PUT', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (187, 'p', '234234', '/base/login', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (186, 'p', '234234', '/jwt/jsonInBlacklist', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (185, 'p', '234234', '/menu/getMenu', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (188, 'p', '234234', '/user/admin_register', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (189, 'p', '234234', '/user/changePassword', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (192, 'p', '234234', '/user/getUserInfo', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (190, 'p', '234234', '/user/setUserAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (191, 'p', '234234', '/user/setUserInfo', 'PUT', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (3, 'p', '888', '/api/createApi', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (6, 'p', '888', '/api/deleteApi', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (9, 'p', '888', '/api/deleteApisByIds', 'DELETE', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (8, 'p', '888', '/api/getAllApis', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (5, 'p', '888', '/api/getApiById', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (4, 'p', '888', '/api/getApiList', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (7, 'p', '888', '/api/updateApi', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (10, 'p', '888', '/authority/copyAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (12, 'p', '888', '/authority/createAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (13, 'p', '888', '/authority/deleteAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (14, 'p', '888', '/authority/getAuthorityList', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (15, 'p', '888', '/authority/setDataAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (11, 'p', '888', '/authority/updateAuthority', 'PUT', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (89, 'p', '888', '/authorityBtn/canRemoveAuthorityBtn', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (88, 'p', '888', '/authorityBtn/getAuthorityBtn', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (87, 'p', '888', '/authorityBtn/setAuthorityBtn', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (62, 'p', '888', '/autoCode/createPackage', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (65, 'p', '888', '/autoCode/createPlug', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (59, 'p', '888', '/autoCode/createTemp', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (64, 'p', '888', '/autoCode/delPackage', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (60, 'p', '888', '/autoCode/delSysHistory', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (57, 'p', '888', '/autoCode/getColumn', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (53, 'p', '888', '/autoCode/getDB', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (54, 'p', '888', '/autoCode/getMeta', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (63, 'p', '888', '/autoCode/getPackage', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (61, 'p', '888', '/autoCode/getSysHistory', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (56, 'p', '888', '/autoCode/getTables', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (66, 'p', '888', '/autoCode/installPlugin', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (55, 'p', '888', '/autoCode/preview', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (58, 'p', '888', '/autoCode/rollback', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (1, 'p', '888', '/base/login', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (43, 'p', '888', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (42, 'p', '888', '/casbin/updateCasbin', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (51, 'p', '888', '/customer/customer', 'DELETE', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (48, 'p', '888', '/customer/customer', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (50, 'p', '888', '/customer/customer', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (49, 'p', '888', '/customer/customer', 'PUT', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (52, 'p', '888', '/customer/customerList', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (83, 'p', '888', '/email/emailTest', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (36, 'p', '888', '/fileUploadAndDownload/breakpointContinue', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (35, 'p', '888', '/fileUploadAndDownload/breakpointContinueFinish', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (39, 'p', '888', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (40, 'p', '888', '/fileUploadAndDownload/editFileName', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (34, 'p', '888', '/fileUploadAndDownload/findFile', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (41, 'p', '888', '/fileUploadAndDownload/getFileList', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (37, 'p', '888', '/fileUploadAndDownload/removeChunk', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (38, 'p', '888', '/fileUploadAndDownload/upload', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (44, 'p', '888', '/jwt/jsonInBlacklist', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (18, 'p', '888', '/menu/addBaseMenu', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (20, 'p', '888', '/menu/addMenuAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (22, 'p', '888', '/menu/deleteBaseMenu', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (24, 'p', '888', '/menu/getBaseMenuById', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (19, 'p', '888', '/menu/getBaseMenuTree', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (16, 'p', '888', '/menu/getMenu', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (21, 'p', '888', '/menu/getMenuAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (17, 'p', '888', '/menu/getMenuList', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (23, 'p', '888', '/menu/updateBaseMenu', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (85, 'p', '888', '/simpleUploader/checkFileMd5', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (86, 'p', '888', '/simpleUploader/mergeFileMd5', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (84, 'p', '888', '/simpleUploader/upload', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (75, 'p', '888', '/sysDictionary/createSysDictionary', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (76, 'p', '888', '/sysDictionary/deleteSysDictionary', 'DELETE', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (72, 'p', '888', '/sysDictionary/findSysDictionary', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (74, 'p', '888', '/sysDictionary/getSysDictionaryList', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (73, 'p', '888', '/sysDictionary/updateSysDictionary', 'PUT', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (69, 'p', '888', '/sysDictionaryDetail/createSysDictionaryDetail', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (71, 'p', '888', '/sysDictionaryDetail/deleteSysDictionaryDetail', 'DELETE', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (67, 'p', '888', '/sysDictionaryDetail/findSysDictionaryDetail', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (70, 'p', '888', '/sysDictionaryDetail/getSysDictionaryDetailList', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (68, 'p', '888', '/sysDictionaryDetail/updateSysDictionaryDetail', 'PUT', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (79, 'p', '888', '/sysOperationRecord/createSysOperationRecord', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (81, 'p', '888', '/sysOperationRecord/deleteSysOperationRecord', 'DELETE', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (82, 'p', '888', '/sysOperationRecord/deleteSysOperationRecordByIds', 'DELETE', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (77, 'p', '888', '/sysOperationRecord/findSysOperationRecord', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (80, 'p', '888', '/sysOperationRecord/getSysOperationRecordList', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (78, 'p', '888', '/sysOperationRecord/updateSysOperationRecord', 'PUT', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (47, 'p', '888', '/system/getServerInfo', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (45, 'p', '888', '/system/getSystemConfig', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (46, 'p', '888', '/system/setSystemConfig', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (2, 'p', '888', '/user/admin_register', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (30, 'p', '888', '/user/changePassword', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (29, 'p', '888', '/user/deleteUser', 'DELETE', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (25, 'p', '888', '/user/getUserInfo', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (28, 'p', '888', '/user/getUserList', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (33, 'p', '888', '/user/resetPassword', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (27, 'p', '888', '/user/setSelfInfo', 'PUT', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (32, 'p', '888', '/user/setUserAuthorities', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (31, 'p', '888', '/user/setUserAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (26, 'p', '888', '/user/setUserInfo', 'PUT', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (92, 'p', '8881', '/api/createApi', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (95, 'p', '8881', '/api/deleteApi', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (97, 'p', '8881', '/api/getAllApis', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (94, 'p', '8881', '/api/getApiById', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (93, 'p', '8881', '/api/getApiList', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (96, 'p', '8881', '/api/updateApi', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (98, 'p', '8881', '/authority/createAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (99, 'p', '8881', '/authority/deleteAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (100, 'p', '8881', '/authority/getAuthorityList', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (101, 'p', '8881', '/authority/setDataAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (90, 'p', '8881', '/base/login', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (119, 'p', '8881', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (118, 'p', '8881', '/casbin/updateCasbin', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (125, 'p', '8881', '/customer/customer', 'DELETE', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (126, 'p', '8881', '/customer/customer', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (123, 'p', '8881', '/customer/customer', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (124, 'p', '8881', '/customer/customer', 'PUT', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (127, 'p', '8881', '/customer/customerList', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (116, 'p', '8881', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (117, 'p', '8881', '/fileUploadAndDownload/editFileName', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (115, 'p', '8881', '/fileUploadAndDownload/getFileList', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (114, 'p', '8881', '/fileUploadAndDownload/upload', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (120, 'p', '8881', '/jwt/jsonInBlacklist', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (104, 'p', '8881', '/menu/addBaseMenu', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (106, 'p', '8881', '/menu/addMenuAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (108, 'p', '8881', '/menu/deleteBaseMenu', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (110, 'p', '8881', '/menu/getBaseMenuById', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (105, 'p', '8881', '/menu/getBaseMenuTree', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (102, 'p', '8881', '/menu/getMenu', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (107, 'p', '8881', '/menu/getMenuAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (103, 'p', '8881', '/menu/getMenuList', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (109, 'p', '8881', '/menu/updateBaseMenu', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (121, 'p', '8881', '/system/getSystemConfig', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (122, 'p', '8881', '/system/setSystemConfig', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (91, 'p', '8881', '/user/admin_register', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (111, 'p', '8881', '/user/changePassword', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (128, 'p', '8881', '/user/getUserInfo', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (112, 'p', '8881', '/user/getUserList', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (113, 'p', '8881', '/user/setUserAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (131, 'p', '9528', '/api/createApi', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (134, 'p', '9528', '/api/deleteApi', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (136, 'p', '9528', '/api/getAllApis', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (133, 'p', '9528', '/api/getApiById', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (132, 'p', '9528', '/api/getApiList', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (135, 'p', '9528', '/api/updateApi', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (137, 'p', '9528', '/authority/createAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (138, 'p', '9528', '/authority/deleteAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (139, 'p', '9528', '/authority/getAuthorityList', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (140, 'p', '9528', '/authority/setDataAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (167, 'p', '9528', '/autoCode/createTemp', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (129, 'p', '9528', '/base/login', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (158, 'p', '9528', '/casbin/getPolicyPathByAuthorityId', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (157, 'p', '9528', '/casbin/updateCasbin', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (165, 'p', '9528', '/customer/customer', 'DELETE', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (163, 'p', '9528', '/customer/customer', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (164, 'p', '9528', '/customer/customer', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (162, 'p', '9528', '/customer/customer', 'PUT', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (166, 'p', '9528', '/customer/customerList', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (155, 'p', '9528', '/fileUploadAndDownload/deleteFile', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (156, 'p', '9528', '/fileUploadAndDownload/editFileName', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (154, 'p', '9528', '/fileUploadAndDownload/getFileList', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (153, 'p', '9528', '/fileUploadAndDownload/upload', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (159, 'p', '9528', '/jwt/jsonInBlacklist', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (143, 'p', '9528', '/menu/addBaseMenu', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (145, 'p', '9528', '/menu/addMenuAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (147, 'p', '9528', '/menu/deleteBaseMenu', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (149, 'p', '9528', '/menu/getBaseMenuById', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (144, 'p', '9528', '/menu/getBaseMenuTree', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (141, 'p', '9528', '/menu/getMenu', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (146, 'p', '9528', '/menu/getMenuAuthority', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (142, 'p', '9528', '/menu/getMenuList', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (148, 'p', '9528', '/menu/updateBaseMenu', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (160, 'p', '9528', '/system/getSystemConfig', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (161, 'p', '9528', '/system/setSystemConfig', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (130, 'p', '9528', '/user/admin_register', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (150, 'p', '9528', '/user/changePassword', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (168, 'p', '9528', '/user/getUserInfo', 'GET', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (151, 'p', '9528', '/user/getUserList', 'POST', '', '', '', '', '');
INSERT INTO `casbin_rule` (`id`, `ptype`, `v0`, `v1`, `v2`, `v3`, `v4`, `v5`, `v6`, `v7`) VALUES (152, 'p', '9528', '/user/setUserAuthority', 'POST', '', '', '', '', '');
COMMIT;

-- ----------------------------
-- Table structure for exa_customers
-- ----------------------------
DROP TABLE IF EXISTS `exa_customers`;
CREATE TABLE `exa_customers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `customer_name` varchar(191) DEFAULT NULL COMMENT '客户名',
  `customer_phone_data` varchar(191) DEFAULT NULL COMMENT '客户手机号',
  `sys_user_id` bigint(20) unsigned DEFAULT NULL COMMENT '管理ID',
  `sys_user_authority_id` bigint(20) unsigned DEFAULT NULL COMMENT '管理角色ID',
  PRIMARY KEY (`id`),
  KEY `idx_exa_customers_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of exa_customers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for exa_file_chunks
-- ----------------------------
DROP TABLE IF EXISTS `exa_file_chunks`;
CREATE TABLE `exa_file_chunks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `exa_file_id` bigint(20) unsigned DEFAULT NULL,
  `file_chunk_number` bigint(20) DEFAULT NULL,
  `file_chunk_path` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_chunks_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of exa_file_chunks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for exa_file_upload_and_downloads
-- ----------------------------
DROP TABLE IF EXISTS `exa_file_upload_and_downloads`;
CREATE TABLE `exa_file_upload_and_downloads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL COMMENT '文件名',
  `url` varchar(191) DEFAULT NULL COMMENT '文件地址',
  `tag` varchar(191) DEFAULT NULL COMMENT '文件标签',
  `key` varchar(191) DEFAULT NULL COMMENT '编号',
  PRIMARY KEY (`id`),
  KEY `idx_exa_file_upload_and_downloads_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of exa_file_upload_and_downloads
-- ----------------------------
BEGIN;
INSERT INTO `exa_file_upload_and_downloads` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `url`, `tag`, `key`) VALUES (1, '2023-03-18 18:09:41.127', '2023-03-18 18:09:41.127', NULL, '10.png', 'https://qmplusimg.henrongyi.top/gvalogo.png', 'png', '158787308910.png');
INSERT INTO `exa_file_upload_and_downloads` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `url`, `tag`, `key`) VALUES (2, '2023-03-18 18:09:41.127', '2023-03-18 18:09:41.127', NULL, 'logo.png', 'https://qmplusimg.henrongyi.top/1576554439myAvatar.png', 'png', '1587973709logo.png');
COMMIT;

-- ----------------------------
-- Table structure for exa_files
-- ----------------------------
DROP TABLE IF EXISTS `exa_files`;
CREATE TABLE `exa_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `file_name` varchar(191) DEFAULT NULL,
  `file_md5` varchar(191) DEFAULT NULL,
  `file_path` varchar(191) DEFAULT NULL,
  `chunk_total` bigint(20) DEFAULT NULL,
  `is_finish` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exa_files_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of exa_files
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for jwt_blacklists
-- ----------------------------
DROP TABLE IF EXISTS `jwt_blacklists`;
CREATE TABLE `jwt_blacklists` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `jwt` text DEFAULT NULL COMMENT 'jwt',
  PRIMARY KEY (`id`),
  KEY `idx_jwt_blacklists_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of jwt_blacklists
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_apis
-- ----------------------------
DROP TABLE IF EXISTS `sys_apis`;
CREATE TABLE `sys_apis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `path` varchar(191) DEFAULT NULL COMMENT 'api路径',
  `description` varchar(191) DEFAULT NULL COMMENT 'api中文描述',
  `api_group` varchar(191) DEFAULT NULL COMMENT 'api组',
  `method` varchar(191) DEFAULT 'POST' COMMENT '方法',
  PRIMARY KEY (`id`),
  KEY `idx_sys_apis_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_apis
-- ----------------------------
BEGIN;
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (1, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/base/login', '用户登录(必选)', 'base', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (2, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/jwt/jsonInBlacklist', 'jwt加入黑名单(退出，必选)', 'jwt', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (3, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/user/deleteUser', '删除用户', '系统用户', 'DELETE');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (4, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/user/admin_register', '用户注册', '系统用户', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (5, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/user/getUserList', '获取用户列表', '系统用户', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (6, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/user/setUserInfo', '设置用户信息', '系统用户', 'PUT');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (7, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/user/setSelfInfo', '设置自身信息(必选)', '系统用户', 'PUT');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (8, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/user/getUserInfo', '获取自身信息(必选)', '系统用户', 'GET');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (9, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/user/setUserAuthorities', '设置权限组', '系统用户', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (10, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/user/changePassword', '修改密码（建议选择)', '系统用户', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (11, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/user/setUserAuthority', '修改用户角色(必选)', '系统用户', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (12, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/user/resetPassword', '重置用户密码', '系统用户', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (13, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/api/createApi', '创建api', 'api', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (14, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/api/deleteApi', '删除Api', 'api', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (15, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/api/updateApi', '更新Api', 'api', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (16, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/api/getApiList', '获取api列表', 'api', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (17, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/api/getAllApis', '获取所有api', 'api', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (18, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/api/getApiById', '获取api详细信息', 'api', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (19, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/api/deleteApisByIds', '批量删除api', 'api', 'DELETE');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (20, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/authority/copyAuthority', '拷贝角色', '角色', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (21, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/authority/createAuthority', '创建角色', '角色', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (22, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/authority/deleteAuthority', '删除角色', '角色', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (23, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/authority/updateAuthority', '更新角色信息', '角色', 'PUT');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (24, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/authority/getAuthorityList', '获取角色列表', '角色', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (25, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/authority/setDataAuthority', '设置角色资源权限', '角色', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (26, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/casbin/updateCasbin', '更改角色api权限', 'casbin', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (27, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/casbin/getPolicyPathByAuthorityId', '获取权限列表', 'casbin', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (28, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/menu/addBaseMenu', '新增菜单', '菜单', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (29, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/menu/getMenu', '获取菜单树(必选)', '菜单', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (30, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/menu/deleteBaseMenu', '删除菜单', '菜单', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (31, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/menu/updateBaseMenu', '更新菜单', '菜单', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (32, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/menu/getBaseMenuById', '根据id获取菜单', '菜单', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (33, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/menu/getMenuList', '分页获取基础menu列表', '菜单', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (34, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/menu/getBaseMenuTree', '获取用户动态路由', '菜单', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (35, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/menu/getMenuAuthority', '获取指定角色menu', '菜单', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (36, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/menu/addMenuAuthority', '增加menu和角色关联关系', '菜单', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (37, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/fileUploadAndDownload/findFile', '寻找目标文件（秒传）', '分片上传', 'GET');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (38, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/fileUploadAndDownload/breakpointContinue', '断点续传', '分片上传', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (39, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/fileUploadAndDownload/breakpointContinueFinish', '断点续传完成', '分片上传', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (40, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/fileUploadAndDownload/removeChunk', '上传完成移除文件', '分片上传', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (41, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/fileUploadAndDownload/upload', '文件上传示例', '文件上传与下载', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (42, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/fileUploadAndDownload/deleteFile', '删除文件', '文件上传与下载', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (43, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/fileUploadAndDownload/editFileName', '文件名或者备注编辑', '文件上传与下载', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (44, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/fileUploadAndDownload/getFileList', '获取上传文件列表', '文件上传与下载', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (45, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/system/getServerInfo', '获取服务器信息', '系统服务', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (46, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/system/getSystemConfig', '获取配置文件内容', '系统服务', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (47, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/system/setSystemConfig', '设置配置文件内容', '系统服务', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (48, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/customer/customer', '更新客户', '客户', 'PUT');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (49, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/customer/customer', '创建客户', '客户', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (50, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/customer/customer', '删除客户', '客户', 'DELETE');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (51, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/customer/customer', '获取单一客户', '客户', 'GET');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (52, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/customer/customerList', '获取客户列表', '客户', 'GET');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (53, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/autoCode/getDB', '获取所有数据库', '代码生成器', 'GET');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (54, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/autoCode/getTables', '获取数据库表', '代码生成器', 'GET');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (55, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/autoCode/createTemp', '自动化代码', '代码生成器', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (56, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/autoCode/preview', '预览自动化代码', '代码生成器', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (57, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/autoCode/getColumn', '获取所选table的所有字段', '代码生成器', 'GET');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (58, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/autoCode/createPlug', '自动创建插件包', '代码生成器', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (59, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/autoCode/installPlugin', '安装插件', '代码生成器', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (60, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/autoCode/createPackage', '生成包(package)', '包（pkg）生成器', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (61, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/autoCode/getPackage', '获取所有包(package)', '包（pkg）生成器', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (62, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/autoCode/delPackage', '删除包(package)', '包（pkg）生成器', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (63, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/autoCode/getMeta', '获取meta信息', '代码生成器历史', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (64, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/autoCode/rollback', '回滚自动生成代码', '代码生成器历史', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (65, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/autoCode/getSysHistory', '查询回滚记录', '代码生成器历史', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (66, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/autoCode/delSysHistory', '删除回滚记录', '代码生成器历史', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (67, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/sysDictionaryDetail/updateSysDictionaryDetail', '更新字典内容', '系统字典详情', 'PUT');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (68, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/sysDictionaryDetail/createSysDictionaryDetail', '新增字典内容', '系统字典详情', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (69, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/sysDictionaryDetail/deleteSysDictionaryDetail', '删除字典内容', '系统字典详情', 'DELETE');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (70, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/sysDictionaryDetail/findSysDictionaryDetail', '根据ID获取字典内容', '系统字典详情', 'GET');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (71, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/sysDictionaryDetail/getSysDictionaryDetailList', '获取字典内容列表', '系统字典详情', 'GET');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (72, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/sysDictionary/createSysDictionary', '新增字典', '系统字典', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (73, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/sysDictionary/deleteSysDictionary', '删除字典', '系统字典', 'DELETE');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (74, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/sysDictionary/updateSysDictionary', '更新字典', '系统字典', 'PUT');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (75, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/sysDictionary/findSysDictionary', '根据ID获取字典', '系统字典', 'GET');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (76, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/sysDictionary/getSysDictionaryList', '获取字典列表', '系统字典', 'GET');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (77, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/sysOperationRecord/createSysOperationRecord', '新增操作记录', '操作记录', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (78, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/sysOperationRecord/findSysOperationRecord', '根据ID获取操作记录', '操作记录', 'GET');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (79, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/sysOperationRecord/getSysOperationRecordList', '获取操作记录列表', '操作记录', 'GET');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (80, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/sysOperationRecord/deleteSysOperationRecord', '删除操作记录', '操作记录', 'DELETE');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (81, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/sysOperationRecord/deleteSysOperationRecordByIds', '批量删除操作历史', '操作记录', 'DELETE');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (82, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/simpleUploader/upload', '插件版分片上传', '断点续传(插件版)', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (83, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/simpleUploader/checkFileMd5', '文件完整度验证', '断点续传(插件版)', 'GET');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (84, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/simpleUploader/mergeFileMd5', '上传完成合并文件', '断点续传(插件版)', 'GET');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (85, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/email/emailTest', '发送测试邮件', 'email', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (86, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/email/emailSend', '发送邮件示例', 'email', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (87, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/authorityBtn/setAuthorityBtn', '设置按钮权限', '按钮权限', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (88, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/authorityBtn/getAuthorityBtn', '获取已有按钮权限', '按钮权限', 'POST');
INSERT INTO `sys_apis` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`, `description`, `api_group`, `method`) VALUES (89, '2023-03-18 18:09:40.897', '2023-03-18 18:09:40.897', NULL, '/authorityBtn/canRemoveAuthorityBtn', '删除按钮', '按钮权限', 'POST');
COMMIT;

-- ----------------------------
-- Table structure for sys_authorities
-- ----------------------------
DROP TABLE IF EXISTS `sys_authorities`;
CREATE TABLE `sys_authorities` (
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `authority_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `authority_name` varchar(191) DEFAULT NULL COMMENT '角色名',
  `parent_id` bigint(20) unsigned DEFAULT NULL COMMENT '父角色ID',
  `default_router` varchar(191) DEFAULT 'dashboard' COMMENT '默认菜单',
  `code` varchar(100) DEFAULT NULL COMMENT '岗位代码',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序',
  `status` bigint(20) DEFAULT NULL COMMENT '状态 (1正常 2停用)',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`authority_id`),
  UNIQUE KEY `authority_id` (`authority_id`)
) ENGINE=InnoDB AUTO_INCREMENT=234235 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_authorities
-- ----------------------------
BEGIN;
INSERT INTO `sys_authorities` (`created_at`, `updated_at`, `deleted_at`, `authority_id`, `authority_name`, `parent_id`, `default_router`, `code`, `sort`, `status`, `remark`) VALUES ('2023-03-19 02:52:32.487', '2023-03-19 02:52:32.492', NULL, 12, '12', NULL, 'dashboard', '12', 1, 1, '');
INSERT INTO `sys_authorities` (`created_at`, `updated_at`, `deleted_at`, `authority_id`, `authority_name`, `parent_id`, `default_router`, `code`, `sort`, `status`, `remark`) VALUES ('2023-03-19 03:19:10.706', '2023-03-19 03:54:17.335', NULL, 123, '123', 0, 'dashboard', '123', 1, 1, '');
INSERT INTO `sys_authorities` (`created_at`, `updated_at`, `deleted_at`, `authority_id`, `authority_name`, `parent_id`, `default_router`, `code`, `sort`, `status`, `remark`) VALUES ('2023-03-18 18:09:40.911', '2023-03-18 18:09:41.117', NULL, 888, '普通用户', 0, 'dashboard', 'a', NULL, NULL, NULL);
INSERT INTO `sys_authorities` (`created_at`, `updated_at`, `deleted_at`, `authority_id`, `authority_name`, `parent_id`, `default_router`, `code`, `sort`, `status`, `remark`) VALUES ('2023-03-18 18:09:40.911', '2023-03-18 18:09:41.125', NULL, 8881, '普通用户子角色', 888, 'dashboard', 'superAdmin', NULL, NULL, NULL);
INSERT INTO `sys_authorities` (`created_at`, `updated_at`, `deleted_at`, `authority_id`, `authority_name`, `parent_id`, `default_router`, `code`, `sort`, `status`, `remark`) VALUES ('2023-03-18 18:09:40.911', '2023-03-18 18:09:41.121', NULL, 9528, '测试角色', 0, 'dashboard', 'c', NULL, NULL, NULL);
INSERT INTO `sys_authorities` (`created_at`, `updated_at`, `deleted_at`, `authority_id`, `authority_name`, `parent_id`, `default_router`, `code`, `sort`, `status`, `remark`) VALUES ('2023-03-19 02:52:51.006', '2023-03-19 02:52:51.028', NULL, 234234, 'fadfa', NULL, 'dashboard', 'dfadf', 1, 1, '');
COMMIT;

-- ----------------------------
-- Table structure for sys_authority_btns
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority_btns`;
CREATE TABLE `sys_authority_btns` (
  `authority_id` bigint(20) unsigned DEFAULT NULL COMMENT '角色ID',
  `sys_menu_id` bigint(20) unsigned DEFAULT NULL COMMENT '菜单ID',
  `sys_base_menu_btn_id` bigint(20) unsigned DEFAULT NULL COMMENT '菜单按钮ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_authority_btns
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_authority_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_authority_menus`;
CREATE TABLE `sys_authority_menus` (
  `sys_base_menu_id` bigint(20) unsigned NOT NULL,
  `sys_authority_authority_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_base_menu_id`,`sys_authority_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_authority_menus
-- ----------------------------
BEGIN;
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1, 12);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1, 234234);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1000, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1100, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1101, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1102, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1103, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1104, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1105, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1106, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1107, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1108, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1109, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1110, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1111, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1112, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1113, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1114, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1200, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1201, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1202, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1203, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1204, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1205, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1206, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1207, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1208, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1209, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1210, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1300, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1301, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1302, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1303, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1304, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1305, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1306, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1307, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1308, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1309, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1310, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1311, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1400, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1401, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1402, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1403, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1404, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1405, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1406, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1407, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1408, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1409, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1410, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1411, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1412, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1413, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1500, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1501, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1502, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1503, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1504, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1505, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1506, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1507, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1508, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1509, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1510, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (1511, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2000, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2100, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2101, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2102, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2103, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2104, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2105, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2106, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2107, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2108, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2109, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2110, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2112, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2200, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2201, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2202, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2203, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2204, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2300, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2301, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2302, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2303, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2304, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2500, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2510, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2511, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2512, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2513, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2514, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2515, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2516, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2517, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2518, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2519, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2520, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2530, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2531, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2532, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2533, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2534, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2535, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2536, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2537, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2538, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2539, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2540, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2541, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2600, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2610, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2611, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2612, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2613, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2614, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2615, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2616, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2617, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2618, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2619, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2620, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2630, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2631, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2632, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2633, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2634, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2635, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2636, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2637, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2638, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2639, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2640, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2700, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2701, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2702, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2703, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2704, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2705, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2706, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2707, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2708, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2709, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (2710, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3000, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3200, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3300, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3400, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3401, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3500, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3501, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3600, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3601, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3602, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3700, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3701, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3702, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3703, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3800, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3801, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3850, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3851, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (3852, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4000, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4100, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4101, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4102, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4103, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4104, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4105, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4200, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4201, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4202, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4203, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4204, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4205, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4400, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4401, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4402, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4403, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4404, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4405, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4406, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4407, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4408, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4409, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4500, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4502, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4504, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4505, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4506, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4507, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4600, 888);
INSERT INTO `sys_authority_menus` (`sys_base_menu_id`, `sys_authority_authority_id`) VALUES (4601, 888);
COMMIT;

-- ----------------------------
-- Table structure for sys_auto_code_histories
-- ----------------------------
DROP TABLE IF EXISTS `sys_auto_code_histories`;
CREATE TABLE `sys_auto_code_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `package` varchar(191) DEFAULT NULL,
  `business_db` varchar(191) DEFAULT NULL,
  `table_name` varchar(191) DEFAULT NULL,
  `request_meta` text DEFAULT NULL,
  `auto_code_path` text DEFAULT NULL,
  `injection_meta` text DEFAULT NULL,
  `struct_name` varchar(191) DEFAULT NULL,
  `struct_cn_name` varchar(191) DEFAULT NULL,
  `api_ids` varchar(191) DEFAULT NULL,
  `flag` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_auto_code_histories_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_auto_code_histories
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_auto_codes
-- ----------------------------
DROP TABLE IF EXISTS `sys_auto_codes`;
CREATE TABLE `sys_auto_codes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `package_name` varchar(191) DEFAULT NULL COMMENT '包名',
  `label` varchar(191) DEFAULT NULL COMMENT '展示名',
  `desc` varchar(191) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_sys_auto_codes_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_auto_codes
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_base_menu_btns
-- ----------------------------
DROP TABLE IF EXISTS `sys_base_menu_btns`;
CREATE TABLE `sys_base_menu_btns` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL COMMENT '按钮关键key',
  `desc` varchar(191) DEFAULT NULL,
  `sys_base_menu_id` bigint(20) unsigned DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_btns_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_base_menu_btns
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_base_menu_parameters
-- ----------------------------
DROP TABLE IF EXISTS `sys_base_menu_parameters`;
CREATE TABLE `sys_base_menu_parameters` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `sys_base_menu_id` bigint(20) unsigned DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL COMMENT '地址栏携带参数为params还是query',
  `key` varchar(191) DEFAULT NULL COMMENT '地址栏携带参数的key',
  `value` varchar(191) DEFAULT NULL COMMENT '地址栏携带参数的值',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menu_parameters_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_base_menu_parameters
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_base_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_base_menus`;
CREATE TABLE `sys_base_menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID',
  `level` varchar(500) NOT NULL COMMENT '组级集合',
  `name` varchar(191) DEFAULT NULL COMMENT '路由name',
  `code` varchar(100) NOT NULL COMMENT '菜单标识代码',
  `icon` varchar(191) DEFAULT NULL COMMENT '附加属性',
  `route` varchar(200) DEFAULT NULL COMMENT '路由地址',
  `component` varchar(191) DEFAULT NULL COMMENT '对应前端文件路径',
  `redirect` varchar(255) DEFAULT NULL COMMENT '跳转地址',
  `is_hidden` smallint(6) NOT NULL DEFAULT 1 COMMENT '是否隐藏 (1是 2否)',
  `type` varchar(191) DEFAULT NULL COMMENT '附加属性',
  `status` smallint(6) DEFAULT NULL COMMENT '状态 (1正常 2停用)',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序标记',
  `created_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `updated_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `menu_level` bigint(20) unsigned DEFAULT NULL,
  `path` varchar(191) DEFAULT NULL COMMENT '路由path',
  `hidden` bigint(20) DEFAULT NULL COMMENT '是否在列表隐藏',
  `active_name` varchar(191) DEFAULT NULL COMMENT '附加属性',
  `keep_alive` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `default_menu` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  `title` varchar(191) DEFAULT NULL COMMENT '附加属性',
  `close_tab` tinyint(1) DEFAULT NULL COMMENT '附加属性',
  PRIMARY KEY (`id`),
  KEY `idx_sys_base_menus_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4602 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='菜单信息表';

-- ----------------------------
-- Records of sys_base_menus
-- ----------------------------
BEGIN;
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1, 0, '', 'dashboard', '', 'setting', NULL, 'view/dashboard/index.vue', NULL, 1, '', NULL, 1, NULL, NULL, '2023-03-19 02:50:27.265', '2023-03-19 02:50:27.265', NULL, NULL, 0, 'dashboard', 0, '', 0, 0, '仪表盘', 0);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1000, 0, '0', '权限', 'permission', 'ma-icon-permission', 'permission', '', NULL, 2, 'M', 1, 99, 1000, 1000, '2021-07-25 18:48:47.000', '2023-03-12 17:26:36.000', NULL, NULL, NULL, 'permission', 2, NULL, NULL, NULL, '权限', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1100, 1000, '0,1000', '用户管理', 'system:user', 'ma-icon-user', 'user', 'system/user/index', NULL, 2, 'M', 1, 99, NULL, NULL, '2021-07-25 18:50:15.000', '2021-07-25 18:50:15.000', NULL, NULL, NULL, 'user', 2, NULL, NULL, NULL, '用户管理', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1101, 1100, '0,1000,1100', '用户列表', 'system:user:index', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 18:50:15.000', '2021-07-25 18:50:15.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '用户列表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1102, 1100, '0,1000,1100', '用户回收站列表', 'system:user:recycle', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 18:50:15.000', '2021-07-25 18:50:15.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '用户回收站列表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1103, 1100, '0,1000,1100', '用户保存', 'system:user:save', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 18:50:15.000', '2021-07-25 18:50:15.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '用户保存', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1104, 1100, '0,1000,1100', '用户更新', 'system:user:update', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 18:50:15.000', '2021-07-25 18:50:15.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '用户更新', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1105, 1100, '0,1000,1100', '用户删除', 'system:user:delete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 18:50:15.000', '2021-07-25 18:50:15.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '用户删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1106, 1100, '0,1000,1100', '用户读取', 'system:user:read', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 18:50:15.000', '2021-07-25 18:50:15.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '用户读取', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1107, 1100, '0,1000,1100', '用户恢复', 'system:user:recovery', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 18:50:15.000', '2021-07-25 18:50:15.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '用户恢复', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1108, 1100, '0,1000,1100', '用户真实删除', 'system:user:realDelete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 18:50:15.000', '2021-07-25 18:50:15.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '用户真实删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1109, 1100, '0,1000,1100', '用户导入', 'system:user:import', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 18:50:15.000', '2021-07-25 18:50:15.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '用户导入', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1110, 1100, '0,1000,1100', '用户导出', 'system:user:export', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 18:50:15.000', '2021-07-25 18:50:15.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '用户导出', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1111, 1100, '0,1000,1100', '用户状态改变', 'system:user:changeStatus', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 18:53:02.000', '2021-07-25 18:53:02.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '用户状态改变', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1112, 1100, '0,1000,1100', '用户初始化密码', 'system:user:initUserPassword', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 18:55:55.000', '2021-07-25 18:55:55.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '用户初始化密码', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1113, 1100, '0,1000,1100', '更新用户缓存', 'system:user:cache', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-08-08 18:30:57.000', '2021-08-08 18:30:57.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '更新用户缓存', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1114, 1100, '0,1000,1100', '设置用户首页', 'system:user:homePage', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-08-08 18:34:30.000', '2021-08-08 18:34:30.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '设置用户首页', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1200, 1000, '0,1000', '菜单管理', 'system:menu', 'icon-menu', 'menu', 'system/menu/index', NULL, 2, 'M', 1, 96, NULL, NULL, '2021-07-25 19:01:47.000', '2021-07-25 19:01:47.000', NULL, NULL, NULL, 'menu', 2, NULL, NULL, NULL, '菜单管理', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1201, 1200, '0,1000,1200', '菜单列表', 'system:menu:index', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:01:47.000', '2021-07-25 19:01:47.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '菜单列表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1202, 1200, '0,1000,1200', '菜单回收站', 'system:menu:recycle', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:01:47.000', '2021-07-25 19:01:47.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '菜单回收站', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1203, 1200, '0,1000,1200', '菜单保存', 'system:menu:save', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:01:47.000', '2021-07-25 19:01:47.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '菜单保存', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1204, 1200, '0,1000,1200', '菜单更新', 'system:menu:update', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:01:47.000', '2021-07-25 19:01:47.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '菜单更新', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1205, 1200, '0,1000,1200', '菜单删除', 'system:menu:delete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:01:47.000', '2021-07-25 19:01:47.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '菜单删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1206, 1200, '0,1000,1200', '菜单读取', 'system:menu:read', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:01:47.000', '2021-07-25 19:01:47.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '菜单读取', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1207, 1200, '0,1000,1200', '菜单恢复', 'system:menu:recovery', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:01:47.000', '2021-07-25 19:01:47.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '菜单恢复', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1208, 1200, '0,1000,1200', '菜单真实删除', 'system:menu:realDelete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:01:47.000', '2021-07-25 19:01:47.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '菜单真实删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1209, 1200, '0,1000,1200', '菜单导入', 'system:menu:import', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:01:47.000', '2021-07-25 19:01:47.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '菜单导入', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1210, 1200, '0,1000,1200', '菜单导出', 'system:menu:export', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:01:47.000', '2021-07-25 19:01:47.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '菜单导出', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1300, 1000, '0,1000', '部门管理', 'system:dept', 'ma-icon-dept', 'dept', 'system/dept/index', NULL, 2, 'M', 1, 97, NULL, NULL, '2021-07-25 19:16:33.000', '2021-07-25 19:16:33.000', NULL, NULL, NULL, 'dept', 2, NULL, NULL, NULL, '部门管理', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1301, 1300, '0,1000,1300', '部门列表', 'system:dept:index', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:16:33.000', '2021-07-25 19:16:33.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '部门列表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1302, 1300, '0,1000,1300', '部门回收站', 'system:dept:recycle', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:16:33.000', '2021-07-25 19:16:33.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '部门回收站', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1303, 1300, '0,1000,1300', '部门保存', 'system:dept:save', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:16:33.000', '2021-07-25 19:16:33.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '部门保存', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1304, 1300, '0,1000,1300', '部门更新', 'system:dept:update', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:16:33.000', '2021-07-25 19:16:33.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '部门更新', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1305, 1300, '0,1000,1300', '部门删除', 'system:dept:delete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:16:33.000', '2021-07-25 19:16:33.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '部门删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1306, 1300, '0,1000,1300', '部门读取', 'system:dept:read', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:16:33.000', '2021-07-25 19:16:33.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '部门读取', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1307, 1300, '0,1000,1300', '部门恢复', 'system:dept:recovery', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:16:33.000', '2021-07-25 19:16:33.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '部门恢复', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1308, 1300, '0,1000,1300', '部门真实删除', 'system:dept:realDelete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:16:33.000', '2021-07-25 19:16:33.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '部门真实删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1309, 1300, '0,1000,1300', '部门导入', 'system:dept:import', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:16:33.000', '2021-07-25 19:16:33.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '部门导入', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1310, 1300, '0,1000,1300', '部门导出', 'system:dept:export', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:16:33.000', '2021-07-25 19:16:33.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '部门导出', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1311, 1300, '0,1000,1300', '部门状态改变', 'system:dept:changeStatus', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-09 18:26:15.000', '2021-11-09 18:26:15.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '部门状态改变', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1400, 1000, '0,1000', '角色管理', 'system:role', 'ma-icon-role', 'role', 'system/role/index', NULL, 2, 'M', 1, 98, 1000, 1000, '2021-07-25 19:17:37.000', '2023-03-12 17:27:29.000', NULL, NULL, NULL, 'role', 2, NULL, NULL, NULL, '角色管理', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1401, 1400, '0,1000,1400', '角色列表', 'system:role:index', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:17:37.000', '2021-07-25 19:17:37.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '角色列表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1402, 1400, '0,1000,1400', '角色回收站', 'system:role:recycle', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:17:38.000', '2021-07-25 19:17:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '角色回收站', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1403, 1400, '0,1000,1400', '角色保存', 'system:role:save', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:17:38.000', '2021-07-25 19:17:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '角色保存', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1404, 1400, '0,1000,1400', '角色更新', 'system:role:update', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:17:38.000', '2021-07-25 19:17:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '角色更新', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1405, 1400, '0,1000,1400', '角色删除', 'system:role:delete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:17:38.000', '2021-07-25 19:17:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '角色删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1406, 1400, '0,1000,1400', '角色读取', 'system:role:read', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:17:38.000', '2021-07-25 19:17:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '角色读取', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1407, 1400, '0,1000,1400', '角色恢复', 'system:role:recovery', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:17:38.000', '2021-07-25 19:17:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '角色恢复', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1408, 1400, '0,1000,1400', '角色真实删除', 'system:role:realDelete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:17:38.000', '2021-07-25 19:17:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '角色真实删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1409, 1400, '0,1000,1400', '角色导入', 'system:role:import', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:17:38.000', '2021-07-25 19:17:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '角色导入', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1410, 1400, '0,1000,1400', '角色导出', 'system:role:export', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 19:17:38.000', '2021-07-25 19:17:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '角色导出', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1411, 1400, '0,1000,1400', '角色状态改变', 'system:role:changeStatus', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-30 11:21:24.000', '2021-07-30 11:21:24.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '角色状态改变', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1412, 1400, '0,1000,1400', '更新菜单权限', 'system:role:menuPermission', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-08-09 11:52:33.000', '2021-08-09 11:52:33.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '更新菜单权限', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1413, 1400, '0,1000,1400', '更新数据权限', 'system:role:dataPermission', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-08-09 11:52:52.000', '2021-08-09 11:52:52.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '更新数据权限', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1500, 1000, '0,1000', '岗位管理', 'system:post', 'ma-icon-post', 'post', 'system/post/index', NULL, 2, 'M', 1, 0, NULL, NULL, '2021-07-25 20:46:38.000', '2021-07-25 20:46:38.000', NULL, NULL, NULL, 'post', 2, NULL, NULL, NULL, '岗位管理', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1501, 1500, '0,1000,1500', '岗位列表', 'system:post:index', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 20:46:38.000', '2021-07-25 20:46:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '岗位列表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1502, 1500, '0,1000,1500', '岗位回收站', 'system:post:recycle', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 20:46:38.000', '2021-07-25 20:46:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '岗位回收站', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1503, 1500, '0,1000,1500', '岗位保存', 'system:post:save', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 20:46:38.000', '2021-07-25 20:46:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '岗位保存', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1504, 1500, '0,1000,1500', '岗位更新', 'system:post:update', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 20:46:38.000', '2021-07-25 20:46:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '岗位更新', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1505, 1500, '0,1000,1500', '岗位删除', 'system:post:delete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 20:46:38.000', '2021-07-25 20:46:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '岗位删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1506, 1500, '0,1000,1500', '岗位读取', 'system:post:read', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 20:46:38.000', '2021-07-25 20:46:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '岗位读取', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1507, 1500, '0,1000,1500', '岗位恢复', 'system:post:recovery', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 20:46:38.000', '2021-07-25 20:46:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '岗位恢复', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1508, 1500, '0,1000,1500', '岗位真实删除', 'system:post:realDelete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 20:46:38.000', '2021-07-25 20:46:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '岗位真实删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1509, 1500, '0,1000,1500', '岗位导入', 'system:post:import', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 20:46:38.000', '2021-07-25 20:46:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '岗位导入', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1510, 1500, '0,1000,1500', '岗位导出', 'system:post:export', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-25 20:46:38.000', '2021-07-25 20:46:38.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '岗位导出', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (1511, 1500, '0,1000,1500', '岗位状态改变', 'system:post:changeStatus', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-09 18:26:15.000', '2021-11-09 18:26:15.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '岗位状态改变', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2000, 0, '0', '数据', 'dataCenter', 'icon-storage', 'dataCenter', '', NULL, 2, 'M', 1, 98, NULL, NULL, '2021-07-31 17:17:03.000', '2021-07-31 17:17:03.000', NULL, NULL, NULL, 'dataCenter', 2, NULL, NULL, NULL, '数据', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2100, 2000, '0,2000', '数据字典', 'system:dict', 'ma-icon-dict', 'dict', 'system/dict/index', NULL, 2, 'M', 1, 99, NULL, NULL, '2021-07-31 18:33:45.000', '2021-07-31 18:33:45.000', NULL, NULL, NULL, 'dict', 2, NULL, NULL, NULL, '数据字典', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2101, 2100, '0,2000,2100', '数据字典列表', 'system:dict:index', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:33:45.000', '2021-07-31 18:33:45.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '数据字典列表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2102, 2100, '0,2000,2100', '数据字典回收站', 'system:dict:recycle', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:33:45.000', '2021-07-31 18:33:45.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '数据字典回收站', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2103, 2100, '0,2000,2100', '数据字典保存', 'system:dict:save', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:33:45.000', '2021-07-31 18:33:45.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '数据字典保存', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2104, 2100, '0,2000,2100', '数据字典更新', 'system:dict:update', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:33:45.000', '2021-07-31 18:33:45.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '数据字典更新', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2105, 2100, '0,2000,2100', '数据字典删除', 'system:dict:delete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:33:45.000', '2021-07-31 18:33:45.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '数据字典删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2106, 2100, '0,2000,2100', '数据字典读取', 'system:dict:read', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:33:46.000', '2021-07-31 18:33:46.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '数据字典读取', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2107, 2100, '0,2000,2100', '数据字典恢复', 'system:dict:recovery', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:33:46.000', '2021-07-31 18:33:46.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '数据字典恢复', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2108, 2100, '0,2000,2100', '数据字典真实删除', 'system:dict:realDelete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:33:46.000', '2021-07-31 18:33:46.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '数据字典真实删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2109, 2100, '0,2000,2100', '数据字典导入', 'system:dict:import', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:33:46.000', '2021-07-31 18:33:46.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '数据字典导入', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2110, 2100, '0,2000,2100', '数据字典导出', 'system:dict:export', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:33:46.000', '2021-07-31 18:33:46.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '数据字典导出', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2112, 2100, '0,2000,2100', '字典状态改变', 'system:dataDict:changeStatus', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-09 18:26:15.000', '2021-11-09 18:26:15.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '字典状态改变', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2200, 2000, '0,2000', '附件管理', 'system:attachment', 'ma-icon-attach', 'attachment', 'system/attachment/index', NULL, 2, 'M', 1, 98, NULL, NULL, '2021-07-31 18:36:34.000', '2021-07-31 18:36:34.000', NULL, NULL, NULL, 'attachment', 2, NULL, NULL, NULL, '附件管理', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2201, 2300, '0,2000,2200', '附件删除', 'system:attachment:delete', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:37:20.000', '2021-07-31 18:37:20.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '附件删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2202, 2200, '0,2000,2200', '附件列表', 'system:attachment:index', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:38:05.000', '2021-07-31 18:38:05.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '附件列表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2203, 2200, '0,2000,2200', '附件回收站', 'system:attachment:recycle', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:38:57.000', '2021-07-31 18:38:57.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '附件回收站', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2204, 2200, '0,2000,2200', '附件真实删除', 'system:attachment:realDelete', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:40:44.000', '2021-07-31 18:40:44.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '附件真实删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2300, 2000, '0,2000', '数据表维护', 'system:dataMaintain', 'ma-icon-db', 'dataMaintain', 'system/dataMaintain/index', NULL, 2, 'M', 1, 95, NULL, NULL, '2021-07-31 18:43:20.000', '2021-07-31 18:43:20.000', NULL, NULL, NULL, 'dataMaintain', 2, NULL, NULL, NULL, '数据表维护', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2301, 2300, '0,2000,2300', '数据表列表', 'system:dataMaintain:index', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:44:03.000', '2021-07-31 18:44:03.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '数据表列表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2302, 2300, '0,2000,2300', '数据表详细', 'system:dataMaintain:detailed', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:45:17.000', '2021-07-31 18:45:17.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '数据表详细', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2303, 2300, '0,2000,2300', '数据表清理碎片', 'system:dataMaintain:fragment', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:46:04.000', '2021-07-31 18:46:04.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '数据表清理碎片', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2304, 2300, '0,2000,2300', '数据表优化', 'system:dataMaintain:optimize', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:46:31.000', '2021-07-31 18:46:31.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '数据表优化', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2500, 2000, '0,2000', '应用中心', 'apps', 'icon-apps', 'apps', '', NULL, 2, 'M', 1, 90, NULL, NULL, '2021-11-11 21:16:47.000', '2021-11-11 21:16:47.000', NULL, NULL, NULL, 'apps', 2, NULL, NULL, NULL, '应用中心', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2510, 2500, '0,2000,2500', '应用分组', 'system:appGroup', 'ma-icon-group', 'appGroup', 'system/appGroup/index', NULL, 2, 'M', 1, 0, NULL, NULL, '2021-11-11 21:31:28.000', '2021-11-11 21:31:28.000', NULL, NULL, NULL, 'appGroup', 2, NULL, NULL, NULL, '应用分组', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2511, 2510, '0,2000,2500,2510', '应用分组列表', 'system:appGroup:index', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:31:28.000', '2021-11-11 21:31:28.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用分组列表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2512, 2510, '0,2000,2500,2510', '应用分组回收站', 'system:appGroup:recycle', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:31:28.000', '2021-11-11 21:31:28.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用分组回收站', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2513, 2510, '0,2000,2500,2510', '应用分组保存', 'system:appGroup:save', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:31:28.000', '2021-11-11 21:31:28.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用分组保存', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2514, 2510, '0,2000,2500,2510', '应用分组更新', 'system:appGroup:update', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:31:28.000', '2021-11-11 21:31:28.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用分组更新', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2515, 2510, '0,2000,2500,2510', '应用分组删除', 'system:appGroup:delete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:31:28.000', '2021-11-11 21:31:28.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用分组删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2516, 2510, '0,2000,2500,2510', '应用分组读取', 'system:appGroup:read', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:31:28.000', '2021-11-11 21:31:28.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用分组读取', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2517, 2510, '0,2000,2500,2510', '应用分组恢复', 'system:appGroup:recovery', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:31:28.000', '2021-11-11 21:31:28.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用分组恢复', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2518, 2510, '0,2000,2500,2510', '应用分组真实删除', 'system:appGroup:realDelete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:31:28.000', '2021-11-11 21:31:28.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用分组真实删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2519, 2510, '0,2000,2500,2510', '应用分组导入', 'system:appGroup:import', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:31:28.000', '2021-11-11 21:31:28.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用分组导入', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2520, 2510, '0,2000,2500,2510', '应用分组导出', 'system:appGroup:export', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:31:28.000', '2021-11-11 21:31:28.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用分组导出', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2530, 2500, '0,2000,2500', '应用管理', 'system:app', 'icon-archive', 'app', 'system/app/index', NULL, 2, 'M', 1, 0, NULL, NULL, '2021-11-11 21:35:35.000', '2021-11-11 21:35:35.000', NULL, NULL, NULL, 'app', 2, NULL, NULL, NULL, '应用管理', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2531, 2530, '0,2000,2500,2530', '应用列表', 'system:app:index', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:35:35.000', '2021-11-11 21:35:35.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用列表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2532, 2530, '0,2000,2500,2530', '应用回收站', 'system:app:recycle', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:35:35.000', '2021-11-11 21:35:35.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用回收站', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2533, 2530, '0,2000,2500,2530', '应用保存', 'system:app:save', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:35:35.000', '2021-11-11 21:35:35.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用保存', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2534, 2530, '0,2000,2500,2530', '应用更新', 'system:app:update', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:35:35.000', '2021-11-11 21:35:35.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用更新', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2535, 2530, '0,2000,2500,2530', '应用删除', 'system:app:delete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:35:35.000', '2021-11-11 21:35:35.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2536, 2530, '0,2000,2500,2530', '应用读取', 'system:app:read', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:35:35.000', '2021-11-11 21:35:35.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用读取', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2537, 2530, '0,2000,2500,2530', '应用恢复', 'system:app:recovery', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:35:35.000', '2021-11-11 21:35:35.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用恢复', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2538, 2530, '0,2000,2500,2530', '应用真实删除', 'system:app:realDelete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:35:35.000', '2021-11-11 21:35:35.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用真实删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2539, 2530, '0,2000,2500,2530', '应用导入', 'system:app:import', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:35:35.000', '2021-11-11 21:35:35.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用导入', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2540, 2530, '0,2000,2500,2530', '应用导出', 'system:app:export', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:35:35.000', '2021-11-11 21:35:35.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用导出', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2541, 2530, '0,2000,2500,2530', '应用绑定接口', 'system:app:bind', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:44:24.000', '2021-11-11 21:44:24.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '应用绑定接口', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2600, 2000, '0,2000', '应用接口', 'apis', 'icon-common', 'apis', '', NULL, 2, 'M', 1, 80, NULL, NULL, '2021-11-11 21:23:57.000', '2021-11-11 21:23:57.000', NULL, NULL, NULL, 'apis', 2, NULL, NULL, NULL, '应用接口', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2610, 2600, '0,2000,2600', '接口分组', 'system:apiGroup', 'ma-icon-group', 'apiGroup', 'system/apiGroup/index', NULL, 2, 'M', 1, 0, NULL, NULL, '2021-11-11 21:37:54.000', '2021-11-11 21:37:54.000', NULL, NULL, NULL, 'apiGroup', 2, NULL, NULL, NULL, '接口分组', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2611, 2610, '0,2000,2600,2610', '接口分组列表', 'system:apiGroup:index', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:37:54.000', '2021-11-11 21:37:54.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口分组列表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2612, 2610, '0,2000,2600,2610', '接口分组回收站', 'system:apiGroup:recycle', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:37:54.000', '2021-11-11 21:37:54.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口分组回收站', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2613, 2610, '0,2000,2600,2610', '接口分组保存', 'system:apiGroup:save', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:37:54.000', '2021-11-11 21:37:54.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口分组保存', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2614, 2610, '0,2000,2600,2610', '接口分组更新', 'system:apiGroup:update', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:37:54.000', '2021-11-11 21:37:54.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口分组更新', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2615, 2610, '0,2000,2600,2610', '接口分组删除', 'system:apiGroup:delete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:37:54.000', '2021-11-11 21:37:54.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口分组删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2616, 2610, '0,2000,2600,2610', '接口分组读取', 'system:apiGroup:read', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:37:54.000', '2021-11-11 21:37:54.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口分组读取', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2617, 2610, '0,2000,2600,2610', '接口分组恢复', 'system:apiGroup:recovery', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:37:54.000', '2021-11-11 21:37:54.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口分组恢复', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2618, 2610, '0,2000,2600,2610', '接口分组真实删除', 'system:apiGroup:realDelete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:37:54.000', '2021-11-11 21:37:54.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口分组真实删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2619, 2610, '0,2000,2600,2610', '接口分组导入', 'system:apiGroup:import', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:37:54.000', '2021-11-11 21:37:54.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口分组导入', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2620, 2610, '0,2000,2600,2610', '接口分组导出', 'system:apiGroup:export', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:37:54.000', '2021-11-11 21:37:54.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口分组导出', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2630, 2600, '0,2000,2600', '接口管理', 'system:api', 'icon-mind-mapping', 'api', 'system/api/index', NULL, 2, 'M', 1, 0, NULL, NULL, '2021-11-11 21:44:24.000', '2021-11-11 21:44:24.000', NULL, NULL, NULL, 'api', 2, NULL, NULL, NULL, '接口管理', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2631, 2630, '0,2000,2600,2630', '接口列表', 'system:api:index', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:44:24.000', '2021-11-11 21:44:24.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口列表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2632, 2630, '0,2000,2600,2630', '接口回收站', 'system:api:recycle', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:44:24.000', '2021-11-11 21:44:24.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口回收站', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2633, 2630, '0,2000,2600,2630', '接口保存', 'system:api:save', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:44:24.000', '2021-11-11 21:44:24.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口保存', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2634, 2630, '0,2000,2600,2630', '接口更新', 'system:api:update', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:44:24.000', '2021-11-11 21:44:24.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口更新', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2635, 2630, '0,2000,2600,2630', '接口删除', 'system:api:delete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:44:24.000', '2021-11-11 21:44:24.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2636, 2630, '0,2000,2600,2630', '接口读取', 'system:api:read', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:44:24.000', '2021-11-11 21:44:24.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口读取', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2637, 2630, '0,2000,2600,2630', '接口恢复', 'system:api:recovery', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:44:24.000', '2021-11-11 21:44:24.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口恢复', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2638, 2630, '0,2000,2600,2630', '接口真实删除', 'system:api:realDelete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:44:24.000', '2021-11-11 21:44:24.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口真实删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2639, 2630, '0,2000,2600,2630', '接口导入', 'system:api:import', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:44:24.000', '2021-11-11 21:44:24.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口导入', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2640, 2630, '0,2000,2600,2630', '接口导出', 'system:api:export', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-11-11 21:44:24.000', '2021-11-11 21:44:24.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口导出', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2700, 2000, '0,2000', '系统公告', 'system:notice', 'icon-bulb', 'notice', 'system/notice/index', NULL, 2, 'M', 1, 94, NULL, NULL, '2021-12-25 18:10:20.000', '2021-12-25 18:10:20.000', NULL, NULL, NULL, 'notice', 2, NULL, NULL, NULL, '系统公告', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2701, 2700, '0,2000,2700', '系统公告列表', 'system:notice:index', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-12-25 18:10:20.000', '2021-12-25 18:10:20.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '系统公告列表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2702, 2700, '0,2000,2700', '系统公告回收站', 'system:notice:recycle', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-12-25 18:10:20.000', '2021-12-25 18:10:20.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '系统公告回收站', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2703, 2700, '0,2000,2700', '系统公告保存', 'system:notice:save', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-12-25 18:10:20.000', '2021-12-25 18:10:20.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '系统公告保存', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2704, 2700, '0,2000,2700', '系统公告更新', 'system:notice:update', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-12-25 18:10:20.000', '2021-12-25 18:10:20.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '系统公告更新', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2705, 2700, '0,2000,2700', '系统公告删除', 'system:notice:delete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-12-25 18:10:20.000', '2021-12-25 18:10:20.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '系统公告删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2706, 2700, '0,2000,2700', '系统公告读取', 'system:notice:read', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-12-25 18:10:20.000', '2021-12-25 18:10:20.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '系统公告读取', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2707, 2700, '0,2000,2700', '系统公告恢复', 'system:notice:recovery', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-12-25 18:10:20.000', '2021-12-25 18:10:20.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '系统公告恢复', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2708, 2700, '0,2000,2700', '系统公告真实删除', 'system:notice:realDelete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-12-25 18:10:20.000', '2021-12-25 18:10:20.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '系统公告真实删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2709, 2700, '0,2000,2700', '系统公告导入', 'system:notice:import', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-12-25 18:10:20.000', '2021-12-25 18:10:20.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '系统公告导入', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (2710, 2700, '0,2000,2700', '系统公告导出', 'system:notice:export', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-12-25 18:10:20.000', '2021-12-25 18:10:20.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '系统公告导出', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3000, 0, '0', '监控', 'monitor', 'icon-desktop', 'monitor', '', NULL, 2, 'M', 1, 97, NULL, NULL, '2021-07-31 18:49:24.000', '2021-07-31 18:49:24.000', NULL, NULL, NULL, 'monitor', 2, NULL, NULL, NULL, '监控', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3200, 3000, '0,3000', '服务监控', 'system:monitor:server', 'icon-thunderbolt', 'server', 'system/monitor/server/index', NULL, 2, 'M', 1, 99, NULL, NULL, '2021-07-31 18:52:46.000', '2021-07-31 18:52:46.000', NULL, NULL, NULL, 'server', 2, NULL, NULL, NULL, '服务监控', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3300, 3000, '0,3000', '日志监控', 'logs', 'icon-book', 'logs', '', NULL, 2, 'M', 1, 95, NULL, NULL, '2021-07-31 18:54:01.000', '2021-07-31 18:54:01.000', NULL, NULL, NULL, 'logs', 2, NULL, NULL, NULL, '日志监控', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3400, 3300, '0,3000,3200', '登录日志', 'system:loginLog', 'icon-idcard', 'loginLog', 'system/logs/loginLog', NULL, 2, 'M', 1, 0, NULL, NULL, '2021-07-31 18:54:55.000', '2021-07-31 18:54:55.000', NULL, NULL, NULL, 'loginLog', 2, NULL, NULL, NULL, '登录日志', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3401, 3400, '0,3000,3200,3300', '登录日志删除', 'system:loginLog:delete', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:56:43.000', '2021-07-31 18:56:43.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '登录日志删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3500, 3300, '0,3000,3200', '操作日志', 'system:operLog', 'icon-robot', 'operLog', 'system/logs/operLog', NULL, 2, 'M', 1, 0, NULL, NULL, '2021-07-31 18:55:40.000', '2021-07-31 18:55:40.000', NULL, NULL, NULL, 'operLog', 2, NULL, NULL, NULL, '操作日志', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3501, 3500, '0,3000,3200,3400', '操作日志删除', 'system:operLog:delete', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 18:56:19.000', '2021-07-31 18:56:19.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '操作日志删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3600, 3000, '0,3000', '在线用户', 'system:onlineUser', 'ma-icon-online', 'onlineUser', 'system/monitor/onlineUser/index', NULL, 2, 'M', 1, 98, NULL, NULL, '2021-08-08 18:26:31.000', '2021-08-08 18:26:31.000', NULL, NULL, NULL, 'onlineUser', 2, NULL, NULL, NULL, '在线用户', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3601, 3500, '0,3000,3500', '在线用户列表', 'system:onlineUser:index', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-08-08 18:26:55.000', '2021-08-08 18:26:55.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '在线用户列表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3602, 3500, '0,3000,3500', '强退用户', 'system:onlineUser:kick', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-08-08 18:27:21.000', '2021-08-08 18:27:21.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '强退用户', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3700, 3000, '0,3000', '缓存监控', 'system:cache', 'icon-dice', 'cache', 'system/monitor/cache/index', NULL, 2, 'M', 1, 98, NULL, NULL, '2021-10-26 20:50:31.000', '2021-10-26 20:50:31.000', NULL, NULL, NULL, 'cache', 2, NULL, NULL, NULL, '缓存监控', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3701, 3700, '0,3000,3700', '获取Redis信息', 'system:cache:monitor', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-10-26 20:50:31.000', '2021-10-26 20:50:31.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '获取Redis信息', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3702, 3700, '0,3000,3700', '删除一个缓存', 'system:cache:delete', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-10-26 20:50:31.000', '2021-10-26 20:50:31.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '删除一个缓存', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3703, 3700, '0,3000,3700', '清空所有缓存', 'system:cache:clear', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-10-26 20:50:31.000', '2021-10-26 20:50:31.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '清空所有缓存', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3800, 3300, '0,3000,3300', '接口日志', 'system:apiLog', 'icon-calendar', 'apiLog', 'system/logs/apiLog', NULL, 2, 'M', 1, 0, NULL, NULL, '2021-12-06 21:50:05.000', '2021-12-06 21:50:05.000', NULL, NULL, NULL, 'apiLog', 2, NULL, NULL, NULL, '接口日志', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3801, 3800, '0,3000,3300,3800', '接口日志删除', 'system:apiLog:delete', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-12-06 21:50:40.000', '2021-12-06 21:50:40.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '接口日志删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3850, 3300, '0,3000,3300', '队列日志', 'system:queueLog', 'icon-layers', 'queueLog', 'system/logs/queueLog', NULL, 2, 'M', 1, 0, NULL, NULL, '2021-12-25 16:41:14.000', '2021-12-25 16:41:14.000', NULL, NULL, NULL, 'queueLog', 2, NULL, NULL, NULL, '队列日志', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3851, 3850, '0,3000,3300,3850', '删除队列日志', 'system:queueLog:delete', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-12-25 16:42:42.000', '2021-12-25 16:42:42.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '删除队列日志', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (3852, 3850, '0,3000,3300,3850', '更新队列状态', 'system:queueLog:updateStatus', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-12-25 16:45:03.000', '2021-12-25 16:47:16.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '更新队列状态', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4000, 0, '0', '工具', 'devTools', 'ma-icon-tool', 'devTools', '', NULL, 2, 'M', 1, 95, NULL, NULL, '2021-07-31 19:03:32.000', '2021-07-31 19:03:32.000', NULL, NULL, NULL, 'devTools', 2, NULL, NULL, NULL, '工具', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4100, 4000, '0,4000', '模块管理', 'setting:module', 'icon-folder', 'module', 'setting/module/index', NULL, 2, 'M', 1, 99, NULL, NULL, '2021-07-31 19:33:49.000', '2021-07-31 19:33:49.000', NULL, NULL, NULL, 'module', 2, NULL, NULL, NULL, '模块管理', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4101, 4100, '0,4000,4100', '新增模块', 'setting:module:save', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 19:45:29.000', '2021-07-31 19:45:29.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '新增模块', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4102, 4100, '0,4000,4100', '模块删除', 'setting:module:delete', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 19:34:15.000', '2021-07-31 19:34:15.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '模块删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4103, 4100, '0,4000,4100', '模块列表', 'setting:module:index', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-08-09 11:48:27.000', '2021-08-09 11:48:27.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '模块列表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4104, 4100, '0,4000,4100', '模块启停用', 'setting:module:status', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2022-02-13 18:10:20.000', '2022-02-13 18:10:20.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '模块启停用', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4105, 4100, '0,4000,4100', '安装模块', 'setting:module:install', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2022-02-13 18:10:20.000', '2022-02-13 18:10:20.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '安装模块', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4200, 4000, '0,4000', '代码生成器', 'setting:code', 'ma-icon-code', 'code', 'setting/code/index', NULL, 2, 'M', 1, 98, NULL, NULL, '2021-07-31 19:36:17.000', '2021-07-31 19:36:17.000', NULL, NULL, NULL, 'code', 2, NULL, NULL, NULL, '代码生成器', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4201, 4200, '0,4000,4200', '预览代码', 'setting:code:preview', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 19:36:44.000', '2021-07-31 19:36:44.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '预览代码', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4202, 4200, '0,4000,4200', '装载数据表', 'setting:code:loadTable', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 19:38:03.000', '2021-07-31 19:38:03.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '装载数据表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4203, 4200, '0,4000,4200', '删除业务表', 'setting:code:delete', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 19:38:53.000', '2021-07-31 19:38:53.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '删除业务表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4204, 4200, '0,4000,4200', '同步业务表', 'setting:code:sync', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 19:39:18.000', '2021-07-31 19:39:18.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '同步业务表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4205, 4200, '0,4000,4200', '生成代码', 'setting:code:generate', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 19:39:48.000', '2021-07-31 19:39:48.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '生成代码', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4400, 4000, '0,4000', '定时任务', 'setting:crontab', 'icon-schedule', 'crontab', 'setting/crontab/index', '', 2, 'M', 1, 0, NULL, NULL, '2021-07-31 19:47:49.000', '2021-07-31 19:47:49.000', NULL, NULL, NULL, 'crontab', 2, NULL, NULL, NULL, '定时任务', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4401, 4400, '0,4000,4400', '定时任务列表', 'setting:crontab:index', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 19:47:49.000', '2021-07-31 19:47:49.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '定时任务列表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4402, 4400, '0,4000,4400', '定时任务保存', 'setting:crontab:save', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 19:47:49.000', '2021-07-31 19:47:49.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '定时任务保存', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4403, 4400, '0,4000,4400', '定时任务更新', 'setting:crontab:update', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 19:47:49.000', '2021-07-31 19:47:49.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '定时任务更新', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4404, 4400, '0,4000,4400', '定时任务删除', 'setting:crontab:delete', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 19:47:49.000', '2021-07-31 19:47:49.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '定时任务删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4405, 4400, '0,4000,4400', '定时任务读取', 'setting:crontab:read', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 19:47:49.000', '2021-07-31 19:47:49.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '定时任务读取', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4406, 4400, '0,4000,4400', '定时任务导入', 'setting:crontab:import', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 19:47:49.000', '2021-07-31 19:47:49.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '定时任务导入', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4407, 4400, '0,4000,4400', '定时任务导出', 'setting:crontab:export', NULL, NULL, NULL, NULL, 1, 'B', 1, 0, NULL, NULL, '2021-07-31 19:47:49.000', '2021-07-31 19:47:49.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '定时任务导出', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4408, 4400, '0,4000,4400', '定时任务执行', 'setting:crontab:run', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-08-07 23:44:06.000', '2021-08-07 23:44:06.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '定时任务执行', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4409, 4400, '0,4000,4400', '定时任务日志删除', 'setting:crontab:deleteLog', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-12-06 22:06:12.000', '2021-12-06 22:06:12.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '定时任务日志删除', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4500, 0, '0', '系统设置', 'setting:config', 'icon-settings', 'system', 'setting/config/index', '', 2, 'M', 1, 0, NULL, NULL, '2021-07-31 19:58:57.000', '2021-07-31 19:58:57.000', NULL, NULL, NULL, 'system', 2, NULL, NULL, NULL, '系统设置', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4502, 4500, '0,4500', '配置列表', 'setting:config:index', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-08-10 13:09:18.000', '2021-08-10 13:09:18.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '配置列表', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4504, 4500, '0,4500', '新增配置 ', 'setting:config:save', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-08-10 13:11:56.000', '2021-08-10 13:11:56.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '新增配置 ', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4505, 4500, '0,4500', '更新配置', 'setting:config:update', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-08-10 13:12:25.000', '2021-08-10 13:12:25.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '更新配置', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4506, 4500, '0,4500', '删除配置', 'setting:config:delete', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-08-10 13:13:33.000', '2021-08-10 13:13:33.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '删除配置', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4507, 4500, '0,4500', '清除配置缓存', 'setting:config:clearCache', '', NULL, '', NULL, 1, 'B', 1, 0, NULL, NULL, '2021-08-10 13:13:59.000', '2021-08-10 13:13:59.000', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, '清除配置缓存', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4600, 4000, '0,4000', '系统接口', 'systemInterface', 'icon-compass', 'systemInterface', 'setting/systemInterface/index', NULL, 2, 'M', 1, 0, NULL, NULL, '2022-03-30 10:00:28.000', '2022-03-30 10:00:28.000', NULL, NULL, NULL, 'systemInterface', 2, NULL, NULL, NULL, '系统接口', NULL);
INSERT INTO `sys_base_menus` (`id`, `parent_id`, `level`, `name`, `code`, `icon`, `route`, `component`, `redirect`, `is_hidden`, `type`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `menu_level`, `path`, `hidden`, `active_name`, `keep_alive`, `default_menu`, `title`, `close_tab`) VALUES (4601, 0, '0', 'wrwe', 'wer', NULL, NULL, NULL, NULL, 2, 'M', 1, 1, 1000, 1000, '2023-03-12 17:27:58.000', '2023-03-12 17:27:58.000', NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, 'wrwe', NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_data_authority_id
-- ----------------------------
DROP TABLE IF EXISTS `sys_data_authority_id`;
CREATE TABLE `sys_data_authority_id` (
  `sys_authority_authority_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  `data_authority_id_authority_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_authority_authority_id`,`data_authority_id_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_data_authority_id
-- ----------------------------
BEGIN;
INSERT INTO `sys_data_authority_id` (`sys_authority_authority_id`, `data_authority_id_authority_id`) VALUES (888, 888);
INSERT INTO `sys_data_authority_id` (`sys_authority_authority_id`, `data_authority_id_authority_id`) VALUES (888, 8881);
INSERT INTO `sys_data_authority_id` (`sys_authority_authority_id`, `data_authority_id_authority_id`) VALUES (888, 9528);
INSERT INTO `sys_data_authority_id` (`sys_authority_authority_id`, `data_authority_id_authority_id`) VALUES (9528, 8881);
INSERT INTO `sys_data_authority_id` (`sys_authority_authority_id`, `data_authority_id_authority_id`) VALUES (9528, 9528);
COMMIT;

-- ----------------------------
-- Table structure for sys_dictionaries
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionaries`;
CREATE TABLE `sys_dictionaries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `name` varchar(191) DEFAULT NULL COMMENT '字典名（中）',
  `type` varchar(191) DEFAULT NULL COMMENT '字典名（英）',
  `status` tinyint(1) DEFAULT NULL COMMENT '状态',
  `desc` varchar(191) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionaries_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_dictionaries
-- ----------------------------
BEGIN;
INSERT INTO `sys_dictionaries` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `type`, `status`, `desc`) VALUES (1, '2023-03-18 18:09:40.925', '2023-03-18 18:09:40.933', NULL, '性别', 'gender', 1, '性别字典');
INSERT INTO `sys_dictionaries` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `type`, `status`, `desc`) VALUES (2, '2023-03-18 18:09:40.925', '2023-03-18 18:09:40.939', NULL, '数据库int类型', 'int', 1, 'int类型对应的数据库类型');
INSERT INTO `sys_dictionaries` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `type`, `status`, `desc`) VALUES (3, '2023-03-18 18:09:40.925', '2023-03-18 18:09:40.941', NULL, '数据库时间日期类型', 'time.Time', 1, '数据库时间日期类型');
INSERT INTO `sys_dictionaries` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `type`, `status`, `desc`) VALUES (4, '2023-03-18 18:09:40.925', '2023-03-18 18:09:40.945', NULL, '数据库浮点型', 'float64', 1, '数据库浮点型');
INSERT INTO `sys_dictionaries` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `type`, `status`, `desc`) VALUES (5, '2023-03-18 18:09:40.925', '2023-03-18 18:09:40.947', NULL, '数据库字符串', 'string', 1, '数据库字符串');
INSERT INTO `sys_dictionaries` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `type`, `status`, `desc`) VALUES (6, '2023-03-18 18:09:40.925', '2023-03-18 18:09:40.950', NULL, '数据库bool类型', 'bool', 1, '数据库bool类型');
COMMIT;

-- ----------------------------
-- Table structure for sys_dictionary_details
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionary_details`;
CREATE TABLE `sys_dictionary_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `label` varchar(191) DEFAULT NULL COMMENT '展示值',
  `value` bigint(20) DEFAULT NULL COMMENT '字典值',
  `status` tinyint(1) DEFAULT NULL COMMENT '启用状态',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序标记',
  `sys_dictionary_id` bigint(20) unsigned DEFAULT NULL COMMENT '关联标记',
  PRIMARY KEY (`id`),
  KEY `idx_sys_dictionary_details_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_dictionary_details
-- ----------------------------
BEGIN;
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (1, '2023-03-18 18:09:40.935', '2023-03-18 18:09:40.935', NULL, '男', 1, 1, 1, 1);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (2, '2023-03-18 18:09:40.935', '2023-03-18 18:09:40.935', NULL, '女', 2, 1, 2, 1);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (3, '2023-03-18 18:09:40.939', '2023-03-18 18:09:40.939', NULL, 'smallint', 1, 1, 1, 2);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (4, '2023-03-18 18:09:40.939', '2023-03-18 18:09:40.939', NULL, 'mediumint', 2, 1, 2, 2);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (5, '2023-03-18 18:09:40.939', '2023-03-18 18:09:40.939', NULL, 'int', 3, 1, 3, 2);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (6, '2023-03-18 18:09:40.939', '2023-03-18 18:09:40.939', NULL, 'bigint', 4, 1, 4, 2);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (7, '2023-03-18 18:09:40.942', '2023-03-18 18:09:40.942', NULL, 'date', 0, 1, 0, 3);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (8, '2023-03-18 18:09:40.942', '2023-03-18 18:09:40.942', NULL, 'time', 1, 1, 1, 3);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (9, '2023-03-18 18:09:40.942', '2023-03-18 18:09:40.942', NULL, 'year', 2, 1, 2, 3);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (10, '2023-03-18 18:09:40.942', '2023-03-18 18:09:40.942', NULL, 'datetime', 3, 1, 3, 3);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (11, '2023-03-18 18:09:40.942', '2023-03-18 18:09:40.942', NULL, 'timestamp', 5, 1, 5, 3);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (12, '2023-03-18 18:09:40.945', '2023-03-18 18:09:40.945', NULL, 'float', 0, 1, 0, 4);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (13, '2023-03-18 18:09:40.945', '2023-03-18 18:09:40.945', NULL, 'double', 1, 1, 1, 4);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (14, '2023-03-18 18:09:40.945', '2023-03-18 18:09:40.945', NULL, 'decimal', 2, 1, 2, 4);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (15, '2023-03-18 18:09:40.948', '2023-03-18 18:09:40.948', NULL, 'char', 0, 1, 0, 5);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (16, '2023-03-18 18:09:40.948', '2023-03-18 18:09:40.948', NULL, 'varchar', 1, 1, 1, 5);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (17, '2023-03-18 18:09:40.948', '2023-03-18 18:09:40.948', NULL, 'tinyblob', 2, 1, 2, 5);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (18, '2023-03-18 18:09:40.948', '2023-03-18 18:09:40.948', NULL, 'tinytext', 3, 1, 3, 5);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (19, '2023-03-18 18:09:40.948', '2023-03-18 18:09:40.948', NULL, 'text', 4, 1, 4, 5);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (20, '2023-03-18 18:09:40.948', '2023-03-18 18:09:40.948', NULL, 'blob', 5, 1, 5, 5);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (21, '2023-03-18 18:09:40.948', '2023-03-18 18:09:40.948', NULL, 'mediumblob', 6, 1, 6, 5);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (22, '2023-03-18 18:09:40.948', '2023-03-18 18:09:40.948', NULL, 'mediumtext', 7, 1, 7, 5);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (23, '2023-03-18 18:09:40.948', '2023-03-18 18:09:40.948', NULL, 'longblob', 8, 1, 8, 5);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (24, '2023-03-18 18:09:40.948', '2023-03-18 18:09:40.948', NULL, 'longtext', 9, 1, 9, 5);
INSERT INTO `sys_dictionary_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `label`, `value`, `status`, `sort`, `sys_dictionary_id`) VALUES (25, '2023-03-18 18:09:40.951', '2023-03-18 18:09:40.951', NULL, 'tinyint', 0, 1, 0, 6);
COMMIT;

-- ----------------------------
-- Table structure for sys_operation_records
-- ----------------------------
DROP TABLE IF EXISTS `sys_operation_records`;
CREATE TABLE `sys_operation_records` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `ip` varchar(191) DEFAULT NULL COMMENT '请求ip',
  `method` varchar(191) DEFAULT NULL COMMENT '请求方法',
  `path` varchar(191) DEFAULT NULL COMMENT '请求路径',
  `status` bigint(20) DEFAULT NULL COMMENT '请求状态',
  `latency` bigint(20) DEFAULT NULL COMMENT '延迟',
  `agent` varchar(191) DEFAULT NULL COMMENT '代理',
  `error_message` varchar(191) DEFAULT NULL COMMENT '错误信息',
  `body` text DEFAULT NULL COMMENT '请求Body',
  `resp` text DEFAULT NULL COMMENT '响应Body',
  `user_id` bigint(20) unsigned DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `idx_sys_operation_records_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_operation_records
-- ----------------------------
BEGIN;
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (1, '2023-03-18 18:27:36.456', '2023-03-18 18:27:36.456', NULL, '127.0.0.1', 'PUT', '/user/setSelfInfo', 200, 4518917, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":1,\"backend_setting\":{\"mode\":\"light\",\"tag\":true,\"menuCollapse\":false,\"menuWidth\":230,\"layout\":\"classic\",\"skin\":\"mine\",\"i18n\":false,\"language\":\"zh_CN\",\"animation\":\"ma-slide-down\",\"color\":\"#165dff\"}}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (2, '2023-03-18 18:27:46.388', '2023-03-18 18:27:46.388', NULL, '127.0.0.1', 'PUT', '/user/setSelfInfo', 200, 3602333, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":1,\"backend_setting\":{\"mode\":\"light\",\"tag\":true,\"menuCollapse\":false,\"menuWidth\":230,\"layout\":\"classic\",\"skin\":\"mine\",\"i18n\":false,\"language\":\"zh_CN\",\"animation\":\"ma-slide-down\",\"color\":\"#165dff\"}}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (3, '2023-03-18 22:53:29.444', '2023-03-18 22:53:29.444', NULL, '127.0.0.1', 'PUT', '/user/setSelfInfo', 200, 11386416, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":1,\"backend_setting\":{\"mode\":\"light\",\"tag\":true,\"menuCollapse\":false,\"menuWidth\":230,\"layout\":\"columns\",\"skin\":\"mine\",\"i18n\":false,\"language\":\"zh_CN\",\"animation\":\"ma-slide-down\",\"color\":\"#165dff\"}}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (4, '2023-03-18 22:53:41.548', '2023-03-18 22:53:41.548', NULL, '127.0.0.1', 'PUT', '/user/setSelfInfo', 200, 2914250, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":1,\"backend_setting\":{\"mode\":\"light\",\"tag\":true,\"menuCollapse\":false,\"menuWidth\":230,\"layout\":\"columns\",\"skin\":\"mine\",\"i18n\":false,\"language\":\"zh_CN\",\"animation\":\"ma-slide-down\",\"color\":\"#165dff\"}}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (5, '2023-03-18 23:44:38.845', '2023-03-18 23:44:38.845', NULL, '127.0.0.1', 'POST', '/sysDictionary/createSysDictionary', 200, 91250, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"status\":\"1\",\"name\":\"交易所\",\"code\":\"exchange\"}', '{\"code\":7,\"data\":{},\"msg\":\"json: cannot unmarshal string into Go struct field SysDictionary.status of type int\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (6, '2023-03-18 23:44:53.722', '2023-03-18 23:44:53.722', NULL, '127.0.0.1', 'POST', '/sysDictionary/createSysDictionary', 200, 27291, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"status\":\"1\",\"name\":\"a\",\"code\":\"a\"}', '{\"code\":7,\"data\":{},\"msg\":\"json: cannot unmarshal string into Go struct field SysDictionary.status of type int\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (7, '2023-03-18 23:46:26.060', '2023-03-18 23:46:26.060', NULL, '127.0.0.1', 'POST', '/sysDictionary/createSysDictionary', 200, 54123500, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"status\":1,\"name\":\"交易所\",\"code\":\"exchange\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (8, '2023-03-18 23:46:43.654', '2023-03-18 23:46:43.654', NULL, '127.0.0.1', 'POST', '/sysDictionary/createSysDictionary', 200, 52726166, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"status\":1,\"name\":\"adf\",\"code\":\"adfa\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (9, '2023-03-19 01:35:36.178', '2023-03-19 01:35:36.178', NULL, '127.0.0.1', 'POST', '/systemPost/createSystemPost', 200, 28250, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"sort\":1,\"status\":\"1\",\"name\":\"经理\",\"code\":\"manage\"}', '{\"code\":7,\"data\":{},\"msg\":\"json: cannot unmarshal string into Go struct field SystemPost.status of type int\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (10, '2023-03-19 01:36:25.763', '2023-03-19 01:36:25.763', NULL, '127.0.0.1', 'POST', '/systemPost/createSystemPost', 200, 2026209, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"sort\":1,\"status\":1,\"name\":\"abc\",\"code\":\"adf\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (11, '2023-03-19 01:36:42.674', '2023-03-19 01:36:42.674', NULL, '127.0.0.1', 'PUT', '/systemPost/updateSystemPost', 200, 3184167, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"name\":\"abc3\",\"code\":\"adf3\",\"sort\":1,\"status\":1,\"remark\":\"\",\"id\":1,\"CreatedAt\":\"2023-03-19T01:36:25+08:00\",\"UpdatedAt\":\"2023-03-19T01:36:25+08:00\",\"createdBy\":null,\"updatedBy\":null}', '{\"code\":0,\"data\":{},\"msg\":\"更新成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (12, '2023-03-19 01:36:47.654', '2023-03-19 01:36:47.654', NULL, '127.0.0.1', 'DELETE', '/systemPost/deleteSystemPostByIds', 200, 1359750, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"ids\":[1]}', '{\"code\":0,\"data\":{},\"msg\":\"批量删除成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (13, '2023-03-19 01:36:58.436', '2023-03-19 01:36:58.436', NULL, '127.0.0.1', 'POST', '/systemPost/createSystemPost', 200, 1235375, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"sort\":1,\"status\":1,\"name\":\"abc\",\"code\":\"abcd\",\"remark\":\"234\"}', '{\"code\":0,\"data\":{},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (14, '2023-03-19 01:47:20.044', '2023-03-19 01:47:20.044', NULL, '127.0.0.1', 'PUT', '/systemPost/changeSort', 200, 1245000, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"numberName\":\"sort\",\"numberValue\":2}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (15, '2023-03-19 01:47:20.965', '2023-03-19 01:47:20.965', NULL, '127.0.0.1', 'PUT', '/systemPost/changeSort', 200, 3046041, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"numberName\":\"sort\",\"numberValue\":2}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (16, '2023-03-19 01:47:21.909', '2023-03-19 01:47:21.909', NULL, '127.0.0.1', 'PUT', '/systemPost/changeSort', 200, 1400000, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"numberName\":\"sort\",\"numberValue\":3}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (17, '2023-03-19 01:47:22.546', '2023-03-19 01:47:22.546', NULL, '127.0.0.1', 'PUT', '/systemPost/changeSort', 200, 1793291, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"numberName\":\"sort\",\"numberValue\":3}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (18, '2023-03-19 01:47:26.910', '2023-03-19 01:47:26.910', NULL, '127.0.0.1', 'PUT', '/systemPost/changeStatus', 200, 81917, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"status\":\"2\"}', '{\"code\":7,\"data\":{},\"msg\":\"json: cannot unmarshal string into Go struct field SystemPost.status of type int\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (19, '2023-03-19 01:47:31.312', '2023-03-19 01:47:31.312', NULL, '127.0.0.1', 'PUT', '/systemPost/changeStatus', 200, 1598875, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"status\":1}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (20, '2023-03-19 01:47:34.178', '2023-03-19 01:47:34.178', NULL, '127.0.0.1', 'PUT', '/systemPost/changeStatus', 200, 40375, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"status\":\"2\"}', '{\"code\":7,\"data\":{},\"msg\":\"json: cannot unmarshal string into Go struct field SystemPost.status of type int\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (21, '2023-03-19 01:47:41.145', '2023-03-19 01:47:41.145', NULL, '127.0.0.1', 'PUT', '/systemPost/changeStatus', 200, 29000, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"status\":\"2\"}', '{\"code\":7,\"data\":{},\"msg\":\"json: cannot unmarshal string into Go struct field SystemPost.status of type int\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (22, '2023-03-19 01:49:56.847', '2023-03-19 01:49:56.847', NULL, '127.0.0.1', 'PUT', '/systemPost/changeStatus', 200, 1056042, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"status\":2}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (23, '2023-03-19 01:49:57.369', '2023-03-19 01:49:57.369', NULL, '127.0.0.1', 'PUT', '/systemPost/changeStatus', 200, 2549166, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"status\":1}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (24, '2023-03-19 01:49:59.701', '2023-03-19 01:49:59.701', NULL, '127.0.0.1', 'PUT', '/systemPost/changeStatus', 200, 1518041, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"status\":2}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (25, '2023-03-19 01:50:01.787', '2023-03-19 01:50:01.787', NULL, '127.0.0.1', 'PUT', '/systemPost/changeSort', 200, 1440709, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"numberName\":\"sort\",\"numberValue\":2}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (26, '2023-03-19 01:50:02.737', '2023-03-19 01:50:02.737', NULL, '127.0.0.1', 'PUT', '/systemPost/changeSort', 200, 1399667, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"numberName\":\"sort\",\"numberValue\":3}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (27, '2023-03-19 01:50:02.898', '2023-03-19 01:50:02.898', NULL, '127.0.0.1', 'PUT', '/systemPost/changeSort', 200, 1806083, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"numberName\":\"sort\",\"numberValue\":4}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (28, '2023-03-19 01:50:03.248', '2023-03-19 01:50:03.248', NULL, '127.0.0.1', 'PUT', '/systemPost/changeSort', 200, 1566375, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"numberName\":\"sort\",\"numberValue\":4}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (29, '2023-03-19 01:50:15.168', '2023-03-19 01:50:15.168', NULL, '127.0.0.1', 'PUT', '/systemPost/changeSort', 200, 1147417, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"numberName\":\"sort\",\"numberValue\":2}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (30, '2023-03-19 01:50:15.669', '2023-03-19 01:50:15.669', NULL, '127.0.0.1', 'PUT', '/systemPost/changeSort', 200, 1916500, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"numberName\":\"sort\",\"numberValue\":2}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (31, '2023-03-19 01:50:19.152', '2023-03-19 01:50:19.152', NULL, '127.0.0.1', 'PUT', '/systemPost/changeStatus', 200, 1408333, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"status\":2}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (32, '2023-03-19 01:50:21.369', '2023-03-19 01:50:21.369', NULL, '127.0.0.1', 'PUT', '/systemPost/changeStatus', 200, 1397750, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"status\":2}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (33, '2023-03-19 01:50:26.270', '2023-03-19 01:50:26.270', NULL, '127.0.0.1', 'PUT', '/systemPost/changeStatus', 200, 1637458, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"status\":2}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (34, '2023-03-19 01:50:51.723', '2023-03-19 01:50:51.723', NULL, '127.0.0.1', 'PUT', '/systemPost/changeStatus', 200, 2051417, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"status\":2}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (35, '2023-03-19 01:50:52.771', '2023-03-19 01:50:52.771', NULL, '127.0.0.1', 'PUT', '/systemPost/changeStatus', 200, 1451000, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"status\":1}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (36, '2023-03-19 01:51:50.146', '2023-03-19 01:51:50.146', NULL, '127.0.0.1', 'PUT', '/systemPost/changeStatus', 200, 2497750, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"id\":2,\"status\":2}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (37, '2023-03-19 02:44:51.545', '2023-03-19 02:44:51.545', NULL, '127.0.0.1', 'POST', '/authority/createAuthority', 200, 94375, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"sort\":1,\"status\":1,\"authorityName\":\"超管理\",\"code\":\"super\"}', '{\"code\":7,\"data\":{},\"msg\":\"AuthorityId值不能为空\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (38, '2023-03-19 02:49:44.133', '2023-03-19 02:49:44.133', NULL, '127.0.0.1', 'POST', '/authority/createAuthority', 200, 171416, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"sort\":1,\"status\":1,\"authorityId\":\"1234\",\"authorityName\":\"123\",\"code\":\"1234\"}', '{\"code\":7,\"data\":{},\"msg\":\"json: cannot unmarshal string into Go struct field SysAuthority.authorityId of type uint\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (39, '2023-03-19 02:50:27.690', '2023-03-19 02:50:27.690', NULL, '127.0.0.1', 'POST', '/authority/createAuthority', 200, 446622250, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"sort\":1,\"status\":1,\"authorityId\":1234,\"authorityName\":\"1234\",\"code\":\"1234\"}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"2023-03-19T02:50:27.259+08:00\",\"UpdatedAt\":\"2023-03-19T02:50:27.259+08:00\",\"DeletedAt\":null,\"authorityId\":1234,\"authorityName\":\"1234\",\"parentId\":null,\"code\":\"1234\",\"sort\":1,\"status\":1,\"remark\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (40, '2023-03-19 02:52:32.500', '2023-03-19 02:52:32.500', NULL, '127.0.0.1', 'POST', '/authority/createAuthority', 200, 13653250, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"sort\":1,\"status\":1,\"authorityId\":12,\"authorityName\":\"12\",\"code\":\"12\",\"parent_id\":0}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"2023-03-19T02:52:32.487+08:00\",\"UpdatedAt\":\"2023-03-19T02:52:32.487+08:00\",\"DeletedAt\":null,\"authorityId\":12,\"authorityName\":\"12\",\"parentId\":null,\"code\":\"12\",\"sort\":1,\"status\":1,\"remark\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (41, '2023-03-19 02:52:51.044', '2023-03-19 02:52:51.044', NULL, '127.0.0.1', 'POST', '/authority/createAuthority', 200, 44592083, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"sort\":1,\"status\":1,\"authorityId\":234234,\"authorityName\":\"fadfa\",\"code\":\"dfadf\",\"parent_id\":0}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"2023-03-19T02:52:51.006+08:00\",\"UpdatedAt\":\"2023-03-19T02:52:51.006+08:00\",\"DeletedAt\":null,\"authorityId\":234234,\"authorityName\":\"fadfa\",\"parentId\":null,\"code\":\"dfadf\",\"sort\":1,\"status\":1,\"remark\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (42, '2023-03-19 02:54:15.765', '2023-03-19 02:54:15.765', NULL, '127.0.0.1', 'POST', '/authority/createAuthority', 200, 13654292, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"sort\":1,\"status\":1,\"authorityId\":22,\"authorityName\":\"22\",\"code\":\"22\",\"parentId\":0}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"2023-03-19T02:54:15.753+08:00\",\"UpdatedAt\":\"2023-03-19T02:54:15.753+08:00\",\"DeletedAt\":null,\"authorityId\":22,\"authorityName\":\"22\",\"parentId\":0,\"code\":\"22\",\"sort\":1,\"status\":1,\"remark\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (43, '2023-03-19 03:13:03.470', '2023-03-19 03:13:03.470', NULL, '127.0.0.1', 'DELETE', '/authority/deleteAuthorityByIds', 200, 525517417, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"ids\":[22]}', '{\"code\":0,\"data\":{},\"msg\":\"批量删除成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (44, '2023-03-19 03:13:12.271', '2023-03-19 03:13:12.271', NULL, '127.0.0.1', 'DELETE', '/authority/deleteAuthorityByIds', 200, 12210000, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"ids\":[1234]}', '{\"code\":0,\"data\":{},\"msg\":\"批量删除成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (45, '2023-03-19 03:13:42.383', '2023-03-19 03:13:42.383', NULL, '127.0.0.1', 'DELETE', '/authority/deleteAuthorityByIds', 200, 7934208, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"ids\":[9528]}', '{\"code\":7,\"data\":{},\"msg\":\"批量删除失败\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (46, '2023-03-19 03:13:51.173', '2023-03-19 03:13:51.173', NULL, '127.0.0.1', 'POST', '/authority/createAuthority', 200, 92833, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"sort\":1,\"status\":1,\"authorityName\":\"ab\",\"code\":\"ab\",\"authorityId\":null,\"parentId\":0}', '{\"code\":7,\"data\":{},\"msg\":\"AuthorityId值不能为空\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (47, '2023-03-19 03:14:00.703', '2023-03-19 03:14:00.703', NULL, '127.0.0.1', 'POST', '/authority/createAuthority', 200, 51292, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"sort\":1,\"status\":1,\"authorityName\":\"ab\",\"code\":\"ab\",\"authorityId\":null,\"parentId\":0}', '{\"code\":7,\"data\":{},\"msg\":\"AuthorityId值不能为空\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (48, '2023-03-19 03:14:30.179', '2023-03-19 03:14:30.179', NULL, '127.0.0.1', 'POST', '/authority/createAuthority', 200, 407417, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"sort\":1,\"status\":1,\"authorityName\":\"34\",\"code\":\"23423\",\"authorityId\":null,\"parentId\":0}', '{\"code\":7,\"data\":{},\"msg\":\"AuthorityId值不能为空\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (49, '2023-03-19 03:19:10.761', '2023-03-19 03:19:10.761', NULL, '127.0.0.1', 'POST', '/authority/createAuthority', 200, 56784458, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"sort\":1,\"status\":1,\"roleid\":\"123\",\"authorityName\":\"123\",\"code\":\"123\",\"authorityId\":123,\"parentId\":0}', '{\"code\":0,\"data\":{\"authority\":{\"CreatedAt\":\"2023-03-19T03:19:10.706+08:00\",\"UpdatedAt\":\"2023-03-19T03:19:10.706+08:00\",\"DeletedAt\":null,\"authorityId\":123,\"authorityName\":\"123\",\"parentId\":0,\"code\":\"123\",\"sort\":1,\"status\":1,\"remark\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"dashboard\"}},\"msg\":\"创建成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (50, '2023-03-19 03:21:08.736', '2023-03-19 03:21:08.736', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 49083, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"menu_ids\":[1,4000]}', '{\"code\":7,\"data\":{},\"msg\":\"AuthorityId值不能为空\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (51, '2023-03-19 03:22:20.148', '2023-03-19 03:22:20.148', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 27292, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"menu\":[1,1000]}', '{\"code\":7,\"data\":{},\"msg\":\"AuthorityId值不能为空\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (52, '2023-03-19 03:22:32.344', '2023-03-19 03:22:32.344', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 1201042, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"menu\":[1]}', '{\"code\":7,\"data\":{},\"msg\":\"AuthorityId值不能为空\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (53, '2023-03-19 03:23:03.511', '2023-03-19 03:23:03.511', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 8581375, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"authorityId\":123,\"menu\":[1]}', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (54, '2023-03-19 03:24:02.992', '2023-03-19 03:24:02.992', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 51646791, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"authorityId\":123,\"menu\":[1000,2000,4500,1,1500,1200,1300,1400,1100,2600,2500,2700,2300,2200,2100,4502,4504,4505,4506,4507]}', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (55, '2023-03-19 03:38:44.366', '2023-03-19 03:38:44.366', NULL, '127.0.0.1', 'POST', '/user/admin_register', 200, 728458, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"password\":\"123456\",\"status\":\"1\",\"username\":\"abc\",\"dept_ids\":[\"__arco_tree6\"],\"role_ids\":[\"\"],\"post_ids\":[1],\"dataAuthorityId\":[\"\"],\"authorityId\":1,\"backend_setting\":{\"mode\":\"light\",\"tag\":true,\"menuCollapse\":false,\"menuWidth\":230,\"layout\":\"columns\",\"skin\":\"mine\",\"i18n\":false,\"language\":\"zh_CN\",\"animation\":\"ma-slide-down\",\"color\":\"#165dff\"}}', '{\"code\":7,\"data\":{},\"msg\":\"NickName值不能为空\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (56, '2023-03-19 03:39:06.130', '2023-03-19 03:39:06.130', NULL, '127.0.0.1', 'POST', '/user/admin_register', 200, 100636917, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"password\":\"123456\",\"status\":\"1\",\"username\":\"abca\",\"dept_ids\":[\"__arco_tree23\"],\"nickname\":\"asdfadsf\",\"role_ids\":[\"\"],\"dataAuthorityId\":[\"\"],\"authorityId\":1,\"backend_setting\":{\"mode\":\"light\",\"tag\":true,\"menuCollapse\":false,\"menuWidth\":230,\"layout\":\"columns\",\"skin\":\"mine\",\"i18n\":false,\"language\":\"zh_CN\",\"animation\":\"ma-slide-down\",\"color\":\"#165dff\"}}', '{\"code\":7,\"data\":{\"user\":{\"id\":0,\"CreatedAt\":\"2023-03-19T03:39:06.127+08:00\",\"UpdatedAt\":\"2023-03-19T03:39:06.127+08:00\",\"uuid\":\"8904443a-d65b-43e0-a87e-d0cc36092f06\",\"userName\":\"abca\",\"nickName\":\"asdfadsf\",\"sideMode\":\"dark\",\"headerImg\":\"https://qmplusimg.henrongyi.top/gva_header.jpg\",\"baseColor\":\"#fff\",\"activeColor\":\"#1890ff\",\"authorityId\":1,\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":0,\"authorityName\":\"\",\"parentId\":null,\"code\":\"\",\"sort\":null,\"status\":null,\"remark\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"\"},\"authorities\":null,\"phone\":\"\",\"email\":\"\",\"enable\":1,\"backend_setting\":{\"mode\":\"\",\"tag\":false,\"menuCollapse\":false,\"menuWidth\":0,\"layout\":\"\",\"skin\":\"\",\"i18n\":false,\"language\":\"\",\"animation\":\"\",\"color\":\"\"}}},\"msg\":\"注册失败\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (57, '2023-03-19 03:45:48.020', '2023-03-19 03:45:48.020', NULL, '127.0.0.1', 'POST', '/user/admin_register', 200, 210150584, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"password\":\"123456\",\"status\":\"1\",\"username\":\"abcd\",\"dept_ids\":[\"__arco_tree71\"],\"nickname\":\"adfa\",\"role_ids\":[888],\"post_ids\":[1],\"dataAuthorityId\":[888],\"authorityId\":1,\"backend_setting\":{\"mode\":\"light\",\"tag\":true,\"menuCollapse\":false,\"menuWidth\":230,\"layout\":\"columns\",\"skin\":\"mine\",\"i18n\":false,\"language\":\"zh_CN\",\"animation\":\"ma-slide-down\",\"color\":\"#165dff\"}}', '{\"code\":0,\"data\":{\"user\":{\"id\":3,\"CreatedAt\":\"2023-03-19T03:45:48.016+08:00\",\"UpdatedAt\":\"2023-03-19T03:45:48.016+08:00\",\"uuid\":\"f0078258-361f-4554-a55f-47dcbc5d12cc\",\"userName\":\"abcd\",\"nickName\":\"adfa\",\"sideMode\":\"dark\",\"headerImg\":\"https://qmplusimg.henrongyi.top/gva_header.jpg\",\"baseColor\":\"#fff\",\"activeColor\":\"#1890ff\",\"authorityId\":1,\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":0,\"authorityName\":\"\",\"parentId\":null,\"code\":\"\",\"sort\":null,\"status\":null,\"remark\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"\"},\"authorities\":null,\"phone\":\"\",\"email\":\"\",\"enable\":1,\"backend_setting\":{\"mode\":\"light\",\"tag\":true,\"menuCollapse\":false,\"menuWidth\":230,\"layout\":\"columns\",\"skin\":\"mine\",\"i18n\":false,\"language\":\"zh_CN\",\"animation\":\"ma-slide-down\",\"color\":\"#165dff\"}}},\"msg\":\"注册成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (58, '2023-03-19 03:47:28.137', '2023-03-19 03:47:28.137', NULL, '127.0.0.1', 'DELETE', '/user/deleteUser', 200, 78333, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"ids\":[3]}', '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (59, '2023-03-19 03:47:41.914', '2023-03-19 03:47:41.914', NULL, '127.0.0.1', 'DELETE', '/user/deleteUser', 200, 540625, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"ids\":[2]}', '{\"code\":7,\"data\":{},\"msg\":\"ID值不能为空\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (60, '2023-03-19 03:53:15.883', '2023-03-19 03:53:15.883', NULL, '127.0.0.1', 'DELETE', '/user/deleteUser', 200, 16184125, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"ids\":[2]}', '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (61, '2023-03-19 03:53:18.678', '2023-03-19 03:53:18.678', NULL, '127.0.0.1', 'DELETE', '/user/deleteUser', 200, 108097959, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"ids\":[3]}', '{\"code\":0,\"data\":{},\"msg\":\"删除成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (62, '2023-03-19 03:54:17.533', '2023-03-19 03:54:17.533', NULL, '127.0.0.1', 'POST', '/menu/addMenuAuthority', 200, 474991875, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"authorityId\":123,\"menu\":[1000,1,1500,1200,1300,1400,1100]}', '{\"code\":0,\"data\":{},\"msg\":\"添加成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (63, '2023-03-19 03:54:41.893', '2023-03-19 03:54:41.893', NULL, '127.0.0.1', 'POST', '/user/admin_register', 200, 80164291, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"password\":\"123456\",\"status\":\"1\",\"username\":\"leven\",\"dept_ids\":[\"__arco_tree4\"],\"nickname\":\"leven\",\"role_ids\":[123],\"post_ids\":[1],\"dataAuthorityId\":[123],\"authorityId\":1,\"backend_setting\":{\"mode\":\"light\",\"tag\":true,\"menuCollapse\":false,\"menuWidth\":230,\"layout\":\"columns\",\"skin\":\"mine\",\"i18n\":false,\"language\":\"zh_CN\",\"animation\":\"ma-slide-down\",\"color\":\"#165dff\"}}', '{\"code\":0,\"data\":{\"user\":{\"id\":4,\"CreatedAt\":\"2023-03-19T03:54:41.892+08:00\",\"UpdatedAt\":\"2023-03-19T03:54:41.892+08:00\",\"uuid\":\"9b74445e-fd9f-486b-b0d4-36b174244b48\",\"userName\":\"leven\",\"nickName\":\"leven\",\"sideMode\":\"dark\",\"headerImg\":\"https://qmplusimg.henrongyi.top/gva_header.jpg\",\"baseColor\":\"#fff\",\"activeColor\":\"#1890ff\",\"authorityId\":1,\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":0,\"authorityName\":\"\",\"parentId\":null,\"code\":\"\",\"sort\":null,\"status\":null,\"remark\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"\"},\"authorities\":null,\"phone\":\"\",\"email\":\"\",\"enable\":1,\"backend_setting\":{\"mode\":\"light\",\"tag\":true,\"menuCollapse\":false,\"menuWidth\":230,\"layout\":\"columns\",\"skin\":\"mine\",\"i18n\":false,\"language\":\"zh_CN\",\"animation\":\"ma-slide-down\",\"color\":\"#165dff\"}}},\"msg\":\"注册成功\"}', 1);
INSERT INTO `sys_operation_records` (`id`, `created_at`, `updated_at`, `deleted_at`, `ip`, `method`, `path`, `status`, `latency`, `agent`, `error_message`, `body`, `resp`, `user_id`) VALUES (64, '2023-03-19 03:56:14.085', '2023-03-19 03:56:14.085', NULL, '127.0.0.1', 'PUT', '/user/setUserInfo', 200, 29955125, 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/107.0.0.0 Safari/537.36', '', '{\"password\":\"\",\"status\":\"1\",\"username\":\"leven\",\"dept_ids\":[\"__arco_tree4\"],\"nickname\":\"leven\",\"role_ids\":[12,123],\"phone\":\"\",\"post_ids\":[1],\"email\":\"\",\"dataAuthorityId\":[123],\"authorityId\":1,\"backend_setting\":{\"mode\":\"light\",\"tag\":true,\"menuCollapse\":false,\"menuWidth\":230,\"layout\":\"columns\",\"skin\":\"mine\",\"i18n\":false,\"language\":\"zh_CN\",\"animation\":\"ma-slide-down\",\"color\":\"#165dff\"},\"id\":4,\"CreatedAt\":\"2023-03-19T03:54:41.892+08:00\",\"UpdatedAt\":\"2023-03-19T03:54:41.892+08:00\",\"uuid\":\"9b74445e-fd9f-486b-b0d4-36b174244b48\",\"userName\":\"leven\",\"nickName\":\"leven\",\"sideMode\":\"dark\",\"headerImg\":\"https://qmplusimg.henrongyi.top/gva_header.jpg\",\"baseColor\":\"#fff\",\"activeColor\":\"#1890ff\",\"authority\":{\"CreatedAt\":\"0001-01-01T00:00:00Z\",\"UpdatedAt\":\"0001-01-01T00:00:00Z\",\"DeletedAt\":null,\"authorityId\":0,\"authorityName\":\"\",\"parentId\":null,\"code\":\"\",\"sort\":null,\"status\":null,\"remark\":\"\",\"dataAuthorityId\":null,\"children\":null,\"menus\":null,\"defaultRouter\":\"\"},\"authorities\":[],\"enable\":1}', '{\"code\":0,\"data\":{},\"msg\":\"设置成功\"}', 1);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_authority
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_authority`;
CREATE TABLE `sys_user_authority` (
  `sys_user_id` bigint(20) unsigned NOT NULL,
  `sys_authority_authority_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`sys_user_id`,`sys_authority_authority_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_user_authority
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_authority` (`sys_user_id`, `sys_authority_authority_id`) VALUES (1, 888);
INSERT INTO `sys_user_authority` (`sys_user_id`, `sys_authority_authority_id`) VALUES (1, 8881);
INSERT INTO `sys_user_authority` (`sys_user_id`, `sys_authority_authority_id`) VALUES (1, 9528);
COMMIT;

-- ----------------------------
-- Table structure for sys_users
-- ----------------------------
DROP TABLE IF EXISTS `sys_users`;
CREATE TABLE `sys_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `uuid` varchar(191) DEFAULT NULL COMMENT '用户UUID',
  `username` varchar(191) DEFAULT NULL COMMENT '用户登录名',
  `password` varchar(191) DEFAULT NULL COMMENT '用户登录密码',
  `nick_name` varchar(191) DEFAULT '系统用户' COMMENT '用户昵称',
  `side_mode` varchar(191) DEFAULT 'dark' COMMENT '用户侧边主题',
  `header_img` varchar(191) DEFAULT 'https://qmplusimg.henrongyi.top/gva_header.jpg' COMMENT '用户头像',
  `base_color` varchar(191) DEFAULT '#fff' COMMENT '基础颜色',
  `active_color` varchar(191) DEFAULT '#1890ff' COMMENT '活跃颜色',
  `authority_id` bigint(20) unsigned DEFAULT 888 COMMENT '用户角色ID',
  `phone` varchar(191) DEFAULT NULL COMMENT '用户手机号',
  `email` varchar(191) DEFAULT NULL COMMENT '用户邮箱',
  `enable` bigint(20) DEFAULT 1 COMMENT '用户是否被冻结 1正常 2冻结',
  `backend_setting` longblob DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sys_users_deleted_at` (`deleted_at`),
  KEY `idx_sys_users_uuid` (`uuid`),
  KEY `idx_sys_users_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of sys_users
-- ----------------------------
BEGIN;
INSERT INTO `sys_users` (`id`, `created_at`, `updated_at`, `deleted_at`, `uuid`, `username`, `password`, `nick_name`, `side_mode`, `header_img`, `base_color`, `active_color`, `authority_id`, `phone`, `email`, `enable`, `backend_setting`) VALUES (1, '2023-03-18 18:09:41.108', '2023-03-18 22:53:41.545', NULL, 'ff0bb81c-f8cc-42e2-a158-99a8ce5b21fa', 'admin', '$2a$10$Dj9hJkto1ivybHJC8W.cCODLG9zXQ6sWOkHlbkTzd.lmTHCeclIDS', 'Mr.奇淼', 'dark', 'https://qmplusimg.henrongyi.top/gva_header.jpg', '#fff', '#1890ff', 888, '17611111111', '333333333@qq.com', 1, 0xFF8EFF810301010E4261636B656E6453657474696E6701FF8200010A01044D6F6465010C000103546167010200010C4D656E75436F6C6C6170736501020001094D656E75576964746801040001064C61796F7574010C000104536B696E010C0001044931384E01020001084C616E6775616765010C000109416E696D6174696F6E010C000105436F6C6F72010C0000003EFF8201056C69676874010102FE01CC0107636F6C756D6E7301046D696E6502057A685F434E010D6D612D736C6964652D646F776E01072331363564666600);
INSERT INTO `sys_users` (`id`, `created_at`, `updated_at`, `deleted_at`, `uuid`, `username`, `password`, `nick_name`, `side_mode`, `header_img`, `base_color`, `active_color`, `authority_id`, `phone`, `email`, `enable`, `backend_setting`) VALUES (2, '2023-03-18 18:09:41.108', '2023-03-18 18:09:41.112', '2023-03-19 03:53:15.868', 'eebd41f2-2570-424e-bce8-85a5b686dfbe', 'a303176530', '$2a$10$lHb/xQsjiwSSwECHstAqQeZNNV70gfWwyJ8AeD0zgV6ThyUaEoLzO', '用户1', 'dark', 'https:///qmplusimg.henrongyi.top/1572075907logo.png', '#fff', '#1890ff', 9528, '17611111111', '333333333@qq.com', 1, NULL);
INSERT INTO `sys_users` (`id`, `created_at`, `updated_at`, `deleted_at`, `uuid`, `username`, `password`, `nick_name`, `side_mode`, `header_img`, `base_color`, `active_color`, `authority_id`, `phone`, `email`, `enable`, `backend_setting`) VALUES (3, '2023-03-19 03:45:48.016', '2023-03-19 03:45:48.016', '2023-03-19 03:53:18.668', 'f0078258-361f-4554-a55f-47dcbc5d12cc', 'abcd', '$2a$10$7OFSsdsdBpk9/707iwsoN.PfTEvVV6OI5Muue4IuCbZQ/IV7/7fN2', 'adfa', 'dark', 'https://qmplusimg.henrongyi.top/gva_header.jpg', '#fff', '#1890ff', 1, '', '', 1, 0xFF8EFF810301010E4261636B656E6453657474696E6701FF8200010A01044D6F6465010C000103546167010200010C4D656E75436F6C6C6170736501020001094D656E75576964746801040001064C61796F7574010C000104536B696E010C0001044931384E01020001084C616E6775616765010C000109416E696D6174696F6E010C000105436F6C6F72010C0000003EFF8201056C69676874010102FE01CC0107636F6C756D6E7301046D696E6502057A685F434E010D6D612D736C6964652D646F776E01072331363564666600);
INSERT INTO `sys_users` (`id`, `created_at`, `updated_at`, `deleted_at`, `uuid`, `username`, `password`, `nick_name`, `side_mode`, `header_img`, `base_color`, `active_color`, `authority_id`, `phone`, `email`, `enable`, `backend_setting`) VALUES (4, '2023-03-19 03:54:41.892', '2023-03-19 03:56:14.054', NULL, '9b74445e-fd9f-486b-b0d4-36b174244b48', 'leven', '$2a$10$HBwhsCcVInSgl5oWRyuf1eSjJrJ6p66PZoVxJ9v1mpOtm4SDtqWdK', 'leven', 'dark', 'https://qmplusimg.henrongyi.top/gva_header.jpg', '#fff', '#1890ff', 1, '', '', 1, 0xFF8EFF810301010E4261636B656E6453657474696E6701FF8200010A01044D6F6465010C000103546167010200010C4D656E75436F6C6C6170736501020001094D656E75576964746801040001064C61796F7574010C000104536B696E010C0001044931384E01020001084C616E6775616765010C000109416E696D6174696F6E010C000105436F6C6F72010C0000003EFF8201056C69676874010102FE01CC0107636F6C756D6E7301046D696E6502057A685F434E010D6D612D736C6964652D646F776E01072331363564666600);
COMMIT;

-- ----------------------------
-- Table structure for system_dept
-- ----------------------------
DROP TABLE IF EXISTS `system_dept`;
CREATE TABLE `system_dept` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `parent_id` bigint(20) unsigned NOT NULL COMMENT '父ID',
  `level` varchar(500) NOT NULL COMMENT '组级集合',
  `name` varchar(30) NOT NULL COMMENT '部门名称',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `status` smallint(6) DEFAULT 1 COMMENT '状态 (1正常 2停用)',
  `sort` smallint(5) unsigned DEFAULT 0 COMMENT '排序',
  `created_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `updated_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `system_dept_parent_id_index` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='部门信息表';

-- ----------------------------
-- Records of system_dept
-- ----------------------------
BEGIN;
INSERT INTO `system_dept` (`id`, `parent_id`, `level`, `name`, `leader`, `phone`, `status`, `sort`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`) VALUES (1, 0, '0', '曼艺科技', '曼艺', '16888888888', 1, 0, 1000, NULL, '2023-03-12 03:30:29', '2023-03-12 03:30:29', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for system_dept_leader
-- ----------------------------
DROP TABLE IF EXISTS `system_dept_leader`;
CREATE TABLE `system_dept_leader` (
  `dept_id` bigint(20) unsigned NOT NULL COMMENT '部门主键',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户主键',
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `created_at` timestamp NOT NULL COMMENT '添加时间',
  PRIMARY KEY (`dept_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='部门领导表';

-- ----------------------------
-- Records of system_dept_leader
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for system_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `system_dict_data`;
CREATE TABLE `system_dict_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `type_id` bigint(20) unsigned NOT NULL COMMENT '字典类型ID',
  `label` varchar(191) DEFAULT NULL COMMENT '展示值',
  `value` varchar(191) DEFAULT NULL COMMENT '字典值',
  `code` varchar(191) DEFAULT NULL COMMENT '展示值',
  `sort` bigint(20) DEFAULT NULL COMMENT '排序标记',
  `status` bigint(20) DEFAULT NULL COMMENT '启用状态',
  `created_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `updated_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `sys_dictionary_id` bigint(20) unsigned DEFAULT NULL COMMENT '关联标记',
  PRIMARY KEY (`id`),
  KEY `system_dict_data_type_id_index` (`type_id`),
  KEY `idx_system_dict_data_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='字典数据表';

-- ----------------------------
-- Records of system_dict_data
-- ----------------------------
BEGIN;
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (1, 1, 'InnoDB', 'InnoDB', 'table_engine', 0, 1, NULL, NULL, '2021-06-27 00:37:11.000', '2021-06-27 13:33:29.000', NULL, NULL, 1);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (2, 1, 'MyISAM', 'MyISAM', 'table_engine', NULL, 2, NULL, NULL, '2021-06-27 00:37:21.000', '2023-03-19 01:51:50.143', NULL, NULL, 1);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (3, 2, '本地存储', '1', 'upload_mode', 99, 1, NULL, NULL, '2021-06-27 13:33:43.000', '2021-06-27 13:33:43.000', NULL, NULL, 2);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (4, 2, '阿里云OSS', '2', 'upload_mode', 98, 1, NULL, NULL, '2021-06-27 13:33:55.000', '2021-06-27 13:33:55.000', NULL, NULL, 2);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (5, 2, '七牛云', '3', 'upload_mode', 97, 1, NULL, NULL, '2021-06-27 13:34:07.000', '2021-06-27 13:34:07.000', NULL, NULL, 2);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (6, 2, '腾讯云COS', '4', 'upload_mode', 96, 1, NULL, NULL, '2021-06-27 13:34:19.000', '2021-06-27 13:34:19.000', NULL, NULL, 2);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (7, 3, '正常', '1', 'data_status', 0, 1, NULL, NULL, '2021-06-27 13:36:51.000', '2021-06-27 13:37:01.000', NULL, '0为正常', 3);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (8, 3, '停用', '2', 'data_status', 0, 1, NULL, NULL, '2021-06-27 13:37:10.000', '2021-06-27 13:37:10.000', NULL, '1为停用', 3);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (9, 4, '统计页面', 'statistics', 'dashboard', 0, 1, NULL, NULL, '2021-08-09 12:53:53.000', '2021-08-09 12:53:53.000', NULL, '管理员用', 4);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (10, 4, '工作台', 'work', 'dashboard', 0, 1, NULL, NULL, '2021-08-09 12:54:18.000', '2021-08-09 12:54:18.000', NULL, '员工使用', 4);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (11, 5, '男', '1', 'sex', 0, 1, NULL, NULL, '2021-08-09 12:55:00.000', '2021-08-09 12:55:00.000', NULL, NULL, 5);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (12, 5, '女', '2', 'sex', 0, 1, NULL, NULL, '2021-08-09 12:55:08.000', '2021-08-09 12:55:08.000', NULL, NULL, 5);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (13, 5, '未知', '3', 'sex', 0, 1, NULL, NULL, '2021-08-09 12:55:16.000', '2021-08-09 12:55:16.000', NULL, NULL, 5);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (14, 6, 'String', '1', 'api_data_type', 7, 1, NULL, NULL, '2021-11-23 10:49:00.000', '2021-11-23 10:49:00.000', NULL, NULL, 6);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (15, 6, 'Integer', '2', 'api_data_type', 6, 1, NULL, NULL, '2021-11-23 10:49:29.000', '2021-11-23 10:49:29.000', NULL, NULL, 6);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (16, 6, 'Array', '3', 'api_data_type', 5, 1, NULL, NULL, '2021-11-23 10:49:38.000', '2021-11-23 10:49:38.000', NULL, NULL, 6);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (17, 6, 'Float', '4', 'api_data_type', 4, 1, NULL, NULL, '2021-11-23 10:49:46.000', '2021-11-23 10:49:46.000', NULL, NULL, 6);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (18, 6, 'Boolean', '5', 'api_data_type', 3, 1, NULL, NULL, '2021-11-23 10:49:54.000', '2021-11-23 10:49:54.000', NULL, NULL, 6);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (19, 6, 'Enum', '6', 'api_data_type', 2, 1, NULL, NULL, '2021-11-23 10:50:17.000', '2021-11-23 10:50:17.000', NULL, NULL, 6);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (20, 6, 'Object', '7', 'api_data_type', 1, 1, NULL, NULL, '2021-11-23 10:50:26.000', '2021-11-23 10:50:26.000', NULL, NULL, 6);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (21, 6, 'File', '8', 'api_data_type', 0, 1, NULL, NULL, '2021-12-25 18:32:48.000', '2021-12-25 18:32:48.000', NULL, NULL, 6);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (22, 7, '通知', '1', 'backend_notice_type', 2, 1, NULL, NULL, '2021-11-11 17:29:27.000', '2021-11-11 17:30:51.000', NULL, NULL, 7);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (23, 7, '公告', '2', 'backend_notice_type', 1, 1, NULL, NULL, '2021-11-11 17:31:42.000', '2021-11-11 17:31:42.000', NULL, NULL, 7);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (24, 8, '所有', 'A', 'request_mode', 5, 1, NULL, NULL, '2021-11-14 17:23:25.000', '2021-11-14 17:23:25.000', NULL, NULL, 8);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (25, 8, 'GET', 'G', 'request_mode', 4, 1, NULL, NULL, '2021-11-14 17:23:45.000', '2021-11-14 17:23:45.000', NULL, NULL, 8);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (26, 8, 'POST', 'P', 'request_mode', 3, 1, NULL, NULL, '2021-11-14 17:23:38.000', '2021-11-14 17:23:38.000', NULL, NULL, 8);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (27, 8, 'PUT', 'U', 'request_mode', 2, 1, NULL, NULL, '2021-11-14 17:23:45.000', '2021-11-14 17:23:45.000', NULL, NULL, 8);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (28, 8, 'DELETE', 'D', 'request_mode', 1, 1, NULL, NULL, '2021-11-14 17:23:45.000', '2021-11-14 17:23:45.000', NULL, NULL, 8);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (29, 9, '未生产', '1', 'queue_produce_status', 5, 1, NULL, NULL, '2021-12-25 18:25:28.000', '2021-12-25 18:25:28.000', NULL, NULL, 9);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (30, 9, '生产中', '2', 'queue_produce_status', 4, 1, NULL, NULL, '2021-12-25 18:25:38.000', '2021-12-25 18:25:38.000', NULL, NULL, 9);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (31, 9, '生产成功', '3', 'queue_produce_status', 3, 1, NULL, NULL, '2021-12-25 18:25:50.000', '2021-12-25 18:25:50.000', NULL, NULL, 9);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (32, 9, '生产失败', '4', 'queue_produce_status', 2, 1, NULL, NULL, '2021-12-25 18:26:14.000', '2021-12-25 18:26:14.000', NULL, NULL, 9);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (33, 9, '生产重复', '5', 'queue_produce_status', 1, 1, NULL, NULL, '2021-12-25 18:26:30.000', '2021-12-25 18:26:30.000', NULL, NULL, 9);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (34, 10, '未消费', '1', 'queue_consume_status', 5, 1, NULL, NULL, '2021-12-25 18:26:57.000', '2021-12-25 18:26:57.000', NULL, NULL, 10);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (35, 10, '消费中', '2', 'queue_consume_status', 4, 1, NULL, NULL, '2021-12-25 18:27:07.000', '2021-12-25 18:27:07.000', NULL, NULL, 10);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (36, 10, '消费成功', '3', 'queue_consume_status', 3, 1, NULL, NULL, '2021-12-25 18:27:16.000', '2021-12-25 18:27:16.000', NULL, NULL, 10);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (37, 10, '消费失败', '4', 'queue_consume_status', 2, 1, NULL, NULL, '2021-12-25 18:27:24.000', '2021-12-25 18:27:24.000', NULL, NULL, 10);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (38, 10, '消费重复', '5', 'queue_consume_status', 1, 1, NULL, NULL, '2021-12-25 18:27:35.000', '2021-12-25 18:27:35.000', NULL, NULL, 10);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (39, 11, '通知', 'notice', 'queue_msg_type', 1, 1, NULL, NULL, '2021-12-25 18:30:31.000', '2021-12-25 18:30:31.000', NULL, NULL, 11);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (40, 11, '公告', 'announcement', 'queue_msg_type', 2, 1, NULL, NULL, '2021-12-25 18:31:00.000', '2021-12-25 18:31:00.000', NULL, NULL, 11);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (41, 11, '待办', 'todo', 'queue_msg_type', 3, 1, NULL, NULL, '2021-12-25 18:31:26.000', '2021-12-25 18:31:26.000', NULL, NULL, 11);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (42, 11, '抄送我的', 'carbon_copy_mine', 'queue_msg_type', 4, 1, NULL, NULL, '2021-12-25 18:31:26.000', '2021-12-25 18:31:26.000', NULL, NULL, 11);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (43, 11, '私信', 'private_message', 'queue_msg_type', 5, 1, NULL, NULL, '2021-12-25 18:31:26.000', '2021-12-25 18:31:26.000', NULL, NULL, 11);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (44, 12, '图片', 'image', 'attachment_type', 10, 1, NULL, NULL, '2022-03-17 14:49:59.000', '2022-03-17 14:49:59.000', NULL, NULL, 12);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (45, 12, '文档', 'text', 'attachment_type', 9, 1, NULL, NULL, '2022-03-17 14:50:20.000', '2022-03-17 14:50:49.000', NULL, NULL, 12);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (46, 12, '音频', 'audio', 'attachment_type', 8, 1, NULL, NULL, '2022-03-17 14:50:37.000', '2022-03-17 14:50:52.000', NULL, NULL, 12);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (47, 12, '视频', 'video', 'attachment_type', 7, 1, NULL, NULL, '2022-03-17 14:50:45.000', '2022-03-17 14:50:57.000', NULL, NULL, 12);
INSERT INTO `system_dict_data` (`id`, `type_id`, `label`, `value`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `sys_dictionary_id`) VALUES (48, 12, '应用程序', 'application', 'attachment_type', 6, 1, NULL, NULL, '2022-03-17 14:50:52.000', '2022-03-17 14:50:59.000', NULL, NULL, 12);
COMMIT;

-- ----------------------------
-- Table structure for system_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `system_dict_type`;
CREATE TABLE `system_dict_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(191) DEFAULT NULL COMMENT '字典名（中）',
  `code` varchar(191) DEFAULT NULL COMMENT '字典名（英）',
  `status` bigint(20) DEFAULT NULL COMMENT '状态',
  `created_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `updated_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` datetime(3) DEFAULT NULL,
  `updated_at` datetime(3) DEFAULT NULL,
  `deleted_at` datetime(3) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `desc` varchar(191) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`),
  KEY `idx_system_dict_type_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='字典类型表';

-- ----------------------------
-- Records of system_dict_type
-- ----------------------------
BEGIN;
INSERT INTO `system_dict_type` (`id`, `name`, `code`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `desc`) VALUES (1, '数据表引擎', 'table_engine', 1, NULL, NULL, '2021-06-27 00:36:42.000', '2021-06-27 13:33:29.000', NULL, '数据表引擎字典', NULL);
INSERT INTO `system_dict_type` (`id`, `name`, `code`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `desc`) VALUES (2, '存储模式', 'upload_mode', 1, NULL, NULL, '2021-06-27 13:33:11.000', '2021-06-27 13:33:11.000', NULL, '上传文件存储模式', NULL);
INSERT INTO `system_dict_type` (`id`, `name`, `code`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `desc`) VALUES (3, '数据状态', 'data_status', 1, NULL, NULL, '2021-06-27 13:36:16.000', '2021-06-27 13:36:34.000', NULL, '通用数据状态', NULL);
INSERT INTO `system_dict_type` (`id`, `name`, `code`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `desc`) VALUES (4, '后台首页', 'dashboard', 1, NULL, NULL, '2021-08-09 12:53:17.000', '2021-08-09 12:53:17.000', NULL, NULL, NULL);
INSERT INTO `system_dict_type` (`id`, `name`, `code`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `desc`) VALUES (5, '性别', 'sex', 1, NULL, NULL, '2021-08-09 12:54:40.000', '2021-08-09 12:54:40.000', NULL, NULL, NULL);
INSERT INTO `system_dict_type` (`id`, `name`, `code`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `desc`) VALUES (6, '接口数据类型', 'api_data_type', 1, NULL, NULL, '2021-11-22 20:56:03.000', '2021-11-22 20:56:03.000', NULL, NULL, NULL);
INSERT INTO `system_dict_type` (`id`, `name`, `code`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `desc`) VALUES (7, '后台公告类型', 'backend_notice_type', 1, NULL, NULL, '2021-11-11 17:29:05.000', '2021-11-11 17:29:14.000', NULL, NULL, NULL);
INSERT INTO `system_dict_type` (`id`, `name`, `code`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `desc`) VALUES (8, '请求方式', 'request_mode', 1, NULL, NULL, '2021-11-14 17:22:52.000', '2021-11-14 17:22:52.000', NULL, NULL, NULL);
INSERT INTO `system_dict_type` (`id`, `name`, `code`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `desc`) VALUES (9, '队列生产状态', 'queue_produce_status', 1, NULL, NULL, '2021-12-25 18:22:38.000', '2021-12-25 18:22:38.000', NULL, NULL, NULL);
INSERT INTO `system_dict_type` (`id`, `name`, `code`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `desc`) VALUES (10, '队列消费状态', 'queue_consume_status', 1, NULL, NULL, '2021-12-25 18:23:19.000', '2021-12-25 18:23:19.000', NULL, NULL, NULL);
INSERT INTO `system_dict_type` (`id`, `name`, `code`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `desc`) VALUES (11, '队列消息类型', 'queue_msg_type', 1, NULL, NULL, '2021-12-25 18:28:40.000', '2021-12-25 18:28:40.000', NULL, NULL, NULL);
INSERT INTO `system_dict_type` (`id`, `name`, `code`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `desc`) VALUES (12, '附件类型', 'attachment_type', 1, NULL, NULL, '2022-03-17 14:49:23.000', '2022-03-17 14:49:23.000', NULL, NULL, NULL);
INSERT INTO `system_dict_type` (`id`, `name`, `code`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `desc`) VALUES (13, '交易所', 'exchange', 1, NULL, NULL, '2023-03-18 23:46:26.049', '2023-03-18 23:46:26.049', NULL, NULL, '');
INSERT INTO `system_dict_type` (`id`, `name`, `code`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`, `desc`) VALUES (14, 'adf', 'adfa', 1, NULL, NULL, '2023-03-18 23:46:43.648', '2023-03-18 23:46:43.648', NULL, NULL, '');
COMMIT;

-- ----------------------------
-- Table structure for system_post
-- ----------------------------
DROP TABLE IF EXISTS `system_post`;
CREATE TABLE `system_post` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(50) NOT NULL COMMENT '岗位名称',
  `code` varchar(100) NOT NULL COMMENT '岗位代码',
  `sort` smallint(5) unsigned DEFAULT 0 COMMENT '排序',
  `status` smallint(6) DEFAULT 1 COMMENT '状态 (1正常 2停用)',
  `created_by` bigint(20) DEFAULT NULL COMMENT '创建者',
  `updated_by` bigint(20) DEFAULT NULL COMMENT '更新者',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT '删除时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='岗位信息表';

-- ----------------------------
-- Records of system_post
-- ----------------------------
BEGIN;
INSERT INTO `system_post` (`id`, `name`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`) VALUES (1, 'abc3', 'adf3', 1, 1, NULL, NULL, '2023-03-19 01:36:25', '2023-03-19 01:36:42', '2023-03-19 01:36:47', '');
INSERT INTO `system_post` (`id`, `name`, `code`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `remark`) VALUES (2, 'abc', 'abcd', 1, 1, NULL, NULL, '2023-03-19 01:36:58', '2023-03-19 01:36:58', NULL, '234');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
