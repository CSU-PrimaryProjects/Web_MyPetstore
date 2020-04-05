/*
 Navicat Premium Data Transfer

 Source Server         : SuanCaiyu
 Source Server Type    : MySQL
 Source Server Version : 50519
 Source Host           : localhost:3306
 Source Schema         : mypetstore

 Target Server Type    : MySQL
 Target Server Version : 50519
 File Encoding         : 65001

 Date: 04/04/2020 23:42:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `userid` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `firstname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lastname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` int(1) NOT NULL,
  `addr1` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addr2` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `country` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('a', 'a', 'a', 'a', 0, 'a', 'a', 'aa', 'a', 'a', 'a', 'a');
INSERT INTO `account` VALUES ('ACID', 'acid@yourdomain.com', 'ABC', 'XYX', 0, '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');
INSERT INTO `account` VALUES ('j2ee', 'yourname@yourdomain.com', 'ABC', 'XYX', 0, '901 San Antonio Road', 'MS UCUP02-206', 'Palo Alto', 'CA', '94303', 'USA', '555-555-5555');

-- ----------------------------
-- Table structure for bannerdata
-- ----------------------------
DROP TABLE IF EXISTS `bannerdata`;
CREATE TABLE `bannerdata`  (
  `favcategory` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `bannername` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`favcategory`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bannerdata
-- ----------------------------
INSERT INTO `bannerdata` VALUES ('BIRDS', '<image src=\"images/banner_birds.gif\">');
INSERT INTO `bannerdata` VALUES ('CATS', '<image src=\"images/banner_cats.gif\">');
INSERT INTO `bannerdata` VALUES ('DOGS', '<image src=\"images/banner_dogs.gif\">');
INSERT INTO `bannerdata` VALUES ('FISH', '<image src=\"images/banner_fish.gif\">');
INSERT INTO `bannerdata` VALUES ('REPTILES', '<image src=\"images/banner_reptiles.gif\">');

-- ----------------------------
-- Table structure for carts
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts`  (
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `itemId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `productId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quantity` int(255) NULL DEFAULT NULL,
  `listPrice` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of carts
-- ----------------------------
INSERT INTO `carts` VALUES ('a', 'EST-8', 'K9-PO-02', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-6', 'K9-BD-01', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-8', 'K9-PO-02', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-8', 'K9-PO-02', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-21', 'FI-FW-02', 1, '5.29');
INSERT INTO `carts` VALUES ('a', 'EST-6', 'K9-BD-01', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-12', 'RP-SN-01', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-7', 'K9-BD-01', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-13', 'RP-LI-02', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-13', 'RP-LI-02', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-17', 'FL-DLH-02', 1, '93.50');
INSERT INTO `carts` VALUES ('a', 'EST-8', 'K9-PO-02', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-18', 'AV-CB-01', 1, '193.50');
INSERT INTO `carts` VALUES ('a', 'EST-7', 'K9-BD-01', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-18', 'AV-CB-01', 1, '193.50');
INSERT INTO `carts` VALUES ('', 'EST-18', 'AV-CB-01', 1, '193.50');
INSERT INTO `carts` VALUES ('', 'EST-18', 'AV-CB-01', 1, '193.50');
INSERT INTO `carts` VALUES ('a', 'EST-8', 'K9-PO-02', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-28', 'K9-RT-01', 1, '155.29');
INSERT INTO `carts` VALUES (NULL, 'EST-8', 'K9-PO-02', 1, '18.50');
INSERT INTO `carts` VALUES (NULL, 'EST-19', 'AV-SB-02', 1, '15.50');
INSERT INTO `carts` VALUES ('a', 'EST-26', 'K9-CW-01', 1, '125.50');
INSERT INTO `carts` VALUES ('a', 'EST-15', 'FL-DSH-01', 1, '23.50');
INSERT INTO `carts` VALUES ('a', 'EST-18', 'AV-CB-01', 1, '193.50');
INSERT INTO `carts` VALUES ('a', 'EST-11', 'RP-SN-01', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-8', 'K9-PO-02', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-8', 'K9-PO-02', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-10', 'K9-DL-01', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-16', 'FL-DLH-02', 1, '93.50');
INSERT INTO `carts` VALUES ('a', 'EST-28', 'K9-RT-01', 1, '155.29');
INSERT INTO `carts` VALUES ('a', 'EST-8', 'K9-PO-02', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-8', 'K9-PO-02', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-5', 'FI-FW-01', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-2', 'FI-SW-01', 1, '16.50');
INSERT INTO `carts` VALUES ('a', 'EST-8', 'K9-PO-02', 1, '18.50');
INSERT INTO `carts` VALUES ('a', 'EST-1', 'FI-SW-01', 1, '16.50');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `catid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`catid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('BIRDS', 'Birds', '<image src=\"../images/birds_icon.gif\"><font size=\"5\" color=\"blue\"> Birds</font>');
INSERT INTO `category` VALUES ('CATS', 'Cats', '<image src=\"../images/cats_icon.gif\"><font size=\"5\" color=\"blue\"> Cats</font>');
INSERT INTO `category` VALUES ('DOGS', 'Dogs', '<image src=\"../images/dogs_icon.gif\"><font size=\"5\" color=\"blue\"> Dogs</font>');
INSERT INTO `category` VALUES ('FISH', 'Fish', '<image src=\"../images/fish_icon.gif\"><font size=\"5\" color=\"blue\"> Fish</font>');
INSERT INTO `category` VALUES ('REPTILES', 'Reptiles', '<image src=\"../images/reptiles_icon.gif\"><font size=\"5\" color=\"blue\"> Reptiles</font>');

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `itemid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`itemid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES ('EST-1', 10000);
INSERT INTO `inventory` VALUES ('EST-10', 10000);
INSERT INTO `inventory` VALUES ('EST-11', 10000);
INSERT INTO `inventory` VALUES ('EST-12', 10000);
INSERT INTO `inventory` VALUES ('EST-13', 10000);
INSERT INTO `inventory` VALUES ('EST-14', 10000);
INSERT INTO `inventory` VALUES ('EST-15', 10000);
INSERT INTO `inventory` VALUES ('EST-16', 10000);
INSERT INTO `inventory` VALUES ('EST-17', 10000);
INSERT INTO `inventory` VALUES ('EST-18', 10000);
INSERT INTO `inventory` VALUES ('EST-19', 10000);
INSERT INTO `inventory` VALUES ('EST-2', 10000);
INSERT INTO `inventory` VALUES ('EST-20', 10000);
INSERT INTO `inventory` VALUES ('EST-21', 10000);
INSERT INTO `inventory` VALUES ('EST-22', 10000);
INSERT INTO `inventory` VALUES ('EST-23', 10000);
INSERT INTO `inventory` VALUES ('EST-24', 10000);
INSERT INTO `inventory` VALUES ('EST-25', 10000);
INSERT INTO `inventory` VALUES ('EST-26', 10000);
INSERT INTO `inventory` VALUES ('EST-27', 10000);
INSERT INTO `inventory` VALUES ('EST-28', 10000);
INSERT INTO `inventory` VALUES ('EST-3', 10000);
INSERT INTO `inventory` VALUES ('EST-4', 10000);
INSERT INTO `inventory` VALUES ('EST-5', 10000);
INSERT INTO `inventory` VALUES ('EST-6', 10000);
INSERT INTO `inventory` VALUES ('EST-7', 10000);
INSERT INTO `inventory` VALUES ('EST-8', 10000);
INSERT INTO `inventory` VALUES ('EST-9', 10000);

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `itemid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `productid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `listprice` decimal(10, 2) NULL DEFAULT NULL,
  `unitcost` decimal(10, 2) NULL DEFAULT NULL,
  `supplier` int(11) NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr1` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr2` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr3` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr4` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `attr5` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`itemid`) USING BTREE,
  INDEX `fk_item_2`(`supplier`) USING BTREE,
  INDEX `itemProd`(`productid`) USING BTREE,
  CONSTRAINT `fk_item_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_item_2` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`suppid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('EST-1', 'FI-SW-01', 16.50, 10.00, 1, 'P', 'Large', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-10', 'K9-DL-01', 18.50, 12.00, 1, 'P', 'Spotted Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-11', 'RP-SN-01', 18.50, 12.00, 1, 'P', 'Venomless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-12', 'RP-SN-01', 18.50, 12.00, 1, 'P', 'Rattleless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-13', 'RP-LI-02', 18.50, 12.00, 1, 'P', 'Green Adult', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-14', 'FL-DSH-01', 58.50, 12.00, 1, 'P', 'Tailless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-15', 'FL-DSH-01', 23.50, 12.00, 1, 'P', 'With tail', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-16', 'FL-DLH-02', 93.50, 12.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-17', 'FL-DLH-02', 93.50, 12.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-18', 'AV-CB-01', 193.50, 92.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-19', 'AV-SB-02', 15.50, 2.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-2', 'FI-SW-01', 16.50, 10.00, 1, 'P', 'Small', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-20', 'FI-FW-02', 5.50, 2.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-21', 'FI-FW-02', 5.29, 1.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-22', 'K9-RT-02', 135.50, 100.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-23', 'K9-RT-02', 145.49, 100.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-24', 'K9-RT-02', 255.50, 92.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-25', 'K9-RT-02', 325.29, 90.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-26', 'K9-CW-01', 125.50, 92.00, 1, 'P', 'Adult Male', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-27', 'K9-CW-01', 155.29, 90.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-28', 'K9-RT-01', 155.29, 90.00, 1, 'P', 'Adult Female', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-3', 'FI-SW-02', 18.50, 12.00, 1, 'P', 'Toothless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-4', 'FI-FW-01', 18.50, 12.00, 1, 'P', 'Spotted', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-5', 'FI-FW-01', 18.50, 12.00, 1, 'P', 'Spotless', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-6', 'K9-BD-01', 18.50, 12.00, 1, 'P', 'Male Adult', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-7', 'K9-BD-01', 18.50, 12.00, 1, 'P', 'Female Puppy', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-8', 'K9-PO-02', 18.50, 12.00, 1, 'P', 'Male Puppy', NULL, NULL, NULL, NULL);
INSERT INTO `item` VALUES ('EST-9', 'K9-DL-01', 18.50, 12.00, 1, 'P', 'Spotless Male Puppy', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for lineitem
-- ----------------------------
DROP TABLE IF EXISTS `lineitem`;
CREATE TABLE `lineitem`  (
  `orderid` int(11) NOT NULL,
  `linenum` int(11) NOT NULL,
  `itemid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `unitprice` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`orderid`, `linenum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `logUserId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `logInfo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES ('a', '2019-10-28 11:02:46     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:02:46     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:02:53     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:03:01     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:03:01     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:03:04     http://localhost:8080/mypetstore/viewcategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:03:07     http://localhost:8080/mypetstore/viewproduct?productId=RP-LI-02 查看产品 Iguana');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:03:08     http://localhost:8080/mypetstore/viewItem?itemId=EST-13 查看具体商品 (EST-13-null)');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:03:10     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-13 添加物品 (EST-13-null) 到购物车');
INSERT INTO `log` VALUES ('c', '2019-10-28 11:11:14     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('c', '2019-10-28 11:11:14     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('c', '2019-10-28 11:11:17     http://localhost:8080/mypetstore/viewcategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('c', '2019-10-28 11:11:18     http://localhost:8080/mypetstore/viewproduct?productId=RP-LI-02 查看产品 Iguana');
INSERT INTO `log` VALUES ('c', '2019-10-28 11:11:19     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-13 添加物品 (EST-13-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:15:48     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:15:48     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:15:49     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-8&removeCartItemId=EST-8 添加物品 (EST-8-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:15:58     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-8&removeCartItemId=EST-13 添加物品 (EST-8-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:17:34     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:17:34     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:17:35     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-8&removeCartItemId=EST-8 添加物品 (EST-8-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:17:37     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:17:37     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:17:37     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:17:37     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:17:37     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:17:59     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:18:01     http://localhost:8080/mypetstore/viewcategory?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:18:02     http://localhost:8080/mypetstore/viewproduct?productId=FI-FW-01 查看产品 Koi');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:18:03     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-4 添加物品 (EST-4-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:18:06     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:18:09     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('a', '2019-10-28 11:18:23     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('a', '2019-10-28 19:48:18     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-28 19:48:18     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-28 19:54:39     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-28 19:54:39     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-28 19:54:41     http://localhost:8080/mypetstore/viewcategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('a', '2019-10-28 19:54:42     http://localhost:8080/mypetstore/viewproduct?productId=K9-DL-01 查看产品 Dalmation');
INSERT INTO `log` VALUES ('a', '2019-10-28 19:54:44     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-9 添加物品 (EST-9-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:03:41     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:03:41     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:03:43     http://localhost:8080/mypetstore/viewcategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:03:45     http://localhost:8080/mypetstore/viewproduct?productId=RP-LI-02 查看产品 Iguana');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:03:46     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-13 添加物品 (EST-13-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:05:29     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:05:29     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:05:31     http://localhost:8080/mypetstore/viewcategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:05:32     http://localhost:8080/mypetstore/viewproduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:05:34     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-12 添加物品 (EST-12-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:05:36     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:18:31     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:18:31     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:18:34     http://localhost:8080/mypetstore/viewcategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:18:36     http://localhost:8080/mypetstore/viewproduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:18:37     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-12 添加物品 (EST-12-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:18:42     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:28:32     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:28:32     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:28:34     http://localhost:8080/mypetstore/viewcategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:28:35     http://localhost:8080/mypetstore/viewproduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:28:36     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-12 添加物品 (EST-12-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:28:37     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:28:38     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:28:45     http://localhost:8080/mypetstore/confirm?null 更改收货地址');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:28:49     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2019-10-28 20:29:33     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:02:14     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:02:14     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:02:19     http://localhost:8080/mypetstore/viewcategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:02:20     http://localhost:8080/mypetstore/viewproduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:02:22     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-7 添加物品 (EST-7-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:02:23     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:02:29     http://localhost:8080/mypetstore/confirm?null 更改收货地址');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:02:32     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:08:32     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:08:32     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:08:36     http://localhost:8080/mypetstore/viewcategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:08:39     http://localhost:8080/mypetstore/viewproduct?productId=RP-LI-02 查看产品 Iguana');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:08:40     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-13 添加物品 (EST-13-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:08:41     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:08:43     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:16:43     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:16:43     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:16:44     http://localhost:8080/mypetstore/viewcategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:16:46     http://localhost:8080/mypetstore/viewproduct?productId=AV-SB-02 查看产品 Finch');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:16:49     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-19 添加物品 (EST-19-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:16:51     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:17:02     http://localhost:8080/mypetstore/confirm?null 更改收货地址');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:17:04     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:17:29     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-8&removeCartItemId=EST-8 添加物品 (EST-8-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:17:36     http://localhost:8080/mypetstore/viewcategory?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:17:38     http://localhost:8080/mypetstore/viewproduct?productId=FI-FW-01 查看产品 Koi');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:17:40     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-5 添加物品 (EST-5-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:17:42     http://localhost:8080/mypetstore/viewcategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:17:44     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-8&removeCartItemId=EST-8 添加物品 (EST-8-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:17:46     http://localhost:8080/mypetstore/viewcategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:17:48     http://localhost:8080/mypetstore/viewproduct?productId=K9-CW-01 查看产品 Chihuahua');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:17:51     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-27 添加物品 (EST-27-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:17:53     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:17:55     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:18:03     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:18:53     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-8&removeCartItemId=EST-8 添加物品 (EST-8-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:18:58     http://localhost:8080/mypetstore/viewcategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:19:00     http://localhost:8080/mypetstore/viewproduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:19:03     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-7 添加物品 (EST-7-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:19:06     http://localhost:8080/mypetstore/viewcategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:19:08     http://localhost:8080/mypetstore/viewproduct?productId=K9-CW-01 查看产品 Chihuahua');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:19:10     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-27 添加物品 (EST-27-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:19:11     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-28 23:19:13     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-8&removeCartItemId=EST-8 添加物品 (EST-8-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-29 00:09:51     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-29 00:09:51     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 00:09:59     http://localhost:8080/mypetstore/viewcategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('a', '2019-10-29 00:10:02     http://localhost:8080/mypetstore/viewproduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('a', '2019-10-29 00:10:03     http://localhost:8080/mypetstore/viewproduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('a', '2019-10-29 00:10:04     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-12 添加物品 (EST-12-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-29 00:42:24     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-29 00:42:24     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 00:42:27     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 00:42:28     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 00:42:29     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 00:42:29     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 00:42:29     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 00:42:29     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 00:42:30     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 00:42:30     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 00:42:35     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 01:07:48     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-29 01:07:48     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 01:08:00     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-29 01:08:00     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 01:08:01     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-8&removeCartItemId=EST-8 添加物品 (EST-8-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-29 01:10:31     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 01:10:32     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-8&removeCartItemId=EST-8 添加物品 (EST-8-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-29 01:10:34     http://localhost:8080/mypetstore/viewcategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('a', '2019-10-29 01:10:35     http://localhost:8080/mypetstore/viewproduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('a', '2019-10-29 01:10:36     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-6 添加物品 (EST-6-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-29 01:10:47     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-29 01:10:48     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 01:10:50     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-8&removeCartItemId=EST-8 添加物品 (EST-8-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-29 01:11:42     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-8&removeCartItemId=EST-28 添加物品 (EST-8-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:20:43     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:20:43     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:20:45     http://localhost:8080/mypetstore/viewcategory?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:21:09     http://localhost:8080/mypetstore/viewproduct?productId=FI-FW-02 查看产品 Goldfish');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:21:13     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-21 添加物品 (EST-21-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:21:17     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:21:20     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:21:22     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:21:27     http://localhost:8080/mypetstore/confirm?null 更改收货地址');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:21:42     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:23:18     http://localhost:8080/mypetstore/viewcategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:23:19     http://localhost:8080/mypetstore/viewproduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:23:20     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-6 添加物品 (EST-6-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:23:23     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:23:29     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:24:37     http://localhost:8080/mypetstore/viewcategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:24:40     http://localhost:8080/mypetstore/viewproduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:24:40     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-12 添加物品 (EST-12-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:25:43     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:25:43     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:25:54     http://localhost:8080/mypetstore/viewcategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:25:56     http://localhost:8080/mypetstore/viewproduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:25:57     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-7 添加物品 (EST-7-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:25:59     http://localhost:8080/mypetstore/viewcategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:26:00     http://localhost:8080/mypetstore/viewproduct?productId=RP-LI-02 查看产品 Iguana');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:26:01     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-13 添加物品 (EST-13-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:26:11     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:32:56     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:33:01     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:34:16     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:34:16     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:34:18     http://localhost:8080/mypetstore/viewcategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:34:19     http://localhost:8080/mypetstore/viewproduct?productId=RP-LI-02 查看产品 Iguana');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:34:21     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-13 添加物品 (EST-13-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:34:24     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:35:40     http://localhost:8080/mypetstore/searchProduct?null 查找商品  [Angelfish]');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:35:48     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:38:31     http://localhost:8080/mypetstore/viewcategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:38:33     http://localhost:8080/mypetstore/viewproduct?productId=FL-DLH-02 查看产品 Persian');
INSERT INTO `log` VALUES ('a', '2019-10-29 08:38:33     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-17 添加物品 (EST-17-null) 到购物车');
INSERT INTO `log` VALUES ('', '2019-10-31 01:21:46     http://localhost:8080/mypetstore/newAccount?null 注册新账号');
INSERT INTO `log` VALUES ('a', '2019-10-31 01:22:06     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-31 01:22:06     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-31 01:22:10     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-8&removeCartItemId=EST-8 添加物品 (EST-8-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-31 01:22:11     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-10-31 01:22:18     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('', '2019-10-31 02:31:33     http://localhost:8080/mypetstore/newAccount?null 注册新账号');
INSERT INTO `log` VALUES ('', '2019-10-31 02:36:04     http://localhost:8080/mypetstore/newAccount?null 注册新账号');
INSERT INTO `log` VALUES ('a', '2019-10-31 02:36:20     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-31 02:36:20     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-31 02:36:21     http://localhost:8080/mypetstore/viewcategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('a', '2019-10-31 02:36:23     http://localhost:8080/mypetstore/viewproduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('a', '2019-10-31 02:36:24     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-18 添加物品 (EST-18-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-31 02:36:27     http://localhost:8080/mypetstore/viewcategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('a', '2019-10-31 02:36:28     http://localhost:8080/mypetstore/viewproduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('a', '2019-10-31 02:36:31     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-7 添加物品 (EST-7-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-31 02:36:33     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-10-31 02:36:36     http://localhost:8080/mypetstore/confirm?null 更改收货地址');
INSERT INTO `log` VALUES ('a', '2019-10-31 02:37:36     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-10-31 02:37:37     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-10-31 02:37:38     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-10-31 02:37:38     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-10-31 02:38:43     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-10-31 02:38:47     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('', '2019-10-31 03:03:02     http://localhost:8080/mypetstore/newAccount?null 注册新账号');
INSERT INTO `log` VALUES ('', '2019-10-31 03:03:20     http://localhost:8080/mypetstore/viewcategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('', '2019-10-31 03:03:22     http://localhost:8080/mypetstore/viewproduct?productId=RP-LI-02 查看产品 Iguana');
INSERT INTO `log` VALUES ('', '2019-10-31 03:03:23     http://localhost:8080/mypetstore/viewItem?itemId=EST-13 查看具体商品 (EST-13-null)');
INSERT INTO `log` VALUES ('', '2019-10-31 03:03:38     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:00:14     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:00:14     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:00:15     http://localhost:8080/mypetstore/viewcategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:00:17     http://localhost:8080/mypetstore/viewproduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:00:18     http://localhost:8080/mypetstore/viewItem?itemId=EST-18 查看具体商品 (EST-18-null)');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:48:26     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:48:26     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:48:29     http://localhost:8080/mypetstore/viewcategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:48:30     http://localhost:8080/mypetstore/viewproduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:48:31     http://localhost:8080/mypetstore/viewItem?itemId=EST-18 查看具体商品 (EST-18-null)');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:48:33     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-18 添加物品 (EST-18-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:48:34     http://localhost:8080/mypetstore/viewItem?itemId=EST-18 查看具体商品 (EST-18-null)');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:48:37     http://localhost:8080/mypetstore/viewItem?itemId=EST-18 查看具体商品 (EST-18-null)');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:48:40     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:48:54     http://localhost:8080/mypetstore/confirm?null 更改收货地址');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:49:00     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:49:15     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:49:16     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:52:03     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:52:04     http://localhost:8080/mypetstore/viewcategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:52:06     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:52:07     http://localhost:8080/mypetstore/viewcategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:52:08     http://localhost:8080/mypetstore/viewcategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:52:09     http://localhost:8080/mypetstore/viewproduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:52:10     http://localhost:8080/mypetstore/viewItem?itemId=EST-7 查看具体商品 (EST-7-null)');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:52:40     http://localhost:8080/mypetstore/viewItem?itemId=EST-7 查看具体商品 (EST-7-null)');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:52:53     http://localhost:8080/mypetstore/viewItem?itemId=EST-7 查看具体商品 (EST-7-null)');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:53:10     http://localhost:8080/mypetstore/viewItem?itemId=EST-7 查看具体商品 (EST-7-null)');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:53:23     http://localhost:8080/mypetstore/viewItem?itemId=EST-7 查看具体商品 (EST-7-null)');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:53:36     http://localhost:8080/mypetstore/viewItem?itemId=EST-7 查看具体商品 (EST-7-null)');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:53:47     http://localhost:8080/mypetstore/viewItem?itemId=EST-7 查看具体商品 (EST-7-null)');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:54:29     http://localhost:8080/mypetstore/viewItem?itemId=EST-7 查看具体商品 (EST-7-null)');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:54:51     http://localhost:8080/mypetstore/viewItem?itemId=EST-7 查看具体商品 (EST-7-null)');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:55:12     http://localhost:8080/mypetstore/viewItem?itemId=EST-7 查看具体商品 (EST-7-null)');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:55:28     http://localhost:8080/mypetstore/viewItem?itemId=EST-7 查看具体商品 (EST-7-null)');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:56:02     http://localhost:8080/mypetstore/viewItem?itemId=EST-7 查看具体商品 (EST-7-null)');
INSERT INTO `log` VALUES ('a', '2019-10-31 10:56:15     http://localhost:8080/mypetstore/viewItem?itemId=EST-7 查看具体商品 (EST-7-null)');
INSERT INTO `log` VALUES ('', '2019-10-31 11:10:47     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('', '2019-10-31 11:10:48     http://localhost:8080/mypetstore/viewcategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('', '2019-10-31 11:10:49     http://localhost:8080/mypetstore/viewproduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('', '2019-10-31 11:10:50     http://localhost:8080/mypetstore/viewItem?itemId=EST-18 查看具体商品 (EST-18-null)');
INSERT INTO `log` VALUES ('', '2019-10-31 11:10:51     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('', '2019-10-31 11:10:58     http://localhost:8080/mypetstore/viewcategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('', '2019-10-31 11:11:00     http://localhost:8080/mypetstore/viewproduct?productId=AV-SB-02 查看产品 Finch');
INSERT INTO `log` VALUES ('', '2019-10-31 11:11:01     http://localhost:8080/mypetstore/viewcategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('', '2019-10-31 11:11:17     http://localhost:8080/mypetstore/viewproduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('', '2019-10-31 11:11:18     http://localhost:8080/mypetstore/viewItem?itemId=EST-18 查看具体商品 (EST-18-null)');
INSERT INTO `log` VALUES ('', '2019-10-31 11:11:22     http://localhost:8080/mypetstore/viewproduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('', '2019-10-31 11:11:24     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-18 添加物品 (EST-18-null) 到购物车');
INSERT INTO `log` VALUES ('', '2019-10-31 11:11:28     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('', '2019-10-31 11:11:29     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('', '2019-10-31 11:11:32     http://localhost:8080/mypetstore/confirm?null 更改收货地址');
INSERT INTO `log` VALUES ('', '2019-10-31 11:11:34     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('', '2019-10-31 11:14:45     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('', '2019-10-31 11:15:00     http://localhost:8080/mypetstore/viewcategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('', '2019-10-31 11:15:03     http://localhost:8080/mypetstore/viewproduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('', '2019-10-31 11:15:07     http://localhost:8080/mypetstore/viewItem?itemId=EST-18 查看具体商品 (EST-18-null)');
INSERT INTO `log` VALUES ('', '2019-10-31 11:15:09     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-18 添加物品 (EST-18-null) 到购物车');
INSERT INTO `log` VALUES ('', '2019-10-31 11:15:15     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('', '2019-10-31 11:15:19     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('', '2019-10-31 11:15:24     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-31 11:16:03     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-10-31 11:16:03     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-31 11:16:10     http://localhost:8080/mypetstore/viewcategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('a', '2019-10-31 11:16:12     http://localhost:8080/mypetstore/viewproduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('a', '2019-10-31 11:16:14     http://localhost:8080/mypetstore/viewItem?itemId=EST-18 查看具体商品 (EST-18-null)');
INSERT INTO `log` VALUES ('a', '2019-10-31 11:16:24     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('a', '2019-10-31 11:17:15     http://localhost:8080/mypetstore/updateCart?null 更新购物车商品数量');
INSERT INTO `log` VALUES ('a', '2019-10-31 11:17:20     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-31 11:17:22     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-31 11:17:23     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-10-31 11:17:25     http://localhost:8080/mypetstore/viewcategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('a', '2019-10-31 11:17:26     http://localhost:8080/mypetstore/viewproduct?productId=K9-BD-01 查看产品 Bulldog');
INSERT INTO `log` VALUES ('', '2019-11-26 16:25:17     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('', '2019-11-26 16:27:54     http://localhost:8080/mypetstore/viewcategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('', '2019-11-26 16:28:18     http://localhost:8080/mypetstore/viewproduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('', '2019-11-26 16:29:23     http://localhost:8080/mypetstore/viewcategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('', '2019-11-26 16:29:24     http://localhost:8080/mypetstore/viewproduct?productId=FL-DLH-02 查看产品 Persian');
INSERT INTO `log` VALUES ('', '2019-11-26 16:29:25     http://localhost:8080/mypetstore/viewItem?itemId=EST-16 查看具体商品 (EST-16-null)');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:30:20     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:30:20     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:30:51     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:30:51     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:31:13     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:34:51     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:34:51     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:34:57     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-8&removeCartItemId=EST-8 添加物品 (EST-8-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:35:02     http://localhost:8080/mypetstore/searchProduct?null 查找商品  [Golden Retriever]');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:35:04     http://localhost:8080/mypetstore/viewproduct?productId=K9-RT-01 查看产品 Golden Retriever');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:35:05     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-28 添加物品 (EST-28-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:35:09     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:35:37     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:35:37     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:38:43     http://localhost:8080/mypetstore/searchProduct?null 查找商品  []');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:38:46     http://localhost:8080/mypetstore/searchProduct?null 查找商品  []');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:38:50     http://localhost:8080/mypetstore/viewcategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:39:00     http://localhost:8080/mypetstore/searchProduct?null 查找商品  [Amazon Parrot, Angelfish, Tiger Shark, Persian, Manx, Chihuahua, Dalmation, Labrador Retriever, Iguana, Rattlesnake]');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:39:04     http://localhost:8080/mypetstore/searchProduct?null 查找商品  [Finch, Chihuahua]');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:39:30     http://localhost:8080/mypetstore/viewproduct?productId=K9-CW-01 查看产品 Chihuahua');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:39:32     http://localhost:8080/mypetstore/viewItem?itemId=EST-26 查看具体商品 (EST-26-null)');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:39:33     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-26 添加物品 (EST-26-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:39:36     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:39:38     http://localhost:8080/mypetstore/viewcategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:39:40     http://localhost:8080/mypetstore/viewproduct?productId=AV-SB-02 查看产品 Finch');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:39:41     http://localhost:8080/mypetstore/viewItem?itemId=EST-19 查看具体商品 (EST-19-null)');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:39:41     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-11-26 16:39:42     http://localhost:8080/mypetstore/viewcategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('a', '2019-11-27 08:37:48     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-11-27 08:37:48     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-11-27 09:05:27     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-11-27 09:05:57     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2019-11-27 09:05:57     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2019-11-27 09:05:58     http://localhost:8080/mypetstore/viewcategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('a', '2019-11-27 09:06:00     http://localhost:8080/mypetstore/viewproduct?productId=FL-DSH-01 查看产品 Manx');
INSERT INTO `log` VALUES ('a', '2019-11-27 09:06:02     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-15 添加物品 (EST-15-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-11-27 09:06:05     http://localhost:8080/mypetstore/viewcategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('a', '2019-11-27 09:06:07     http://localhost:8080/mypetstore/viewproduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('a', '2019-11-27 09:06:09     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-18 添加物品 (EST-18-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2019-11-27 09:06:12     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2019-11-27 09:06:30     http://localhost:8080/mypetstore/confirm?null 更改收货地址');
INSERT INTO `log` VALUES ('a', '2019-11-27 09:06:37     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:15:48     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:15:48     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:15:48     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:15:54     http://localhost:8080/mypetstore/viewcategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:15:56     http://localhost:8080/mypetstore/viewproduct?productId=RP-SN-01 查看产品 Rattlesnake');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:15:59     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-11 添加物品 (EST-11-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:16:01     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:16:10     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:16:21     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:16:21     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:16:26     http://localhost:8080/mypetstore/viewcategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:16:28     http://localhost:8080/mypetstore/viewproduct?productId=FL-DSH-01 查看产品 Manx');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:16:30     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-8&removeCartItemId=EST-8 添加物品 (EST-8-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:16:46     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-8&removeCartItemId=EST-11 添加物品 (EST-8-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:16:49     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:16:49     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:16:53     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:16:53     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:16:54     http://localhost:8080/mypetstore/viewcategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:16:54     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:16:55     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:16:58     http://localhost:8080/mypetstore/viewcategory?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:17:00     http://localhost:8080/mypetstore/viewproduct?productId=FI-FW-01 查看产品 Koi');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:17:10     http://localhost:8080/mypetstore/viewproduct?productId=FI-FW-01 查看产品 Koi');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:17:13     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:17:13     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:20:45     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:20:45     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:21:06     http://localhost:8080/mypetstore/viewcategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:21:09     http://localhost:8080/mypetstore/viewproduct?productId=FL-DLH-02 查看产品 Persian');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:22:13     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:22:14     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:23:42     http://localhost:8080/mypetstore/viewcategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:23:54     http://localhost:8080/mypetstore/viewproduct?productId=K9-DL-01 查看产品 Dalmation');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:24:17     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-10 添加物品 (EST-10-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:26:22     http://localhost:8080/mypetstore/viewcategory?categoryId=CATS 跳转到商品种类 CATS');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:26:40     http://localhost:8080/mypetstore/viewproduct?productId=FL-DLH-02 查看产品 Persian');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:26:59     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-16 添加物品 (EST-16-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:27:01     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:28:36     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:28:59     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:32:10     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:32:12     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:33:03     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:33:04     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:33:28     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:33:29     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:33:30     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:33:30     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:34:08     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:34:08     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:34:09     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:34:10     http://localhost:8080/mypetstore/viewcategory?categoryId=DOGS 跳转到商品种类 DOGS');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:34:11     http://localhost:8080/mypetstore/viewproduct?productId=K9-RT-01 查看产品 Golden Retriever');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:34:13     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-28 添加物品 (EST-28-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:34:15     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:35:02     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:35:49     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:38:00     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:38:03     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:38:26     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:38:29     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:38:34     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:38:34     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:38:36     http://localhost:8080/mypetstore/viewcategory?categoryId=BIRDS 跳转到商品种类 BIRDS');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:38:39     http://localhost:8080/mypetstore/viewproduct?productId=AV-CB-01 查看产品 Amazon Parrot');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:38:40     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-8&removeCartItemId=EST-8 添加物品 (EST-8-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:38:42     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:39:46     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:40:24     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:40:54     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:40:55     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:42:15     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:42:30     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:45:32     http://localhost:8080/mypetstore/viewcategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:46:37     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:46:39     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:46:41     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:47:01     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:47:01     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:47:02     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:47:03     http://localhost:8080/mypetstore/viewcategory?categoryId=REPTILES 跳转到商品种类 REPTILES');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:47:05     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-8&removeCartItemId=EST-8 添加物品 (EST-8-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:47:07     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:47:07     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:47:09     http://localhost:8080/mypetstore/viewcategory?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:47:10     http://localhost:8080/mypetstore/viewproduct?productId=FI-FW-01 查看产品 Koi');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:47:12     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-5 添加物品 (EST-5-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:47:13     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:47:58     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:48:01     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:48:50     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:50:02     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:50:04     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:50:06     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:52:05     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:52:27     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:52:29     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:52:29     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:52:39     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:52:42     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:52:58     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:53:00     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:53:01     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:53:01     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:53:09     http://localhost:8080/mypetstore/confirm?null 更改收货地址');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:53:45     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:54:22     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:54:40     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:56:45     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:56:47     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:56:49     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:57:10     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:57:33     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:57:48     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:57:59     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:58:24     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:58:29     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:59:30     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 00:59:39     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:00:16     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:00:50     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:01:06     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:01:48     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:02:17     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:03:17     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:03:20     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:03:20     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:03:21     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:03:42     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:03:44     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:03:44     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:04:04     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:05:00     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:05:51     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:05:52     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:07:21     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:07:30     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:07:57     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:08:17     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:09:48     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:09:50     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:09:51     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:09:52     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:10:30     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:11:01     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:21:40     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:21:40     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:21:42     http://localhost:8080/mypetstore/viewcategory?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:21:43     http://localhost:8080/mypetstore/viewproduct?productId=FI-SW-01 查看产品 Angelfish');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:21:47     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-2 添加物品 (EST-2-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:21:48     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:21:51     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:37:26     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:37:27     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:37:28     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:37:28     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:37:36     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-8&removeCartItemId=EST-8 添加物品 (EST-8-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:37:39     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:37:39     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:40:38     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:40:38     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:45:44     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:45:44     http://localhost:8080/mypetstore/main?null 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:48:32     http://localhost:8080/mypetstore/login?null 用户登录');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:48:32     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:48:32     http://localhost:8080/mypetstore/main?isLogin=true 跳转到主界面');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:48:39     http://localhost:8080/mypetstore/viewcategory?categoryId=FISH 跳转到商品种类 FISH');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:48:41     http://localhost:8080/mypetstore/viewproduct?productId=FI-SW-01 查看产品 Angelfish');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:48:44     http://localhost:8080/mypetstore/addItemToCart?workingitemId=EST-1 添加物品 (EST-1-null) 到购物车');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:48:49     http://localhost:8080/mypetstore/newOrderForm?null 跳转到新订单页面');
INSERT INTO `log` VALUES ('a', '2020-02-28 01:48:51     http://localhost:8080/mypetstore/confirm?null 确认生成订单 ');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `orderid` int(11) NOT NULL,
  `userid` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `orderdate` date NOT NULL,
  `shipaddr1` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shipaddr2` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shipcity` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shipstate` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shipzip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shipcountry` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `billaddr1` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `billaddr2` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `billcity` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `billstate` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `billzip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `billcountry` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `courier` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `totalprice` decimal(10, 2) NOT NULL,
  `billtofirstname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `billtolastname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shiptofirstname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `shiptolastname` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `creditcard` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `exprdate` varchar(7) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cardtype` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `locale` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`orderid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for orderstatus
-- ----------------------------
DROP TABLE IF EXISTS `orderstatus`;
CREATE TABLE `orderstatus`  (
  `orderid` int(11) NOT NULL,
  `linenum` int(11) NOT NULL,
  `timestamp` date NOT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`orderid`, `linenum`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `productid` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `category` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `descn` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`productid`) USING BTREE,
  INDEX `productCat`(`category`) USING BTREE,
  INDEX `productName`(`name`) USING BTREE,
  CONSTRAINT `fk_product_1` FOREIGN KEY (`category`) REFERENCES `category` (`catid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('AV-CB-01', 'BIRDS', 'Amazon Parrot', 'img/dummies/t05.jpg');
INSERT INTO `product` VALUES ('AV-SB-02', 'BIRDS', 'Finch', 'img/dummies/t05.jpg');
INSERT INTO `product` VALUES ('FI-FW-01', 'FISH', 'Koi', 'img/dummies/t01.jpg');
INSERT INTO `product` VALUES ('FI-FW-02', 'FISH', 'Goldfish', 'img/dummies/t01.jpg');
INSERT INTO `product` VALUES ('FI-SW-01', 'FISH', 'Angelfish', 'img/dummies/t01.jpg');
INSERT INTO `product` VALUES ('FI-SW-02', 'FISH', 'Tiger Shark', 'img/dummies/t01.jpg');
INSERT INTO `product` VALUES ('FL-DLH-02', 'CATS', 'Persian', 'img/dummies/t04.jpg');
INSERT INTO `product` VALUES ('FL-DSH-01', 'CATS', 'Manx', 'img/dummies/t04.jpg');
INSERT INTO `product` VALUES ('K9-BD-01', 'DOGS', 'Bulldog', 'img/dummies/t02.jpg');
INSERT INTO `product` VALUES ('K9-CW-01', 'DOGS', 'Chihuahua', 'img/dummies/t02.jpg');
INSERT INTO `product` VALUES ('K9-DL-01', 'DOGS', 'Dalmation', 'img/dummies/t02.jpg');
INSERT INTO `product` VALUES ('K9-PO-02', 'DOGS', 'Poodle', 'img/dummies/t02.jpg');
INSERT INTO `product` VALUES ('K9-RT-01', 'DOGS', 'Golden Retriever', 'img/dummies/t02.jpg');
INSERT INTO `product` VALUES ('K9-RT-02', 'DOGS', 'Labrador Retriever', 'img/dummies/t02.jpg');
INSERT INTO `product` VALUES ('RP-LI-02', 'REPTILES', 'Iguana', 'img/dummies/t03.jpg');
INSERT INTO `product` VALUES ('RP-SN-01', 'REPTILES', 'Rattlesnake', 'img/dummies/t03.jpg');

-- ----------------------------
-- Table structure for profile
-- ----------------------------
DROP TABLE IF EXISTS `profile`;
CREATE TABLE `profile`  (
  `userid` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `langpref` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `favcategory` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `mylistopt` tinyint(1) NULL DEFAULT NULL,
  `banneropt` tinyint(1) NULL DEFAULT NULL,
  PRIMARY KEY (`userid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of profile
-- ----------------------------
INSERT INTO `profile` VALUES ('', 'ENGLISH', 'DOGS', NULL, NULL);
INSERT INTO `profile` VALUES ('a', 'japanese', 'DOGS', NULL, NULL);
INSERT INTO `profile` VALUES ('ACID', 'english', 'CATS', 1, 1);
INSERT INTO `profile` VALUES ('c', 'CHINESE', 'CATS', NULL, NULL);
INSERT INTO `profile` VALUES ('d', 'ENGLISH', 'DOGS', NULL, NULL);
INSERT INTO `profile` VALUES ('f', 'ENGLISH', 'DOGS', NULL, NULL);
INSERT INTO `profile` VALUES ('j2ee', 'english', 'FISH', 1, 1);

-- ----------------------------
-- Table structure for sequence
-- ----------------------------
DROP TABLE IF EXISTS `sequence`;
CREATE TABLE `sequence`  (
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nextid` int(11) NOT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sequence
-- ----------------------------
INSERT INTO `sequence` VALUES ('linenum', 1000);
INSERT INTO `sequence` VALUES ('ordernum', 1000);

-- ----------------------------
-- Table structure for signon
-- ----------------------------
DROP TABLE IF EXISTS `signon`;
CREATE TABLE `signon`  (
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of signon
-- ----------------------------
INSERT INTO `signon` VALUES ('a', 'a');
INSERT INTO `signon` VALUES ('ACID', 'ACID');
INSERT INTO `signon` VALUES ('j2ee', 'j2ee');

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `suppid` int(11) NOT NULL,
  `name` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addr1` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addr2` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `city` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `zip` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`suppid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES (1, 'XYZ Pets', 'AC', '600 Avon Way', '', 'Los Angeles', 'CA', '94024', '212-947-0797');
INSERT INTO `supplier` VALUES (2, 'ABC Pets', 'AC', '700 Abalone Way', '', 'San Francisco ', 'CA', '94024', '415-947-0797');

-- ----------------------------
-- Table structure for vieweditem
-- ----------------------------
DROP TABLE IF EXISTS `vieweditem`;
CREATE TABLE `vieweditem`  (
  `i` int(255) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `itemId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `itemName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`i`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 326 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of vieweditem
-- ----------------------------
INSERT INTO `vieweditem` VALUES (1, '', 'EST-12', 'Rattlesnake');
INSERT INTO `vieweditem` VALUES (8, '', 'EST-21', 'Goldfish');
INSERT INTO `vieweditem` VALUES (9, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (10, '0', 'EST-8', 'Poodle');
INSERT INTO `vieweditem` VALUES (11, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (12, '0', 'EST-5', 'Koi');
INSERT INTO `vieweditem` VALUES (13, '0', 'EST-5', 'Koi');
INSERT INTO `vieweditem` VALUES (14, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (15, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (16, '0', 'EST-1', 'Angelfish');
INSERT INTO `vieweditem` VALUES (17, '0', 'EST-11', 'Rattlesnake');
INSERT INTO `vieweditem` VALUES (18, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (19, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (20, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (21, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (22, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (23, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (24, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (25, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (26, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (27, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (28, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (29, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (30, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (31, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (32, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (33, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (34, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (35, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (36, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (37, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (38, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (39, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (40, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (41, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (42, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (43, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (44, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (45, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (46, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (47, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (48, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (49, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (50, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (51, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (52, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (53, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (54, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (55, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (56, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (57, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (58, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (59, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (60, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (61, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (62, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (63, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (64, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (65, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (66, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (67, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (68, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (69, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (70, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (71, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (72, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (73, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (74, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (75, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (76, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (77, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (78, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (79, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (80, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (81, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (82, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (83, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (84, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (85, '0', 'EST-6', 'Bulldog');
INSERT INTO `vieweditem` VALUES (86, '0', 'EST-6', 'Bulldog');
INSERT INTO `vieweditem` VALUES (87, '0', 'EST-6', 'Bulldog');
INSERT INTO `vieweditem` VALUES (88, '0', 'EST-6', 'Bulldog');
INSERT INTO `vieweditem` VALUES (89, '0', 'EST-6', 'Bulldog');
INSERT INTO `vieweditem` VALUES (90, '0', 'EST-6', 'Bulldog');
INSERT INTO `vieweditem` VALUES (91, '0', 'EST-6', 'Bulldog');
INSERT INTO `vieweditem` VALUES (92, '0', 'EST-6', 'Bulldog');
INSERT INTO `vieweditem` VALUES (93, '0', 'EST-5', 'Koi');
INSERT INTO `vieweditem` VALUES (94, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (95, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (96, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (97, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (98, '0', 'EST-21', 'Goldfish');
INSERT INTO `vieweditem` VALUES (99, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (100, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (101, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (102, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (103, '0', 'EST-16', 'Persian');
INSERT INTO `vieweditem` VALUES (104, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (105, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (106, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (107, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (108, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (109, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (110, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (111, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (112, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (113, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (114, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (115, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (116, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (117, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (118, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (119, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (120, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (121, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (122, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (123, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (124, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (125, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (126, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (127, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (128, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (129, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (130, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (131, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (132, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (133, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (134, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (135, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (136, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (137, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (138, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (139, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (140, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (141, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (142, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (143, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (144, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (145, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (146, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (147, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (148, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (149, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (150, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (151, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (152, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (153, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (154, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (155, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (156, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (157, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (158, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (159, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (160, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (161, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (162, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (163, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (164, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (165, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (166, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (167, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (168, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (169, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (170, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (171, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (172, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (173, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (174, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (175, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (176, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (177, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (178, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (179, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (180, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (181, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (182, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (183, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (184, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (185, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (186, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (187, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (188, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (189, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (190, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (191, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (192, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (193, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (194, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (195, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (196, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (197, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (198, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (199, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (200, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (201, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (202, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (203, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (204, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (205, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (206, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (207, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (208, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (209, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (210, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (211, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (212, '0', 'EST-13', 'Iguana');
INSERT INTO `vieweditem` VALUES (213, '0', 'EST-17', 'Persian');
INSERT INTO `vieweditem` VALUES (214, '0', 'EST-17', 'Persian');
INSERT INTO `vieweditem` VALUES (215, '0', 'EST-17', 'Persian');
INSERT INTO `vieweditem` VALUES (216, '0', 'EST-17', 'Persian');
INSERT INTO `vieweditem` VALUES (217, '0', 'EST-17', 'Persian');
INSERT INTO `vieweditem` VALUES (218, '0', 'EST-17', 'Persian');
INSERT INTO `vieweditem` VALUES (219, '0', 'EST-17', 'Persian');
INSERT INTO `vieweditem` VALUES (220, '0', 'EST-17', 'Persian');
INSERT INTO `vieweditem` VALUES (221, '0', 'EST-17', 'Persian');
INSERT INTO `vieweditem` VALUES (222, '0', 'EST-17', 'Persian');
INSERT INTO `vieweditem` VALUES (223, '0', 'EST-17', 'Persian');
INSERT INTO `vieweditem` VALUES (224, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (225, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (226, '0', 'EST-5', 'Koi');
INSERT INTO `vieweditem` VALUES (227, '0', 'EST-5', 'Koi');
INSERT INTO `vieweditem` VALUES (228, '0', 'EST-5', 'Koi');
INSERT INTO `vieweditem` VALUES (229, '0', 'EST-5', 'Koi');
INSERT INTO `vieweditem` VALUES (230, '0', 'EST-3', 'Tiger Shark');
INSERT INTO `vieweditem` VALUES (231, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (232, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (233, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (234, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (235, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (236, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (237, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (238, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (239, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (240, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (241, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (242, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (243, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (244, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (245, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (246, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (247, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (248, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (249, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (250, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (251, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (252, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (253, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (254, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (255, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (256, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (257, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (258, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (259, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (260, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (261, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (262, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (263, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (264, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (265, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (266, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (267, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (268, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (269, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (270, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (271, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (272, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (273, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (274, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (275, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (276, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (277, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (278, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (279, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (280, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (281, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (282, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (283, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (284, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (285, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (286, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (287, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (288, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (289, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (290, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (291, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (292, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (293, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (294, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (295, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (296, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (297, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (298, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (299, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (300, '0', 'EST-7', 'Bulldog');
INSERT INTO `vieweditem` VALUES (301, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (302, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (303, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (304, '0', 'EST-3', 'Tiger Shark');
INSERT INTO `vieweditem` VALUES (305, '0', 'EST-3', 'Tiger Shark');
INSERT INTO `vieweditem` VALUES (306, '0', 'EST-3', 'Tiger Shark');
INSERT INTO `vieweditem` VALUES (307, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (308, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (309, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (310, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (311, '0', 'EST-18', 'Amazon Parrot');
INSERT INTO `vieweditem` VALUES (312, '0', 'EST-16', 'Persian');
INSERT INTO `vieweditem` VALUES (313, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (314, '0', 'EST-26', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (315, '0', 'EST-19', 'Finch');
INSERT INTO `vieweditem` VALUES (316, '0', 'EST-8', 'Poodle');
INSERT INTO `vieweditem` VALUES (317, '0', 'EST-21', 'Goldfish');
INSERT INTO `vieweditem` VALUES (318, '0', 'EST-15', 'Manx');
INSERT INTO `vieweditem` VALUES (319, '0', 'EST-5', 'Koi');
INSERT INTO `vieweditem` VALUES (320, '0', 'EST-5', 'Koi');
INSERT INTO `vieweditem` VALUES (321, '0', 'EST-15', 'Manx');
INSERT INTO `vieweditem` VALUES (322, '0', 'EST-15', 'Manx');
INSERT INTO `vieweditem` VALUES (323, '0', 'EST-4', 'Koi');
INSERT INTO `vieweditem` VALUES (324, '0', 'EST-27', 'Chihuahua');
INSERT INTO `vieweditem` VALUES (325, '0', 'EST-16', 'Persian');

SET FOREIGN_KEY_CHECKS = 1;
