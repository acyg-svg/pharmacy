/*
 Navicat Premium Data Transfer

 Source Server         : 123
 Source Server Type    : MySQL
 Source Server Version : 50731
 Source Host           : localhost:3306
 Source Schema         : pharmacy

 Target Server Type    : MySQL
 Target Server Version : 50731
 File Encoding         : 65001

 Date: 05/03/2022 01:41:45
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `n_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `details` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `n_time` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`n_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (8, '456', '123', '20211224105559');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem`  (
  `order_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `product_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `buynum` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`order_id`, `product_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('362e310d-b0a5-44a5-b0f9-ac84dfd0c837', '5de32bdb-cdb5-4cdb-8f38-cde24714164e', 2);
INSERT INTO `orderitem` VALUES ('464c9350-093a-4167-910a-c13d61ef61ce', '464f8192-3538-43ca-beb2-78aeb9a0665c', 2);
INSERT INTO `orderitem` VALUES ('60f564f8-a499-478f-9448-ce9c7c06c689', '7689a97d-7b82-484b-ad88-1698b6472f20', 1);
INSERT INTO `orderitem` VALUES ('6477ce44-01b7-4fcb-ad04-7ebf7c960625', '25217391-0e30-4b4e-98b1-e1f4b2069a07', 4);
INSERT INTO `orderitem` VALUES ('6485069b-80bb-4e05-8758-89181f745e8f', '464f8192-3538-43ca-beb2-78aeb9a0665c', 4);
INSERT INTO `orderitem` VALUES ('663b29ae-6845-41b2-855c-730b307efcbe', '464f8192-3538-43ca-beb2-78aeb9a0665c', 3);
INSERT INTO `orderitem` VALUES ('7bf4dbaa-15e6-4ecb-a1e0-2385074851d2', '464f8192-3538-43ca-beb2-78aeb9a0665c', 1);
INSERT INTO `orderitem` VALUES ('80b99d2c-4945-4db6-a190-15f2fc237341', '464f8192-3538-43ca-beb2-78aeb9a0665c', 1);
INSERT INTO `orderitem` VALUES ('8871ee16-a959-4c63-b550-785ef6456f68', '112e3ee5-fd56-4801-ae7d-d0d5e2924cb8', 1);
INSERT INTO `orderitem` VALUES ('8871ee16-a959-4c63-b550-785ef6456f68', '25217391-0e30-4b4e-98b1-e1f4b2069a07', 1);
INSERT INTO `orderitem` VALUES ('92f25a62-5046-47ac-8eaf-6f70a6c71462', '25217391-0e30-4b4e-98b1-e1f4b2069a07', 6);
INSERT INTO `orderitem` VALUES ('aa6c293b-7223-4e3c-a26d-2d6610179c8c', '25217391-0e30-4b4e-98b1-e1f4b2069a07', 1);
INSERT INTO `orderitem` VALUES ('aa6c293b-7223-4e3c-a26d-2d6610179c8c', '92d469d1-08bb-4fbd-a58e-32c35d16e5a7', 1);
INSERT INTO `orderitem` VALUES ('b1cc0de5-b4dd-41c6-9cbe-8a48afd6011d', '5de32bdb-cdb5-4cdb-8f38-cde24714164e', 1);
INSERT INTO `orderitem` VALUES ('ba8ef2cf-a681-4688-a7c1-98ba37815b84', '25217391-0e30-4b4e-98b1-e1f4b2069a07', 5);
INSERT INTO `orderitem` VALUES ('ba8ef2cf-a681-4688-a7c1-98ba37815b84', '7689a97d-7b82-484b-ad88-1698b6472f20', 2);
INSERT INTO `orderitem` VALUES ('c80a3444-c98b-4293-be0b-19466532f680', '25217391-0e30-4b4e-98b1-e1f4b2069a07', 3);
INSERT INTO `orderitem` VALUES ('ca72bd2e-2a7b-4b0a-8e92-4cd9d923e4b1', '25217391-0e30-4b4e-98b1-e1f4b2069a07', 6);
INSERT INTO `orderitem` VALUES ('ccf3ff69-39fb-4157-b6be-10c77afe609f', '25217391-0e30-4b4e-98b1-e1f4b2069a07', 3);
INSERT INTO `orderitem` VALUES ('d941670e-50ef-4d34-831a-8fdcfbcb2aec', '25217391-0e30-4b4e-98b1-e1f4b2069a07', 5);
INSERT INTO `orderitem` VALUES ('e7f7a483-6dba-4e32-ae90-fb42f4ec7ba0', '25217391-0e30-4b4e-98b1-e1f4b2069a07', 2);
INSERT INTO `orderitem` VALUES ('e7f7a483-6dba-4e32-ae90-fb42f4ec7ba0', '92d469d1-08bb-4fbd-a58e-32c35d16e5a7', 2);
INSERT INTO `orderitem` VALUES ('f6591df7-f512-4f6d-88ea-80ad816a8b0a', '464f8192-3538-43ca-beb2-78aeb9a0665c', 2);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `money` double NULL DEFAULT NULL,
  `receiverAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiverName` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `receiverPhone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `paystate` int(11) NULL DEFAULT 0,
  `ordertime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('362e310d-b0a5-44a5-b0f9-ac84dfd0c837', 40, '广州软件学院', 'cyg123', '15820317818', 1, '2021-12-23 23:43:16', 2);
INSERT INTO `orders` VALUES ('464c9350-093a-4167-910a-c13d61ef61ce', 400, '1233', 'cyg123', '13249795516', 1, '2021-12-24 11:35:26', 2);
INSERT INTO `orders` VALUES ('60f564f8-a499-478f-9448-ce9c7c06c689', 30, 'dddd', 'cyg123', '15820317818', 1, '2021-07-19 13:04:21', 2);
INSERT INTO `orders` VALUES ('6477ce44-01b7-4fcb-ad04-7ebf7c960625', 20, '广州大学', 'zzk123', '15820317818', 1, '2020-12-29 13:31:02', 5);
INSERT INTO `orders` VALUES ('6485069b-80bb-4e05-8758-89181f745e8f', 800, '1233', 'cyg123', '13249795516', 1, '2021-12-23 23:54:44', 2);
INSERT INTO `orders` VALUES ('663b29ae-6845-41b2-855c-730b307efcbe', 600, 'gigigggi', 'cyg123', '15820317818', 1, '2021-12-23 23:27:25', 2);
INSERT INTO `orders` VALUES ('7bf4dbaa-15e6-4ecb-a1e0-2385074851d2', 200, '1233', 'cyg123', '13249795516', 0, '2021-12-24 00:10:46', 2);
INSERT INTO `orders` VALUES ('80b99d2c-4945-4db6-a190-15f2fc237341', 200, '12323', 'cyg123', '15820317818', 1, '2021-12-23 15:35:43', 2);
INSERT INTO `orders` VALUES ('8871ee16-a959-4c63-b550-785ef6456f68', 7, '广州大学', 'zzk123', '15820317818', 1, '2020-12-28 19:21:11', 5);
INSERT INTO `orders` VALUES ('92f25a62-5046-47ac-8eaf-6f70a6c71462', 30, '广州大学', 'zzk123', '15820317818', 0, '2020-12-30 13:31:49', 5);
INSERT INTO `orders` VALUES ('aa6c293b-7223-4e3c-a26d-2d6610179c8c', 6, '广州大学华软软件学院', 'jjj123', '15820317818', 1, '2020-12-30 13:54:58', 11);
INSERT INTO `orders` VALUES ('b1cc0de5-b4dd-41c6-9cbe-8a48afd6011d', 20, '广州大学华软软件学院', 'cyg123', '15820317818', 1, '2021-11-29 11:49:14', 2);
INSERT INTO `orders` VALUES ('ba8ef2cf-a681-4688-a7c1-98ba37815b84', 85, '广州大学华软软件学院', 'lls123', '15820317818', 1, '2020-12-29 20:35:23', 10);
INSERT INTO `orders` VALUES ('c80a3444-c98b-4293-be0b-19466532f680', 15, '广东', 'zzk123', '15820317818', 1, '2020-12-29 13:43:58', 5);
INSERT INTO `orders` VALUES ('ca72bd2e-2a7b-4b0a-8e92-4cd9d923e4b1', 30, '广州大学', 'zzk123', '15820317818', 1, '2020-12-29 13:31:37', 5);
INSERT INTO `orders` VALUES ('ccf3ff69-39fb-4157-b6be-10c77afe609f', 15, '广州大学', 'zzk123', '15820317818', 1, '2020-12-29 13:40:16', 5);
INSERT INTO `orders` VALUES ('d941670e-50ef-4d34-831a-8fdcfbcb2aec', 25, '广州大学华软软件学院', 'ynh123', '15820317818', 1, '2020-12-28 19:41:08', 7);
INSERT INTO `orders` VALUES ('e7f7a483-6dba-4e32-ae90-fb42f4ec7ba0', 12, '广州大学华软软件学院', 'ceshi123', '15820317818', 1, '2020-12-30 17:05:10', 13);
INSERT INTO `orders` VALUES ('f6591df7-f512-4f6d-88ea-80ad816a8b0a', 400, '1233', 'cyg123', '13249795516', 0, '2021-12-24 11:34:56', 2);

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `category` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pnum` int(11) NULL DEFAULT NULL,
  `imgurl` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES ('417c427c-66f3-494b-bd2a-8c9a2b4c0a8d', '456', 50, '发烧', 200, '/productImg/0/15/dda3cfb1-b3b7-406b-b41b-a74e6f2bd7bb.jpg', '发烧');
INSERT INTO `products` VALUES ('464f8192-3538-43ca-beb2-78aeb9a0665c', '防化服', 200, '抗疫物资', 486, '/productImg/11/1/ae08daf5-f9a3-427a-be2d-89a26c33c4a3.jpg', '新冠肺炎防化服');
INSERT INTO `products` VALUES ('483bd40d-f85e-4d64-9761-27c8f69c2f20', '123', 4, '养胃', 200, '/productImg/6/12/844ae53d-a6d8-4d91-a763-cdad4d8cb680.jfif', '123');
INSERT INTO `products` VALUES ('5de32bdb-cdb5-4cdb-8f38-cde24714164e', '当归', 20, '中药药材', 497, '/productImg/10/5/32e1fe7f-1e24-4d92-99d1-d90730f53861.jpg', '当归');
INSERT INTO `products` VALUES ('6070446e-fbc6-47fe-8eca-0b3c8f8e71c2', '999感冒灵', 20, '感冒', 199, '/productImg/10/14/6afeea64-0e95-4105-a4fc-1c53cdb40939.jpg', '999感冒灵');
INSERT INTO `products` VALUES ('704804f0-fab8-4577-98b9-227a69eeed1e', '新冠肺炎检测剂', 50, '抗疫物资', 200, '/productImg/2/10/c3b84bd1-5cb1-4532-b857-5e3ce33c45ae.jpg', '新冠肺炎检测剂');
INSERT INTO `products` VALUES ('7c2c9b33-2a8b-4387-88d3-04b8aaa3fce3', '123', 20, '养胃', 200, '/productImg/11/6/9b4b9fdc-5ba4-4ecf-aa2d-d055a55579b3.jpg', '1');
INSERT INTO `products` VALUES ('a09ec585-074e-4e5f-af52-d33c98440c38', '点滴管', 5, '医疗器械', 500, '/productImg/6/10/ef547d65-ba88-4a23-b518-e6b0ad6485c8.jpg', '点滴管');
INSERT INTO `products` VALUES ('a453ca80-2d02-43c6-a7bb-be5ae87a14f8', '砂轮', 5, '医疗器械', 200, '/productImg/12/2/a1f762e2-9612-4867-9a12-850110fc2e26.jpg', '砂轮');
INSERT INTO `products` VALUES ('b4d83c5b-c2d8-42d5-a94b-5e8caeb2613b', '医用手套', 2, '抗疫物资', 200, '/productImg/10/8/6a4d4ee0-a725-42a6-884b-794113d2c080.jpg', '医用手套');
INSERT INTO `products` VALUES ('c2c147bc-1f38-4732-b6ba-a911cd950ecd', '医用外科口罩', 5, '抗疫物资', 500, '/productImg/8/7/e8bac587-42e2-4a2d-bb62-095e30d0bc29.jpg', '医用外科口罩');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PASSWORD` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `telephone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `introduce` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `activeCode` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` int(11) NULL DEFAULT NULL,
  `role` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `registTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '123456', '123456', '男', 'cyg11522504506@163.com', '13041019968', '管理员', '49338fdc-d8c9-46fa-8391-0fac7bf09707', 1, '超级用户', '2020-12-29 19:46:49');
INSERT INTO `user` VALUES (2, 'cyg123', 'cyg123', '男', 'cyg11522504506@163.com', '17827100179', '11', 'cbf48148-5373-4819-843b-6a9d6c5505d0', 1, NULL, '2020-12-25 12:48:06');
INSERT INTO `user` VALUES (4, 'hsp123', 'hsp123', '男', 'cyg11522504506@163.com', '13543139985', '111', '3715abf5-5e54-4e67-b227-9d1c9c101094', 1, NULL, '2020-12-27 20:12:53');
INSERT INTO `user` VALUES (5, 'zzk123', 'zzk123', '男', 'cyg11522504506@163.com', '15820317818', '2222', '0f0de5af-84f6-429a-b428-8fcdf728be85', 1, NULL, '2020-12-27 20:17:18');
INSERT INTO `user` VALUES (6, 'wzq123', 'wzq123', '男', 'cyg11522504506@163.com', '13543139985', '222', '868a24b5-aacb-4401-bdf6-ad788b98caaf', NULL, NULL, '2020-12-28 19:37:11');
INSERT INTO `user` VALUES (7, 'ynh123', 'ynh123', '男', 'cyg11522504506@163.com', '15820317818', '111', '94619ecb-49d5-42e9-9201-219e7792660b', 1, NULL, '2020-12-28 19:39:22');
INSERT INTO `user` VALUES (8, 'zmy123', 'zmy123', '男', 'cyg11522504506@163.com', '17827100179', '000', '2cff0b8f-eeb5-4505-a314-b6f4ec075907', 1, NULL, '2020-12-28 20:22:47');
INSERT INTO `user` VALUES (9, 'cyx123', 'cyx123', '男', 'cyg11522504506@163.com', '15820317818', '22222', '07ea294c-3c3d-4eab-a86f-aa296f889c79', 1, NULL, '2020-12-29 19:42:21');
INSERT INTO `user` VALUES (10, 'lls123', 'lls123', '男', 'cyg11522504506@163.com', '15820317818', '000', 'd41df3ac-273c-4822-8c00-5b6e4834b582', 1, NULL, '2020-12-29 20:33:09');
INSERT INTO `user` VALUES (11, 'jjj123', 'jjj123', '男', 'cyg11522504506@163.com', '15820317818', '测试', '6eca063e-e05a-4b49-bb20-39fdd00f09a3', 1, NULL, '2020-12-30 13:50:38');
INSERT INTO `user` VALUES (12, 'java11', 'java11', '男', 'cyg11522504506@163.com', '15820317818', '11', '1f248126-520b-4450-b92d-b19a9fe190c5', 1, NULL, '2020-12-30 15:14:38');
INSERT INTO `user` VALUES (13, 'ceshi123', 'ceshi123', '男', 'cyg11522504506@163.com', '15820317818', '测试', '06029d37-2f8b-4709-a784-def723031e68', 1, NULL, '2020-12-30 16:41:48');
INSERT INTO `user` VALUES (14, 'cyx123456', 'cyx123456', '男', 'cyg11522504506@163.com', '13168858510', '学生', '3e0df51a-e93e-436b-bcbc-48e2500e4bf0', NULL, NULL, '2021-01-16 14:45:11');

SET FOREIGN_KEY_CHECKS = 1;
