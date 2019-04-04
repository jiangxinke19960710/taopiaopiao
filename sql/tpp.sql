/*
 Navicat Premium Data Transfer

 Source Server         : jxk_mySQL
 Source Server Type    : MySQL
 Source Server Version : 50717
 Source Host           : localhost:3306
 Source Schema         : tpp

 Target Server Type    : MySQL
 Target Server Version : 50717
 File Encoding         : 65001

 Date: 04/04/2019 15:48:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_group_permissions_group_id_permission_id_0cd325b0_uniq`(`group_id`, `permission_id`) USING BTREE,
  INDEX `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `auth_permission_content_type_id_codename_01ab375a_uniq`(`content_type_id`, `codename`) USING BTREE,
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES (1, 'Can add permission', 1, 'add_permission');
INSERT INTO `auth_permission` VALUES (2, 'Can change permission', 1, 'change_permission');
INSERT INTO `auth_permission` VALUES (3, 'Can delete permission', 1, 'delete_permission');
INSERT INTO `auth_permission` VALUES (4, 'Can add group', 2, 'add_group');
INSERT INTO `auth_permission` VALUES (5, 'Can change group', 2, 'change_group');
INSERT INTO `auth_permission` VALUES (6, 'Can delete group', 2, 'delete_group');
INSERT INTO `auth_permission` VALUES (7, 'Can add content type', 3, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (8, 'Can change content type', 3, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (9, 'Can delete content type', 3, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (10, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (11, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (12, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (13, 'Can add cate log', 5, 'add_catelog');
INSERT INTO `auth_permission` VALUES (14, 'Can change cate log', 5, 'change_catelog');
INSERT INTO `auth_permission` VALUES (15, 'Can delete cate log', 5, 'delete_catelog');
INSERT INTO `auth_permission` VALUES (16, 'Can add decade', 6, 'add_decade');
INSERT INTO `auth_permission` VALUES (17, 'Can change decade', 6, 'change_decade');
INSERT INTO `auth_permission` VALUES (18, 'Can delete decade', 6, 'delete_decade');
INSERT INTO `auth_permission` VALUES (19, 'Can add film', 7, 'add_film');
INSERT INTO `auth_permission` VALUES (20, 'Can change film', 7, 'change_film');
INSERT INTO `auth_permission` VALUES (21, 'Can delete film', 7, 'delete_film');
INSERT INTO `auth_permission` VALUES (22, 'Can add level', 8, 'add_level');
INSERT INTO `auth_permission` VALUES (23, 'Can change level', 8, 'change_level');
INSERT INTO `auth_permission` VALUES (24, 'Can delete level', 8, 'delete_level');
INSERT INTO `auth_permission` VALUES (25, 'Can add loc', 9, 'add_loc');
INSERT INTO `auth_permission` VALUES (26, 'Can change loc', 9, 'change_loc');
INSERT INTO `auth_permission` VALUES (27, 'Can delete loc', 9, 'delete_loc');
INSERT INTO `auth_permission` VALUES (28, 'Can add raty', 10, 'add_raty');
INSERT INTO `auth_permission` VALUES (29, 'Can change raty', 10, 'change_raty');
INSERT INTO `auth_permission` VALUES (30, 'Can delete raty', 10, 'delete_raty');
INSERT INTO `auth_permission` VALUES (31, 'Can add res', 11, 'add_res');
INSERT INTO `auth_permission` VALUES (32, 'Can change res', 11, 'change_res');
INSERT INTO `auth_permission` VALUES (33, 'Can delete res', 11, 'delete_res');
INSERT INTO `auth_permission` VALUES (34, 'Can add sub class', 12, 'add_subclass');
INSERT INTO `auth_permission` VALUES (35, 'Can change sub class', 12, 'change_subclass');
INSERT INTO `auth_permission` VALUES (36, 'Can delete sub class', 12, 'delete_subclass');
INSERT INTO `auth_permission` VALUES (37, 'Can add type', 13, 'add_type');
INSERT INTO `auth_permission` VALUES (38, 'Can change type', 13, 'change_type');
INSERT INTO `auth_permission` VALUES (39, 'Can delete type', 13, 'delete_type');
INSERT INTO `auth_permission` VALUES (40, 'Can add vip code', 14, 'add_vipcode');
INSERT INTO `auth_permission` VALUES (41, 'Can change vip code', 14, 'change_vipcode');
INSERT INTO `auth_permission` VALUES (42, 'Can delete vip code', 14, 'delete_vipcode');
INSERT INTO `auth_permission` VALUES (43, 'Can add captcha store', 15, 'add_captchastore');
INSERT INTO `auth_permission` VALUES (44, 'Can change captcha store', 15, 'change_captchastore');
INSERT INTO `auth_permission` VALUES (45, 'Can delete captcha store', 15, 'delete_captchastore');

-- ----------------------------
-- Table structure for captcha_captchastore
-- ----------------------------
DROP TABLE IF EXISTS `captcha_captchastore`;
CREATE TABLE `captcha_captchastore`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `challenge` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `response` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `hashkey` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `expiration` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `hashkey`(`hashkey`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 148 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of captcha_captchastore
-- ----------------------------
INSERT INTO `captcha_captchastore` VALUES (80, '10*1=', '10', 'd676a69d7eeb8942225eddd514648d4197aa23e9', '2018-11-24 11:00:56.983522');
INSERT INTO `captcha_captchastore` VALUES (81, '4+10=', '14', '3ca2f91e7396ebc8a00412551fa96d9b090749ec', '2018-11-24 11:01:40.838982');
INSERT INTO `captcha_captchastore` VALUES (82, '7+2=', '9', '18c8e6cf46ceffd374f21c4effc168367607a5da', '2018-11-24 11:02:38.207133');
INSERT INTO `captcha_captchastore` VALUES (83, '7-1=', '6', '29f930ccb98672311d5bfb6939ec61ccbacaa47e', '2018-11-24 11:02:59.227355');
INSERT INTO `captcha_captchastore` VALUES (84, '10-1=', '9', 'bdb73ebef1cd11e47856fbf9609272b3219b3d83', '2018-11-24 11:03:45.530989');
INSERT INTO `captcha_captchastore` VALUES (85, '10-8=', '2', 'f3ed8f980e9ba1fbfbea628e616095636e529da3', '2018-11-24 11:03:51.106216');
INSERT INTO `captcha_captchastore` VALUES (86, '5+1=', '6', '42f92dfaf93d70bcd8518966f0ed0daeed872699', '2018-11-24 11:08:46.932227');
INSERT INTO `captcha_captchastore` VALUES (87, '10-10=', '0', 'ac9b28077e01ed6b2405e5d156194143b22a8f48', '2018-11-24 11:08:56.065367');
INSERT INTO `captcha_captchastore` VALUES (88, '3*2=', '6', 'a7bc0723347cef0ee98258eb5efa8255eda48e2d', '2018-11-24 11:13:10.615216');
INSERT INTO `captcha_captchastore` VALUES (89, '5-4=', '1', '58a021c6180329a9fd9ebb9f5ad63623830ccf07', '2018-11-24 11:13:33.116035');
INSERT INTO `captcha_captchastore` VALUES (90, '2+1=', '3', 'c5663ada115e6d74b6b5dabd02d4175e4edd2d2a', '2018-11-24 11:13:38.632170');
INSERT INTO `captcha_captchastore` VALUES (91, '10-7=', '3', '1c123554f107cc15bb12de5220bcebaa05851711', '2018-11-24 11:15:10.206665');
INSERT INTO `captcha_captchastore` VALUES (92, '1+2=', '3', '47416a0d57a130723e47c5fef90238c9e9726b40', '2018-11-24 11:15:13.675428');
INSERT INTO `captcha_captchastore` VALUES (93, '3+2=', '5', '1d9722f6f32dd1734ef5a1353bac4c7b8520f34a', '2018-11-24 11:15:59.581632');
INSERT INTO `captcha_captchastore` VALUES (94, '10-6=', '4', '33e2116811ed12573cc0024b0931c5d048196067', '2018-11-24 11:53:55.966588');
INSERT INTO `captcha_captchastore` VALUES (95, '6-3=', '3', '299d8ee951a36910c8c2c78074ca7b66916ae354', '2018-11-24 11:54:11.913240');
INSERT INTO `captcha_captchastore` VALUES (96, '9+5=', '14', '2268a2fa9238af12f53e1c86967e926271870814', '2018-11-24 15:30:56.927415');
INSERT INTO `captcha_captchastore` VALUES (97, '3*5=', '15', 'ff7abc6bce7405470e73d51d40a66e8263aebbfa', '2018-11-24 15:40:15.369832');
INSERT INTO `captcha_captchastore` VALUES (98, '9-3=', '6', '88280bc82e5f423ca8e0952eb96368e27e312d27', '2018-11-24 15:50:43.729997');
INSERT INTO `captcha_captchastore` VALUES (99, '1+1=', '2', '0951eff2b29f05dee7da83f759d46f0ad5e19600', '2018-11-24 15:57:36.318718');
INSERT INTO `captcha_captchastore` VALUES (100, '3+3=', '6', '27312702ec40372a60271f567fb7fadc357c4d10', '2018-11-24 16:00:35.474996');
INSERT INTO `captcha_captchastore` VALUES (101, '9*5=', '45', '6ce34d9a436131d0b651759e4c06975ce0729fd6', '2018-11-24 16:00:41.789909');
INSERT INTO `captcha_captchastore` VALUES (102, '6*5=', '30', '0dad9c1f51733c6c4b802513b33b79a60624316e', '2018-11-24 16:12:40.579224');
INSERT INTO `captcha_captchastore` VALUES (103, '3+3=', '6', 'bf9b670b69f0a0dd349d7ce391552e11dbb68a2a', '2018-11-24 16:12:49.371124');
INSERT INTO `captcha_captchastore` VALUES (104, '4-3=', '1', '687b308a93d1b99a4af1687ed2dea4d64df931e5', '2018-11-24 16:13:03.802857');
INSERT INTO `captcha_captchastore` VALUES (105, '6-3=', '3', '0ebed03beec7c271fe7f32f5c7f85990376f20cd', '2018-11-24 16:13:12.039507');
INSERT INTO `captcha_captchastore` VALUES (106, '9+1=', '10', '3507fcb37f648f85725c39c239ffa579309d47f3', '2018-11-24 16:13:13.188491');
INSERT INTO `captcha_captchastore` VALUES (107, '2*1=', '2', '131b1977cfee45590833d49e2c3f6ea86d188590', '2018-11-24 16:14:05.460924');
INSERT INTO `captcha_captchastore` VALUES (108, '7+9=', '16', '7825b702afa0d9cc5d3fed5b609fce111ef59fc5', '2018-11-24 16:14:08.253052');
INSERT INTO `captcha_captchastore` VALUES (109, '5+4=', '9', '8642f9c17f4a0aaf167611096653f70358151ceb', '2018-11-24 16:16:32.698090');
INSERT INTO `captcha_captchastore` VALUES (110, '7-6=', '1', '4773050baaeecb901668bde13e8f8753f249a470', '2018-11-24 16:16:38.574356');
INSERT INTO `captcha_captchastore` VALUES (111, '8+5=', '13', 'c526947b5af7db7100e0a9ce41c14e9d8f4e68ea', '2018-11-24 16:17:10.451547');
INSERT INTO `captcha_captchastore` VALUES (112, '6*9=', '54', '9ac3acd34045166e729216c24d1db44f145cd5d2', '2018-11-24 16:17:15.805999');
INSERT INTO `captcha_captchastore` VALUES (113, '9+6=', '15', 'e29f874b63e9eb5e104f8ba4d7f43a26afd0c1ed', '2018-11-24 16:17:31.173960');
INSERT INTO `captcha_captchastore` VALUES (114, '8*9=', '72', '5705fb590ac2776ea7d5dab670112b18161ffbbd', '2018-11-24 16:17:32.939337');
INSERT INTO `captcha_captchastore` VALUES (115, '3-2=', '1', '64a986749a7a919429284a63935b374b5b0fd02d', '2018-11-24 16:23:50.446196');
INSERT INTO `captcha_captchastore` VALUES (116, '6+4=', '10', 'ddbe852344885d556d9a43efd50aaa5ad8bac879', '2018-11-24 16:27:28.722339');
INSERT INTO `captcha_captchastore` VALUES (117, '9+1=', '10', '4850820f3942b09bba1c52aa18bc9c6215a23dcf', '2018-11-24 16:29:33.236200');
INSERT INTO `captcha_captchastore` VALUES (118, '4-3=', '1', 'bb0114f47dca969bbf3922f746e35d0d156f610c', '2018-11-24 16:29:38.481402');
INSERT INTO `captcha_captchastore` VALUES (119, '10-1=', '9', '8c65d618488eab5f93543449e76e64df36d1ec89', '2018-11-24 16:32:58.441370');
INSERT INTO `captcha_captchastore` VALUES (120, '7+9=', '16', '5b0915e0ef644b6c122f7b326792f3dc070f6ffd', '2018-11-24 16:32:59.281356');
INSERT INTO `captcha_captchastore` VALUES (121, '8+3=', '11', '1411c87f1222a461cc266da42ca787eddfeb5527', '2018-11-24 16:33:01.571423');
INSERT INTO `captcha_captchastore` VALUES (122, '4+9=', '13', 'aaef12b42e421d5fecd93de69d7665b47aa76f9a', '2018-11-24 16:33:16.718151');
INSERT INTO `captcha_captchastore` VALUES (123, '3+3=', '6', 'e7679f32777c3a85c483514bdce23258039d9229', '2018-11-24 16:34:10.544729');
INSERT INTO `captcha_captchastore` VALUES (124, '8+2=', '10', '3472fef0c307ac89c198bac85e87c3240f997bf3', '2018-11-24 16:34:11.592982');
INSERT INTO `captcha_captchastore` VALUES (125, '5+10=', '15', '475de14a03f009ede4eb4bfb2f26da2c71bd5132', '2018-11-24 16:35:34.938612');
INSERT INTO `captcha_captchastore` VALUES (126, '6+3=', '9', '9ca02abfd40144ae5984cffcf1bc22f4bef96316', '2018-11-24 16:35:43.097762');
INSERT INTO `captcha_captchastore` VALUES (127, '8-4=', '4', 'e4f1e796c87cc5064a5cbb19163ce627289eef3b', '2018-11-24 16:35:51.841720');
INSERT INTO `captcha_captchastore` VALUES (128, '5+9=', '14', '0848fcfc1aa33de58ab54c9684d66b07e18bc2ad', '2018-11-24 17:26:57.547465');
INSERT INTO `captcha_captchastore` VALUES (129, '3+5=', '8', 'cb67b640d587ab0aac6efc9db50b1125ff75b90b', '2018-11-24 17:27:08.803858');
INSERT INTO `captcha_captchastore` VALUES (130, '8-8=', '0', '3bf95ed23ac07795e1c9c04e3a3ad326ca7a168a', '2018-11-24 17:27:27.481447');
INSERT INTO `captcha_captchastore` VALUES (131, '8-3=', '5', '9457155d8850fd91dcf405872d6e45423f555231', '2018-11-24 17:29:30.940718');
INSERT INTO `captcha_captchastore` VALUES (132, '4*3=', '12', '81147d1a3239eb4ec813616d986edbcb7b382e47', '2018-11-24 17:29:44.497374');
INSERT INTO `captcha_captchastore` VALUES (133, '9+2=', '11', '6023723adb29ffe3e86193bfc0fc97e2f4a99374', '2018-11-24 17:29:59.465821');
INSERT INTO `captcha_captchastore` VALUES (134, '10+9=', '19', '0d0783cac40699a32a8910cc0f528dbc50c6fe70', '2018-11-24 18:19:37.498621');
INSERT INTO `captcha_captchastore` VALUES (135, '5*9=', '45', '2c24e7a27215c2e5ab9014c93a78a41e0cde9f87', '2018-11-24 18:19:40.610143');
INSERT INTO `captcha_captchastore` VALUES (136, '4+9=', '13', 'c1b9ed805324bc3381bd2f8e676616adc2fb9591', '2018-11-24 19:09:45.085915');
INSERT INTO `captcha_captchastore` VALUES (137, '2*7=', '14', 'f4e4d965b1c494e7f545b0029525ace69889a3d6', '2018-11-25 14:20:53.337273');
INSERT INTO `captcha_captchastore` VALUES (138, '6-5=', '1', '08454c6bc32b067f635bd40e14b6b9d3041b923b', '2018-11-25 14:23:43.216489');
INSERT INTO `captcha_captchastore` VALUES (139, '6-2=', '4', '690716c169271d4e98e71f89bbf1fb23d6bdf7b8', '2018-11-25 14:23:47.549022');
INSERT INTO `captcha_captchastore` VALUES (140, '3*7=', '21', '6479032a5c21b63d0661646065456727925bd5d6', '2018-11-25 14:24:18.024199');
INSERT INTO `captcha_captchastore` VALUES (141, '3-2=', '1', 'bf09a8141415d2242b76dc70281e9de8eddeae9c', '2018-11-25 14:32:34.740689');
INSERT INTO `captcha_captchastore` VALUES (142, '8*1=', '8', 'bfa5e06ff20922b88daad422a0659671021caec6', '2018-11-25 15:23:49.458744');
INSERT INTO `captcha_captchastore` VALUES (143, '3*5=', '15', 'e33c80fbcf7dec8d1dd44cfb03c86c812739bb35', '2018-11-25 21:03:05.932889');
INSERT INTO `captcha_captchastore` VALUES (144, '4-2=', '2', '60a8ec32fda181ec0684fb35b0c84bedfba88531', '2018-11-25 21:03:30.851792');
INSERT INTO `captcha_captchastore` VALUES (145, '4-4=', '0', '14b3a5117a37127e402096332e1616deb2e2eae5', '2018-11-26 13:08:31.139355');
INSERT INTO `captcha_captchastore` VALUES (146, '6*3=', '18', '0ca8eea4df8126664d01c414670abe7dab87cee9', '2018-11-26 13:15:44.398490');
INSERT INTO `captcha_captchastore` VALUES (147, '5+5=', '10', '6045281c0afe52df90bfb4aab09f4c89548e089c', '2019-04-04 15:48:18.383679');

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `django_content_type_app_label_model_76bd3d3b_uniq`(`app_label`, `model`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES (4, 'account', 'user');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (1, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (15, 'captcha', 'captchastore');
INSERT INTO `django_content_type` VALUES (3, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (5, 'home', 'catelog');
INSERT INTO `django_content_type` VALUES (6, 'home', 'decade');
INSERT INTO `django_content_type` VALUES (7, 'home', 'film');
INSERT INTO `django_content_type` VALUES (8, 'home', 'level');
INSERT INTO `django_content_type` VALUES (9, 'home', 'loc');
INSERT INTO `django_content_type` VALUES (10, 'home', 'raty');
INSERT INTO `django_content_type` VALUES (11, 'home', 'res');
INSERT INTO `django_content_type` VALUES (12, 'home', 'subclass');
INSERT INTO `django_content_type` VALUES (13, 'home', 'type');
INSERT INTO `django_content_type` VALUES (14, 'home', 'vipcode');

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `applied` datetime(6) NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES (2, 'contenttypes', '0001_initial', '2018-11-23 06:22:18.974207');
INSERT INTO `django_migrations` VALUES (3, 'contenttypes', '0002_remove_content_type_name', '2018-11-23 06:22:19.558199');
INSERT INTO `django_migrations` VALUES (4, 'auth', '0001_initial', '2018-11-23 06:22:20.736179');
INSERT INTO `django_migrations` VALUES (5, 'auth', '0002_alter_permission_name_max_length', '2018-11-23 06:22:20.924177');
INSERT INTO `django_migrations` VALUES (6, 'auth', '0003_alter_user_email_max_length', '2018-11-23 06:22:20.944177');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0004_alter_user_username_opts', '2018-11-23 06:22:20.966175');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0005_alter_user_last_login_null', '2018-11-23 06:22:20.988179');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0006_require_contenttypes_0002', '2018-11-23 06:22:20.999175');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0007_alter_validators_add_error_messages', '2018-11-23 06:22:21.020174');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0008_alter_user_username_max_length', '2018-11-23 06:22:21.041174');
INSERT INTO `django_migrations` VALUES (13, 'captcha', '0001_initial', '2018-11-23 12:58:45.363387');
INSERT INTO `django_migrations` VALUES (19, 'account', '0001_initial', '2018-11-24 13:22:51.236323');
INSERT INTO `django_migrations` VALUES (20, 'home', '0001_initial', '2018-11-24 13:23:12.955532');

-- ----------------------------
-- Table structure for t_cate_log
-- ----------------------------
DROP TABLE IF EXISTS `t_cate_log`;
CREATE TABLE `t_cate_log`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_cate_log
-- ----------------------------
INSERT INTO `t_cate_log` VALUES ('2f8382c4b6e863668d62bda4f0518c7f', '你猜');
INSERT INTO `t_cate_log` VALUES ('f39c979857a4874a0157a4a6a4fe0000', '电影');
INSERT INTO `t_cate_log` VALUES ('f39c979857a4c8c50157a8ea80700018', '电视剧');
INSERT INTO `t_cate_log` VALUES ('f39c979857a4c8c50157a8eaaee30019', '动漫');

-- ----------------------------
-- Table structure for t_decade
-- ----------------------------
DROP TABLE IF EXISTS `t_decade`;
CREATE TABLE `t_decade`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_use` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(255) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `name`(`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_decade
-- ----------------------------
INSERT INTO `t_decade` VALUES ('6a00ed72db736178d2d9cf7ddb8cf1dd', 1, '2018', 0);
INSERT INTO `t_decade` VALUES ('c345a405419e18670d089c8ba7074987', 1, '2017', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4e936970000', 1, '1994', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4e94e650001', 1, '1995', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4e95d780002', 1, '1996', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4e96d380003', 1, '1997', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4e97e9d0004', 1, '1998', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4e98c490005', 1, '1999', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4e99ded0006', 1, '2000', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4e9af810007', 1, '2001', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4e9bf8f0008', 1, '2002', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4e9d2f80009', 1, '2003', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4e9e15f000a', 1, '2004', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4e9f005000b', 1, '2005', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4e9fe1f000c', 1, '2006', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4ea17e1000d', 1, '2007', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4ea2c25000e', 1, '2008', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4ea6c99000f', 1, '2009', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4ea7d240010', 1, '2010', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4ea8a530011', 1, '2011', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4ea980f0012', 1, '2012', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4eaa6090013', 1, '2013', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4eab4900014', 1, '2014', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4eac3a30015', 1, '2015', 0);
INSERT INTO `t_decade` VALUES ('f39c979857a4c8c50157a4eacf0d0016', 1, '2016', 0);

-- ----------------------------
-- Table structure for t_film
-- ----------------------------
DROP TABLE IF EXISTS `t_film`;
CREATE TABLE `t_film`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `actor` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cata_log_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cata_log_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `evaluation` double NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_use` int(11) NOT NULL,
  `loc_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loc_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `on_decade` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `plot` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `resolution` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sub_class_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sub_class_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_vip` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `loc_id`(`loc_id`) USING BTREE,
  INDEX `sub_class_id`(`sub_class_id`) USING BTREE,
  INDEX `type_id`(`type_id`) USING BTREE,
  INDEX `on_decade`(`on_decade`) USING BTREE,
  INDEX `cata_log_id`(`cata_log_id`) USING BTREE,
  CONSTRAINT `t_film_ibfk_1` FOREIGN KEY (`loc_id`) REFERENCES `t_loc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_film_ibfk_2` FOREIGN KEY (`sub_class_id`) REFERENCES `t_subclass` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_film_ibfk_3` FOREIGN KEY (`type_id`) REFERENCES `t_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_film_ibfk_4` FOREIGN KEY (`on_decade`) REFERENCES `t_decade` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_film_ibfk_5` FOREIGN KEY (`cata_log_id`) REFERENCES `t_cate_log` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_film
-- ----------------------------
INSERT INTO `t_film` VALUES ('f39c979857a4c8c50157a9020fb8001d', ' 蒂姆·罗宾斯 Tim Robbins   摩根·弗里曼 Morgan Freeman ', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 7, 'upload/filmPic/1476009214377.jpg', 1, '美国', 'f39c979857a4c8c50157a9002ff9001c', '肖申克的救赎', '1994', '<p><span style=\"color: rgb(74, 74, 74); font-family: 微软雅黑; font-size: 12px; text-align: center; background-color: rgb(255, 255, 255);\">20世纪40年代末，小有成就的青年银行家安迪（蒂姆·罗宾斯 Tim Robbins 饰）因涉嫌杀害妻子及她的情人而锒铛入狱。在这座名为肖申克的监狱内，希望似乎虚无缥缈，终身监禁的惩罚无疑注定了安迪接下来灰暗绝望的人生。未过多久，安迪尝试接近囚犯中颇有声望的瑞德（摩根·弗里曼 Morgan Freeman 饰），请求对方帮自己搞来小锤子。以此为契机，二人逐渐熟稔，安迪也仿佛在鱼龙混杂、罪恶横生、黑白混淆的牢狱中找到属于自己的求生之道。他利用自身的专业知识，帮助监狱管理层逃税、洗黑钱，同时凭借与瑞德的交往在犯人中间也渐渐受到礼遇。表面看来，他已如瑞德那样对那堵高墙从憎恨转变为处之泰然，但是对自由的渴望仍促使他朝着心中的希望和目标前进。而关于其罪行的真相，似乎更使这一切朝前推进了一步……rerew</span></p>', '1080', '全集', '剧情片', 'f39c979857a4c8c50157a8fe00ff001a', '犯罪片', 'f39c979857a4c8c50157a8fe5ad8001b', '2018-05-11 11:00:17', NULL);
INSERT INTO `t_film` VALUES ('f39c979857a4c8c50157a91319d50023', '让·雷诺 Jean Reno', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 8, 'upload/filmPic/1476010343609.jpg', 1, '美国', 'f39c979857a4c8c50157a9002ff9001c', '这个杀手不太冷 Léon', '1994', '里昂（让·雷诺饰）是名孤独的职业杀手，受人雇佣。一天，邻居家小姑娘马蒂尔达（纳塔丽·波特曼饰)敲开他的房门，要求在他那里暂避杀身之祸。原来邻居家的主人是警方缉毒组的眼线，只因贪污了一小包毒品而遭恶警（加里·奥德曼饰）杀害全家的惩罚。马蒂尔达得到里昂的留救，幸免于难，并留在里昂那里。里昂教小女孩使枪，她教里昂法文，两人关系日趋亲密，相处融洽。                                                                     　　女孩想着去报仇，反倒被抓，里昂及时赶到，将女孩救回。混杂着哀怨情仇的正邪之战渐次升级，更大的冲突在所难免……', '1080', '全集', '剧情片', 'f39c979857a4c8c50157a8fe00ff001a', '犯罪片', 'f39c979857a4c8c50157a8fe5ad8001b', '2016-10-09 18:53:03', NULL);
INSERT INTO `t_film` VALUES ('f39c979857a4c8c50157ac7abbbb002a', 'Juliana Harkavy  Joshua Mikel ， J·拉罗斯  Natalie Victoria  ', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 8, 'upload/filmPic/1476067503631.jpg', 1, '美国', 'f39c979857a4c8c50157a9002ff9001c', '最后一班1280超清迅雷下载', '2016', '一个菜鸟女警在自己职业生涯的首天被分配到一个即将关闭的警局独自执勤最后一晚，原本充满期待的工作变成了一个活生生的噩梦。。。', '1080', '全集', '恐怖片', 'f39c979857a4c8c50157ac76b5140027', '惊悚片', 'f39c979857a4c8c50157ac793ffc0029', '2016-10-10 10:45:07', NULL);
INSERT INTO `t_film` VALUES ('f39c979857ad7e8c0157ae4ea0890002', '张涵予、彭于晏、冯文娟', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 8, 'upload/filmPic/1476098164689.jpg', 1, '大陆', 'f39c979857ad7e8c0157ae4cbcd20001', '湄公河行动', '2016', '2011年10月5日，两艘中国商船在湄公河金三角水域遭遇袭击，13名中国船员全部遇难，泰国警方从船上搜出90万颗冰毒。消息传回国内，举国震惊。为了查明真相，云南缉毒总队长高刚（张涵予 饰）接受了特殊任务，率领一支骁勇善战的战斗小组进入泰国境内，与潜伏在泰国的情报员方新武（彭于晏 饰）碰头，二人联手深入金三角查案。经过调查，发现案件背后果然有着重重疑点，真正的凶手在嫁祸残害无辜中国船员后，不但逍遥法外，更意图利用毒品制造更大的阴谋……二人决定，不惜一切代价也要拿下真凶，打击毒品犯罪，为无辜国人讨回公道！', '480', '全集', '剧情片', 'f39c979857a4c8c50157a8fe00ff001a', '犯罪片', 'f39c979857a4c8c50157a8fe5ad8001b', '2016-10-10 19:16:10', NULL);
INSERT INTO `t_film` VALUES ('f39c979857ad7e8c0157ae565bc60005', '乔尔·金纳曼 杰瑞德·莱托 威尔·史密斯', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 8, 'upload/filmPic/1476098666436.jpg', 1, '欧美', 'f39c979857a4c8c50157a9002ff9001c', '自杀小队', '2016', '“自杀小队”又称“X特遣队”，成员都是面对严重牢狱之灾的超级罪犯，包括死亡射手、鲨王、回旋镖队长和哈利·奎恩等，他们为美国政府干一些极其危险的脏活，以此来为自己减刑。每个成员脖子里都被装有纳米炸弹，如果不乖乖执行任务就会被炸死。 ', '480', '全集', '剧情片', 'f39c979857a4c8c50157a8fe00ff001a', '犯罪片', 'f39c979857a4c8c50157a8fe5ad8001b', '2016-10-10 19:24:37', NULL);
INSERT INTO `t_film` VALUES ('f39c979857ad7e8c0157ae61551c000a', '朱智勋，金康宇，林智妍，千浩振', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 0, 'upload/filmPic/1476099392470.jpg', 1, '韩国', 'f39c979857ad7e8c0157ae5dd0450009', '奸臣', '2015', '朝鲜时代著名的暴君燕山君（金康宇饰）11年，身边奸臣当道，尤其是利用美色来让燕山沉迷而耽误政事的任士洪（千浩振饰）和任崇载（朱智勋饰）父子因为深知燕山君贪恋女色，因此决定从各个地方征集起各色美女前来奉送给他，亲自挑选了名妓丹熙（林智妍饰）并训练她摆在燕山君身边实施自己的奸计。', '1080', '全集', '剧情片', 'f39c979857a4c8c50157a8fe00ff001a', '情色片', 'f39c979857ad7e8c0157ae5d8ce30008', '2016-10-10 19:36:36', NULL);
INSERT INTO `t_film` VALUES ('f39c979857ad7e8c0157ae707c4d000d', '张国荣  张丰毅  巩俐  英达  葛优  吕齐  马明威  蒋雯丽  吴大维 ', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 0, 'upload/filmPic/1476100375824.jpg', 1, '大陆', 'f39c979857ad7e8c0157ae4cbcd20001', '霸王别姬', '1994', '段小楼（张丰毅）与程蝶衣（张国荣）是一对打小一起长大的师兄弟，两人一个演生，一个饰旦，一向配合天衣无缝，尤其一出《霸王别姬》，更是誉满京城，为此，两人约定合演一辈子《霸王别姬》。但两人对戏剧与人生关系的理解有本质不同，段小楼深知戏非人生，程蝶衣则是人戏不分。 \n　　段小楼在认为该成家立业之时迎娶了名妓菊仙（巩俐），致使程蝶衣认定菊仙是可耻的第三者，使段小楼做了叛徒，自此，三人围绕一出《霸王别姬》生出的爱恨情仇战开始随着时代风云的变迁不断升级，终酿成悲剧。', '1080', '全集', '剧情片', 'f39c979857a4c8c50157a8fe00ff001a', '爱情片', 'f39c979857ad7e8c0157ae6ea77a000c', '2016-10-10 19:53:09', NULL);
INSERT INTO `t_film` VALUES ('f39c979857ad7e8c0157ae7406f0000f', '汤姆·汉克斯 / 罗宾·怀特 / 加里·西尼斯 / 麦凯尔泰·威廉逊 / 莎莉·菲尔德 /  海利·乔·奥斯蒙', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 0, 'upload/filmPic/1476100616236.jpg', 1, '欧美', 'f39c979857a4c8c50157a9002ff9001c', '阿甘正传', '1994', '阿甘（汤姆·汉克斯 饰）于二战结束后不久出生在美国南方阿拉巴马州一个闭塞的小镇，他先天弱智，智商只有75，然而他的妈妈是一个性格坚强的女性，她常常鼓励阿甘“傻人有傻福”，要他自强不息。 \n　　阿甘像普通孩子一样上学，并且认识了一生的朋友和至爱珍妮（罗宾·莱特·潘 饰），在珍妮和妈妈的爱护下，阿甘凭着上帝赐予的“飞毛腿”开始了一生不停的奔跑。 \n　　阿甘成为橄榄球巨星、越战英雄、乒乓球外交使者、亿万富翁，但是，他始终忘不了珍妮，几次匆匆的相聚和离别，更是加深了阿甘的思念。 \n　　有一天，阿甘收到珍妮的信，他们终于又要见面……', '1080', '全集', '剧情片', 'f39c979857a4c8c50157a8fe00ff001a', '爱情片', 'f39c979857ad7e8c0157ae6ea77a000c', '2016-10-10 19:57:02', NULL);
INSERT INTO `t_film` VALUES ('f39c979857ad7e8c0157ae8ad2c80012', ' 罗伯托·贝尼尼 / 尼可莱塔·布拉斯基 / 乔治·坎塔里尼 / 朱斯蒂诺·杜拉诺 / 塞尔吉奥·比尼·布斯特里克 / 玛丽莎·佩雷德斯 / 豪斯特·巴奇霍兹 / 朱利亚娜·洛约迪切', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 9, 'upload/filmPic/1476102109462.jpg', 1, '欧美', 'f39c979857a4c8c50157a9002ff9001c', '美丽人生', '1997', '犹太青年圭多（罗伯托·贝尼尼）邂逅美丽的女教师多拉（尼可莱塔·布拉斯基），他彬彬有礼的向多拉鞠躬：“早安！公主！”。历经诸多令人啼笑皆非的周折后，天遂人愿，两人幸福美满的生活在一起。 \n　　然而好景不长，法西斯政权下，圭多和儿子被强行送往犹太人集中营。多拉虽没有犹太血统，毅然同行，与丈夫儿子分开关押在一个集中营里。聪明乐天的圭多哄骗儿子这只是一场游戏，奖品就是一辆大坦克，儿子快乐、天真的生活在纳粹的阴霾之中。尽管集中营的生活艰苦寂寞，圭多仍然带给他人很多快乐，他还趁机在纳粹的广播里问候妻子：“早安！公主！” \n　　法西斯政权即将倾覆，纳粹的集中营很快就要接受最后的清理，圭多编给儿子的游戏该怎么结束？他们一家能否平安的度过这黑暗的年代呢？', '1080', '全集', '剧情片', 'f39c979857a4c8c50157a8fe00ff001a', '爱情片', 'f39c979857ad7e8c0157ae6ea77a000c', '2016-10-10 20:21:56', NULL);
INSERT INTO `t_film` VALUES ('f39c979857ad7e8c0157af419be90014', '孔侑 / 郑有美 / 马东锡 / 金秀安 / 金义城 / 崔宇植 / 安昭熙 / 沈恩京', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 5, 'upload/filmPic/1476114090331.jpg', 1, '韩国', 'f39c979857ad7e8c0157ae5dd0450009', '釜山行', '2016', '　　证券公司基金管理人石宇（孔侑 饰）光鲜精干，却也是个重利轻义之徒。妻子为此与之决裂，女儿秀安（金秀安 饰）则对如此自私的父亲越来越失望，决定前往釜山和母亲生活。在秀安生日这天，石宇抽出时间陪伴女儿登上开往釜山的特快列车。而与此同时，城市四处出现了极为可疑的暴动事件。政府极力洗白无法掩盖丧尸肆虐的事实，即便懵然无知的列车乘客也因为不速之客的到来而堕入恐慌绝望的地狱中。开车的刹那，一名感染者冲入车厢，而她很快尸变并对目光所及之处的健康人展开血腥屠杀。未过多久，丧尸便呈几何数爆发性地增长。石宇被迫和幸存者的乘客们在逼仄的空间中奋力求生。 \n　　通往釜山的遥遥旅途布满杀机，危难时刻每个幸存者的人性也承受巨大的考验…… ', '1080', '全集', '恐怖片', 'f39c979857a4c8c50157ac76b5140027', '惊悚片', 'f39c979857a4c8c50157ac793ffc0029', '2016-10-10 23:41:35', NULL);
INSERT INTO `t_film` VALUES ('f39c979857ad7e8c0157af4d8e87001b', '迈克尔·克莱顿 / 乔纳森·诺兰 / 丽莎·乔·诺兰 / 爱德·布鲁贝克 / 多米尼克·米切尔 主演: 埃文·蕾切尔·伍德 / 安东尼·霍普金斯 / 本·巴恩斯 / 英格丽德·波尔索·贝达尔', '电视剧', 'f39c979857a4c8c50157a8ea80700018', 0, 'upload/filmPic/1476114875899.jpg', 1, '美国', 'f39c979857ad7e8c0157af44b2a40017', '西部世界 第一季', '2016', '　　J.J. Abrams的Bad Robot公司将目光由广播网转向了有线网——HBO今天宣布购入该公司开发的新剧试映集《西部世界》（Westworld），故事根据1973年的同名科幻电影改编。在遥远的未来，一座巨型高科技成人乐园建成，其中有西部世界，罗马世界，中世纪世界三大主题版块的机器人世界，它提供给游客杀戮与性欲的满足。这座巨大机械乐园的后台监控渐渐失去了对机器人的控制，游客被机器人杀死，所有想逃离者都被锁定。该剧的主题是：「人工智能获得自主意识」以及「未来世界的罪孽」。过去几年Bad Robot公司一直活跃在广播网上（《危机边缘》、《疑犯追踪》、《革命》和即将播出的《信徒》），这是该公司在有线网上开发的第一个重要项目。', '1080', '更新至SP01EP02', '科幻片', 'f39c979857ad7e8c0157af45971a0018', '惊悚片', 'f39c979857ad7e8c0157af4c961b001a', '2016-10-10 23:54:38', NULL);
INSERT INTO `t_film` VALUES ('f39c979857ad7e8c0157b39c4f9b002a', '邓超 / 白百何 / 杨洋 / 张天爱 / 岳云鹏 / 杜鹃 / 柳岩 / 廖学秋 / 曹卫宇 / 汪启楠 / 安韩瑾 / 潘肖 / 曹涤非 / 朱红 / 刘乐思 / 蓝可 / 梁超 / 张爱钦 / 张美娥', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 9, 'upload/filmPic/1476187137562.jpg', 1, '大陆', 'f39c979857ad7e8c0157ae4cbcd20001', '从你的全世界路过 ', '2016', '陈末（邓超 饰）被称为全城最贱，每天和王牌DJ小容（杜鹃 饰）针锋相对，谁也不知道他们的仇恨从何而来。陈末的两个兄弟，分别是全城最傻的猪头（岳云鹏 饰），全城最纯的茅十八（杨洋 饰），三人每天横冲直撞，以为可以自在生活，结果都面临人生最大的转折点。陈末相遇了最神秘的幺鸡（张天爱 饰），猪头打造了最惨烈的婚礼，茅十八经历了最悲伤的别离，这群人的生活一点点崩塌，往事一点点揭开。梦想，爱情，友情都离陈末远去。一个失去所有的人，已经弄丢自己的路，直到听到来自全世界的一段语音…… ', '1080', '全集', '剧情片', 'f39c979857a4c8c50157a8fe00ff001a', '爱情片', 'f39c979857ad7e8c0157ae6ea77a000c', '2016-10-11 19:59:08', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157b78aa9380004', '邓超 / 罗志祥 / 张雨绮 / 林允 / 徐克 / 吴亦凡 / 李尚正 / 卢正雨 / 白客 / 孔连顺 / 田启文 / 文章 / 杨能 / 张美娥 / 李叶青 / 林子聪', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 0, 'upload/filmPic/1476253019826.jpg', 1, '大陆', 'f39c979857ad7e8c0157ae4cbcd20001', '美人鱼', '2016', '白手起家的富豪刘轩（邓超 饰）新拍下了一块地皮，并联合了女强人李若兰（张雨绮 饰）使用恐怖的声纳技术驱赶鱼类，用于填海造地。人鱼一族长期居住在附近区域的海里，为了继续生存，带头大哥章鱼八哥（罗志祥 饰）派出了美人鱼珊珊（林允 饰）“色诱”刘轩，准备刺杀。没想到珊珊在卧底过程中与刘轩暗生情愫，一次次破坏暗杀计划，而李若兰却在准备一个更丧心病狂的邪恶计划……', '1080', '全集', '剧情片', 'f39c979857a4c8c50157a8fe00ff001a', '爱情片', 'f39c979857ad7e8c0157ae6ea77a000c', '2016-10-12 14:18:20', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157b79a49fe000a', 'Marc Bendavid / Melissa O\'Neil / 安东尼·莱姆克 / Alex Mallari Jr. / 祖蒂·弗兰 / 佐伊·帕尔默 / 鲁比·罗丝', '电视剧', 'f39c979857a4c8c50157a8ea80700018', 0, 'upload/filmPic/1476254117729.jpg', 1, '加拿大', 'f39c979857b48a2a0157b798a5540009', '黑暗物质 第一季', '2015', '该剧根据资深科幻编剧Joseph Mallozzi和Paul Mullie（《星际之门》系列剧集的创作）的同名图画小说改编，一艘被遗弃的太空飞船的六个船员们从冬眠状态中醒来。他们不记得自己是谁，也不记得是如何上船的。唯一的线索是装满武器的货舱以及一个目的地：即将被战火蔓延的外星殖民。旅途危机重重，还伴随着复仇、背叛与隐藏的秘密。他们迫切地需要做出一个生死攸关的决定。', '1080', '全集', '科幻片', 'f39c979857ad7e8c0157af45971a0018', '悬疑片', 'f39c979857b48a2a0157b7a248fb0018', '2016-10-12 14:35:24', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157b7a42ec60019', '托马斯·简 / 史蒂文·斯崔特 / 卡斯·安瓦尔 / 多米尼克·蒂珀 / 约翰·威斯利·查特曼 / 索瑞·安达斯鲁 / 阿特纳·卡尔卡尼斯 / 乍得·科尔曼 / 克里斯汀·哈格 / 罗西弗·萨瑟兰 / 乔·平格 / Elias Toufexis / Sara Mitich', '电视剧', 'f39c979857a4c8c50157a8ea80700018', 8, 'upload/filmPic/1476254768590.jpg', 1, '美国', 'f39c979857ad7e8c0157af44b2a40017', '太空无垠（苍穹浩瀚）第一季 The Expanse', '2015', 'Syfy正在打造一部“太空歌剧”类型的新剧集，希望能够重现《太空堡垒卡拉狄加》系列的辉煌，这就是根据同名科幻系列小说改编而成的《太空无垠》(The Expanse)。日前北美媒体报道该剧已经选定了男一号人选，曾经主演《大器晚成》(Hung)的45岁男演员托马斯·简将领衔该剧。', '1080', '全集', '科幻片', 'f39c979857ad7e8c0157af45971a0018', '悬疑片', 'f39c979857b48a2a0157b7a248fb0018', '2016-10-12 14:46:12', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157b7b1e28d0026', '郑智薰 / 吴妍书 / 李珉廷 / 金仁权 / 金秀路 / 李荷妮', '电视剧', 'f39c979857a4c8c50157a8ea80700018', 10, 'upload/filmPic/1476255662285.jpg', 0, '韩国', 'f39c979857ad7e8c0157ae5dd0450009', '回来吧大叔 돌아와요 아저씨', '2016', '一场意外中，百货科长金英洙（金仁权 饰）坠楼死亡，与此同时，黑道大叔韩基倬（金秀路 饰）亦命丧黄泉。两个身份和个性都截然不同，生前八竿子都打不到一起的男人，死后在阴间相遇了，两人因为都有无论如何也割舍不下的牵挂，因此谈得格外投机，之后竟然自作主张，从开往天国的列车上纵身而下。 \n　　就这样，金英洙和韩基倬回到了人间，以了却两人的心愿，只是，留给他们的时间，只有短短两个月。金英洙投胎成为了英俊多金的社长李海俊（郑智薰 饰），而韩基倬更是夸张，竟然变身成为了身材火辣的性感美女洪兰（吴妍书 饰）。等待着他们的，会是怎样妙趣横生的故事呢？', '1080', '全集', '剧情片', 'f39c979857b48a2a0157b7b0974e0024', '爱情片', 'f39c979857b48a2a0157b7b0c3120025', '2016-10-12 15:01:10', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157b81f50a3003c', '成龙  徐若瑄  曾志伟  金玟  吴兴国  张坚庭  朱茵  斯科特·阿金斯  张达明  ', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 0, 'upload/filmPic/1476262836968.jpg', 1, '欧美', 'f39c979857a4c8c50157a9002ff9001c', '特务迷城1280高清迅雷下载', '2001', '健身器材店营业员小北(成龙饰)，从小习武，并且有奇异的预感能力，梦想有一天成为特务。小北凭着预感及灵敏的身手，把打劫银行的劫罪当场逮捕，成为报纸头条的新闻人物。从报纸的报导，得悉小北可能是一名韩国客户朴元正失散多年的儿子，在好奇心的躯使下，小北决定跟随律师到韩国寻找身世之谜。\n　　在韩国，小北遇上美国媒周刊女记者福喜(金玫饰)，小北知悉朴氏夫妇本为着名的双重特务。在福喜的帮助下，小北从韩国走到土耳其，找到一笔巨款，小北还邂逅神秘女子永(徐若瑄饰演)。正当小北自得忘形之际，一连串莫名其妙的袭击，令小北意识到身边其实危机四伏。寻亲、遗嘱、巨款、简单的表演下，另有更复杂的内情，竟与美国ZF料学部失窃的炭疸菌有关......', '1080', '全集', '动作片', 'f39c979857a4874a0157a4a723560001', '喜剧片', 'f39c979857b48a2a0157b81d64dd003b', '2016-10-12 17:00:42', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157b83c79ac0046', ' 斯蒂夫·古根伯格 / 尼亚·佩雷斯 / 帕特里克·瑞纳 / 莱斯利·伊斯特布鲁克 / 丹尼·伍德伯恩', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 6, 'upload/filmPic/1476264746955.jpg', 1, '美国', 'f39c979857ad7e8c0157af44b2a40017', '岩浆毒蛛 Lavalantula', '2015', '在洛杉矶火山喷发释放出巨大的群熔岩呼吸狼蛛。', '1080', '全集', '科幻片', 'f39c979857b48a2a0157b83af6940044', '恐怖片', 'f39c979857b48a2a0157b83b41680045', '2016-10-12 17:32:33', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157b98e255b004a', ' 艾德·斯克林 / 雷·史蒂文森 / 洛安·沙巴诺尔 / 加布里埃拉·赖特 / 塔蒂阿娜·帕科维奇 / 拉蒂沃杰·布克维奇 / 诺米·勒努瓦 / 尤里·科洛科利尼科夫 / 莱恩·库德里亚维斯基 / 萨米尔·盖丝米 / 安纳托·陶布曼', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 0, 'upload/filmPic/1476286877522.jpg', 1, '法国', 'f39c979857b48a2a0157b98c59330049', '玩命速递：重启之战 The Transporter Refueled', '2015', '“弗兰克·马丁”这次惹上了大麻烦，麻烦竟然是他的老爸带给他的，夹在四位美女和俄罗斯黑帮之间的父子俩这次在法国尼斯上演了一出与黑帮的火爆较量。凭借高超的车技和劲爆的身手，弗兰克在枪林弹雨和围追堵截中杀出重围，与退休的特工老爸一起演绎“上阵父子兵，同抱美人归”。 ', '1080', '全集', '剧情片', 'f39c979857a4c8c50157a8fe00ff001a', '犯罪片', 'f39c979857a4c8c50157a8fe5ad8001b', '2016-10-12 23:41:23', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157bdc3fc50004f', '泰勒·克奇 / 亚历山大·斯卡斯加德 / 蕾哈娜 / 布鲁克琳·黛克 / 浅野忠信 ', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 8, 'upload/filmPic/1476357461509.jpg', 1, '美国', 'f39c979857ad7e8c0157af44b2a40017', '超级战舰 Battleship', '2012', 'NASA在2005年的时候发现了一个太阳系外的类地行星，并判断其上可能存在智慧生命。为了能与外星智慧生物接触，NASA启动“灯塔计划”，在夏威夷启用深空通信阵列基地，向其发射高功率信号进行试探。几年后，外星飞船不期而至。身处夏威夷的太平洋联合海军演习舰队受命进行接触。男主角海军中尉阿历克斯（泰勒·克奇 Taylor Kitsch 饰）所在的导弹驱逐舰及其他两艘军舰被作为侦查小队，受命接触外星舰船。却因此受到攻击，损失惨重。由于外星舰船展开的护盾原因，联合舰队的其他舰船无法实施支援，完全只能靠自己苦苦支撑。最后，三艘现代舰船被全部摧毁。由于无船可用，但是又必须摧毁被外星人占领的通讯站，只能启用被改为海上博物馆的密苏里号战列舰进行最后的攻击。二战时期的王牌战列舰对阵外星高科技舰船，谁能胜出？地球的命运到底如何？', '1080', '全集', '科幻片', 'f39c979857b48a2a0157b83af6940044', '灾难片', 'f39c979857b48a2a0157bdc2b98c004e', '2016-10-13 19:18:40', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157bddaa8f70056', ' 井柏然 / 杨颖 / 李沁 / 王思聪 / 刘循子墨 / 吴倩 / 谭松韵 / 程伊 / 白宇 / 李现 / 王子杰 / 李九霄 / 王子桀 / 陈梦秦', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 0, 'upload/filmPic/1476358968485.jpg', 1, '大陆', 'f39c979857ad7e8c0157ae4cbcd20001', '微微一笑很倾城', '2016', '计算机系美女加高手贝微微（杨颖 饰），热爱网游，却因为技术高超不爆照片被认为是人妖，“惨遭”游戏里“老公”的抛弃！熟料“前夫”和知名游戏美女的结婚现场，她却遭遇了游戏里第一高手一笑奈何（井柏然 饰）的求婚。一段始于二次元的奇幻网游爱情，就此开始。', '1080', '全集', '爱情片', 'f39c979857b48a2a0157bdd983220054', '科幻片', 'f39c979857b48a2a0157bdd9e3b10055', '2016-10-13 19:43:26', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157bdf32e97005a', ' 郑爽 / 杨洋 / 毛晓彤 / 白宇 / 秦语 / 宋欣佳怡 / 马春瑞 / 郑业成 / 张赫 / 牛骏峰 / 崔航 / 刘颖伦 / 陆妍淇 / 张彬彬', '电视剧', 'f39c979857a4c8c50157a8ea80700018', 8, 'upload/filmPic/1476360610746.jpg', 1, '大陆', 'f39c979857ad7e8c0157ae4cbcd20001', '微微一笑很倾城', '2016', '贝微微（郑爽 饰）是校园里的系花加学霸，而在虚拟的网络世界中，她是侠肝义胆仗剑江湖的红衣女侠“芦苇微微”。在游戏中，贝微微结识了“真水无香”，两人结为侠侣，没想到贝微微却因为不愿以真面目示人而遭到了真水无香的抛弃，在游戏中莫名其妙“被离婚”的贝微微之后又遇见了江湖高手“一笑奈何”，两人为了完成游戏任务而走到了一起。 \n　　让贝微微没有想到的是，一笑奈何的线下身份，竟然是自己的同校师兄肖奈（杨洋 饰），肖奈是校园中的风云人物，篮球队的主力军，两人的情谊从线上发展到线下，一段跨越了虚拟与现实的感情就此拉开序幕。', '1080', '全集', '剧情片', 'f39c979857b48a2a0157b7b0974e0024', '爱情片', 'f39c979857b48a2a0157b7b0c3120025', '2016-10-13 20:10:13', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157be61d1e3007d', '诹访部顺一 / 中原麻衣 / 鸟海浩辅 / 平川大辅 / 关智一 / 户松遥 / 小山力也 / 铃村健一 / 大原沙耶香 / 桧山修之 / 山路和弘 / 安元洋贵 / 大川透 / 田中敦子', '动漫', 'f39c979857a4c8c50157a8eaaee30019', 0, 'upload/filmPic/1476367860478.jpg', 1, '日本', 'f39c979857b48a2a0157be611374007c', 'Thunderbolt Fantasy 东离剑游纪 Thunderbolt Fantasy 東離劍遊紀（トウリケンユウキ） ', '2016', '曾经的一场人魔大战令两方人马都元气大伤，如今，战争的硝烟已然散去，却遗留下了诸多的难题要一一破解。人类为了赢得战争而锻造了大批拥有强大力量的武器，人们称之为“神诲魔械”，战争结束后，这批破坏力强大的武器的去向则成为了需要解决的首要问题，大家都同意将它们交由护印师来保管。 \n　　丹衡（平川大辅 配音）和丹翡（中原麻衣 配音）兄妹两，身为护印师，担负起了保管最强兵器“天刑剑”的职责，却也给两人引来了杀身之祸。最终，天刑剑还是落入了蔑天骸（关智一 配音）的手中。为了追回魔剑，丹翡踏上了旅途，期间结识了凛雪鸦（鸟海浩辅 配音）和殇不患（诹访部顺一 配音）两人。', '1080', '第一季全集', '剧情片', 'f39c979857b48a2a0157be5f224f007a', '武侠片', 'f39c979857b48a2a0157be5f4bd0007b', '2016-10-13 22:11:04', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157be8319d2008c', '赵炳锐 / 王姿允 / 刘波 / 余思潞 / 扎卡', '电视剧', 'f39c979857a4c8c50157a8ea80700018', 8, 'upload/filmPic/1476370031737.jpg', 1, '大陆', 'f39c979857ad7e8c0157ae4cbcd20001', '陈二狗的妖孽人生', '2016', '讲述了以陈二狗为主的底层群体辗转于大城市之间热血逐梦的励志故事。聚焦小人物，释放大能量。该剧着力于四大家族命运交织的传奇人生，勾勒出一幅怀揣英雄主义理想的小人物众生相。此次烽火戏诸侯也亲自操刀，担当本剧的艺术总监，对角色挑选、剧本改编、场景还原进行总体把控和监督，更有实力班底配置护航，电影级服化道加持，强强联合聚力精品打磨。一部刁民奋斗史，三代江湖恩仇录，“中国式江湖”即将拉开帷幕。 ', '1080', '第一季全集', '剧情片', 'f39c979857b48a2a0157b7b0974e0024', '爱情片', 'f39c979857b48a2a0157b7b0c3120025', '2016-10-13 22:47:25', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157bebff9bf00a2', '理查·基尔 / 萨拉·罗默尔 / 琼·艾伦 / Robbie Sublett / 艾瑞克·阿瓦利 / 田川洋行 / 杰森·亚历山大 / 罗伯特·卡普荣', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 0, 'upload/filmPic/1476374032629.jpg', 1, '欧美', 'f39c979857a4c8c50157a9002ff9001c', '忠犬八公的故事 Hachi: A Dog\'s Tale', '2009', '八公（Forest 饰）是一条谜一样的犬，因为没有人知道它从哪里来。教授帕克（理查·基尔 Richard Gere 饰）在小镇的火车站拣到一只走失的小狗，冥冥中似乎注定小狗和帕克教授有着某种缘分，帕克一抱起这只小狗就再也放不下来，最终，帕克对小狗八公的疼爱感化了起初极力反对养狗的妻子卡特（琼·艾伦 Joan Allen 饰）。八公在帕克的呵护下慢慢长大，帕克上班时八公会一直把他送到车站，下班时八公也会早早便爬在车站等候，八公的忠诚让小镇的人家对它更加疼爱。有一天，八公在帕克要上班时表现异常，居然玩起了以往从来不会的捡球游戏，八公的表现让帕克非常满意，可是就是在那天，帕克因病去世。帕克的妻子、女儿安迪（萨拉·罗默尔 Sarah Roemer 饰）及女婿迈克尔（罗比·萨布莱特 Robbie Sublett 饰）怀着无比沉痛的心情埋葬了帕克，可是不明就里的八公却依然每天傍晚五点准时守候在小站的门前，等待着主人归来…… ', '1080', '全集', '剧情片', 'f39c979857a4c8c50157a8fe00ff001a', '家庭片', 'f39c979857b48a2a0157bebe075200a1', '2016-10-13 23:53:54', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157becd380800a4', '约翰尼·盖尔克奇 / 吉姆·帕森斯 / 凯莉·库柯 / 西蒙·赫尔伯格 / 昆瑙·内亚 / 梅丽莎·劳奇 / 马伊姆·拜力克 / 凯文·苏斯曼 / 劳拉·斯宾塞', '电视剧', 'f39c979857a4c8c50157a8ea80700018', 0, 'upload/filmPic/1476374899635.jpg', 1, '美国', 'f39c979857ad7e8c0157af44b2a40017', '生活大爆炸 第十季 The Big Bang Theory Season 10', '2016', '已经订婚的Leonard（约翰尼·盖尔克奇饰）和Penny（凯莉·库柯饰）终于决定要结婚了，他们不邀请任何亲朋好友，飞去拉斯维加斯快速举行婚礼。在路上Leonard向未婚妻坦白了一个秘密，这让他们之间产生了裂痕。长跑多年、即将结婚的Leonard和Penny能否顺利完婚。另一方面，Sheldon（吉姆·帕森斯饰）遭遇了重大打击——女朋友Amy向他提出分手。他多次试图挽回，然而Amy对此相当坚决。Howard（西蒙·赫尔伯格饰）和Raj等老友也为他们的事而伤神。', '1080', '第十季第四集', '剧情片', 'f39c979857b48a2a0157b7b0974e0024', '爱情片', 'f39c979857b48a2a0157b7b0c3120025', '2016-10-14 00:08:22', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157c2836d8900aa', ' 布丽·拉尔森 / 雅各布·特伦布莱 / 琼·艾伦 / 肖恩·布里吉格斯 / 威廉姆·H·梅西 / 梅根·帕克 / 阿曼达·布鲁盖尔 / 卡斯·安瓦尔 / 乔·平格 / 温迪·古逊 / 兰道尔·爱德华 / 杰克·富尔顿 / 汤姆·麦卡穆斯', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 0, 'upload/filmPic/1476437163626.jpg', 1, '加拿大', 'f39c979857b48a2a0157b798a5540009', '房间 Room ', '2016', '女孩乔伊（布丽·拉尔森 Brie Larson 饰）被一个叫“老尼克”的男人拐骗，之后被他囚禁在其房子后院的棚屋里长达七年之久。在此期间她遭到强奸，并生下儿子杰克（雅各布·特伦布莱 Jacob Tremblay 饰）。靠着老尼克时不时的物资补给，母子二人艰难度日。尽管如此，母亲还是竭尽所能，为儿子杰克创造了一个安全而开心的成长空间。这个狭小逼仄的房间，成了杰克生活成长的神奇小天地。在杰克度过了他的五岁生日后，母亲决定告诉他真相，在这个小小的房间外面，有着更广阔的世界。他们开始策划逃跑计划，决心要逃出这个囚禁他们的房间…… ', '1080', '全集', '剧情片', 'f39c979857a4c8c50157a8fe00ff001a', '家庭片', 'f39c979857b48a2a0157bebe075200a1', '2016-10-14 17:26:15', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157c2be765b00ae', '铃木亮平 / 清水富美加 / 柳乐优弥 / 室毅 / 水崎绫女 / 皆川猿时 / 新井浩文 / 矢部享佑 / 胜矢 / 足立理 / 上地春奈 / 佐藤仁美 / 片濑那奈 / 池田成志 / 安田显', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 7, 'upload/filmPic/1476441037837.jpg', 1, '日本', 'f39c979857b48a2a0157be611374007c', '变态假面：变态危机 HK 変態仮面 アブノーマル・クライシス ', '2016', '主角色丞狂介是个拳法部的高中生，同时继承刑警父亲和SM女王母亲血统的他，充满正义感的同时，在把小裤裤套上脸时则又会变成拥有超人能力的疯狂假面。而这次特报和海报的情报解禁中也提及了那“全世界小裤裤消失”的设定，究竟在失去小裤裤的危机中，疯狂假面又要怎么对抗坏人呢？ ', '1080', '全集', '动作片', 'f39c979857a4874a0157a4a723560001', '喜剧片', 'f39c979857b48a2a0157b81d64dd003b', '2016-10-14 18:30:44', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157c2c5ca3500b4', '郑业成 / 李纯 / 范世琦 / 蔡文静 / 季晨 / 马薇 / 张静初', '电视剧', 'f39c979857a4c8c50157a8ea80700018', 0, 'upload/filmPic/1476441520460.jpg', 1, '大陆', 'f39c979857ad7e8c0157ae4cbcd20001', '画江湖之不良人', '2016', '唐朝末年，藩镇割据四起，世事混乱。朱温杀害唐昭宗李晔，篡夺王位，随着唐李氏一族共同消失的，还有官府神秘组织“不良人”，以及叛军搜遍长安也未曾找到的国库宝藏。此后江湖盛传，关于宝藏的线索就隐藏在龙泉剑中，但只有李氏一族的后裔才能洞悉宝剑中的秘密。 \n　　孤儿李星云（郑业成 饰）机缘巧合下被隐士阳叔子收为弟子，在其门下学习武艺。数年之后，李星云与师妹陆林轩（李纯 饰）下山历练，而一切的关键龙泉剑也在此时悄然现世…… ', '1080', '全集', '古装片', 'f39c979857b48a2a0157c2c386d600b1', '武侠片', 'f39c979857b48a2a0157c2c3c94e00b2', '2016-10-14 18:38:44', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157c2c661a300b5', ' 李易峰 / 赵丽颖 / 杨紫 / 舒畅 / 王源 / 王俊凯 / 易烊千玺 / 熊乃瑾 / 魏巍 / 何中华 / 唐艺昕 / 秦俊杰 / 赵立新 / 陈创 / 吴樾 / 焦俊艳 / 白雪 / 成毅 / 茅子俊 / 刘学义 / 李晨浩 / 朴铄 / 黄海冰', '电视剧', 'f39c979857a4c8c50157a8ea80700018', 8, 'upload/filmPic/1476441362704.jpg', 1, '大陆', 'f39c979857ad7e8c0157ae4cbcd20001', '诛仙青云志', '2016', '张小凡（李易峰 饰）本是一介平凡的少年，在草庙村过着平静的生活。然而，一场屠村惨案让张小凡失去了父母和朋友，并在机缘巧合之下得到了珍贵的嗜血珠。和幸存的好友林惊羽（诚毅 饰）一起，张小凡来到青云门拜师学艺，他满心仇恨想要替双亲报仇，殊不知这盲目的戾气会领他步入歧途。 \n　　一眨眼入师门已经数年，可张小凡却一事无成，某日，他意外得到了法宝魂摄，哪知魂摄和嗜血珠融为一体，成为了张小凡最得力的武器。张小凡和陆雪琪（杨紫 饰）等一行人结伴调查魔教下落，期间，张小凡三番五次救陆雪琪于危机之中，陆雪琪芳心暗许。之后，张小凡又结识了名为碧瑶（赵丽颖 饰）的女子，两人情愫渐生，可是碧瑶的父亲是十恶不赦的鬼王，为了铲除青云门，鬼王设下了一个又一个圈套。', '1080', '更新至第46集', '古装片', 'f39c979857b48a2a0157c2c386d600b1', '奇幻片', 'f39c979857b48a2a0157c2c3f42800b3', '2016-10-14 18:39:23', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157c2f2a32700f2', '《十宗罪》由韩国导演李东勋执导，影帝曾志伟监制，张翰、曾志伟、于小彤、张雅玫领衔主演，讲述由四个警察组成的蜘蛛特案组面对变态的罪犯，调查凶杀案件的故事。', '电视剧', 'f39c979857a4c8c50157a8ea80700018', 5, 'upload/filmPic/1476444455958.jpg', 1, '大陆', 'f39c979857ad7e8c0157ae4cbcd20001', '十宗罪', '2016', '《十宗罪》由韩国导演李东勋执导，影帝曾志伟监制，张翰、曾志伟、于小彤、张雅玫领衔主演，讲述由四个警察组成的蜘蛛特案组面对变态的罪犯，调查凶杀案件的故事。', '1080', '21集全', '剧情片', 'f39c979857b48a2a0157b7b0974e0024', '犯罪片', 'f39c979857b48a2a0157c2f13a6d00f1', '2016-10-14 19:27:43', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157c30c2ceb010c', '张雨剑 / 刘冬沁 / 王嵛 / 书亚信 / 吴优 / 左航', '电视剧', 'f39c979857a4c8c50157a8ea80700018', 0, 'upload/filmPic/1476446132329.jpg', 1, '大陆', 'f39c979857ad7e8c0157ae4cbcd20001', '我不是妖怪', '2016', '《我不是妖怪》是改编自张小花网络小说《我就是妖怪》，由爱奇艺和耀客传媒共同出品的都市科幻网络剧，由李泽露执导，张雨剑、刘冬沁、王嵛和书亚信等联袂主演。该剧以超能外星人介入人类生活的系列事件为形式，讲述了世间温情。 ', '1080', '全12集', '喜剧片', 'f39c979857b48a2a0157c3053fdc010a', '奇幻片', 'f39c979857b48a2a0157c30a04e7010b', '2016-10-14 19:55:37', NULL);
INSERT INTO `t_film` VALUES ('f39c979857b48a2a0157c326e58c0119', '李准基 / 姜河那 / 李知恩 / 洪宗玄 / 南柱赫 / 边伯贤 / 成东日 / 金成钧 / 禹喜珍 / 徐珠贤 / 朴诗恩', '电视剧', 'f39c979857a4c8c50157a8ea80700018', 7, 'upload/filmPic/1476447885530.jpg', 1, '韩国', 'f39c979857ad7e8c0157ae5dd0450009', '步步惊心：丽 달의 연인-보보경심：려 ', '2016', '该剧讲述的是高丽太祖王建的四王子王昭历经磨炼成为高丽第四代君主光宗的故事。四王子王昭一直把自己封闭在冷酷的面具之下，被人称作“狼狗”，直到遇到解树，才开始摘下面具。解树是一个性格坚韧的女汉子，原本生活在21世纪新时代的她突然穿越到高丽时代，陷入历史事件的中心，开始自己全新的命运，她将与王昭以及众王子发展出超越数千年的爱情和友情，并从中逐渐成长…… ', '1080', '更新至15集', '剧情片', 'f39c979857b48a2a0157b7b0974e0024', '爱情片', 'f39c979857b48a2a0157b7b0c3120025', '2016-10-14 20:24:48', NULL);
INSERT INTO `t_film` VALUES ('f39c979857c72e810157c74fe92d0031', '内详', '动漫', 'f39c979857a4c8c50157a8eaaee30019', 0, 'upload/filmPic/1476517675324.jpg', 1, '日本', 'f39c979857b48a2a0157be611374007c', '兔丸内详迅雷下载', '2016', '自从LINE开放全球插画家投稿后，产生了许多人气角色贴图，兔丸正是其中一员，而且还缔造了不少纪录！2014年8月推出第1弹贴图，因疗癒、可爱又轻鬆，偶而超现实，马上成为排行榜热门，又因作者是山梨县人，发表过「和兔丸一起说甲州腔」篇，也一度造成人气话题，下载量高居不下！', '1080', '更新至第11集', '动画片', 'f39c979857c72e810157c74e89a8002e', '内详', 'f39c979857c72e810157c74ee3f80030', '2016-10-15 15:48:05', NULL);
INSERT INTO `t_film` VALUES ('f39c979857c72e810157c75ea88f0041', '上村祐翔 / 宫野真守 / 细谷佳正 / 神谷浩史 / 丰永利行 / 小山力也 / 小见川千明 / 小野贤章 / 花仓洸幸 / 嶋村侑', '动漫', 'f39c979857a4c8c50157a8eaaee30019', 6, 'upload/filmPic/1476518596002.jpg', 1, '日本', 'f39c979857b48a2a0157be611374007c', '文豪野犬 文豪ストレイドッグス', '2016', '电视动画《文豪野犬》改编自朝雾卡夫卡原作，春河35负责作画的同名漫画。', '1080', '更新至第15集', '剧情片', 'f39c979857b48a2a0157be5f224f007a', '动作片', 'f39c979857c72e810157c75d80c80040', '2016-10-15 16:04:12', NULL);
INSERT INTO `t_film` VALUES ('f39c979857c72e810157c785a4d10057', '卢恒宇  李姝洁  ', '电影', 'f39c979857a4874a0157a4a6a4fe0000', 0, 'upload/filmPic/1476521167424.jpg', 1, '大陆', 'f39c979857ad7e8c0157ae4cbcd20001', '十万个冷笑话 大电影', '2015', '本片是由人气网络动画剧《十万个冷笑话》衍生而来的同名大电影。据可靠消息称，《十万个冷笑话》的剧场版将会在今年贺岁档上映。剧情将会以葫芦篇为主，主要讲述小金刚和女王大人相识后的幸福生活。据悉制作和声优还将延续第一季原班人马。不过届时会有周杰伦等巨星客串！', '1080', '全集', '喜剧片', 'f39c979857ad7e8c0157ae8927290011', '奇幻片', 'f39c979857c72e810157c784d4f70056', '2016-10-15 16:46:46', NULL);
INSERT INTO `t_film` VALUES ('f39c979857c72e810157c815f298005b', '石黑英雄', '动漫', 'f39c979857a4c8c50157a8eaaee30019', 0, 'upload/filmPic/1476530606794.jpg', 1, '日本', 'f39c979857b48a2a0157be611374007c', '欧布奥特曼 ウルトラマンオーブ', '2016', '歴代42人目となる新ヒーロー「ウルトラマンオーブ」は、今年放送開始50年を迎える「ウルトラマン」、同じく20年を迎える「ウルトラマンティガ」をはじめ、「ウルトラマンタロウ」や「ウルトラマンゼロ」など、歴代ウルトラ戦士のパワーをかりることで、特性の異なる様々な姿にタイプチェンジし、次々に現れる怪獣たちと戦います。 \n　　ウルトラマンオーブとなって戦う風来坊の青年・クレナイ ガイを演じるのは、ドラマ・映画・バラエティなどで活躍中の石黒 英雄さん。メイン監督は、昨年好評を博したTVシリーズ『ウルトラマンＸ』に引き続き、田口 清隆氏が担当。さらに大きなスケールで描かれる『ウルトラマンオーブ』にどうぞご期待ください。', '1080', '更新至第14集', '动画片', 'f39c979857c72e810157c74e89a8002e', '格斗片', 'f39c979857c72e810157c822a1cf006b', '2016-10-15 19:24:24', NULL);
INSERT INTO `t_film` VALUES ('f39c979857c72e810157c8282742006d', '宫野真守  细谷佳正  大塚芳忠  樱井孝宏  ', '动漫', 'f39c979857a4c8c50157a8eaaee30019', 0, 'upload/filmPic/1476531805842.jpg', 1, '日本', 'f39c979857b48a2a0157be611374007c', '亚人惊悚热血', '2016', '17年前，美军在非洲战场上发现了不会死的人类。人类将这些跟自己长得一模一样却又绝对不会死的未知新生物叫做“亚人”。亚人不会因为任何因素死亡，死后也会迅速复活。暑假前夕，普通的高中生永井圭在放学途中被卡车意外撞死，却又马上复活，成为“日本国内第3个亚人”被高额悬赏。不想成为实验动物的他，在儿时好友海斗的帮助下展开逃亡。 　　虽然官方表示亚人是无害的，但亚人中其实存在不为人知异种，有特殊能力可以召唤普通人类看不到的十分危险的“黑色幽灵”——IBM。暴露亚人身份并拥有这种能力的永井圭同时也被隐藏身份的亚人“帽子”佐藤盯上。拉永井圭入伙失败之后，佐藤与被他召集来的其他亚人们一起，发动一系列的恐怖袭击以争取权利。 　　为了打倒佐藤，不惜一切的永井圭与原本的对立方亚人管理委员会首脑户崎联手，只为阻止佐藤立下的死亡名单……\n', '1080', '更新至第15集', '动画片', 'f39c979857c72e810157c74e89a8002e', '惊悚片', 'f39c979857c72e810157c8269392006c', '2016-10-15 19:44:17', NULL);
INSERT INTO `t_film` VALUES ('f39c979857c72e810157c82c79b3007d', '更新至第2集', '动漫', 'f39c979857a4c8c50157a8eaaee30019', 0, 'upload/filmPic/1476532075194.jpg', 1, '大陆', 'f39c979857ad7e8c0157ae4cbcd20001', '侍灵演武-将星乱新番', '2016', '侍灵演武又译《soul buster》，侍灵演武全集动画改编自同名漫画《侍灵演武》，是又国内漫画家白猫的史诗级长篇漫画作品，《侍灵演武》是《尚漫》编辑部在2012年特别推荐的重磅大作，将为大家演绎一段不一样的三国故事。侍灵演武全集动画人物海报侍灵演武全集动画讲述的是高中生孙宸生活的城市是三国时期重要战场，处处充满了“三国历史”的气息。烦透了三国的他随口而说的一句抱怨， 却使得整个三国时期所有历史从世界上消失了！为了找回“消失的三国”孙宸卷入了一场无法预知的战斗中。一场三国时代遗留的战斗；一位叱咤战场千年的巾帼；一次百年不遇的偶然机会；一代英雄豪杰的现代聚首！历史中的三国骤然消失，传说中的武将却突然现世！2012年尚漫年度魔幻大作《侍灵演武》，给你讲述一场发生在现代的三国演义！', '1080', '更新至第2集', '动画片', 'f39c979857c72e810157c74e89a8002e', '动作片', 'f39c979857c72e810157c82d5f250080', '2016-10-15 19:49:00', NULL);
INSERT INTO `t_film` VALUES ('f39c979857c72e810157c832c8200082', '内山夕实 / 庄司宇芽香 / 古城门志帆 / 丰永利行 / 菊池心 / 熊井统子 / 田村奈央 / 阪口大助 / 古川慎 / 渕上舞 / 广桥凉 / 高木渉', '动漫', 'f39c979857a4c8c50157a8eaaee30019', 0, 'upload/filmPic/1476532498407.jpg', 1, '日本', 'f39c979857b48a2a0157be611374007c', '数码兽宇宙 应用怪兽 デジモンユニバース アプリモンスターズ', '2016', '现在，全世界所有人都在使用的智能手机App。 \n　　那里潜藏着无人知晓的存在·Applimonster，通称“Appmon”。 \n　　Appmon是具备能够自主思考行动的人工智能的App生命体， \n　　在人类世界与数码空间的间隙中，为系统及人类发挥着机能。 \n　　但，潜藏在网络之海中的“凶恶的最终BOSS人工智能·利维坦” \n　　化作病毒控制了Appmon们，并开始黑入各个系统， \n　　企图从网络一侧控制人类的世界。 \n　　主人公少年·新海春， \n　　获得了被伟大的意志引导的“App驱动”， \n　　并使来自“App芯片”的搜索App·GATCHIMON实体化了。 \n　　隐藏在“App驱动”中的谜团， \n　　处在Appmon所潜藏的网络世界与现实世界之间的不可思议的“场”， \n　　以及2只Appmon进化的“App合体”到底是什么？“利维坦”真正的目标究竟是……！？ \n　　爱好读书的少年春，与搜索App的怪兽·GATCHIMON这一对凸凹组合， \n　　奔驰于现代世界的新感觉搭档物语， \n　　现在启动！', '1080', '更新至第3集', '动画片', 'f39c979857c72e810157c74e89a8002e', '科幻片', 'f39c979857c72e810157c8319d420081', '2016-10-15 19:55:53', NULL);
INSERT INTO `t_film` VALUES ('f39c979857c72e810157c8387e6f0086', '诹访部顺一 / 津田健次郎 / 能登麻美子 / 吉野裕行 / 金尾哲夫 / 石川界人 / 植田佳奈 / 樱井孝宏 / 榊原良子 / 稻田彻 / 小松未可子 / 三上哲 / 悠木碧 / 矶边万沙子', '动漫', 'f39c979857a4c8c50157a8eaaee30019', 9, 'upload/filmPic/1476532925912.jpg', 1, '日本', 'f39c979857b48a2a0157be611374007c', '黑街GANGSTA匪徒 ', '2015', '故事主要讲述了在被黑手党、不良少年、妓女、贪污警官盘踞的街耶尔卡斯特姆上，左眼失明的沃力克与双耳失聪的尼可拉斯经营着一家便利屋，做着接受并处理一些谁也不愿扯上关系的“肮脏事”的工作。某天，他们从熟识的警官那儿接到了歼灭在有势力黑手党的地盘搞破坏的新兴卖淫组织的委托……就这样，新种类的黑帮幻想剧正式开演。\nGANGSTA匪徒全集アニメ原作のコミックコースケ著漫画『GANGSTA強盗》、物語は条とアルを斯托姆の街は、これらの人のところに巢くう。ここでは、一見チャラは優しい性格の射手沃里克と耳が鋭い刀客ニコラス難聴を一緒に店を営んで便利屋」、どちら がどのような身分の勢力、人に 委託し、人を助ける処理各種「汚いこと」… \n　　TV动画《GANGSTA匪徒》已经确定在2015年的7月份开播了。这个消息是在前不久举办的“广播也剧CD《GANGSTA匪徒》发售纪念活动 ～便利屋@新宿”上宣布。目前官网也正式上线了,同时也公布主要制作团队和声优阵容名单。 \n　　在制作阵容方面,导演将由初见浩一担任,猪爪慎一担任系列构成，植田羊一担任角色设定。TSUTCHIE负责音乐，动画制作Manglobe负责。声优阵容方面,将有诹访部顺一出演左眼失明的枪手大叔沃里克·阿尔坎杰罗，津田健次郎出演以武士刀为武器的黄昏人种尼古拉斯·布朗，能登麻美子出演母亲被黄昏人种杀害的爱丽克斯·贝尼迪特，榊原良子出演黄昏人种帕可丽公会长官吉娜·帕可丽，吉野裕行出演达达，小松未可子出演姬嘉。除了这些还有金尾哲夫、石川界人、三上哲、悠木碧、宝龟克寿、小山刚志、前野智昭、桥诘知久、桐本琢也、植田佳奈、樱井孝宏和稻田彻。 ', '1080', '全集', '动画片', 'f39c979857c72e810157c74e89a8002e', '动作片', 'f39c979857c72e810157c82d5f250080', '2016-10-15 20:02:08', NULL);
INSERT INTO `t_film` VALUES ('f39c979857c72e810157c83909810088', '柯暮卿 / 赵路 / 沈达威', '动漫', 'f39c979857a4c8c50157a8eaaee30019', 0, 'upload/filmPic/1476532900197.jpg', 1, '欧美', 'f39c979857a4c8c50157a9002ff9001c', '全职法师', '2016', '讲述了主角一觉醒来，世界大变。熟悉的高中传授的是魔法，告诉大家要成为一名出色的魔法师。崇尚科学的世界变成了崇尚魔法，偏偏有着一样以学渣看待自己的老师，一样目光异样的同学，一样社会底层挣扎的爸爸，一样纯美却不能走路的非血缘妹妹……', '1080', '更新至第8集', '动画片', 'f39c979857c72e810157c74e89a8002e', '动作片', 'f39c979857c72e810157c82d5f250080', '2016-10-15 20:02:43', NULL);
INSERT INTO `t_film` VALUES ('f39c979857c72e810157c8413646009a', '卢恒宇 / 李姝洁', '动漫', 'f39c979857a4c8c50157a8eaaee30019', 8, 'upload/filmPic/1476533466647.jpg', 1, '大陆', 'f39c979857ad7e8c0157ae4cbcd20001', '镇魂街 ', '2016', '普通的应届大学毕业生夏铃在求职之际，收到了一条奇怪的面试通知，因此误入罗刹街并遭到了危险，幸而被镇魂将曹焱兵搭救。然而接触中，曹焱兵却发现夏铃并非看起来那样普通，因为她的身体里也存在着灵力，并且寄宿着一位神秘的守护灵。与此同时，夏铃开始遭到不明身份刺客的追杀，曹焱兵亦被卷入其中，二人的命运从此开始了交集，而在这一切的背后，似乎还隐藏着某些更加危险的秘密……', '1080', '更新至第23集', '剧情片', 'f39c979857b48a2a0157be5f224f007a', '冒险片', 'f39c979857c72e810157c83fd8d10098', '2016-10-15 20:11:39', NULL);
INSERT INTO `t_film` VALUES ('f39c979857c72e810157c86fce9c00d0', '原奈津子 / 徳井青空 / 松井惠理子 Eriko Mats / 佐々木未来 / 寺田御子', '动漫', 'f39c979857a4c8c50157a8eaaee30019', 0, 'upload/filmPic/1476536395947.jpg', 1, '日本', 'f39c979857b48a2a0157be611374007c', '解谜之音 ナゾトキネ', '2016', '《解谜之音》是由福士直也原作并指导，天狗工房制作的原创电视动画。', '1080', '更新至第2集', '动画片', 'f39c979857c72e810157c74e89a8002e', '动作片', 'f39c979857c72e810157c82d5f250080', '2016-10-15 21:02:33', NULL);
INSERT INTO `t_film` VALUES ('f39c979857c72e810157c87bc86100d3', '松本梨香 / 大谷育江 / 牧口真幸 / 梶裕贵 / 伊濑茉莉也 / 上田佑司 / 远藤绫 / 林原惠美 / 三木真一郎 / 犬山犬子', '动漫', 'f39c979857a4c8c50157a8eaaee30019', 0, 'upload/filmPic/1476537242669.jpg', 1, '日本', 'f39c979857b48a2a0157be611374007c', '宠物小精灵XY ポケットモンスターXY', '2013', 'テレビアニメ「ポケットモンスター」シリーズの放送が10月17日（木）からスタートすることが決定したぞ！ \n　　タイトルは「ポケットモンスター ＸＹ（エックスワイ）」だ！！ \n　　＜ストーリー＞ \n　　カロス地方の中心にある都市ミアレシティにやってきたサトシとピカチュウ。そこにはみたことのないポケモンたちの姿と新たな仲間たちとの出会いが待っていた！！ \n　　ポケモンマスターになる事を夢見るサトシ＆ピカチュウのカロスリーグ挑戦へ向けた新たな冒険がいよいよ始まる！！ \n　　新番組「ポケットモンスター ＸＹ（エックスワイ）」 \n　　10月17日（木）放送スタート！！', '1080', '更新至第136集', '动画片', 'f39c979857c72e810157c74e89a8002e', '科幻片', 'f39c979857c72e810157c8319d420081', '2016-10-15 21:15:37', NULL);
INSERT INTO `t_film` VALUES ('f39c979857c888c10157c8959aca0018', '沈乐平', '动漫', 'f39c979857a4c8c50157a8eaaee30019', 8, 'upload/filmPic/1476539027739.jpg', 1, '大陆', 'f39c979857ad7e8c0157ae4cbcd20001', '秦时明月之百步飞剑 重制版', '2007', '天下第一剑客盖聂（刘钦 配音），带着已故挚友的儿子荆天明（冯骏骅 配音），一路颠沛流离，只为了躲避秦王的追杀。在以一人之力击退了秦王派出的三百骑兵之后，荆天明在盖聂的身上看到了真正的侠肝义胆。此事传到宫墙之内，秦王大怒，命令宰相李斯（游军 配音）一定要将他们两人除之而后快，于是，李斯找到了盖聂曾经的同门师兄手下败将卫庄（吴磊 配音），想借他之手，完成自己的使命。 \n　　卫庄派出了手下四大天魔王一路袭击盖聂，而盖聂和荆天明则获得了少羽（沈达威 配音）、高月（黄怡晴 配音）和墨家众人的鼎力相助，屡屡死里逃生。最终，卫庄将盖聂一行人逼至绝境，只为了能够再同他比试一场。', '1080', '全集', '剧情片', 'f39c979857b48a2a0157be5f224f007a', '武侠片', 'f39c979857b48a2a0157be5f4bd0007b', '2016-10-15 21:43:50', NULL);

-- ----------------------------
-- Table structure for t_level
-- ----------------------------
DROP TABLE IF EXISTS `t_level`;
CREATE TABLE `t_level`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_use` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_level
-- ----------------------------
INSERT INTO `t_level` VALUES ('a0816606de4c0f5a0838135ca4b7ce92', 1, '优先');

-- ----------------------------
-- Table structure for t_loc
-- ----------------------------
DROP TABLE IF EXISTS `t_loc`;
CREATE TABLE `t_loc`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_use` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_loc
-- ----------------------------
INSERT INTO `t_loc` VALUES ('0ecfa003a636b90ed367e5e7dabf3a75', 1, '香港');
INSERT INTO `t_loc` VALUES ('f39c979857a4c8c50157a9002ff9001c', 1, '欧美');
INSERT INTO `t_loc` VALUES ('f39c979857ad7e8c0157ae4cbcd20001', 1, '大陆');
INSERT INTO `t_loc` VALUES ('f39c979857ad7e8c0157ae5dd0450009', 1, '韩国');
INSERT INTO `t_loc` VALUES ('f39c979857ad7e8c0157af44b2a40017', 1, '美国');
INSERT INTO `t_loc` VALUES ('f39c979857b48a2a0157b798a5540009', 1, '加拿大');
INSERT INTO `t_loc` VALUES ('f39c979857b48a2a0157b98c59330049', 1, '法国');
INSERT INTO `t_loc` VALUES ('f39c979857b48a2a0157be611374007c', 1, '日本');

-- ----------------------------
-- Table structure for t_raty
-- ----------------------------
DROP TABLE IF EXISTS `t_raty`;
CREATE TABLE `t_raty`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `en_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `film_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `score` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `t_raty_ibfk_1`(`film_id`) USING BTREE,
  CONSTRAINT `t_raty_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `t_film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_raty
-- ----------------------------
INSERT INTO `t_raty` VALUES ('0b22975d614302480161432fdbd50000', '2018-01-30 02:31:05', 'f39c979857b48a2a0157c2f2a32700f2', '5');
INSERT INTO `t_raty` VALUES ('40289fcd62773ec80162775662570000', '2018-03-30 22:36:12', 'f39c979857b48a2a0157c326e58c0119', '7');
INSERT INTO `t_raty` VALUES ('40289fcd62773ec8016288bf1e7e0001', '2018-04-03 07:43:43', 'f39c979857b48a2a0157c2be765b00ae', '7');
INSERT INTO `t_raty` VALUES ('f39c979857a4c8c50157a90e791c0021', '2016-10-09 18:48:00', 'f39c979857a4c8c50157a9020fb8001d', '4');
INSERT INTO `t_raty` VALUES ('f39c979857a4c8c50157a90ec8170022', '2016-10-09 18:48:20', 'f39c979857a4c8c50157a9020fb8001d', '10');
INSERT INTO `t_raty` VALUES ('f39c979857a4c8c50157ac1595290026', '2016-10-10 08:54:38', 'f39c979857a4c8c50157a91319d50023', '8');
INSERT INTO `t_raty` VALUES ('f39c979857ad7e8c0157ad86aff80000', '2016-10-10 15:37:47', 'f39c979857a4c8c50157ac7abbbb002a', '8');
INSERT INTO `t_raty` VALUES ('f39c979857ad7e8c0157af682fa80025', '2016-10-11 00:23:43', 'f39c979857ad7e8c0157ae4ea0890002', '8');
INSERT INTO `t_raty` VALUES ('f39c979857ad7e8c0157af6e0edf0026', '2016-10-11 00:30:08', 'f39c979857ad7e8c0157af419be90014', '1');
INSERT INTO `t_raty` VALUES ('f39c979857ad7e8c0157b289b82a0027', '2016-10-11 14:59:12', 'f39c979857ad7e8c0157ae8ad2c80012', '9');
INSERT INTO `t_raty` VALUES ('f39c979857ad7e8c0157b28b62820028', '2016-10-11 15:01:01', 'f39c979857ad7e8c0157af419be90014', '8');
INSERT INTO `t_raty` VALUES ('f39c979857b48a2a0157b7176f7f0000', '2016-10-12 12:12:28', 'f39c979857ad7e8c0157af419be90014', '8');
INSERT INTO `t_raty` VALUES ('f39c979857b48a2a0157b71ddf800001', '2016-10-12 12:19:30', 'f39c979857ad7e8c0157ae565bc60005', '8');
INSERT INTO `t_raty` VALUES ('f39c979857b48a2a0157b71e58c80002', '2016-10-12 12:20:01', 'f39c979857ad7e8c0157b39c4f9b002a', '9');
INSERT INTO `t_raty` VALUES ('f39c979857b48a2a0157b7c90753003a', '2016-10-12 15:26:27', 'f39c979857b48a2a0157b7b1e28d0026', '10');
INSERT INTO `t_raty` VALUES ('f39c979857b48a2a0157b83f67ef0048', '2016-10-12 17:35:45', 'f39c979857b48a2a0157b83c79ac0046', '6');
INSERT INTO `t_raty` VALUES ('f39c979857b48a2a0157b99c0832004d', '2016-10-12 23:56:33', 'f39c979857b48a2a0157b7a42ec60019', '8');
INSERT INTO `t_raty` VALUES ('f39c979857b48a2a0157bdd3feaf0053', '2016-10-13 19:36:09', 'f39c979857b48a2a0157bdc3fc50004f', '8');
INSERT INTO `t_raty` VALUES ('f39c979857b48a2a0157be2bd6420079', '2016-10-13 21:12:06', 'f39c979857b48a2a0157bdf32e97005a', '8');
INSERT INTO `t_raty` VALUES ('f39c979857b48a2a0157bea5a11a0093', '2016-10-13 23:25:08', 'f39c979857b48a2a0157be8319d2008c', '8');
INSERT INTO `t_raty` VALUES ('f39c979857c72e810157c7615de60051', '2016-10-15 16:07:09', 'f39c979857c72e810157c75ea88f0041', '6');
INSERT INTO `t_raty` VALUES ('f39c979857c72e810157c7755ba00052', '2016-10-15 16:28:59', 'f39c979857b48a2a0157c2c661a300b5', '8');
INSERT INTO `t_raty` VALUES ('f39c979857c72e810157c845d46100b8', '2016-10-15 20:16:42', 'f39c979857c72e810157c8413646009a', '8');
INSERT INTO `t_raty` VALUES ('f39c979857c888c10157c89c2ccc0023', '2016-10-15 21:51:00', 'f39c979857c888c10157c8959aca0018', '8');
INSERT INTO `t_raty` VALUES ('f39c979857c888c10157c89cbebe0025', '2016-10-15 21:51:38', 'f39c979857c72e810157c8387e6f0086', '9');

-- ----------------------------
-- Table structure for t_res
-- ----------------------------
DROP TABLE IF EXISTS `t_res`;
CREATE TABLE `t_res`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `episodes` int(11) NOT NULL,
  `is_use` int(11) NOT NULL,
  `link` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `link_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `update_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `film_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_knc69bmssxu89jk9lmj736yhd`(`film_id`) USING BTREE,
  CONSTRAINT `t_res_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `t_film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_res
-- ----------------------------
INSERT INTO `t_res` VALUES ('f39c979857a4c8c50157aa24c4730025', 1, 1, 'ed2k://|file|这个杀手不太冷.BD1280超清国英法三语中英双字.mp4|3543653500|77F7D3E3C11FF50046AD2019AD14DB71|h=VSX6NIHYZFHYAZ3NB67BU6DTG3MNQ77O|/', 'thunder', '这个杀手不太冷.BD1280超清国英法三语中英双', '2016-10-09 23:51:58', 'f39c979857a4c8c50157a91319d50023');
INSERT INTO `t_res` VALUES ('f39c979857ad59c10157ad7aa0ab0001', 1, 1, 'ed2k://|file|最后一班.BD1280超清中英双字.mp4|1845161527|85719BCDE0723135155697C8B4A4E032|h=XX7IYJPA3MIJB7MAGH6Y3W4E6J5UG43D|/', 'ed2k', '最后一班1280超清迅雷下载', '2016-10-10 15:24:37', 'f39c979857a4c8c50157ac7abbbb002a');
INSERT INTO `t_res` VALUES ('f39c979857ad7e8c0157ae4fad860003', 1, 1, 'thunder://QUFlZDJrOi8vfGZpbGV85Ni5q7rT0NC2ry5UQzEyODDH5c76ufrT79bQ06LLq9fWLm1wNHwyODA3NDk1NDAxfDZFOTA0NkI4MDgwNTc5RjAyM0EwRDRDMzBBNDM5RUQwfGg9RUxTQ0VCNTdSTUdWN1pJU1hHTkFKT1dZUllBUFZDWlF8L1pa', 'thunder', '湄公河行动', '2016-10-10 19:17:19', 'f39c979857ad7e8c0157ae4ea0890002');
INSERT INTO `t_res` VALUES ('f39c979857ad7e8c0157ae509da50004', 1, 1, 'ed2k://|file|湄公河行动.TC1280清晰国语中英双字.mp4|2807495401|6E9046B8080579F023A0D4C30A439ED0|h=ELSCEB57RMGV7ZISXGNAJOWYRYAPVCZQ|/', 'ed2k', '湄公河', '2016-10-10 19:18:21', 'f39c979857ad7e8c0157ae4ea0890002');
INSERT INTO `t_res` VALUES ('f39c979857ad7e8c0157ae5704c90006', 1, 1, 'ed2k://|file|X特遣队.韩版.HD1280高清中英双字.mp4|2800777968|93F11D560E50F2D1E58D194A25F71D29|h=4ZBE35SI7MRT4J7HWV5SZ4BDQ7IBLIE4|/', 'ed2k', '自杀小队', '2016-10-10 19:25:20', 'f39c979857ad7e8c0157ae565bc60005');
INSERT INTO `t_res` VALUES ('f39c979857ad7e8c0157ae57ca7b0007', 1, 1, 'thunder://QUFlZDJrOi8vfGZpbGV8WCVFNyU4OSVCOSVFOSU4MSVBMyVFOSU5OCU5Ri4lRTklOUYlQTklRTclODklODguSEQxMjgwJUU5JUFCJTk4JUU2JUI4JTg1JUU0JUI4JUFEJUU4JThCJUIxJUU1JThGJThDJUU1JUFEJTk3Lm1wNHwyODAwNzc3OTY4fDkzRjExRDU2MEU1MEYyRDFFNThEMTk0QTI1RjcxRDI5fGg9NFpCRTM1U0k3TVJUNEo3SFdWNVNaNEJEUTdJQkxJRTR8L1pa', 'thunder', '自杀小队', '2016-10-10 19:26:11', 'f39c979857ad7e8c0157ae565bc60005');
INSERT INTO `t_res` VALUES ('f39c979857ad7e8c0157ae624b65000b', 1, 1, 'ed2k://|file|奸臣.BD1280超清韩语中字.mp4|2926774827|3D8B5E3A6DFA1979C75AD217274E0B45|h=LRYNJXETP2LJH2F7VGLS2C7AZITDBA5O|/', 'ed2k', '奸臣', '2016-10-10 19:37:39', 'f39c979857ad7e8c0157ae61551c000a');
INSERT INTO `t_res` VALUES ('f39c979857ad7e8c0157ae711b1e000e', 1, 1, 'ed2k://|file|霸王别姬.BD1280超清国语中字.mp4|3639212957|96C9B8611778ADD3C146C439353290C1|h=H4DAJWQOJ7OKRRPF47X66QWFDBGKWN33|/', 'ed2k', '霸王别姬', '2016-10-10 19:53:50', 'f39c979857ad7e8c0157ae707c4d000d');
INSERT INTO `t_res` VALUES ('f39c979857ad7e8c0157ae74ca800010', 1, 1, 'ed2k://|file|阿甘正传.BD1280超清特效国英双语双字.mp4|3221095373|D4A98C67409F7152FE7CE9BBDA3AA47D|h=ET6AXGAXZ3576MRM5XTLFEWLNOXKO74I|/', 'ed2k', '阿甘正传', '2016-10-10 19:57:52', 'f39c979857ad7e8c0157ae7406f0000f');
INSERT INTO `t_res` VALUES ('f39c979857ad7e8c0157af3b22080013', 1, 1, 'ed2k://|file|Life.Is.Beautiful.1997.美丽人生.双语字幕.HR-HDTV.AC3.1024X576.x264-人人影视制作.mkv|1859897286|240D72AEB364CD8A21D6E616C702FF80|/', 'ed2k', '美丽人生', '2016-10-10 23:34:30', 'f39c979857ad7e8c0157ae8ad2c80012');
INSERT INTO `t_res` VALUES ('f39c979857ad7e8c0157af42739d0015', 1, 1, 'ed2k://|file|[屍速列車].釜山行.Train.To.Busan.2016.HD720P.X264.AAC.Korean.CHS.Mp4Ba.mp4|2618502461|087FAACC7CC2385D1F70FC316A60E9F9|/', 'ed2k', '釜山行', '2016-10-10 23:42:30', 'f39c979857ad7e8c0157af419be90014');
INSERT INTO `t_res` VALUES ('f39c979857ad7e8c0157af4e6272001c', 1, 1, 'ed2k://|file|西部世界.Westworld.S01E01.720p.HDTV.x264.双语字幕.深影字幕组V2.mp4|842311392|4633825C40140B682C9514E84D843B24|/', 'ed2k', 'EP01', '2016-10-10 23:55:32', 'f39c979857ad7e8c0157af4d8e87001b');
INSERT INTO `t_res` VALUES ('f39c979857ad7e8c0157af506bb3001e', 2, 1, 'ed2k://|file|西部世界.Westworld.S01E02.720p.HDTV.x264-双语字幕.深影字幕组V2.mp4|748513758|43FB751DBF2FFEF6BC9E6524C9B38216|/', 'ed2k', 'EP02', '2016-10-10 23:57:45', 'f39c979857ad7e8c0157af4d8e87001b');
INSERT INTO `t_res` VALUES ('f39c979857ad7e8c0157af582f9b0021', 2, 1, 'magnet:?xt=urn:btih:C535374794603720C502A349FBE83B68919E4701', 'thunder', 'Westworld.S01E02.720p.FIX字幕侠', '2016-10-11 00:06:14', 'f39c979857ad7e8c0157af4d8e87001b');
INSERT INTO `t_res` VALUES ('f39c979857ad7e8c0157af5a4f040024', 1, 1, 'magnet:?xt=urn:btih:3C18FB498F9E220BAC4E6BB2DD7F06A9286A932C', 'thunder', 'Westworld S01E01 720p FIX字幕侠', '2016-10-11 00:08:33', 'f39c979857ad7e8c0157af4d8e87001b');
INSERT INTO `t_res` VALUES ('f39c979857ad7e8c0157b3942e8f0029', 1, 1, 'magnet:?xt=urn:btih:128671c4bd2ff3b47a43ce5268f1d20631c59492', 'thunder', '自杀小队中英双字幕', '2016-10-11 19:50:15', 'f39c979857ad7e8c0157ae565bc60005');
INSERT INTO `t_res` VALUES ('f39c979857ad7e8c0157b3a2e6d8002b', 1, 1, 'magnet:?xt=urn:btih:b6a6d8454c23332ef3223e529fccb3c3792a23c6', 'thunder', '从你的全世界路过.I.Belonged.to.You.2016.TS720P.X264.AAC.Mandarin.CHS-ENG.Mp4Ba', '2016-10-11 20:06:20', 'f39c979857ad7e8c0157b39c4f9b002a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b78e57fe0006', 1, 1, '25l24l27l26l24L26l26L24L58l61l29l29L27L28l49L29l61l49L18L16l', 'Flh', '美人鱼', '2016-10-12 14:22:21', 'f39c979857b48a2a0157b78aa9380004');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b792df720007', 1, 1, 'ed2k://|file|美人鱼.BD1280超清国粤双语中字.mp4|2211125974|EE0BEA4F70B2443C0C048E769BCF736B|h=ZP3LN4M52NYWVUYTQH2NSG2Z2R22INKD|/', 'ed2k', '美人鱼迅播', '2016-10-12 14:27:18', 'f39c979857b48a2a0157b78aa9380004');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b79461810008', 1, 1, 'thunder://QUFlZDJrOi8vfGZpbGV8JUU3JUJFJThFJUU0JUJBJUJBJUU5JUIxJUJDLkJEMTI4MCVFOCVCNiU4NSVFNiVCOCU4NSVFNSU5QiVCRCVFNyVCMiVBNCVFNSU4RiU4QyVFOCVBRiVBRCVFNCVCOCVBRCVFNSVBRCU5Ny5tcDR8MjIxMTEyNTk3NHxFRTBCRUE0RjcwQjI0NDNDMEMwNDhFNzY5QkNGNzM2QnxoPVpQM0xONE01Mk5ZV1ZVWVRRSDJOU0cyWjJSMjJJTktEfC9aWg==', 'thunder', '美人鱼迅雷', '2016-10-12 14:28:57', 'f39c979857b48a2a0157b78aa9380004');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b79c2f8a000b', 1, 1, 'ed2k://|file|黑暗物质.Dark.Matter.S01E01.576p.WEBRip.AC3.x264.双语字幕-深影字幕组V2.mkv|271495278|FCFC3E7D0A6518887157EA1C4CD24834|h=N6BJA7RQ7JID7VJJCOPW5Q22UXKWF5GN|/', 'ed2k', '黑暗物质第一季cn163', '2016-10-12 14:37:28', 'f39c979857b48a2a0157b79a49fe000a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b79c8607000c', 2, 1, 'ed2k://|file|黑暗物质.Dark.Matter.S01E02.576p.WEBRip.AC3.x264.双语字幕-深影字幕组.mkv|342212803|E5D7D2186F7F1C15C55F72BBC37C98B9|h=PO7N6EKL5B47BVKDIR7Z7GNRSXHWWQBU|/', 'ed2k', '黑暗物质第一季cn163', '2016-10-12 14:37:50', 'f39c979857b48a2a0157b79a49fe000a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b79cc284000d', 3, 1, 'ed2k://|file|黑暗物质.Dark.Matter.S01E03.576p.WEBRip.AC3.x264.双语字幕-深影字幕组.mkv|265478460|0077FFE5089E7F84E1148DA69EF4BBF0|h=KM7ZQIONCOUA7UN3RMT7R2XUCI2TVHMW|/', 'ed2k', '黑暗物质第一季cn163', '2016-10-12 14:38:06', 'f39c979857b48a2a0157b79a49fe000a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b79d0097000e', 4, 1, 'ed2k://|file|黑暗物质.Dark.Matter.S01E04.576p.HDTV.AC3.x264.双语字幕-深影字幕组.mkv|390858466|E7B4FFDF130816FDD450D94FF272C4BC|h=T6Q7AGH3EYIOXI5KRP3NNGQQ6TOGYUIV|/', 'ed2k', '黑暗物质第一季cn163', '2016-10-12 14:38:22', 'f39c979857b48a2a0157b79a49fe000a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b79d3563000f', 5, 1, 'ed2k://|file|黑暗物质.Dark.Matter.S01E05.576p.HDTV.AC3.x264.双语字幕-深影字幕组.mkv|407236854|54D1A9A5B81C7E018CD1480614733958|h=F6CWL6IPGSLEB3RICVYD4UXBXIBHHH7G|/', 'ed2k', '黑暗物质第一季cn163', '2016-10-12 14:38:35', 'f39c979857b48a2a0157b79a49fe000a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b79d7d880010', 6, 1, 'ed2k://|file|黑暗物质.Dark.Matter.S01E06.576p.HDTV.AC3.x264.双语字幕-深影字幕组.mkv|388907975|5491F5E2065EDF5495D1DE72CD115106|h=VYRTLCPYG776X3WUIUUJVRIUZBJJP3UA|/', 'ed2k', '黑暗物质第一季cn163', '2016-10-12 14:38:54', 'f39c979857b48a2a0157b79a49fe000a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b79dd2ec0011', 7, 1, 'ed2k://|file|黑暗物质.Dark.Matter.S01E07.576p.WEBRip.AC3.x264.双语字幕-深影字幕组.mkv|327296700|B83FE0376611132FF503B584310A94D1|h=KI3K2JKPRCYB27VUTM3DEIZSCR4JMWVY|/', 'ed2k', '黑暗物质第一季cn163', '2016-10-12 14:39:16', 'f39c979857b48a2a0157b79a49fe000a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b79e08740012', 8, 1, 'ed2k://|file|黑暗物质.Dark.Matter.S01E08.576p.WEBRip.AC3.x264.双语字幕-深影字幕组.mkv|363822566|103DA6C3962BBBE7DA39788A6A88F9B9|h=443MQZJZVK6VZ72AJZUDXAVT3JEPSGRU|/', 'ed2k', '黑暗物质第一季cn163', '2016-10-12 14:39:29', 'f39c979857b48a2a0157b79a49fe000a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b79e39870013', 9, 1, 'ed2k://|file|黑暗物质.Dark.Matter.S01E09.576p.HDTV.AC3.x264.双语字幕-深影字幕组.mkv|357532427|AF6B157F3ADF5FDE8CBBEFB24A11BC1F|h=3IJ7I2WQZB452HHQGRIWP3L7A76SUEUV|/', 'ed2k', '黑暗物质第一季cn163', '2016-10-12 14:39:42', 'f39c979857b48a2a0157b79a49fe000a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b79e78740014', 10, 1, 'ed2k://|file|黑暗物质.Dark.Matter.S01E10.576p.HDTV.AC3.x264.双语字幕-深影字幕组.mkv|429653511|93BCB7AC5D696224193D7E2E8DAB4686|h=DZZ2IWFQSX3LEWOSGK3CGLPCWQJADCCP/', 'ed2k', '黑暗物质第一季cn163', '2016-10-12 14:39:58', 'f39c979857b48a2a0157b79a49fe000a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b79eb89b0015', 11, 1, 'ed2k://|file|黑暗物质.Dark.Matter.S01E11.576p.HDTV.AC3.x264.双语字幕-深影字幕组.mkv|305257787|5327865A99C1265BC86962E0889A9283|h=KDEB7QME7XPQ3FVICXBX7QQOWBYDUXFG|/', 'ed2k', '黑暗物质第一季cn163', '2016-10-12 14:40:15', 'f39c979857b48a2a0157b79a49fe000a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b79eed860016', 12, 1, 'ed2k://|file|黑暗物质.Dark.Matter.S01E12.576p.HDTV.AC3.x264.双语字幕-深影字幕组.mkv|433496481|B029CC69813D91928C93D97C553ECFA4|h=ZGQZTPVNQFUQMM3CIKQN4EGSJ2D2WFHC|/', 'ed2k', '黑暗物质第一季cn163', '2016-10-12 14:40:28', 'f39c979857b48a2a0157b79a49fe000a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b79f1f930017', 13, 1, 'ed2k://|file|黑暗物质.Dark.Matter.S01E13.576p.HDTV.AC3.x264.双语字幕-深影字幕组.mkv|544580777|DC5FD989D1F2593DE010135186DCB9B5|h=S4HX7ZHZ2JLX352YDBPSQX2LHLTP6DFK|/', 'ed2k', '黑暗物质第一季cn163', '2016-10-12 14:40:41', 'f39c979857b48a2a0157b79a49fe000a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7a4a8b9001a', 1, 1, 'ed2k://|file|无垠的太空.The.Expanse.S01E01.720p.HDTV.AC3.x264.双语字幕.mkv|752535068|B6F7427105CCB53B718BEE3537AE4DEC|h=7VMBD6BQFE4UFO4RLGKG3P7MRBM7DOIV|/', 'ed2k', '太空无垠CN163', '2016-10-12 14:46:44', 'f39c979857b48a2a0157b7a42ec60019');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7a4e7b7001b', 2, 1, 'ed2k://|file|无垠的太空.The.Expanse.S01E02.中英字幕.HDTVrip.1024X576.mp4|427613092|49c239fa2ed268da91d45d0db08479d7|h=r7xa4wlpku2cuiiavbvcuqmwngi2kmox|/', 'ed2k', '太空无垠CN163', '2016-10-12 14:47:00', 'f39c979857b48a2a0157b7a42ec60019');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7a51dfa001c', 3, 1, 'ed2k://|file|无垠的太空.The.Expanse.S01E03.中英字幕.HDTVrip.1024X576.mp4|428773313|ff49c62eab0f2c292bd5dd65fd975ce5|h=hyaipwoleltikbwcebl43wqvxotsyiac|/', 'ed2k', '太空无垠CN163', '2016-10-12 14:47:14', 'f39c979857b48a2a0157b7a42ec60019');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7a5518d001d', 4, 1, 'ed2k://|file|无垠的太空.The.Expanse.S01E04.中英字幕.HDTVrip.1024X576.mp4|432527700|70c0c1d32a47ae1fdfb8c92f469863cc|h=4ra4gm2bqncojepd654572jvb7ay35gy|/', 'ed2k', '太空无垠CN163', '2016-10-12 14:47:27', 'f39c979857b48a2a0157b7a42ec60019');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7a59a10001e', 5, 1, 'ed2k://|file|无垠的太空.The.Expanse.S01E05.中英字幕.HDTVrip.1024X576.mp4|429458962|6fc64c06087d11177f61a085c1145d64|h=3vdtaztnpz4a4j5ilewzjomeugjwsqgg|/', 'ed2k', '太空无垠CN163', '2016-10-12 14:47:45', 'f39c979857b48a2a0157b7a42ec60019');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7a5c69f001f', 6, 1, 'ed2k://|file|无垠的太空.The.Expanse.S01E06.中英字幕.HDTVrip.1024X576.mp4|430684575|05264878c0ed169277b45b06d5b42741|h=wgcurkgwvcrvrjualbuvfgk7h26atll2|/', 'ed2k', '太空无垠CN163', '2016-10-12 14:47:57', 'f39c979857b48a2a0157b7a42ec60019');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7a5f3f80020', 7, 1, 'ed2k://|file|无垠的太空.The.Expanse.S01E07.中英字幕.HDTVrip.1024X576.mp4|424944333|73f9efa96d00a5997f5ce034af06c2de|h=5sejfqpwrqyfxynt5ld2xp6h4usglflk|/', 'ed2k', '太空无垠CN163', '2016-10-12 14:48:08', 'f39c979857b48a2a0157b7a42ec60019');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7a620870021', 8, 1, 'ed2k://|file|无垠的太空.The.Expanse.S01E08.中英字幕.HDTVrip.1024X576.mp4|424942447|18b8df78c41e170f2637011e4fb4cf79|h=li2wyxxta6yn5fvb6j3fwrg6v7aa4vha|/', 'ed2k', '太空无垠CN163', '2016-10-12 14:48:20', 'f39c979857b48a2a0157b7a42ec60019');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7a64ca80022', 9, 1, 'ed2k://|file|无垠的太空.The.Expanse.S01E09.中英字幕.HDTVrip.1024X576.mp4|405303724|50eaeb802dfafe4f4f140acd489051ea|h=tpv55uafpkrcj22oeq2nypkdpfe5dfjy|/', 'ed2k', '太空无垠CN163', '2016-10-12 14:48:31', 'f39c979857b48a2a0157b7a42ec60019');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7a677810023', 10, 1, 'ed2k://|file|无垠的太空.The.Expanse.S01E10.中英字幕.HDTVrip.1024X576.mp4|409777325|5e2c2dbf2b03e4906cb821e9833674e5|h=gl3julfopnt24doamruqlu3vnvepgle7|/', 'ed2k', '太空无垠CN163', '2016-10-12 14:48:42', 'f39c979857b48a2a0157b7a42ec60019');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7c004b00029', 1, 1, 'magnet:?xt=urn:btih:72CD524AFCFCF8F2ABF9728EDFCA0B8622885822', 'thunder', '[韩迷字幕组][第01集][韩语中字][720p].rmvb', '2016-10-12 15:16:37', 'f39c979857b48a2a0157b7b1e28d0026');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7c07388002a', 2, 1, 'magnet:?xt=urn:btih:53283609A5E883BEED1FE22E8DE793A4573A0FFC', 'thunder', '[韩迷字幕组][第02集][韩语中字][720p].rmvb', '2016-10-12 15:17:05', 'f39c979857b48a2a0157b7b1e28d0026');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7c0e609002b', 3, 1, 'magnet:?xt=urn:btih:BF5FC8CC6CD5B2CD2EB7FBA428E2DE79D4C240B6', 'thunder', '[韩迷字幕组][第03集][韩语中字][720p].rmvb', '2016-10-12 15:17:34', 'f39c979857b48a2a0157b7b1e28d0026');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7c1c138002d', 4, 1, 'magnet:?xt=urn:btih:552994E71F40F003A1A9823D199F44EBA92CE9CA', 'thunder', '[韩迷字幕组][第04集][韩语中字][720p].rmvb', '2016-10-12 15:18:30', 'f39c979857b48a2a0157b7b1e28d0026');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7c223ab002e', 5, 1, 'magnet:?xt=urn:btih:CDEB59C18CF26D3F8DCA78572D391C09DD5FB3BB', 'thunder', '[韩迷字幕组][第05集][韩语中字][720p].rmvb', '2016-10-12 15:18:56', 'f39c979857b48a2a0157b7b1e28d0026');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7c28c69002f', 6, 1, 'magnet:?xt=urn:btih:983E6883F33B136C5F61C90361E625C333DD54C6', 'thunder', '[韩迷字幕组][第06集][韩语中字][720p].rmvb', '2016-10-12 15:19:22', 'f39c979857b48a2a0157b7b1e28d0026');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7c301d80030', 7, 1, 'magnet:?xt=urn:btih:3FDB497EDAB669921FB4698A9EDC53256BD47A4D', 'thunder', '[韩迷字幕组][第07集][韩语中字][720p].rmvb  ', '2016-10-12 15:19:53', 'f39c979857b48a2a0157b7b1e28d0026');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7c365650031', 8, 1, 'magnet:?xt=urn:btih:2352BFD91A973BEB311ECF075CF5B87198C10B7C', 'thunder', '[韩迷字幕组][第08集][韩语中字][720p].rmvb  ', '2016-10-12 15:20:18', 'f39c979857b48a2a0157b7b1e28d0026');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7c3c8650032', 9, 1, 'magnet:?xt=urn:btih:E775E942A56652C1B46F021152010650341FD7EC', 'thunder', '[韩迷字幕组][第09集][韩语中字][720p].rmvb  ', '2016-10-12 15:20:43', 'f39c979857b48a2a0157b7b1e28d0026');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7c476a80033', 10, 1, 'magnet:?xt=urn:btih:94969642E299AC374047AED55760B2DD4DFC0C77', 'thunder', '[韩迷字幕组][第10集][韩语中字][720p].rmvb', '2016-10-12 15:21:28', 'f39c979857b48a2a0157b7b1e28d0026');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7c4e2ff0034', 11, 1, 'magnet:?xt=urn:btih:AFCC3DFECAC70F201743C3AF3BAB65A93B868161', 'thunder', '[韩迷字幕组][第11集][韩语中字][720p].rmvb', '2016-10-12 15:21:56', 'f39c979857b48a2a0157b7b1e28d0026');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7c5415c0035', 12, 1, 'magnet:?xt=urn:btih:9BDC0E705C9BD0C17E6BC1E8C559EED23988A27F', 'thunder', '[韩迷字幕组][第12集][韩语中字][720p].rmvb', '2016-10-12 15:22:20', 'f39c979857b48a2a0157b7b1e28d0026');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7c5a3240036', 13, 1, 'magnet:?xt=urn:btih:91B5262D6D3E02793A817486D5F73402E96F9CC2', 'thunder', '[韩迷字幕组][第13集][韩语中字][720p].rmvb', '2016-10-12 15:22:45', 'f39c979857b48a2a0157b7b1e28d0026');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7c5f3190037', 14, 1, 'magnet:?xt=urn:btih:EB903B3F8269779CBFD8C131E7B09A6F0BC20A01', 'thunder', '[韩迷字幕组][第14集][韩语中字][720p].rmvb', '2016-10-12 15:23:05', 'f39c979857b48a2a0157b7b1e28d0026');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7c64fb10038', 15, 1, 'magnet:?xt=urn:btih:E1CC529828997CB398B1F75C1FA32F0F03CDE59E', 'thunder', '[韩迷字幕组][第15集][韩语中字][720p].rmvb', '2016-10-12 15:23:29', 'f39c979857b48a2a0157b7b1e28d0026');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b7c69da20039', 16, 1, 'magnet:?xt=urn:btih:AC79E404A2AE40C2B569F743172C089C1A113344', 'thunder', '[韩迷字幕组][第16集][韩语中字][720p].rmvb', '2016-10-12 15:23:49', 'f39c979857b48a2a0157b7b1e28d0026');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b820c091003e', 1, 1, 'ftp://dy:dy@xla.2tu.cc:50084/[迅雷下载]特务迷城.BD粤语中字1024高清.rmvb', 'ed2k', '特务迷城.BD国粤双语中字', '2016-10-12 17:02:16', 'f39c979857b48a2a0157b81f50a3003c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b831b2df0042', 1, 1, 'ed2k://|file|[特務迷城] The Accidental spy.avi|732139744|FE10E212E9BC91D2CA383E7E39770EC5|/', 'ed2k', '特務迷城', '2016-10-12 17:20:47', 'f39c979857b48a2a0157b81f50a3003c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b83e6d320047', 1, 1, 'magnet:?xt=urn:btih:3ba8c9191b9018220d951f51f7e897ccad0c539c ', 'thunder', '岩浆毒蛛.2015.BD720P.最新蓝光高清中英文首发', '2016-10-12 17:34:41', 'f39c979857b48a2a0157b83c79ac0046');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157b9914d8b004c', 1, 1, 'ed2k://|file|W命速递4：C启之战.BD1280超清中英双字.mp4|2097279112|8F02579CB62BECA852BA2916FEB31070|h=P6MSHCPUIHM4ZJU7DXK7EH5SM5NE4A3L|/', 'ed2k', '迅播超清', '2016-10-12 23:44:50', 'f39c979857b48a2a0157b98e255b004a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdc857740050', 1, 1, 'ed2k://|file|超级战舰_全集.rmvb|798357044|1E15E17CC57925A09F76EFEA46362A09|/', 'ed2k', '超级战舰_全集', '2016-10-13 19:23:25', 'f39c979857b48a2a0157bdc3fc50004f');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdd050470051', 1, 1, 'magnet:?xt=urn:btih:354e0b16a84f321b66c065d02629d27ec1828be1 ', 'thunder', '超级战舰_全集', '2016-10-13 19:32:08', 'f39c979857b48a2a0157bdc3fc50004f');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdd1a78c0052', 1, 1, 'magnet:?xt=urn:btih:03837a0fd8931465555636bc7c08c2296eeadd7e', 'thunder', '超级战舰_全集', '2016-10-13 19:33:36', 'f39c979857b48a2a0157bdc3fc50004f');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bddbc0160057', 1, 1, 'ed2k://|file|微微一笑很倾城电影版.HD1280超清国语中英双字.mp4|2259363455|C684396C5797CAF9744D9665E7B705DC|h=PQ2PBUZBXX5CSCYIVAJSV3WE6HTNABUA|/', 'ed2k', '微微一笑很倾城电影版.HD1280高清国语中英双字.mp4', '2016-10-13 19:44:37', 'f39c979857b48a2a0157bddaa8f70056');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bddc23a30058', 1, 1, 'ed2k://|file|微微一笑很倾城电影版.HD1280超清国语中英双字.mp4|2259363455|C684396C5797CAF9744D9665E7B705DC|h=PQ2PBUZBXX5CSCYIVAJSV3WE6HTNABUA|/', 'ed2k', '微微一笑很倾城电影版.HD1280高清国语中英双字.mp4', '2016-10-13 19:45:03', 'f39c979857b48a2a0157bddaa8f70056');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bddc94eb0059', 1, 1, 'http://pan.baidu.com/s/1jIQ6Ye6', 'dupan', '7vdg', '2016-10-13 19:45:32', 'f39c979857b48a2a0157bddaa8f70056');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdf4c6ce005b', 1, 1, '24l24l27l26l24L26L27l27l58l43L35L47L46l30L32l37L59L17L47L52L39l17L47l58L18L17l', 'Flh', '微微一笑很倾城01', '2016-10-13 20:11:58', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdf52e72005c', 2, 1, '24l24l27l26l24L26L27l27l58l43L35L47L46l30L32l37L59L17l46l43L41l18l47L41L18L17l', 'Flh', '微微一笑很倾城02', '2016-10-13 20:12:24', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdf57dbb005d', 3, 1, '24l24l27l26l24L26L27l27l58l43L35L47L46l30L32l50L40L52l46l60L33l19l46L41L18L17l', 'Flh', '微微一笑很倾城03', '2016-10-13 20:12:44', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdf5e9a5005e', 4, 1, '24l24l27l26l24L26L27l27l58l43L35L47L46l30L32l50L40L16L47L52L43l48L46L41L18L17l', 'Flh', '微微一笑很倾城04', '2016-10-13 20:13:12', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdf654a4005f', 5, 1, '24l24l27l26l24L26L27l27l58l43L35L47L46l30L32l58L46L53L46L35L43l19L46L58L18L17l', 'Flh', '微微一笑很倾城05', '2016-10-13 20:13:39', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdf6eafa0060', 6, 1, '24l24l27l26l24L26L27l27l58l43L35L47L46l30L32l58L46L16L46l52L43l18L47l58L18L17l', 'Flh', '微微一笑很倾城06', '2016-10-13 20:14:18', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdf7deb20061', 7, 1, '24l24l27l26l24L26L27l27l58l43L35L47L46l30L32L37L57L18l47L60L56l17L47l58L18L17l', 'Flh', '微微一笑很倾城07', '2016-10-13 20:15:20', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdf83ba70062', 8, 1, '24l24l27l26l24L26L27l27l58l43L35L47L46l30L32L37L57L18l46L35L62l48L47l41L18L17l', 'Flh', '微微一笑很倾城08', '2016-10-13 20:15:44', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdf87a950063', 9, 1, '24l24l27l26l24L26L27l27l58l43L35L47L51l63L33L37L44L16l47L43L43l19l47l41L18L17l', 'Flh', '微微一笑很倾城09', '2016-10-13 20:16:00', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdf8dd180064', 10, 1, '24l24l27l26l24L26L27l27l58l43L35L47L51l63L33L37L44L16l46L35L43l18l46L41L18L17l', 'Flh', '微微一笑很倾城10', '2016-10-13 20:16:25', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdf94efd0065', 11, 1, '24l24l27l26l24L26L27l27l58l43L35L47L51l63L33L45L34L16L47L35L39l55L47L41L18L17l', 'Flh', '微微一笑很倾城11', '2016-10-13 20:16:55', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdf9b9410066', 12, 1, '24l24l27l26l24L26L27l27l58l43L35L47L51l63L33L45L34L16L46l60L47l19L46L58L18L17l', 'Flh', '微微一笑很倾城12', '2016-10-13 20:17:22', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdfa07520067', 13, 1, '24l24l27l26l24L26L27l27l58l43L35L47L51l63L33L50L59L18l47L52L33l19L47l58L18L17l', 'Flh', '微微一笑很倾城13', '2016-10-13 20:17:42', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdfa84d00068', 14, 1, '24l24l27l26l24L26L27l27l58l43L35L47L51l63L32l37L42L18l47L52L62l18l46L41L18L17l', 'Flh', '微微一笑很倾城14', '2016-10-13 20:18:14', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdfb4da00069', 15, 1, '24l24l27l26l24L26L27l27l58l43L35L47L51l63L32l37L44L51l47L35L43l18l47L41L18L17l', 'Flh', '微微一笑很倾城15', '2016-10-13 20:19:05', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdfbf8b6006a', 16, 1, '24l24l27l26l24L26L27l27l58l43L35L47L51l63L32l45L32L18L47L43L35l17L46L58L18L17l', 'Flh', '微微一笑很倾城16', '2016-10-13 20:19:49', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdfc6d2b006b', 17, 1, '24l24l27l26l24L26L27l27l58l43L35L47L51l63L32l45L32L18L46l60L58l48L47L41L18L17l', 'Flh', '微微一笑很倾城17', '2016-10-13 20:20:19', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdfcb754006c', 18, 1, '24l24l27l26l24L26L27l27l58l43L35L47L51l63L32l50L61L51l47L60L41l19l47l41L18L17l', 'Flh', '微微一笑很倾城18', '2016-10-13 20:20:38', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdfd1a06006d', 19, 1, '24l24l27l26l24L26L27l27l58l43L35L47L51l63L32l50L61L52L47L43L33l18L46L58L18L17l', 'Flh', '微微一笑很倾城19', '2016-10-13 20:21:03', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdfd6f3b006e', 20, 1, '24l24l27l26l24L26L27l27l58l43L35L47L51l63L32L37L46L53L47L43L39l18l47L41L18L17l', 'Flh', '微微一笑很倾城20', '2016-10-13 20:21:25', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdfdc606006f', 21, 1, '24l24l27l26l24L26L27l27l58l43L35L47L51l63L32L37L46L53L46l52L58l55l46L58L18L17l', 'Flh', '微微一笑很倾城21', '2016-10-13 20:21:47', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdfe282c0070', 22, 1, '24l24l27l26l24L26L27l27l58l43L35L47L51l63L32L45L36L17l46l43L56l55L47L41L18L17l', 'Flh', '微微一笑很倾城22', '2016-10-13 20:22:12', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdfe8ed60071', 23, 1, '24l24l27l26l24L26L27l27l58l43L35L47L51l63L32L45L36L18L47L35L56l19L46L58L18L17l', 'Flh', '微微一笑很倾城23', '2016-10-13 20:22:39', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdfeecb60072', 24, 1, '24l24l27l26l24L26L27l27L58l43L35L47L51l56l33L37L61L16L46L35L58l55l47l58L18L17l', 'Flh', '微微一笑很倾城24', '2016-10-13 20:23:03', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdff6a430073', 25, 1, '24l24l27l26l24L26L27l27L58l43L35L47L51l56l33L37L61L16l47L52L39l17l47l41L18L17l', 'Flh', '微微一笑很倾城25', '2016-10-13 20:23:35', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bdfff09b0074', 26, 1, '24l24l27l26l24L26L27l27L58l43L35L47L51l56l33L50L42L18l47L43L58l17l47l41L18L17l', 'Flh', '微微一笑很倾城26', '2016-10-13 20:24:09', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be00590a0075', 27, 1, '24l24l27l26l24L26L27l27L58l43L35L47L51l56l33L58L32L52l46l60L58l19L47l58L18L17l', 'Flh', '微微一笑很倾城27', '2016-10-13 20:24:36', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be00db2b0076', 28, 1, '24l24l27l26l24L26L27l27L58l43L35L47L51l56l33L58L32L53L47L52L62l17L46L58L18L17l', 'Flh', '微微一笑很倾城28', '2016-10-13 20:25:09', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be0166740077', 29, 1, '24l24l27l26l24L26L27l27L58l43L35L47L51l56l32l37L57L18L47L43L33l55L47l41L18L17l', 'Flh', '微微一笑很倾城29', '2016-10-13 20:25:45', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be01f72c0078', 30, 1, '24l24l27l26l24L26L27l27L58l43L35L47L51l56l32l37L57L18L46L43L58l55L46L41L18L17l', 'Flh', '微微一笑很倾城30', '2016-10-13 20:26:22', 'f39c979857b48a2a0157bdf32e97005a');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be6a2faa007f', 1, 1, 'ed2k://|file|东离剑游纪 01 日语版(ED2000.COM).rmvb|651990614|9B716EB61600A7B3859D32FE448F5CEE|h=SGIUS37KYEGLH36FMGFJBP6AYKF7CRS7|/', 'ed2k', '第一季第一集', '2016-10-13 22:20:12', 'f39c979857b48a2a0157be61d1e3007d');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be6df7960080', 2, 1, 'ed2k://|file|东离剑游纪 02 日语版(ED2000.COM).rmvb|620040332|72BE1A22247B0C4BE3B056EB052CDC21|h=J7EVNLA5DOO6AMS4EA34FEVIPB3YWVOA|/', 'ed2k', '第一季第二集', '2016-10-13 22:24:20', 'f39c979857b48a2a0157be61d1e3007d');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be6ec22a0081', 3, 1, 'ftp://ds:ds@d4.2tu.cc:20062/[迅雷下载www.xiamp4.com]东离剑游纪[第03话].mp4', 'ed2k', '第一季第三集', '2016-10-13 22:25:12', 'f39c979857b48a2a0157be61d1e3007d');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be70684c0082', 4, 1, 'ftp://ds:ds@d4.2tu.cc:20069/[迅雷下载www.xiamp4.com]东离剑游纪[第04话].mp4', 'ed2k', '第一季第四集', '2016-10-13 22:27:00', 'f39c979857b48a2a0157be61d1e3007d');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be72d21c0083', 5, 1, 'ftp://ds:ds@d4.2tu.cc:20076/[迅雷下载www.xiamp4.com]东离剑游纪[第05话].mp4', 'ed2k', '第一季第五集', '2016-10-13 22:29:38', 'f39c979857b48a2a0157be61d1e3007d');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be7355370084', 6, 1, 'ftp://ds:ds@d4.2tu.cc:20083/[迅雷下载www.xiamp4.com]东离剑游纪[第06话].mp4', 'ed2k', '第一季第六集', '2016-10-13 22:30:12', 'f39c979857b48a2a0157be61d1e3007d');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be73e87f0085', 7, 1, 'ftp://ds:ds@d4.2tu.cc:20090/[迅雷下载www.xiamp4.com]东离剑游纪[第07话].mp4', 'ed2k', '第一季第七集', '2016-10-13 22:30:49', 'f39c979857b48a2a0157be61d1e3007d');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be7466e80086', 8, 1, 'ftp://ds:ds@d4.2tu.cc:20097/[迅雷下载www.xiamp4.com]东离剑游纪[第08话].mp4', 'ed2k', '第一季第八集', '2016-10-13 22:31:22', 'f39c979857b48a2a0157be61d1e3007d');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be74f6090087', 9, 1, 'ftp://ds:ds@d4.2tu.cc:20104/[迅雷下载www.xiamp4.com]东离剑游纪[第09话].mp4', 'ed2k', '第一季第九集', '2016-10-13 22:31:58', 'f39c979857b48a2a0157be61d1e3007d');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be756dda0088', 10, 1, 'ftp://ds:ds@d4.2tu.cc:20111/[迅雷下载www.xiamp4.com]东离剑游纪[第10话].mp4', 'ed2k', '第一季第十集', '2016-10-13 22:32:29', 'f39c979857b48a2a0157be61d1e3007d');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be763d700089', 11, 1, 'ftp://ds:ds@d4.2tu.cc:20118/[迅雷下载www.xiamp4.com]东离剑游纪[第11话].mkv', 'ed2k', '第一季十一集', '2016-10-13 22:33:22', 'f39c979857b48a2a0157be61d1e3007d');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be76b08d008a', 12, 1, 'ftp://ds:ds@d4.2tu.cc:20125/[迅雷下载www.xiamp4.com]东离剑游纪[第12话].mkv', 'ed2k', '第一季十二集', '2016-10-13 22:33:52', 'f39c979857b48a2a0157be61d1e3007d');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be771b4e008b', 13, 1, 'ftp://ds:ds@d4.2tu.cc:20132/[迅雷下载www.xiamp4.com]东离剑游纪[第13话].mkv', 'ed2k', '第一季十三集', '2016-10-13 22:34:19', 'f39c979857b48a2a0157be61d1e3007d');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be85293c008d', 1, 1, '25l24l27l26l24L26L27L24L58l60l29l28l27l30l62L27L51L20l51L18L', 'Flh', '第一季第一集', '2016-10-13 22:49:40', 'f39c979857b48a2a0157be8319d2008c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be860e8d008e', 2, 1, '25l24l27l26l24L26L27L24L58l59L29l28l27l30l28L59l17l58L57L58l', 'Flh', '第一集第二集', '2016-10-13 22:50:39', 'f39c979857b48a2a0157be8319d2008c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be86c2bb008f', 3, 1, '25l24l27l26l24L26L27L24L58l49L29l28l27l30l55L60L49l51L62l56L', 'Flh', '第一季第三集', '2016-10-13 22:51:25', 'f39c979857b48a2a0157be8319d2008c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157be891b150091', 4, 1, '25l24l27l26l24L26L27L27l58l62L29l28l27l30l52l61L62l48L62l58l', 'Flh', '第一季第四集', '2016-10-13 22:53:58', 'f39c979857b48a2a0157be8319d2008c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157beb2ff780094', 5, 1, '25l24l27l26l24L26L27L24L58l61L29l28l27l30l61L49L60l51l53L60L', 'Flh', '第一季第五集', '2016-10-13 23:39:44', 'f39c979857b48a2a0157be8319d2008c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157beb3a57d0095', 6, 1, '25l24l27l26l24L26L27L24L58l61L29l28l27l30l62l59l50l48l56L59l', 'Flh', '第一季第六集', '2016-10-13 23:40:26', 'f39c979857b48a2a0157be8319d2008c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157beb43a1d0096', 7, 1, '25l24l27l26l24L26L27L24L58l59L29l28l27l30l54l55l60L59l48L62L', 'Flh', '第一季第七集', '2016-10-13 23:41:04', 'f39c979857b48a2a0157be8319d2008c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157beb4b4cc0097', 8, 1, '25l24l27l26l24L26L27L24L58l61L29l28l27l30l27L29L58l62l51l59l', 'Flh', '第一季第八集', '2016-10-13 23:41:36', 'f39c979857b48a2a0157be8319d2008c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157beb577030098', 9, 1, '25l24l27l26l24L26L27L24L58l60L29l28l27l30l55L50l59l63L60l59L', 'Flh', '第一季第九集', '2016-10-13 23:42:26', 'f39c979857b48a2a0157be8319d2008c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157beb5ec720099', 10, 1, '25l24l27l26l24L26L27L24L58l51L29l28l27l30l29l31L19l52l57L51L', 'Flh', '第一季第十集', '2016-10-13 23:42:56', 'f39c979857b48a2a0157be8319d2008c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157beb69b22009a', 11, 1, '25l24l27l26l24L26L27L24L58l62L29l28l27l30l51L51l63L60L50l58L', 'Flh', '第一季第十一集', '2016-10-13 23:43:40', 'f39c979857b48a2a0157be8319d2008c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157beb7f8df009b', 12, 1, '25l24l27l26l24L26L27L24L58l58L29l28l27l30l62L48l60L20L16l63l', 'Flh', '第一季第十二集', '2016-10-13 23:45:10', 'f39c979857b48a2a0157be8319d2008c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157beb89b4a009c', 13, 1, '25l24l27l26l24L26L27L24L58l62l29l28l27l30l55L61l61l63L50L50l', 'Flh', '第一季第十三集', '2016-10-13 23:45:51', 'f39c979857b48a2a0157be8319d2008c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157beb95592009d', 1, 1, '25l24l27l26l24L26L27L24L58l54L29l28l27l30l53L31l57L17L17L16L', 'Flh', '第一季十四集', '2016-10-13 23:46:39', 'f39c979857b48a2a0157be8319d2008c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157beb9e494009e', 15, 1, '25l24l27l26l24L26L27L24L58l50L29l28l27l30l31L30l18L20L19l18L', 'Flh', '第一季十五集', '2016-10-13 23:47:16', 'f39c979857b48a2a0157be8319d2008c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157beba6e47009f', 16, 1, '25l24l27l26l24L26L27L24L58l54l29l28l27l30l49l48L16L60L59l48l', 'Flh', '第一季十六集', '2016-10-13 23:47:51', 'f39c979857b48a2a0157be8319d2008c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bebb25ff00a0', 17, 1, '25l24l27l26l24L26L27L24L58l59L29l28l27l30l63L54l51L49l58L16l', 'Flh', '第一季十七集', '2016-10-13 23:48:38', 'f39c979857b48a2a0157be8319d2008c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bec0f63200a3', 1, 1, '26L24l27l26l24L26L27L24L58l58l20l62L54l54l22l26L25l56l58l58L17l17L56L57L21l62L60L17l57L61l20L62l32L34l33L11L33L15L10L9l37L39l15L15L32l38l11L38L42l9L15l8L33L32l44L43l13l2L12l4L6L4L4L4L59L58l57l57L50L29L', 'Flh', 'mad在线', '2016-10-13 23:54:59', 'f39c979857b48a2a0157bebff9bf00a2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157becdc74900a5', 1, 1, 'ed2k://|file|生活大爆炸.The.Big.Bang.Theory.S10E01.中英字幕.HDTVrip.1024X576.mp4|217430316|d34b72dfcef0d2e1e8b86d4d8f90e363|h=cdvb46pocwrajlqzd3uo7ozgbp5ias4l|/', 'ed2k', 'SP10EP01CN163', '2016-10-14 00:08:59', 'f39c979857b48a2a0157becd380800a4');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bece6ca200a6', 2, 1, 'ed2k://|file|生活大爆炸.The.Big.Bang.Theory.S10E02.中英字幕.HDTVrip.1024X576.mp4|188260542|dcf2ff3d936da32c4821066a648b7eff|h=idx7ygjof7fsprwy4hdl55kty3gvqflk|/', 'ed2k', 'SP01EP01CN163', '2016-10-14 00:09:41', 'f39c979857b48a2a0157becd380800a4');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157becf52cd00a7', 3, 1, 'ed2k://|file|生活大爆炸.The.Big.Bang.Theory.S10E03.中英字幕.HDTVrip.1024X576.mp4|203307833|91a81a79e55067c040c25077de8f7535|h=uwmu4pwh5frfdlqf7ac2kwwm6koyuj2d|/', 'ed2k', 'SP10EP03CN163', '2016-10-14 00:10:40', 'f39c979857b48a2a0157becd380800a4');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157becfb14900a8', 4, 1, 'ed2k://|file|生活大爆炸.The.Big.Bang.Theory.S10E04.中英字幕.HDTVrip.1024X576.mp4|206276750|844576d591dcb8a010bf254ed1834a33|h=7tuhnvt6q5vbsimiknbua4b5u7jszmny|/', 'ed2k', 'SP10EP01CN163', '2016-10-14 00:11:04', 'f39c979857b48a2a0157becd380800a4');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157bed293d500a9', 1, 1, 'ed2k://|file|生活大爆炸.The.Big.Bang.Theory.S10E01.720p.HDTV.x264.双语字幕.mp4|308552537|b7bda6bce0e9ab305830e35b183a7a94|h=h737k7tyld5ddl2pikzjgn4jfwmtmwlv|/', 'ed2k', '720SP10EP01CN163', '2016-10-14 00:14:13', 'f39c979857b48a2a0157becd380800a4');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c28e878200ad', 1, 1, 'ftp://ygdy8:ygdy8@y153.dydytt.net:8049/[阳光电影www.ygdy8.com].房间.BD.720p.中英双字幕.rmvb', 'thunder', '720p.中英双字幕.rmvb', '2016-10-14 17:38:23', 'f39c979857b48a2a0157c2836d8900aa');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2bf8a9c00af', 1, 1, 'ed2k://|file|变态假面：变态危机.BD1280超清日语中字.mp4|2662628369|56576012EFF7D3655E91CA9095702CAC|h=OH6EVA7GVAECW4ALXVTLHAE6GRPMXHFL|/', 'ed2k', 'XB1280GQ', '2016-10-14 18:31:55', 'f39c979857b48a2a0157c2be765b00ae');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2c78c7900b6', 1, 1, '27l24l27l26l24L25l26l25L58l30l28L28l25L31L28l28l', 'Flh', '诛仙青云志01集', '2016-10-14 18:40:40', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2c7ec5d00b7', 2, 1, '27l24l27l26l24L25l26l25L58l30l28L28l25L31L28l27l', 'Flh', '诛仙青云志02集', '2016-10-14 18:41:04', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2c83b5800b8', 1, 1, '26L24l27l26l24L25l26l25L58l58l20l62L54l54l22l26L25l17L57L21L23L17L17L56l63l60L63l22l19l61l61L62L32L32l11l13L10l34L12L10L13L38l13l14L9L36L36l37L1L9L15l8L33L32l44L43l13l2L7L7L2L0l7l5l59l56L57l31l', 'Flh', 'MYAD', '2016-10-14 18:41:24', 'f39c979857b48a2a0157c2c5ca3500b4');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2c8528a00b9', 3, 1, '27l24l27l26l24L25l26l25L58l30l28L28l30L30l28l30l', 'Flh', '诛仙青云志03集', '2016-10-14 18:41:30', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2c9940500ba', 4, 1, '27l24l27l26l24L25l26l25L58l30l28L31L26L29L30L29l', 'Flh', '诛仙青云志04集', '2016-10-14 18:42:53', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2c9b2c800bb', 2, 1, '26L24l27l26l24L25l26l25L58l58l20l62L54l54l22l26L25l18l57L19L23L18l58L59L20L20L17l22L22L60L20L61l11L10l9l13l8L8l12L8l15L38L39l15L9L37l36l38L0L9L15l8L33L32l44L43l13l2L7L7L2L0l7l3L57L56L57l31l', 'Flh', 'MYAD', '2016-10-14 18:43:00', 'f39c979857b48a2a0157c2c5ca3500b4');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2c9ec8600bc', 5, 1, '27l24l27l26l24L25l26l25L58l30l28L31L27L29l27l29l', 'Flh', '诛仙青云志05集', '2016-10-14 18:43:15', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2ca42c400bd', 3, 1, '26L24l27l26l24L25l26l25L58l58l20l62L54l54l22l26L25l57L19l17l57l58L19l19l22L21l60l63L57L22L60l21l33L32l34l35L9L9L10L33L8L13l14l37l11l8l13L11L40L9L15l8L33L32l44L43l13l2L7L7L2L7L3L3L58L56L57l31l', 'Flh', 'MYAD', '2016-10-14 18:43:37', 'f39c979857b48a2a0157c2c5ca3500b4');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2ca4ac300be', 6, 1, '27l24l27l26l24L25l26l25L58l30l28L31L27l24L29L29l', 'Flh', '诛仙青云志06集', '2016-10-14 18:43:39', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2cac68b00bf', 7, 1, '27l24l27l26l24L25l26l25L58l30l28L31L30l24L31l27l', 'Flh', '诛仙青云志07集', '2016-10-14 18:44:11', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2cb158700c0', 8, 1, '27l24l27l26l24L25l26l25L58l30l28L31l26l31L27l30L', 'Flh', '诛仙青云志08集', '2016-10-14 18:44:31', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2cb4dbe00c1', 4, 1, '26L24l27l26l24L25l26l25L58l58l20l62L54l54l22l26L25l17L58l58L16L16l16L56l62L61L61L22l58l22L22L20l35l32l8l11l11L15L12L9L38L36L39L36L10l14L38l13L2L9L15l8L33L32l44L43l13l2L7L7L2L0l7L3l59L56L57l31l', 'Flh', 'MYAD', '2016-10-14 18:44:46', 'f39c979857b48a2a0157c2c5ca3500b4');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2cb9db300c2', 9, 1, '27l24l27l26l24L25l26l25L58l30l28L31l27l31l30L31L', 'Flh', '诛仙青云志09集', '2016-10-14 18:45:06', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2cc219900c3', 5, 1, '26L24l27l26l24L25l26l25L58l58l20l62L54l54l22l26L25l17l18l21l17l18L59l18L61L20L17l63l57L20l22L20l33l32l9L33l32L15L11L34l37l13L37L15l9l13l36l12l43l9L15l8L33L32l44L43l13l2L7L7L2L0l7l7l58l56L57l31l', 'Flh', 'MYAD', '2016-10-14 18:45:40', 'f39c979857b48a2a0157c2c5ca3500b4');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2cc4abd00c4', 10, 1, '27l24l27l26l24L25l26l25L58l30l28L31l24l30L28L30L', 'Flh', '诛仙青云志10集', '2016-10-14 18:45:50', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2cca02100c5', 6, 1, '26L24l27l26l24L25l26l25L58l58l20l62L54l54l22l26L25l58l17L17l23L59L58l18L60L23L17L63L59L22l22l61l11L11L35l10l15L32l10l32L15L39l9l12l35l37L11l15L42l9L15l8L33L32l44L43l13l2L7L7L2L0l6l7l60L56L57l31l', 'Flh', 'MYAD', '2016-10-14 18:46:12', 'f39c979857b48a2a0157c2c5ca3500b4');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2cca15900c6', 11, 1, '27l24l27l26l24L25l26l25L58l30l28L30L27L24L28L31l', 'Flh', '诛仙青云志11集', '2016-10-14 18:46:13', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2ccda2d00c7', 12, 1, '27l24l27l26l24L25l26l25L58l30l28L30L24L31l28L31L', 'Flh', '诛仙青云志12集', '2016-10-14 18:46:27', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2cd137d00c8', 13, 1, '27l24l27l26l24L25l26l25L58l30l28L30L25L28l28L27L', 'Flh', '诛仙青云志13集', '2016-10-14 18:46:42', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2cd69bc00c9', 14, 1, '27l24l27l26l24L25l26l24l58l30l28L30L25l31l27l29l', 'Flh', '诛仙青云志14集', '2016-10-14 18:47:04', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2cd93e900ca', 7, 1, '26L24l27l26l24L25l26l25L58l58l20l62L54l54l22l26L25l19L57L21l57l58l58L21l61L21l21L62L22L20L61l23L9l12L11L32L33l9l33l8l37L13L39L9L8l15l15L38l1L9L15l8L33L32l44L43l13l2L7L7L2L0l6l5L60l56L57l31l', 'Flh', 'MYAD', '2016-10-14 18:47:15', 'f39c979857b48a2a0157c2c5ca3500b4');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2cdabb700cb', 15, 1, '27l24l27l26l24L25l26l24l58l30l28L30l27l31L29L31l', 'Flh', '诛仙青云志15集', '2016-10-14 18:47:21', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2cdf90c00cc', 16, 1, '27l24l27l26l24L25l26l24l58l30l28L30l24l29L27l31L', 'Flh', '诛仙青云志16集', '2016-10-14 18:47:41', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2ce1b5a00cd', 8, 1, 'ver=1.6', 'Flh', 'MYAD', '2016-10-14 18:47:49', 'f39c979857b48a2a0157c2c5ca3500b4');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2ceacbd00ce', 17, 1, '27l24l27l26l24L25l26l24l58l30l28L30l25L24L30L27L', 'Flh', '诛仙青云志17集', '2016-10-14 18:48:27', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2cee22500cf', 18, 1, '27l24l27l26l24L25l26l24l58l30l28L30l30l28L31l28L', 'Flh', '诛仙青云志18集', '2016-10-14 18:48:40', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2cf570800d0', 19, 1, '27l24l27l26l24L25l26l24l58l30l28L25l26l24l27L27l', 'Flh', '诛仙青云志19集', '2016-10-14 18:49:10', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2cf99de00d1', 20, 1, '27l24l27l26l24L25l26l24l58l30l28L25l24L31l28l27L', 'Flh', '诛仙青云志20集', '2016-10-14 18:49:27', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2d026fc00d2', 9, 1, '26L24l27l26l24L25l26l24l58l58l20l62L54l54l22l26L25l58L59l19L18l17L16L21l23l62l17L62L17l60L60l60L12l12l8l9L9L33l33l10L37L11L9L38L32L13l39L37L42l9L15l8L33L32l44L43l13l2L7L7L2L0l6l6l60l56L57l31l', 'Flh', 'MYAD', '2016-10-14 18:50:03', 'f39c979857b48a2a0157c2c5ca3500b4');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2d0664700d3', 21, 1, '27l24l27l26l24L25l26l24l58l30l31l29L24l24l29l31l', 'Flh', '诛仙青云志21集', '2016-10-14 18:50:20', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2d0a38000d4', 22, 1, '27l24l27l26l24L25l26l24l58l30l31l28L25L24l27l31L', 'Flh', '诛仙青云志22集', '2016-10-14 18:50:35', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2d0c1b600d5', 10, 1, '26L24l27l26l24L25l26l24l58l58l20l62L54l54l22l26L25l58l16L17l59l18L17l21L23L22l23l23L18L22l63L21l8l33l32L35l35l9L34l11l8l12L9L9l9L13L14L13L4l9L15l8L33L32l44L43l13l2L7L7L2L0l6l4L59l56L57l31l', 'Flh', 'MYAD', '2016-10-14 18:50:43', 'f39c979857b48a2a0157c2c5ca3500b4');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2d1050900d6', 23, 1, '27l24l27l26l24L25l26l24l58l30l31l25L27L24l29l27l', 'Flh', '诛仙青云志23集', '2016-10-14 18:51:00', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2d1436a00d7', 24, 1, '27l24l27l26l24L25l26l24l58l30l31L29L25l29l27l30l', 'Flh', '诛仙青云志24集', '2016-10-14 18:51:16', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2d14c0500d8', 11, 1, '26L24l27l26l24L25l26l24l58l58l20l62L54l54l22l26L25l56l16L17L16l18l17l59l62L20l60L17L58l23L61l20l10l8l8l35L33L35L8L8L13L14l15L38L9l8L15l15l41l9L15l8L33L32l44L43l13l2L7L7L2L0l6l4l57L56L57l31l', 'Flh', 'MYAD', '2016-10-14 18:51:18', 'f39c979857b48a2a0157c2c5ca3500b4');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2d1865000d9', 25, 1, '27l24l27l26l24L25l26l24l58l30l31L31L26l31l29L27l', 'Flh', '诛仙青云志25集', '2016-10-14 18:51:33', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2d1c0b900da', 12, 1, '26L24l27l26l24L25l26l24l58l58l20l62L54l54l22l26L25l18l16L58L17l23l20L19l63l61L63L17L18l61L21l60L35l9L9l34L34l15l33L32L37L11L13l14L33L37L38l37l2L9L15l8L33L32l44L43l13l2L7L7L2L0l6l3L60l56L57l31l', 'Flh', 'MYAD', '2016-10-14 18:51:48', 'f39c979857b48a2a0157c2c5ca3500b4');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2d2090d00db', 26, 1, '27l24l27l26l24L25l26l24l58l30l31L31L27L30L30L30l', 'Flh', '诛仙青云志26集', '2016-10-14 18:52:07', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2d9732c00dc', 27, 1, '27l24l27l26l24L25l26l24l58l30l31L31l26L29l29l28L', 'Flh', '诛仙青云志27集', '2016-10-14 19:00:13', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2da8c8d00dd', 28, 1, '27l24l27l26l24L25l26l24l58l30l31L31l26l31L31L28L', 'Flh', '诛仙青云志28集', '2016-10-14 19:01:25', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e0274800de', 29, 1, '27l24l27l26l24L25l26l24l58l30l31L31l27L24L27L30l', 'Flh', '诛仙青云志29集', '2016-10-14 19:07:32', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e08a8700df', 30, 1, '27l24l27l26l24L25l26l24L58l30l31L31l24l29l27L29L', 'Flh', '诛仙青云志30集', '2016-10-14 19:07:57', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e0f87400e0', 31, 1, '27l24l27l26l24L25l26l24L58l30l31L30l27l31L30L28L', 'Flh', '诛仙青云志31集', '2016-10-14 19:08:26', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e1340600e1', 32, 1, '27l24l27l26l24L25l26l24L58l30l31L30l30L29l27l28L', 'Flh', '诛仙青云志32集', '2016-10-14 19:08:41', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e1752700e2', 33, 1, '27l24l27l26l24L25l26l24L58l30l31L30l30l24l28l30l', 'Flh', '诛仙青云志33集', '2016-10-14 19:08:58', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e1980100e3', 34, 1, '27l24l27l26l24L25l26l24L58l30l31L30l30l24l28l30l', 'Flh', '诛仙青云志34集', '2016-10-14 19:09:06', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e1cbc300e4', 34, 1, '27l24l27l26l24L25l26l24L58l30l31L25L26l30L29L31l', 'Flh', '诛仙青云志34集', '2016-10-14 19:09:20', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e2412300e5', 35, 1, '27l24l27l26l24L25l26l24L58l30l31L25L30L31L31L28l', 'Flh', '诛仙青云志35集', '2016-10-14 19:09:50', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e2792b00e6', 36, 1, '27l24l27l26l24L25l26l24L58l30l31L25l26L28L29L27l', 'Flh', '诛仙青云志36集', '2016-10-14 19:10:04', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e2ae5500e7', 37, 1, '27l24l27l26l24L25l26l24L58l30l31L25l27L29L30L31l', 'Flh', '诛仙青云志37集', '2016-10-14 19:10:18', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e339bd00e8', 38, 1, '27l24l27l26l24L25l26l24L58l30l31L25l30L30L31L28L', 'Flh', '诛仙青云志38集', '2016-10-14 19:10:53', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e3755f00e9', 39, 1, '27l24l27l26l24L25l26l24L58l30l30l29L24L28l28L29L', 'Flh', '诛仙青云志39集', '2016-10-14 19:11:09', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e3b3ef00ea', 40, 1, '27l24l27l26l24L25l26l24L58l30l30l29L24l29l28l30L', 'Flh', '诛仙青云志40集', '2016-10-14 19:11:25', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e4036700eb', 41, 1, '27l24l27l26l24L25l26l24L58l30l30l29L25L28l30l30L', 'Flh', '诛仙青云志41集', '2016-10-14 19:11:45', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e47aea00ec', 42, 1, '27l24l27l26l24L25l26l24L58l30l30l29L25L29l30l27l', 'Flh', '诛仙青云志42集', '2016-10-14 19:12:16', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e4cc5600ed', 43, 1, '27l24l27l26l24L25l26l24L58l30l30l29l24l31l30L27L', 'Flh', '诛仙青云志43集', '2016-10-14 19:12:36', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e5657a00ee', 44, 1, '27l24l27l26l24L25l26l24L58l30l30l29l25l30L27l27l', 'Flh', '诛仙青云志44集', '2016-10-14 19:13:16', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e5a92b00ef', 45, 1, '27l24l27l26l24L25l26l24L58l30l30l28L26L28L27l28L', 'Flh', '诛仙青云志45集', '2016-10-14 19:13:33', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2e9082a00f0', 46, 1, '25l24l27l26l24L25l26l24L58l54l29l29L27L28L50l61l50L19l49L61l', 'Flh', '诛仙青云志46集', '2016-10-14 19:17:14', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2f383e400f3', 1, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l28L32L37L36L53L47L60L35l19L47l58L18L17l', 'Flh', 'MYAD', '2016-10-14 19:28:41', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2f3e8d800f4', 2, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l28L32L37L36L53L46L43L56l18l46L41L18L17l', 'Flh', 'MYAD', '2016-10-14 19:29:07', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2f4719100f5', 3, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l28L32L37L36L16L46l43L62l48L47l41L18L17l', 'Flh', 'MYAD', '2016-10-14 19:29:42', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2f4d33a00f6', 4, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l28L32L37L36L16l47L35L39l19l47l41L18L17l', 'Flh', 'MYAD', '2016-10-14 19:30:07', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2f525fe00f7', 5, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l29l32L37L36L52L46l35L58l17L46L58L18L17l', 'Flh', 'MYAD', '2016-10-14 19:30:28', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2f5909000f8', 6, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l29l32L37L36L52l46l43L47l17l46L41L18L17l', 'Flh', 'MYAD', '2016-10-14 19:30:55', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2f609a800f9', 7, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l29l32L37L36L53L46l43L39l18l47L41L18L17l', 'Flh', 'MYAD', '2016-10-14 19:31:26', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2f6663000fa', 8, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l29l32L37L36L16L46l35L39l54l47l58L18L17l', 'Flh', 'MYAD', '2016-10-14 19:31:50', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2f6f70700fc', 9, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l29L32l58L36L52L46L43L58l17l46L41L18L17l', 'Flh', 'MYAD', '2016-10-14 19:32:27', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2f76c9600fd', 10, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l29L32l58L36L52l47L52L43l18l47L41L18L17l', 'Flh', 'MYAD', '2016-10-14 19:32:57', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2f7d8ed00fe', 11, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l29L32l58L36L53L47L43L39l54l47l58L18L17l', 'Flh', 'MYAD', '2016-10-14 19:33:25', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2f8348b00ff', 12, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l29L32l58L36L53L46l43L33l19l47l41L18L17l', 'Flh', 'MYAD', '2016-10-14 19:33:48', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2f8a74b0100', 13, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l30l32l58L42L18l47L43L58l19l46L41L18L17l', 'Flh', 'MYAD', '2016-10-14 19:34:18', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2f8ff7d0101', 14, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l30l32l58L42L18l46l35L45l18l46L41L18L17l', 'Flh', 'MYAD', '2016-10-14 19:34:40', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2f965aa0102', 15, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l30l32l58L44L51l47L43L35l18L47l58L18L17l', 'Flh', 'MYAD', '2016-10-14 19:35:06', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2f9c9660103', 16, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l30L32l50L36L53L47L35L47l18L46L58L18L17l', 'Flh', 'MYAD', '2016-10-14 19:35:32', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2fa7d370105', 17, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l30L32l50L36L16l46l52L45l19l46L41L18L17l', 'Flh', 'MYAD', '2016-10-14 19:36:18', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2fa8e0f0106', 18, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l30L32l50L36L16l46l52L45l19l46L41L18L17l', 'Flh', 'MYAD', '2016-10-14 19:36:22', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2fae94f0107', 19, 1, '24l24l27l26l24L25l26l27l58l43L35L47L46l30L32l50L36L17l46l35L45l48L47l41L18L17l', 'Flh', 'MYAD', '2016-10-14 19:36:46', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2fb68050108', 20, 1, '24l24l27l26l24L25l26l27L58l43L35L47L51l63L32l50L44L16L47L35L33l18l47l41L18L17l', 'Flh', 'MYAD', '2016-10-14 19:37:18', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c2fbd0e20109', 21, 1, '24l24l27l26l24L25l26l27L58l43L35L47L51l63L32l50L44L16l47L43L43l19l47L41L18L17l', 'Flh', 'MYAD', '2016-10-14 19:37:45', 'f39c979857b48a2a0157c2f2a32700f2');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c30cf4ff010d', 1, 1, '26L24l27l26l24L25l26l26l58l58l20l62L54l54l22l26L25l58L19L57l18L16l19L19L63l61L20l20l17l61L20L62l34l9l34l32L32L9L34l11L12L14L39l36L14L8L13L14l41l9L15l8L33L32l44L43l13l2L7L7L1l0l6L7L58l56L57l31l', 'Flh', '我不是妖怪', '2016-10-14 19:56:28', 'f39c979857b48a2a0157c30c2ceb010c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c30d5e77010e', 2, 1, '26L24l27l26l24L25l26l26l58l58l20l62L54l54l22l26L25l19L17l59l59l58l19l16l16l20L60l60L56L23L19l61L34L33l11l10L11L32l10l11L13l12L12l39L8l12L13L13l4L9L15l8L33L32l44L43l13l2L7L7L1l0l6L6L56l56L57l31l', 'Flh', '我不是妖怪', '2016-10-14 19:56:55', 'f39c979857b48a2a0157c30c2ceb010c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c30df809010f', 3, 1, '26L24l27l26l24L25l26l26l58l58l20l62L54l54l22l26L25l20l16l16l59l23l59l59L20L19L60L22L16L62l22L63l9l8L32l11L15l10L8l34l15L11L12l38L34l12l37l37L4l9L15l8L33L32l44L43l13l2L7L7L1l0l6L6l56l56L57l31l', 'Flh', '我不是妖怪', '2016-10-14 19:57:35', 'f39c979857b48a2a0157c30c2ceb010c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c30e71220110', 4, 1, '26L24l27l26l24L25l26l26l58l58l20l62L54l54l22l26L25l56l19l19L17l19L58l21L23L60L22L60L18l21l62L60L32L34l35L9l34l10l8l11l14L13l14L15L10l14l13l13L3l9L15l8L33L32l44L43l13l2L7L7L1l0l6L6l58l56L57l31l', 'Flh', '我不是妖怪', '2016-10-14 19:58:06', 'f39c979857b48a2a0157c30c2ceb010c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c30ee77b0111', 5, 1, '26L24l27l26l24L25l26l26l58l58l20l62L54l54l22l26L25l18L16L59l23L17L18L16l62l60L20l21L57L16l22L22l11l34L11l8L34L10L11l11L12L11l36L12l10l13l13L12l2l9L15l8L33L32l44L43l13l2L7L7L1l0l6L5L57l56L57l31l', 'Flh', '我不是妖怪', '2016-10-14 19:58:36', 'f39c979857b48a2a0157c30c2ceb010c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c31190e50112', 6, 1, '26L24l27l26l24L25l26l26l58l58l20l62L54l54l22l26L25l17L19l18l57L23l16l56L61L20L21L63l22L21L20L21L12l32l35l9l33L34L12L10l37L15L14l9l10L15L14l11l41L9L15l8L33L32l44L43l13l2L7L7L1l0l6L5l57L56L57l31l', 'Flh', '我不是妖怪', '2016-10-14 20:01:30', 'f39c979857b48a2a0157c30c2ceb010c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c312273b0113', 7, 1, '26L24l27l26l24L25l26l26l58l58l20l62L54l54l22l26L25l57l16l21l23L57l19L19l22l20l63l63l57L20L23l62l9l12l13l34L8l10l33l32L12l38l37L39L34l37l38L15L2L9L15l8L33L32l44L43l13l2L7L7L1l0l6L5l60L56L57l31l', 'Flh', '我不是妖怪', '2016-10-14 20:02:09', 'f39c979857b48a2a0157c30c2ceb010c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c312c2a10114', 8, 1, '26L24l27l26l24L25l26l26l58l58l20l62L54l54l22l26L25l17L17L58L19l19l16L56L16l20L63L23l16L63l60l23l9L10L11l35L10L15L8L35L14l37l15L13l33L38l13L11L0L9L15l8L33L32l44L43l13l2L7L7L1l0l6L4L57l56L57l31l', 'Flh', '我不是妖怪', '2016-10-14 20:02:49', 'f39c979857b48a2a0157c30c2ceb010c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c31351260115', 9, 1, '26L24l27l26l24L25l26l26l58l58l20l62L54l54l22l26L25l17l59l56L23l19l17l56L23L21l23l20L17l16L62L62l10l34L32l33l8L33L12L13l15L11L9L13L32L13l39L37l1L9L15l8L33L32l44L43l13l2L7L7L1l0l6L4L59l56L57l31l', 'Flh', '我不是妖怪', '2016-10-14 20:03:25', 'f39c979857b48a2a0157c30c2ceb010c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c31437a00116', 10, 1, '26L24l27l26l24L25l26l26l58l58l20l62L54l54l22l26L25l19L21l56l59l23L59l18l23L20l20L21L59L20L22l61l34l8l11L32L15L11L32L34l14l38L13L36l11l38L39L13l1L9L15l8L33L32l44L43l13l2L7L7L1l0l6L3L56l56L57l31l', 'Flh', '我不是妖怪', '2016-10-14 20:04:24', 'f39c979857b48a2a0157c30c2ceb010c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c314b9830117', 11, 1, '26L24l27l26l24L25l26l26l58l58l20l62L54l54l22l26L25l17l16L58L57L18L57L21l62L60L20l60L17L16L63L62l12l9l33L13L33l9L10l8L13l14l36L36L10l37l39L38L3l9L15l8L33L32l44L43l13l2L7L7L1l0l6L3l57L56L57l31l', 'Flh', '我不是妖怪', '2016-10-14 20:04:57', 'f39c979857b48a2a0157c30c2ceb010c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c3162d0a0118', 12, 1, '26L24l27l26l24L25l26l26l58l58l20l62L54l54l22l26L25l18l16l19l59l18L19l19l20l61L23L63L56l60L63L20L9l9L8l9L10L9L11L8l15l14L13l9L35L14L11L11l3l9L15l8L33L32l44L43l13l2L7L7L1l0l5l7L57L56L57l31l', 'Flh', '我不是妖怪', '2016-10-14 20:06:32', 'f39c979857b48a2a0157c30c2ceb010c');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c3276c80011a', 1, 1, '24l24l27l26l24L25l26l26L58l43L35L47L51l63L32l37L46L52l47L60L47l48L47l41L18L17l', 'Flh', '步步惊心：丽', '2016-10-14 20:25:23', 'f39c979857b48a2a0157c326e58c0119');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c327c118011b', 2, 1, '24l24l27l26l24L25l26l26L58l43L35L47L51l63L32l37L46L16L47L60L43l18l47l41L18L17l', 'Flh', '步步惊心：丽', '2016-10-14 20:25:44', 'f39c979857b48a2a0157c326e58c0119');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c32829e5011c', 3, 1, '24l24l27l26l24L25l26l26L58l43L35L47L51l63L32l45L46L16l47L43L56l48L46L41L18L17l', 'Flh', '步步惊心：丽', '2016-10-14 20:26:11', 'f39c979857b48a2a0157c326e58c0119');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c328863e011d', 4, 1, '24l24l27l26l24L25l26l26L58l43L35L47L51l56l33L58L32L16L47L52L56l55L47l41L18L17l', 'Flh', '步步惊心：丽', '2016-10-14 20:26:35', 'f39c979857b48a2a0157c326e58c0119');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c328c8b6011e', 5, 1, '24l24l27l26l24L25l26l29l58l43L35L47L51l56l32l37L57L16l47L60L47l55L46L41L18L17l', 'Flh', '步步惊心：丽', '2016-10-14 20:26:52', 'f39c979857b48a2a0157c326e58c0119');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c3294819011f', 6, 1, '24l24l27l26l24L25l26l29l58l43L35L47L51l56L33L50L34L51l46l43L33l18l47l41L18L17l', 'Flh', '步步惊心：丽', '2016-10-14 20:27:25', 'f39c979857b48a2a0157c326e58c0119');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c32bc2d10120', 7, 1, '24l24l27l26l24L25l26l29l58l43L35L47L51l56L33L58L34L16L46L35L47l17l46L41L18L17l', 'Flh', '步步惊心：丽', '2016-10-14 20:30:07', 'f39c979857b48a2a0157c326e58c0119');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c32c56580121', 8, 1, '24l24l27l26l24L25l26l29l58l43L35L47L51l57l33L37L44L51l47L43L35l55L47l41L18L17l', 'Flh', '步步惊心：丽', '2016-10-14 20:30:45', 'f39c979857b48a2a0157c326e58c0119');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c32cc7810122', 9, 1, '24l24l27l26l24L25l26l29l58l43L35L47L51l57l33L45L44L18l46L35L33l19L47l58L18L17l', 'Flh', '步步惊心：丽', '2016-10-14 20:31:14', 'f39c979857b48a2a0157c326e58c0119');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c32d8ad30123', 10, 1, '24l24l27l26l24L25l26l29l58l43L35L47L51l57l32L37L32L18l46l43L35l17L46L58L18L17l', 'Flh', '步步惊心：丽', '2016-10-14 20:32:04', 'f39c979857b48a2a0157c326e58c0119');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c32df6100124', 11, 1, '24l24l27l26l24L25l26l29l58l43L35L47L51l57l32L45L36L16L47L35L45l18l46L41L18L17l', 'Flh', '步步惊心：丽', '2016-10-14 20:32:31', 'f39c979857b48a2a0157c326e58c0119');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c32eb4220125', 12, 1, '24l24l27l26l24L25l26l29l58l43L35L47L51l28l32l50L32L51l47L35L56l18L46L58L18L17l', 'Flh', '步步惊心：丽', '2016-10-14 20:33:20', 'f39c979857b48a2a0157c326e58c0119');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c32f2c8f0126', 13, 1, '24l24l27l26l24L25l26l29l58l43L35L47L51l28l32l58L57L18l46l35L45l18L47l58L18L17l', 'Flh', '步步惊心：丽', '2016-10-14 20:33:51', 'f39c979857b48a2a0157c326e58c0119');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c32fd0710127', 14, 1, '24l24l27l26l24L25l26l29l58l43L35L47L51l28L32l37L32L17l47L60L35l55l47l58L18L17l', 'Flh', '步步惊心：丽', '2016-10-14 20:34:33', 'f39c979857b48a2a0157c326e58c0119');
INSERT INTO `t_res` VALUES ('f39c979857b48a2a0157c3303a280128', 15, 1, '24l24l27l26l24L25l26l29l58l43L35L47L51l28L32l45L57L16L46l43L41l18L47l58L18L17l', 'Flh', '步步惊心：丽', '2016-10-14 20:35:00', 'f39c979857b48a2a0157c326e58c0119');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73160100000', 1, 1, 'ftp://ds:ds@d7.2tu.cc:50050/[迅雷下载www.xiamp4.com]青Y志01.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版1集.mp4', '2016-10-15 15:14:44', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c731661c0001', 2, 1, 'ftp://ds:ds@d7.2tu.cc:50050/[迅雷下载www.xiamp4.com]青Y志02.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版2集.mp4', '2016-10-15 15:14:45', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73166650002', 3, 1, 'ftp://ds:ds@d7.2tu.cc:50054/[迅雷下载www.xiamp4.com]青Y志03.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版3集.mp4', '2016-10-15 15:14:45', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73166dc0003', 4, 1, 'ftp://ds:ds@d7.2tu.cc:10034/[迅雷下载www.xiamp4.com]青Y志04.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版4集.mp4', '2016-10-15 15:14:46', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73167600004', 5, 1, 'ftp://ds:ds@d7.2tu.cc:10034/[迅雷下载www.xiamp4.com]青Y志05.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版5集.mp4', '2016-10-15 15:14:46', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c731679f0005', 6, 1, 'ftp://ds:ds@d7.2tu.cc:10034/[迅雷下载www.xiamp4.com]青Y志06.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版6集.mp4', '2016-10-15 15:14:46', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73168800006', 7, 1, 'ftp://ds:ds@d7.2tu.cc:10034/[迅雷下载www.xiamp4.com]青Y志07.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版7集.mp4', '2016-10-15 15:14:46', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73168b40007', 8, 1, 'ftp://ds:ds@d7.2tu.cc:10035/[迅雷下载www.xiamp4.com]青Y志08.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版8集.mp4', '2016-10-15 15:14:46', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73169710008', 9, 1, 'ftp://ds:ds@d7.2tu.cc:10035/[迅雷下载www.xiamp4.com]青Y志09.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版9集.mp4', '2016-10-15 15:14:46', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c7316ace0009', 10, 1, 'ftp://ds:ds@d7.2tu.cc:50055/[迅雷下载www.xiamp4.com]青Y志10.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版10集.mp4', '2016-10-15 15:14:47', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c7316b02000a', 11, 1, 'ftp://ds:ds@d7.2tu.cc:50057/[迅雷下载www.xiamp4.com]青Y志11.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版11集.mp4', '2016-10-15 15:14:47', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c7316b30000b', 12, 1, 'ftp://ds:ds@d7.2tu.cc:10038/[迅雷下载www.xiamp4.com]青Y志12.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版12集.mp4', '2016-10-15 15:14:47', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c7316b7a000c', 13, 1, 'ftp://ds:ds@d7.2tu.cc:50058/[迅雷下载www.xiamp4.com]青Y志13.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版13集.mp4', '2016-10-15 15:14:47', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c7316bc0000d', 14, 1, 'ftp://ds:ds@d7.2tu.cc:10039/[迅雷下载www.xiamp4.com]青Y志14.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版14集.mp4', '2016-10-15 15:14:47', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c7316c18000e', 15, 1, 'ftp://ds:ds@d7.2tu.cc:10041/[迅雷下载www.xiamp4.com]青Y志15.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版15集.mp4', '2016-10-15 15:14:47', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c7316e87000f', 16, 1, 'ftp://ds:ds@d7.2tu.cc:50061/[迅雷下载www.xiamp4.com]青Y志16.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版16集.mp4', '2016-10-15 15:14:48', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c7316ec10010', 17, 1, 'ftp://ds:ds@d7.2tu.cc:10042/[迅雷下载www.xiamp4.com]青Y志17.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版17集.mp4', '2016-10-15 15:14:48', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c7316ef70011', 18, 1, 'ftp://ds:ds@d7.2tu.cc:50062/[迅雷下载www.xiamp4.com]青Y志18.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版18集.mp4', '2016-10-15 15:14:48', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c7316fd00012', 19, 1, 'ftp://ds:ds@d7.2tu.cc:50064/[迅雷下载www.xiamp4.com]青Y志19.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版19集.mp4', '2016-10-15 15:14:48', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73170090013', 20, 1, 'ftp://ds:ds@d7.2tu.cc:10045/[迅雷下载www.xiamp4.com]青Y志20.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版20集.mp4', '2016-10-15 15:14:48', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c731703a0014', 21, 1, 'ftp://ds:ds@d7.2tu.cc:50065/[迅雷下载www.xiamp4.com]青Y志21.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版21集.mp4', '2016-10-15 15:14:48', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c731706a0015', 22, 1, 'ftp://ds:ds@d7.2tu.cc:10046/[迅雷下载www.xiamp4.com]青Y志22.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版22集.mp4', '2016-10-15 15:14:48', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c731709f0016', 23, 1, 'ftp://ds:ds@d7.2tu.cc:10048/[迅雷下载www.xiamp4.com]青Y志23.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版23集.mp4', '2016-10-15 15:14:48', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c731719f0017', 24, 1, 'ftp://ds:ds@d7.2tu.cc:50068/[迅雷下载www.xiamp4.com]青Y志24.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版24集.mp4', '2016-10-15 15:14:48', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73175150018', 25, 1, 'ftp://ds:ds@d7.2tu.cc:10049/[迅雷下载www.xiamp4.com]青Y志25.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版25集.mp4', '2016-10-15 15:14:49', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c731754c0019', 26, 1, 'ftp://ds:ds@d7.2tu.cc:50069/[迅雷下载www.xiamp4.com]青Y志26.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版26集.mp4', '2016-10-15 15:14:49', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c7317584001a', 27, 1, 'ftp://ds:ds@d7.2tu.cc:50071/[迅雷下载www.xiamp4.com]青Y志27.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版27集.mp4', '2016-10-15 15:14:49', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73175b0001b', 28, 1, 'ftp://ds:ds@d7.2tu.cc:10052/[迅雷下载www.xiamp4.com]青Y志28.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版28集.mp4', '2016-10-15 15:14:49', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73176a7001c', 29, 1, 'ftp://ds:ds@d7.2tu.cc:50072/[迅雷下载www.xiamp4.com]青Y志29.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版29集.mp4', '2016-10-15 15:14:50', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73176e5001d', 30, 1, 'ftp://ds:ds@d7.2tu.cc:10053/[迅雷下载www.xiamp4.com]青Y志30.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版30集.mp4', '2016-10-15 15:14:50', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c7317715001e', 31, 1, 'ftp://ds:ds@d7.2tu.cc:10055/[迅雷下载www.xiamp4.com]青Y志31.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版31集.mp4', '2016-10-15 15:14:50', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c7317754001f', 32, 1, 'ftp://ds:ds@d7.2tu.cc:50075/[迅雷下载www.xiamp4.com]青Y志32.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版32集.mp4', '2016-10-15 15:14:50', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73177790020', 33, 1, 'ftp://ds:ds@d7.2tu.cc:10056/[迅雷下载www.xiamp4.com]青Y志33.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版33集.mp4', '2016-10-15 15:14:50', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73177ca0021', 34, 1, 'ftp://ds:ds@d7.2tu.cc:50076/[迅雷下载www.xiamp4.com]青Y志34.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版34集.mp4', '2016-10-15 15:14:50', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73177f80022', 35, 1, 'ftp://ds:ds@d7.2tu.cc:50078/[迅雷下载www.xiamp4.com]青Y志35.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版35集.mp4', '2016-10-15 15:14:50', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73178310023', 36, 1, 'ftp://ds:ds@d7.2tu.cc:10059/[迅雷下载www.xiamp4.com]青Y志36.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版36集.mp4', '2016-10-15 15:14:50', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73178740024', 37, 1, 'ftp://ds:ds@d7.2tu.cc:50079/[迅雷下载www.xiamp4.com]青Y志37.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版37集.mp4', '2016-10-15 15:14:50', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73178fc0025', 38, 1, 'ftp://ds:ds@d7.2tu.cc:10060/[迅雷下载www.xiamp4.com]青Y志38.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版38集.mp4', '2016-10-15 15:14:50', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c731792a0026', 39, 1, 'ftp://ds:ds@d7.2tu.cc:50082/[迅雷下载www.xiamp4.com]青Y志39.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版39集.mp4', '2016-10-15 15:14:50', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73179960027', 40, 1, 'ftp://ds:ds@d7.2tu.cc:50082/[迅雷下载www.xiamp4.com]青Y志40.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版40集.mp4', '2016-10-15 15:14:50', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c73179c20028', 41, 1, 'ftp://ds:ds@d7.2tu.cc:10063/[迅雷下载www.xiamp4.com]青Y志41.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版41集.mp4', '2016-10-15 15:14:50', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c7317a440029', 42, 1, 'ftp://ds:ds@d7.2tu.cc:50083/[迅雷下载www.xiamp4.com]青Y志42.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版42集.mp4', '2016-10-15 15:14:51', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c7317aa1002a', 43, 1, 'ftp://ds:ds@d7.2tu.cc:50085/[迅雷下载www.xiamp4.com]青Y志43.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版43集.mp4', '2016-10-15 15:14:51', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c7317afc002b', 44, 1, 'ftp://ds:ds@d7.2tu.cc:10066/[迅雷下载www.xiamp4.com]青Y志44.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版44集.mp4', '2016-10-15 15:14:51', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c7317b20002c', 45, 1, 'ftp://ds:ds@d7.2tu.cc:50086/[迅雷下载www.xiamp4.com]青Y志45.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版45集.mp4', '2016-10-15 15:14:51', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c7317b4f002d', 46, 1, 'ftp://ds:ds@d7.2tu.cc:10067/[迅雷下载www.xiamp4.com]青Y志46.1280高清未删减版.mp4', 'ed2k', '青Y志1280高清未删减版46集.mp4', '2016-10-15 15:14:51', 'f39c979857b48a2a0157c2c661a300b5');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c750d39d0032', 1, 1, 'ftp://ds:ds@d7.2tu.cc:50057/[迅雷下载www.xiamp4.com]兔丸[第01话].mkv', 'ed2k', '兔丸[第1话].mkv', '2016-10-15 15:49:05', 'f39c979857c72e810157c74fe92d0031');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c750d4520033', 2, 1, 'ftp://ds:ds@d7.2tu.cc:50057/[迅雷下载www.xiamp4.com]兔丸[第02话].mp4', 'ed2k', '兔丸[第2话].mkv', '2016-10-15 15:49:05', 'f39c979857c72e810157c74fe92d0031');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c750d45f0034', 3, 1, 'ftp://ds:ds@d4.2tu.cc:20092/[迅雷下载www.xiamp4.com]兔丸[第03话].mp4', 'ed2k', '兔丸[第3话].mkv', '2016-10-15 15:49:05', 'f39c979857c72e810157c74fe92d0031');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c750d4710035', 4, 1, 'ftp://ds:ds@d4.2tu.cc:20097/[迅雷下载www.xiamp4.com]兔丸[第04话].mp4', 'ed2k', '兔丸[第4话].mkv', '2016-10-15 15:49:05', 'f39c979857c72e810157c74fe92d0031');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c750d4800036', 5, 1, 'ftp://ds:ds@d4.2tu.cc:20104/[迅雷下载www.xiamp4.com]兔丸[第05话].mp4', 'ed2k', '兔丸[第5话].mkv', '2016-10-15 15:49:05', 'f39c979857c72e810157c74fe92d0031');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c750d5390037', 6, 1, 'ftp://ds:ds@d4.2tu.cc:20118/[迅雷下载www.xiamp4.com]兔丸[第06话].mkv', 'ed2k', '兔丸[第6话].mkv', '2016-10-15 15:49:05', 'f39c979857c72e810157c74fe92d0031');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c750d5480038', 7, 1, 'ftp://ds:ds@d4.2tu.cc:20120/[迅雷下载www.xiamp4.com]兔丸[第07话].mkv', 'ed2k', '兔丸[第7话].mkv', '2016-10-15 15:49:05', 'f39c979857c72e810157c74fe92d0031');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c750d5530039', 8, 1, 'ftp://ds:ds@d4.2tu.cc:20132/[迅雷下载www.xiamp4.com]兔丸[第08话].mkv', 'ed2k', '兔丸[第8话].mkv', '2016-10-15 15:49:06', 'f39c979857c72e810157c74fe92d0031');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c750d56d003a', 9, 1, 'ftp://ds:ds@d4.2tu.cc:20132/[迅雷下载www.xiamp4.com]兔丸[第09话].mkv', 'ed2k', '兔丸[第9话].mkv', '2016-10-15 15:49:06', 'f39c979857c72e810157c74fe92d0031');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c750d63e003b', 10, 1, 'ftp://ds:ds@d4.2tu.cc:20139/[迅雷下载www.xiamp4.com]兔丸[第10话].mkv', 'ed2k', '兔丸[第10话].mkv', '2016-10-15 15:49:06', 'f39c979857c72e810157c74fe92d0031');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c750d654003c', 11, 1, 'ftp://ds:ds@d4.2tu.cc:20146/[迅雷下载www.xiamp4.com]兔丸[第11话].mkv', 'ed2k', '兔丸[第11话].mkv', '2016-10-15 15:49:06', 'f39c979857c72e810157c74fe92d0031');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c75faab80042', 1, 1, 'ftp://ds:ds@d3.dytt.com:10292/[迅雷下载www.xiamp4.com]文豪野犬[第01话].mp4', 'ed2k', '文豪野犬[第1话]', '2016-10-15 16:05:18', 'f39c979857c72e810157c75ea88f0041');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c75faae00043', 2, 1, 'ftp://ds:ds@d3.dytt.com:10300/[迅雷下载www.xiamp4.com]文豪野犬[第02话].mp4', 'ed2k', '文豪野犬[第2话]', '2016-10-15 16:05:18', 'f39c979857c72e810157c75ea88f0041');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c75fab130044', 3, 1, 'ftp://ds:ds@d3.dytt.com:10307/[迅雷下载www.xiamp4.com]文豪野犬[第03话].mp4', 'ed2k', '文豪野犬[第3话]', '2016-10-15 16:05:18', 'f39c979857c72e810157c75ea88f0041');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c75fab220045', 4, 1, 'ftp://ds:ds@d3.dytt.com:10314/[迅雷下载www.xiamp4.com]文豪野犬[第04话].mp4', 'ed2k', '文豪野犬[第4话]', '2016-10-15 16:05:18', 'f39c979857c72e810157c75ea88f0041');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c75fab3e0046', 5, 1, 'ftp://ds:ds@d3.dytt.com:10321/[迅雷下载www.xiamp4.com]文豪野犬[第05话].mp4', 'ed2k', '文豪野犬[第5话]', '2016-10-15 16:05:18', 'f39c979857c72e810157c75ea88f0041');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c75fab4a0047', 6, 1, 'ftp://ds:ds@d3.dytt.com:10328/[迅雷下载www.xiamp4.com]文豪野犬[第06话].mp4', 'ed2k', '文豪野犬[第6话]', '2016-10-15 16:05:18', 'f39c979857c72e810157c75ea88f0041');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c75fab5a0048', 7, 1, 'ftp://ds:ds@d4.2tu.cc:20000/[迅雷下载www.xiamp4.com]文豪野犬[第07话].mp4', 'ed2k', '文豪野犬[第7话]', '2016-10-15 16:05:18', 'f39c979857c72e810157c75ea88f0041');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c75fab660049', 8, 1, 'ftp://ds:ds@d4.2tu.cc:20006/[迅雷下载www.xiamp4.com]文豪野犬[第08话].mp4', 'ed2k', '文豪野犬[第8话]', '2016-10-15 16:05:18', 'f39c979857c72e810157c75ea88f0041');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c75fab76004a', 9, 1, 'ftp://ds:ds@d4.2tu.cc:20013/[迅雷下载www.xiamp4.com]文豪野犬[第09话].mp4', 'ed2k', '文豪野犬[第9话]', '2016-10-15 16:05:18', 'f39c979857c72e810157c75ea88f0041');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c75fab87004b', 10, 1, 'ftp://ds:ds@d4.2tu.cc:20027/[迅雷下载www.xiamp4.com]文豪野犬[第10话].mkv', 'ed2k', '文豪野犬[第10话]', '2016-10-15 16:05:18', 'f39c979857c72e810157c75ea88f0041');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c75fab97004c', 11, 1, 'ftp://ds:ds@d4.2tu.cc:20027/[迅雷下载www.xiamp4.com]文豪野犬[第11话].mp4', 'ed2k', '文豪野犬[第11话]', '2016-10-15 16:05:18', 'f39c979857c72e810157c75ea88f0041');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c75faba3004d', 12, 1, 'ftp://ds:ds@d4.2tu.cc:20034/[迅雷下载www.xiamp4.com]文豪野犬[第12话].mp4', 'ed2k', '文豪野犬[第12话]', '2016-10-15 16:05:18', 'f39c979857c72e810157c75ea88f0041');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c75fabb1004e', 13, 1, 'ftp://ds:ds@d4.2tu.cc:20137/[迅雷下载www.xiamp4.com]文豪野犬[第13话].mp4', 'ed2k', '文豪野犬[第13话]', '2016-10-15 16:05:18', 'f39c979857c72e810157c75ea88f0041');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c75fabbb004f', 14, 1, 'ftp://ds:ds@d4.2tu.cc:20139/[迅雷下载www.xiamp4.com]文豪野犬[第14话].mp4', 'ed2k', '文豪野犬[第14话]', '2016-10-15 16:05:18', 'f39c979857c72e810157c75ea88f0041');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c75fabc60050', 15, 1, 'ftp://ds:ds@d4.2tu.cc:20146/[迅雷下载www.xiamp4.com]文豪野犬[第15话].mp4', 'ed2k', '文豪野犬[第15话]', '2016-10-15 16:05:18', 'f39c979857c72e810157c75ea88f0041');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c77be4ce0053', 1, 1, 'magnet:?xt=urn:btih:456b9d6362c5ff291e030dee5948c331f754697e ', 'thunder', '从你的全世界路过 ', '2016-10-15 16:36:08', 'f39c979857ad7e8c0157b39c4f9b002a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c786ad140058', 1, 1, 'ed2k://|file|十万个冷笑话.HD1280高清国语中英双字.mp4|1221565493|21ABBE8D8B50077B4C1C4532DF067B10|h=OBO6G6BLJFLDDQWDPXKWF5SXXWBGW2VN|/', 'ed2k', '十万个冷笑话 大电影', '2016-10-15 16:47:54', 'f39c979857c72e810157c785a4d10057');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c786c0020059', 1, 1, 'ed2k://|file|十万个冷笑话.HD1280超清国语中英双字.mp4|1970512853|7D36D7C05B51BD7E690208878BE7715D|h=2WVCONJJPKYJGBIG63PTXTR7TG6PJJSS|/', 'ed2k', '十万个冷笑话 大电影', '2016-10-15 16:47:59', 'f39c979857c72e810157c785a4d10057');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8184e28005c', 1, 1, 'ftp://ds:ds@d4.2tu.cc:20051/[迅雷下载www.xiamp4.com]欧布奥特曼[第01话].mp4', 'ed2k', '欧布奥特曼[第1话].mp4', '2016-10-15 19:26:58', 'f39c979857c72e810157c815f298005b');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8184edd005d', 2, 1, 'ftp://ds:ds@d5.2tu.cc:10056/[迅雷下载www.xiamp4.com]欧布奥特曼[第02话].mp4', 'ed2k', '欧布奥特曼[第2话].mp4', '2016-10-15 19:26:58', 'f39c979857c72e810157c815f298005b');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8184eff005e', 3, 1, 'ftp://ds:ds@d7.2tu.cc:10026/[迅雷下载www.xiamp4.com]欧布奥特曼[第03话].mp4', 'ed2k', '欧布奥特曼[第3话].mp4', '2016-10-15 19:26:58', 'f39c979857c72e810157c815f298005b');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8184f1b005f', 4, 1, 'ftp://ds:ds@d5.2tu.cc:10068/[迅雷下载www.xiamp4.com]欧布奥特曼[第04话].mkv', 'ed2k', '欧布奥特曼[第4话].mp4', '2016-10-15 19:26:58', 'f39c979857c72e810157c815f298005b');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8184f460060', 5, 1, 'ftp://ds:ds@d7.2tu.cc:10033/[迅雷下载www.xiamp4.com]欧布奥特曼[第05话].mp4', 'ed2k', '欧布奥特曼[第5话].mp4', '2016-10-15 19:26:58', 'f39c979857c72e810157c815f298005b');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8184f6a0061', 6, 1, 'ftp://ds:ds@d4.2tu.cc:20084/[迅雷下载www.xiamp4.com]欧布奥特曼[第06话].mkv', 'ed2k', '欧布奥特曼[第6话].mp4', '2016-10-15 19:26:58', 'f39c979857c72e810157c815f298005b');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8184f840062', 7, 1, 'ftp://ds:ds@d7.2tu.cc:50060/[迅雷下载www.xiamp4.com]欧布奥特曼[第07话].mp4', 'ed2k', '欧布奥特曼[第7话].mp4', '2016-10-15 19:26:58', 'f39c979857c72e810157c815f298005b');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8184f920063', 8, 1, 'ftp://ds:ds@d5.2tu.cc:10093/[迅雷下载www.xiamp4.com]欧布奥特曼[第08话].mkv', 'ed2k', '欧布奥特曼[第8话].mp4', '2016-10-15 19:26:58', 'f39c979857c72e810157c815f298005b');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8184fb90064', 9, 1, 'ftp://ds:ds@d7.2tu.cc:10048/[迅雷下载www.xiamp4.com]欧布奥特曼[第09话].mp4', 'ed2k', '欧布奥特曼[第9话].mp4', '2016-10-15 19:26:59', 'f39c979857c72e810157c815f298005b');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c81850210065', 10, 1, 'ftp://ds:ds@d7.2tu.cc:10051/[迅雷下载www.xiamp4.com]欧布奥特曼[第10话].mp4', 'ed2k', '欧布奥特曼[第10话].mp4', '2016-10-15 19:26:59', 'f39c979857c72e810157c815f298005b');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c81850600066', 11, 1, 'ftp://ds:ds@d7.2tu.cc:10054/[迅雷下载www.xiamp4.com]欧布奥特曼[第11话].mp4', 'ed2k', '欧布奥特曼[第11话].mp4', '2016-10-15 19:26:59', 'f39c979857c72e810157c815f298005b');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c81850850067', 12, 1, 'ftp://ds:ds@d7.2tu.cc:50077/[迅雷下载www.xiamp4.com]欧布奥特曼[第12话].mp4', 'ed2k', '欧布奥特曼[第12话].mp4', '2016-10-15 19:26:59', 'f39c979857c72e810157c815f298005b');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c81850970068', 13, 1, 'ftp://ds:ds@d7.2tu.cc:10061/[迅雷下载www.xiamp4.com]欧布奥特曼[第13话].mp4', 'ed2k', '欧布奥特曼[第13话].mp4', '2016-10-15 19:26:59', 'f39c979857c72e810157c815f298005b');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c81850b70069', 14, 1, 'ftp://ds:ds@d7.2tu.cc:50084/[迅雷下载www.xiamp4.com]欧布奥特曼[第14话].mp4', 'ed2k', '欧布奥特曼[第14话].mp4', '2016-10-15 19:26:59', 'f39c979857c72e810157c815f298005b');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8296b7d006e', 1, 1, 'ftp://ds:ds@d3.dytt.com:10213/[迅雷下载www.xiamp4.com]亚人[第01话].mp4', 'ed2k', '亚人[第1话].mp4', '2016-10-15 19:45:40', 'f39c979857c72e810157c8282742006d');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8296bb2006f', 2, 1, 'ftp://ds:ds@d3.dytt.com:10220/[迅雷下载www.xiamp4.com]亚人[第02话].mp4', 'ed2k', '亚人[第2话].mp4', '2016-10-15 19:45:40', 'f39c979857c72e810157c8282742006d');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8296be50070', 3, 1, 'ftp://ds:ds@d3.dytt.com:10234/[迅雷下载www.xiamp4.com]亚人[第03话].mp4', 'ed2k', '亚人[第3话].mp4', '2016-10-15 19:45:40', 'f39c979857c72e810157c8282742006d');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8296c460071', 4, 1, 'ftp://ds:ds@d3.dytt.com:10234/[迅雷下载www.xiamp4.com]亚人[第04话].mp4', 'ed2k', '亚人[第4话].mp4', '2016-10-15 19:45:40', 'f39c979857c72e810157c8282742006d');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8296c570072', 5, 1, 'ftp://ds:ds@d3.dytt.com:10234/[迅雷下载www.xiamp4.com]亚人[第05话].mp4', 'ed2k', '亚人[第5话].mp4', '2016-10-15 19:45:40', 'f39c979857c72e810157c8282742006d');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8296c840073', 6, 1, 'ftp://ds:ds@d3.dytt.com:10248/[迅雷下载www.xiamp4.com]亚人[第06话].mp4', 'ed2k', '亚人[第6话].mp4', '2016-10-15 19:45:40', 'f39c979857c72e810157c8282742006d');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8296c950074', 7, 1, 'ftp://ds:ds@d3.dytt.com:10255/[迅雷下载www.xiamp4.com]亚人[第07话].mp4', 'ed2k', '亚人[第7话].mp4', '2016-10-15 19:45:40', 'f39c979857c72e810157c8282742006d');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8296cab0075', 8, 1, 'ftp://ds:ds@d3.dytt.com:10261/[迅雷下载www.xiamp4.com]亚人[第08话].mp4', 'ed2k', '亚人[第8话].mp4', '2016-10-15 19:45:40', 'f39c979857c72e810157c8282742006d');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8296cc40076', 9, 1, 'ftp://ds:ds@d3.dytt.com:10268/[迅雷下载www.xiamp4.com]亚人[第09话].mp4', 'ed2k', '亚人[第9话].mp4', '2016-10-15 19:45:40', 'f39c979857c72e810157c8282742006d');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8296ce10077', 10, 1, 'ftp://ds:ds@d3.dytt.com:10273/[迅雷下载www.xiamp4.com]亚人[第10话].mp4', 'ed2k', '亚人[第10话].mp4', '2016-10-15 19:45:40', 'f39c979857c72e810157c8282742006d');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8296cf00078', 11, 1, 'ftp://ds:ds@d3.dytt.com:10280/[迅雷下载www.xiamp4.com]亚人[第11话].mp4', 'ed2k', '亚人[第11话].mp4', '2016-10-15 19:45:40', 'f39c979857c72e810157c8282742006d');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8296d040079', 12, 1, 'ftp://ds:ds@d2.dytt.com:30173/[迅雷下载www.xiamp4.com]亚人[第12话].mkv', 'ed2k', '亚人[第12话].mp4', '2016-10-15 19:45:40', 'f39c979857c72e810157c8282742006d');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8296d15007a', 13, 1, 'ftp://ds:ds@d3.dytt.com:10294/[迅雷下载www.xiamp4.com]亚人[第13话].mkv', 'ed2k', '亚人[第13话].mp4', '2016-10-15 19:45:40', 'f39c979857c72e810157c8282742006d');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8296d33007b', 14, 1, 'ftp://ds:ds@d5.2tu.cc:10134/[迅雷下载www.xiamp4.com]亚人[第14话].mp4', 'ed2k', '亚人[第14话].mp4', '2016-10-15 19:45:40', 'f39c979857c72e810157c8282742006d');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8296d46007c', 15, 1, 'ftp://ds:ds@d5.2tu.cc:10141/[迅雷下载www.xiamp4.com]亚人[第15话].mp4', 'ed2k', '亚人[第15话].mp4', '2016-10-15 19:45:40', 'f39c979857c72e810157c8282742006d');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c82d001a007e', 1, 1, 'ftp://ds:ds@d5.2tu.cc:10130/[迅雷下载www.xiamp4.com]侍灵演武-将星乱[第01话].mkv', 'ed2k', '侍灵演武-将星乱[第1话].mkv', '2016-10-15 19:49:34', 'f39c979857c72e810157c82c79b3007d');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c82d0029007f', 2, 1, 'ftp://ds:ds@d5.2tu.cc:10141/[迅雷下载www.xiamp4.com]侍灵演武将星乱[第02话].mp4', 'ed2k', '侍灵演武-将星乱[第2话].mkv', '2016-10-15 19:49:34', 'f39c979857c72e810157c82c79b3007d');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8346ccb0083', 1, 1, 'ftp://ds:ds@d4.2tu.cc:20134/[迅雷下载www.xiamp4.com]数码兽宇宙应用怪兽[第01话].mp4', 'ed2k', '数码兽宇宙应用怪兽[第1话].mp4', '2016-10-15 19:57:41', 'f39c979857c72e810157c832c8200082');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8346d5f0084', 2, 1, 'ftp://ds:ds@d7.2tu.cc:50084/[迅雷下载www.xiamp4.com]数码兽宇宙应用怪兽[第02话].mp4', 'ed2k', '数码兽宇宙应用怪兽[第2话].mp4', '2016-10-15 19:57:41', 'f39c979857c72e810157c832c8200082');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8346d9c0085', 3, 1, 'ftp://ds:ds@d4.2tu.cc:20146/[迅雷下载www.xiamp4.com]数码兽宇宙应用怪兽[第03话].mp4', 'ed2k', '数码兽宇宙应用怪兽[第3话].mp4', '2016-10-15 19:57:41', 'f39c979857c72e810157c832c8200082');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c838c6e40087', 1, 1, '25L24l27l26l24L25L25L24l58l30L28L29L24L30l29l30L17l', 'Flh', '01', '2016-10-15 20:02:26', 'f39c979857c72e810157c8387e6f0086');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8399ab60089', 1, 1, 'ftp://ds:ds@d5.2tu.cc:10102/[迅雷下载www.xiamp4.com]全职法师[第01话].mp4', 'http', '全职法师[第1话].mp4', '2016-10-15 20:03:20', 'f39c979857c72e810157c83909810088');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8399ad2008a', 2, 1, 'ftp://ds:ds@d5.2tu.cc:10102/[迅雷下载www.xiamp4.com]全职法师[第02话].mp4', 'http', '全职法师[第2话].mp4', '2016-10-15 20:03:20', 'f39c979857c72e810157c83909810088');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8399ae8008b', 3, 1, 'ftp://ds:ds@d5.2tu.cc:10106/[迅雷下载www.xiamp4.com]全职法师[第03话].mp4', 'http', '全职法师[第3话].mp4', '2016-10-15 20:03:20', 'f39c979857c72e810157c83909810088');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8399b39008c', 4, 1, 'ftp://ds:ds@d5.2tu.cc:10113/[迅雷下载www.xiamp4.com]全职法师[第04话].mp4', 'http', '全职法师[第4话].mp4', '2016-10-15 20:03:21', 'f39c979857c72e810157c83909810088');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8399b4a008d', 5, 1, 'ftp://ds:ds@d5.2tu.cc:10120/[迅雷下载www.xiamp4.com]全职法师[第05话].mp4', 'http', '全职法师[第5话].mp4', '2016-10-15 20:03:21', 'f39c979857c72e810157c83909810088');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8399b5a008e', 6, 1, 'ftp://ds:ds@d5.2tu.cc:10127/[迅雷下载www.xiamp4.com]全职法师[第06话].mp4', 'http', '全职法师[第6话].mp4', '2016-10-15 20:03:21', 'f39c979857c72e810157c83909810088');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8399b90008f', 7, 1, 'ftp://ds:ds@d5.2tu.cc:10133/[迅雷下载www.xiamp4.com]全职法师[第07话].mp4', 'http', '全职法师[第7话].mp4', '2016-10-15 20:03:21', 'f39c979857c72e810157c83909810088');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8399bbc0090', 8, 1, 'ftp://ds:ds@d5.2tu.cc:10140/[迅雷下载www.xiamp4.com]全职法师[第08话].mp4', 'http', '全职法师[第8话].mp4', '2016-10-15 20:03:21', 'f39c979857c72e810157c83909810088');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c839d9c60091', 2, 1, '25L24l27l26l24L25L25L24l58l30L28L29L30L29L28l29l17l', 'Flh', '02', '2016-10-15 20:03:37', 'f39c979857c72e810157c8387e6f0086');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c83acddc0092', 3, 1, '25L24l27l26l24L25L25L24l58l30L28L29L30L29L28l29l17l', 'Flh', '03', '2016-10-15 20:04:39', 'f39c979857c72e810157c8387e6f0086');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c83b89080093', 4, 1, '25L24l27l26l24L25L25L24L58l30L28L29l24l24L31L28L16L', 'Flh', '04', '2016-10-15 20:05:27', 'f39c979857c72e810157c8387e6f0086');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c83c4c110094', 5, 1, '25L24l27l26l24L25L25L24L58l30L28L28L27L29l31l29l17L', 'Flh', '05', '2016-10-15 20:06:17', 'f39c979857c72e810157c8387e6f0086');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c83d2b7a0095', 6, 1, '25L24l27l26l24L25L25L24L58l30L28L28L25L28L31L29l20l', 'Flh', '06', '2016-10-15 20:07:14', 'f39c979857c72e810157c8387e6f0086');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c83e2df50096', 7, 1, '25L24l27l26l24L25L25L24L58l30L28L28l26l31L31l29L18l', 'Flh', '07', '2016-10-15 20:08:20', 'f39c979857c72e810157c8387e6f0086');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c83f12d00097', 8, 1, '25L24l27l26l24L25L25L24L58l30L28L28l25l28l27L30L16l', 'Flh', '08', '2016-10-15 20:09:19', 'f39c979857c72e810157c8387e6f0086');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84097690099', 9, 1, '25L24l27l26l24L25L25L24L58l30L28L31L27L28L27l29l18l', 'Flh', '09', '2016-10-15 20:10:58', 'f39c979857c72e810157c8387e6f0086');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8419a19009b', 10, 1, '25L24l27l26l24L25L25L24L58l30L28L31L24l31l27L29L17L', 'Flh', '9.5', '2016-10-15 20:12:05', 'f39c979857c72e810157c8387e6f0086');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84213db009c', 11, 1, '25L24l27l26l24L25L25L24L58l30L28L31L25l24l29L31L17l', 'Flh', '10', '2016-10-15 20:12:36', 'f39c979857c72e810157c8387e6f0086');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8427371009d', 12, 1, '25L24l27l26l24L25L25L24L58l30L28L31l27L24l29l29L18L', 'Flh', '11', '2016-10-15 20:13:00', 'f39c979857c72e810157c8387e6f0086');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c842fecf009e', 13, 1, '25L24l27l26l24L25L25L24L58l30L28L30L26l28L29L27l17l', 'Flh', '12', '2016-10-15 20:13:36', 'f39c979857c72e810157c8387e6f0086');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431b92009f', 1, 0, 'ftp://ds:ds@d3.dytt.com:10315/[迅雷下载www.xiamp4.com]镇魂街[第01话].mkv', 'ed2k', '镇魂街[第1话].mkv', '2016-10-15 20:13:43', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431ba200a0', 2, 1, 'ftp://ds:ds@d3.dytt.com:10322/[迅雷下载www.xiamp4.com]镇魂街[第02话].mkv', 'ed2k', '镇魂街[第2话].mkv', '2016-10-15 20:13:43', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431baf00a1', 3, 1, 'ftp://ds:ds@d3.dytt.com:10329/[迅雷下载www.xiamp4.com]镇魂街[第03话].mp4', 'ed2k', '镇魂街[第3话].mkv', '2016-10-15 20:13:43', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431bc600a2', 4, 1, 'ftp://ds:ds@d4.2tu.cc:20001/[迅雷下载www.xiamp4.com]镇魂街[第04话].mkv', 'ed2k', '镇魂街[第4话].mkv', '2016-10-15 20:13:43', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431bd100a3', 5, 1, 'ftp://ds:ds@d4.2tu.cc:20007/[迅雷下载www.xiamp4.com]镇魂街[第05话].mkv', 'ed2k', '镇魂街[第5话].mkv', '2016-10-15 20:13:43', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431be100a4', 6, 1, 'ftp://ds:ds@d4.2tu.cc:20014/[迅雷下载www.xiamp4.com]镇魂街[第06话].mp4', 'ed2k', '镇魂街[第6话].mkv', '2016-10-15 20:13:43', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431bfd00a5', 7, 1, 'ftp://ds:ds@d4.2tu.cc:20021/[迅雷下载www.xiamp4.com]镇魂街[第07话].mp4', 'ed2k', '镇魂街[第7话].mkv', '2016-10-15 20:13:43', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431c1600a6', 8, 1, 'ftp://ds:ds@d4.2tu.cc:20028/[迅雷下载www.xiamp4.com]镇魂街[第08话].mp4', 'ed2k', '镇魂街[第8话].mkv', '2016-10-15 20:13:43', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431c2800a7', 9, 1, 'ftp://ds:ds@d4.2tu.cc:20035/[迅雷下载www.xiamp4.com]镇魂街[第09话].mkv', 'ed2k', '镇魂街[第9话].mkv', '2016-10-15 20:13:43', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431c3a00a8', 10, 1, 'ftp://ds:ds@d4.2tu.cc:20042/[迅雷下载www.xiamp4.com]镇魂街[第10话].mkv', 'ed2k', '镇魂街[第10话].mkv', '2016-10-15 20:13:43', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431c5000a9', 11, 1, 'ftp://ds:ds@d4.2tu.cc:20049/[迅雷下载www.xiamp4.com]镇魂街[第11话].mkv', 'ed2k', '镇魂街[第11话].mkv', '2016-10-15 20:13:43', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431c7100aa', 12, 1, 'ftp://ds:ds@d4.2tu.cc:20056/[迅雷下载www.xiamp4.com]镇魂街[第12话].mkv', 'ed2k', '镇魂街[第12话].mkv', '2016-10-15 20:13:43', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431c8a00ab', 13, 1, 'ftp://ds:ds@d4.2tu.cc:20075/[迅雷下载www.xiamp4.com]镇魂街[第13话].mp4', 'ed2k', '镇魂街[第13话].mkv', '2016-10-15 20:13:43', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431c9600ac', 14, 1, 'ftp://ds:ds@d4.2tu.cc:20081/[迅雷下载www.xiamp4.com]镇魂街[第14话].mp4', 'ed2k', '镇魂街[第14话].mkv', '2016-10-15 20:13:43', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431ca400ad', 15, 1, 'ftp://ds:ds@d4.2tu.cc:20095/[迅雷下载www.xiamp4.com]镇魂街[第15话].mp4', 'ed2k', '镇魂街[第15话].mkv', '2016-10-15 20:13:43', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431cb300ae', 16, 1, 'ftp://ds:ds@d4.2tu.cc:20095/[迅雷下载www.xiamp4.com]镇魂街[第16话].mp4', 'ed2k', '镇魂街[第16话].mkv', '2016-10-15 20:13:43', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431cc000af', 17, 1, 'ftp://ds:ds@d4.2tu.cc:20102/[迅雷下载www.xiamp4.com]镇魂街[第17话].mp4', 'ed2k', '镇魂街[第17话].mkv', '2016-10-15 20:13:44', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431cdc00b0', 18, 1, 'ftp://ds:ds@d7.2tu.cc:50069/[迅雷下载www.xiamp4.com]镇魂街[第18话].mkv', 'ed2k', '镇魂街[第18话].mkv', '2016-10-15 20:13:44', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431ceb00b1', 19, 1, 'ftp://ds:ds@d7.2tu.cc:10053/[迅雷下载www.xiamp4.com]镇魂街[第19话].mkv', 'ed2k', '镇魂街[第19话].mkv', '2016-10-15 20:13:44', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431cf800b2', 20, 1, 'ftp://ds:ds@d7.2tu.cc:50076/[迅雷下载www.xiamp4.com]镇魂街[第20话].mkv', 'ed2k', '镇魂街[第20话].mkv', '2016-10-15 20:13:44', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431d0e00b3', 21, 1, 'ftp://ds:ds@d7.2tu.cc:10060/[迅雷下载www.xiamp4.com]镇魂街[第21话].mkv', 'ed2k', '镇魂街[第21话].mkv', '2016-10-15 20:13:44', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431d2100b4', 22, 1, 'ftp://ds:ds@d7.2tu.cc:50083/[迅雷下载www.xiamp4.com]镇魂街[第22话].mkv', 'ed2k', '镇魂街[第22话].mkv', '2016-10-15 20:13:44', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8431d2f00b5', 23, 1, 'ftp://ds:ds@d4.2tu.cc:20144/[迅雷下载www.xiamp4.com]镇魂街[第23话].mp4', 'ed2k', '镇魂街[第23话].mkv', '2016-10-15 20:13:44', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c844fa2000b6', 1, 1, 'ftp://ds:ds@d4.2tu.cc:20069/[迅雷下载www.xiamp4.com]镇魂街阳版总集篇.mkv', 'ed2k', '镇魂街阳版总集篇.mkv', '2016-10-15 20:15:46', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c8454e4100b7', 1, 1, 'ftp://ds:ds@d4.2tu.cc:20069/[迅雷下载www.xiamp4.com]镇魂街阴版总集篇.mkv', 'ed2k', '镇魂街阴版总集篇.mkv', '2016-10-15 20:16:07', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c847e59700b9', 1, 1, '24l24l27l26l24L25L25L24L58l43L35L47L40l28L33L37L57L52L46l43L47l55L47L41L18L17l', 'Flh', '镇魂街01集', '2016-10-15 20:18:57', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84838b000ba', 2, 1, '24l24l27l26l24L25L25L24L58l43L35L47L40l28L32L37L59L53L46L43L47l55l46L58L18L17l', 'Flh', '镇魂街02集', '2016-10-15 20:19:18', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c848859400bb', 3, 1, '24l24l27l26l24L25L25L24L58l43L35L47L40l29l32l50L32L52l46l35L43l19l47L41L18L17l', 'Flh', '镇魂街03集', '2016-10-15 20:19:38', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c848be3c00bc', 4, 1, '24l24l27l26l24L25L25L24L58l43L35L47L40l29L32l37L61L16L47L52L58l18L46L58L18L17l', 'Flh', '镇魂街04集', '2016-10-15 20:19:53', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c848fe4300bd', 5, 1, '24l24l27l26l24L25L25L24L58l43L35L47L40l30l33L58L34L16L46l35L43l55L46L41L18L17l', 'Flh', '镇魂街05集', '2016-10-15 20:20:09', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84966a800be', 6, 1, '24l24l27l26l24L25L25L27l58l43L35L47L40l30L33L50L61L52l46L43L45l19L46L58L18L17l', 'Flh', '镇魂街06集', '2016-10-15 20:20:36', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c849bc4900bf', 7, 1, '24l24l27l26l24L25L25L27l58l43L35L47L46l63L33L37L59L18l46l52L58l19l47L41L18L17l', 'Flh', '镇魂街07集', '2016-10-15 20:20:58', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c849fa6800c0', 8, 1, '24l24l27l26l24L25L25L27l58l43L35L47L46l63L32L37L61L16l47L35L56l55L47l41L18L17l', 'Flh', '镇魂街08集', '2016-10-15 20:21:13', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84a2e8000c1', 9, 1, '24l24l27l26l24L25L25L27l58l43L35L47L46l56l32l50L57L16L46L35L35l19L46L58L18L17l', 'Flh', '镇魂街09集', '2016-10-15 20:21:27', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84a61f700c2', 10, 1, '24l24l27l26l24L25L25L27l58l43L35L47L46l56L32l45L40L16L46L43L58l48L47L41L18L17l', 'Flh', '镇魂街10集', '2016-10-15 20:21:40', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84aab5700c3', 11, 1, '24l24l27l26l24L25L25L27l58l43L35L47L46l57l33L58L61L53L46L43L43l55L46L41L18L17l', 'Flh', '镇魂街11集', '2016-10-15 20:21:59', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84ae0a800c4', 12, 1, '24l24l27l26l24L25L25L27l58l43L35L47L46l28l33L50L40L52l47L35L58l17l46L41L18L17l', 'Flh', '镇魂街12集', '2016-10-15 20:22:12', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84b212c00c5', 13, 1, '24l24l27l26l24L25L25L27l58l43L35L47L46l29l32L45L34L16l46l60L45l17l47l41L18L17l', 'Flh', '镇魂街13集', '2016-10-15 20:22:29', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84b5ba900c6', 14, 1, '24l24l27l26l24L25L25L27l58l43L35L47L46l29L32L45L42L52L47L52L33l19l47l41L18L17l', 'Flh', '镇魂街14集', '2016-10-15 20:22:44', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84b95dd00c7', 15, 1, '24l24l27l26l24L25L25L27l58l43L35L47L46l30l32L37L42L51l46L43L45l19l47l41L18L17l', 'Flh', '镇魂街15集', '2016-10-15 20:22:59', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84be0e800c8', 16, 1, '24l24l27l26l24L25L25L27l58l43L35L47L46l30L32l58L36L17L47L52L47l17l47l41L18L17l', 'Flh', '镇魂街16集', '2016-10-15 20:23:18', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84c1a5500c9', 17, 1, '24l24l27l26l24L25L25L27l58l43L35L47L51l63L32l58L32L53L46l35L45l19L47l58L18L17l', 'Flh', '镇魂街17集', '2016-10-15 20:23:33', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84c58b700ca', 18, 1, '24l24l27l26l24L25L25L27l58l43L35L47L51l56l32l50L46L16l47L35L33l19L46L58L18L17l', 'Flh', '镇魂街18集', '2016-10-15 20:23:49', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84c942b00cb', 19, 1, '24l24l27l26l24L25L25L27l58l43L35L47L51l56l32l50L46L16l47L35L33l19L46L58L18L17l', 'Flh', '镇魂街19集', '2016-10-15 20:24:04', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84cddd000cc', 20, 1, '24l24l27l26l24L25L25L27l58l43L35L47L51l57l33L50L59L52L46l35L39l17l46L41L18L17l', 'Flh', '镇魂街20集', '2016-10-15 20:24:23', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84d0ffa00cd', 21, 1, '24l24l27l26l24L25L25L27l58l43L35L47L51l28l33L45L32L18L46L35L47l17l47l41L18L17l', 'Flh', '镇魂街21集', '2016-10-15 20:24:36', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84d4cba00ce', 22, 1, '24l24l27l26l24L25L25L27l58l43L35L47L51l28l32L37L59L16l47L35L58l55L47L41L18L17l', 'Flh', '镇魂街22集', '2016-10-15 20:24:51', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c72e810157c84d89ec00cf', 23, 1, '24l24l27l26l24L25L25L27l58l43L35L47L51l28L32l58L46L18l46l60L45l19L47l58L18L17l', 'Flh', '镇魂街23集', '2016-10-15 20:25:07', 'f39c979857c72e810157c8413646009a');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c896ad9e0019', 1, 1, '24l24l27l26l24L25L25L29L58l43L35L56L38l63L33L37L32L16l47L60L33l18l', 'Flh', 'Tudou', '2016-10-15 21:45:00', 'f39c979857c888c10157c8959aca0018');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8973335001a', 2, 1, '24l24l27l26l24L25L25L29L58l43L35L56L38l63L33L37L36L16l46l52L45l55L', 'Flh', 'Tudou', '2016-10-15 21:45:34', 'f39c979857c888c10157c8959aca0018');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c897c189001b', 3, 1, '24l24l27l26l24L25L25L29L58l43L35L56L38l63L33L37L36L17L47L43L56l19l', 'Flh', 'Tudou', '2016-10-15 21:46:11', 'f39c979857c888c10157c8959aca0018');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8982b77001c', 4, 1, '24l24l27l26l24L25L25L29L58l43L35L56L38l63L33L37L36L18l47L35L47l17l', 'Flh', 'Tudou', '2016-10-15 21:46:38', 'f39c979857c888c10157c8959aca0018');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c89899d9001d', 5, 1, '24l24l27l26l24L25L25L29L58l43L35L56L38l63L33L37L57L52L46l35L39l17l', 'Flh', 'Tudou', '2016-10-15 21:47:06', 'f39c979857c888c10157c8959aca0018');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8991b27001e', 6, 1, '24l24l27l26l24L25L25L29L58l43L35L56L38l63L33L37L57L17l46l52L43l19l', 'Flh', 'Tudou', '2016-10-15 21:47:39', 'f39c979857c888c10157c8959aca0018');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8998221001f', 7, 1, '24l24l27l26l24L25L25L29L58l43L35L56L38l63L33L37L57L18L47L43L39l48L', 'Flh', 'Tudou', '2016-10-15 21:48:06', 'f39c979857c888c10157c8959aca0018');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c899fa6e0020', 8, 1, '24l24l27l26l24L25L25L29L58l43L35L56L38l63L33L45L42L17L46l60L58l18l', 'Flh', 'Tudou', '2016-10-15 21:48:36', 'f39c979857c888c10157c8959aca0018');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c89a669d0021', 9, 1, '24l24l27l26l24L25L25L29L58l43L35L56L38l63L33L45L42L17L46l52L58l18l', 'Flh', 'Tudou', '2016-10-15 21:49:04', 'f39c979857c888c10157c8959aca0018');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c89ac0340022', 10, 1, '24l24l27l26l24L25L25L29L58l43L35L56L38l63L33L45L42L17L46L43L45l18l', 'Flh', 'Tudou', '2016-10-15 21:49:27', 'f39c979857c888c10157c8959aca0018');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c89fd3c1003d', 1, 1, 'ftp://ds:ds@xli.2tu.cc:21275/[迅雷下载www.2tu.cc]宠物小精灵XY[第01-02话].mp4', 'ed2k', '宠物小精灵XY[第01-02话].mp4', '2016-10-15 21:55:00', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c18c003e', 3, 1, 'ftp://tv:tv@xlh.2tu.cc:41748/[迅雷下载www.2tu.cc]宠物小精灵XY[第03话].mp4', 'ed2k', '宠物小精灵XY][第3话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c1b0003f', 4, 1, 'ftp://tv:tv@xlh.2tu.cc:41755/[迅雷下载www.2tu.cc]宠物小精灵XY[第04话].rmvb', 'ed2k', '宠物小精灵XY][第4话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c1dc0040', 5, 1, 'ftp://tv:tv@xlh.2tu.cc:41762/[迅雷下载www.2tu.cc]宠物小精灵XY[第05话].rmvb', 'ed2k', '宠物小精灵XY][第5话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c1ec0041', 6, 1, 'ftp://tv:tv@xlh.2tu.cc:41769/[迅雷下载www.2tu.cc]宠物小精灵XY[第06话].mp4', 'ed2k', '宠物小精灵XY][第6话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c1fa0042', 7, 1, 'ftp://tv:tv@xlh.2tu.cc:41776/[迅雷下载www.2tu.cc]宠物小精灵XY[第07话].mp4', 'ed2k', '宠物小精灵XY][第7话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c21a0043', 8, 1, 'ftp://tv:tv@xlh.2tu.cc:41784/[迅雷下载www.2tu.cc]宠物小精灵XY[第08话].rmvb', 'ed2k', '宠物小精灵XY][第8话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c2290044', 9, 1, 'ftp://tv:tv@xlh.2tu.cc:41790/[迅雷下载www.2tu.cc]宠物小精灵XY[第09话].rmvb', 'ed2k', '宠物小精灵XY][第9话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c23f0045', 10, 1, 'ftp://ds:ds@xla.2tu.cc:31031/[迅雷下载www.2tu.cc]宠物小精灵XY[第10话].mp4', 'ed2k', '宠物小精灵XY][第10话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c2520046', 11, 1, 'ftp://tv:tv@xlh.2tu.cc:41805/[迅雷下载www.2tu.cc]宠物小精灵XY[第11话].rmvb', 'ed2k', '宠物小精灵XY][第11话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c2680047', 12, 1, 'ftp://ds:ds@xla.2tu.cc:31223/[迅雷下载www.2tu.cc]宠物小精灵XY[第12话].mkv', 'ed2k', '宠物小精灵XY][第12话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c2750048', 13, 1, 'ftp://tv:tv@xlh.2tu.cc:313/[迅雷下载www.2tu.cc]宠物小精灵XY[第13话].rmvb', 'ed2k', '宠物小精灵XY][第13话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c2930049', 14, 1, 'ftp://tv:tv@xlh.2tu.cc:327/[迅雷下载www.2tu.cc]宠物小精灵XY[第14话].rmvb', 'ed2k', '宠物小精灵XY][第14话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c2a0004a', 15, 1, 'ftp://ds:ds@xla.2tu.cc:31257/[迅雷下载www.2tu.cc]宠物小精灵XY[第15话]修正.rmvb', 'ed2k', '宠物小精灵XY][第15话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c2ad004b', 16, 1, 'ftp://tv:tv@xlh.2tu.cc:41864/[迅雷下载www.2tu.cc]宠物小精灵XY[第16话].rmvb', 'ed2k', '宠物小精灵XY][第16话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c2bf004c', 17, 1, 'ftp://tv:tv@xlh.2tu.cc:41871/[迅雷下载www.2tu.cc]宠物小精灵XY[第17话].rmvb', 'ed2k', '宠物小精灵XY][第17话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c2e5004d', 18, 1, 'ftp://tv:tv@xlh.2tu.cc:41878/[迅雷下载www.2tu.cc]宠物小精灵XY[第18话].rmvb', 'ed2k', '宠物小精灵XY][第18话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c2f6004e', 19, 1, 'ftp://tv:tv@xlh.2tu.cc:41892/[迅雷下载www.2tu.cc]宠物小精灵XY[第19话].rmvb', 'ed2k', '宠物小精灵XY][第19话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c302004f', 20, 1, 'ftp://tv:tv@xlh.2tu.cc:41899/[迅雷下载www.2tu.cc]宠物小精灵XY[第20话].rmvb', 'ed2k', '宠物小精灵XY][第20话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c3180050', 21, 1, 'ftp://tv:tv@xlh.2tu.cc:41906/[迅雷下载www.2tu.cc]宠物小精灵XY[第21话].rmvb', 'ed2k', '宠物小精灵XY][第21话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c32a0051', 22, 1, 'ftp://tv:tv@xlh.2tu.cc:41920/[迅雷下载www.2tu.cc]宠物小精灵XY[第22话].rmvb', 'ed2k', '宠物小精灵XY][第22话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c3380052', 23, 1, 'ftp://tv:tv@xlh.2tu.cc:41927/[迅雷下载www.2tu.cc]宠物小精灵XY][第23话].mp4', 'ed2k', '宠物小精灵XY][第23话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c35c0053', 24, 1, 'ftp://tv:tv@xlh.2tu.cc:41950/[迅雷下载www.2tu.cc]宠物小精灵XY][第24话].mp4', 'ed2k', '宠物小精灵XY][第24话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c3680054', 25, 1, 'ftp://tv:tv@xlh.2tu.cc:41933/[迅雷下载www.2tu.cc]宠物小精灵XY][第25话].mp4', 'ed2k', '宠物小精灵XY][第25话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c3760055', 26, 1, 'ftp://tv:tv@xlh.2tu.cc:41950/[迅雷下载www.2tu.cc]宠物小精灵XY][第26话].mp4', 'ed2k', '宠物小精灵XY][第26话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c38a0056', 27, 1, 'ftp://tv:tv@xlh.2tu.cc:41958/[迅雷下载www.2tu.cc]宠物小精灵XY][第27话].mp4', 'ed2k', '宠物小精灵XY][第27话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a0c3970057', 28, 1, 'ftp://tv:tv@xlh.2tu.cc:41966/[迅雷下载www.2tu.cc]宠物小精灵XY][第28话].mp4', 'ed2k', '宠物小精灵XY][第28话].mp4', '2016-10-15 21:56:01', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a125240058', 1, 1, 'ftp://tv:tv@xlh.2tu.cc:41973/[迅雷下载www.2tu.cc]宠物小精灵XY][第29-30话].mp4', 'ed2k', '宠物小精灵XY][第29-30话].mp4', '2016-10-15 21:56:26', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4a91f0059', 31, 1, 'ftp://tv:tv@xlh.2tu.cc:41980/[迅雷下载www.2tu.cc]宠物小精灵XY][第31话].mp4', 'ed2k', '宠物小精灵[第31话].mp4', '2016-10-15 22:00:16', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4a9b8005a', 32, 1, 'ftp://tv:tv@xlh.2tu.cc:41988/[迅雷下载www.2tu.cc]宠物小精灵XY][第32话].mp4', 'ed2k', '宠物小精灵[第32话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4a9e8005b', 33, 1, 'ftp://tv:tv@xlh.2tu.cc:41998/[迅雷下载www.2tu.cc]宠物小精灵XY][第33话].mp4', 'ed2k', '宠物小精灵[第33话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4aa03005c', 34, 1, 'ftp://tv:tv@xlh.2tu.cc:42012/[迅雷下载www.2tu.cc]宠物小精灵XY][第34话].mp4', 'ed2k', '宠物小精灵[第34话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4aa2f005d', 35, 1, 'ftp://tv:tv@xlh.2tu.cc:42020/[迅雷下载www.2tu.cc]宠物小精灵XY][第35话].mp4', 'ed2k', '宠物小精灵[第35话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4aa77005e', 36, 1, 'ftp://ds:ds@xlb.2tu.cc:30080/[迅雷下载www.2tu.cc]宠物小精灵XY][第36话].mp4', 'ed2k', '宠物小精灵[第36话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4aadf005f', 37, 1, 'ftp://tv:tv@xlh.2tu.cc:42041/[迅雷下载www.2tu.cc]宠物小精灵XY][第37话].mp4', 'ed2k', '宠物小精灵[第37话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4aafc0060', 38, 1, 'ftp://tv:tv@xlh.2tu.cc:42048/[迅雷下载www.2tu.cc]宠物小精灵XY][第38话].mp4', 'ed2k', '宠物小精灵[第38话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4ab170061', 39, 1, 'ftp://tv:tv@xlh.2tu.cc:42055/[迅雷下载www.2tu.cc]宠物小精灵XY][第39话].mp4', 'ed2k', '宠物小精灵[第39话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4ab370062', 40, 1, 'ftp://tv:tv@xlh.2tu.cc:42063/[迅雷下载www.2tu.cc]宠物小精灵XY][第40话].mp4', 'ed2k', '宠物小精灵[第40话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4ab590063', 41, 1, 'ftp://tv:tv@xlh.2tu.cc:42069/[迅雷下载www.2tu.cc]宠物小精灵XY][第41话].mp4', 'ed2k', '宠物小精灵[第41话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4ab760064', 42, 1, 'ftp://tv:tv@xlh.2tu.cc:42077/[迅雷下载www.2tu.cc]宠物小精灵XY][第42话].mp4', 'ed2k', '宠物小精灵[第42话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4ab900065', 43, 1, 'ftp://tv:tv@xlh.2tu.cc:42093/[迅雷下载www.2tu.cc]宠物小精灵XY][第43话].mp4', 'ed2k', '宠物小精灵[第43话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4abbf0066', 44, 1, 'ftp://tv:tv@xlh.2tu.cc:42099/[迅雷下载www.2tu.cc]宠物小精灵XY][第44话].mp4', 'ed2k', '宠物小精灵[第44话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4ac1c0067', 45, 1, 'ftp://tv:tv@xlh.2tu.cc:42106/[迅雷下载www.2tu.cc]宠物小精灵XY][第45话].mp4', 'ed2k', '宠物小精灵[第45话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4ac3a0068', 46, 1, 'ftp://tv:tv@xlh.2tu.cc:42113/[迅雷下载www.2tu.cc]宠物小精灵XY][第46话].mp4', 'ed2k', '宠物小精灵[第46话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4ac590069', 47, 1, 'ftp://tv:tv@xlh.2tu.cc:42120/[迅雷下载www.2tu.cc]宠物小精灵XY][第47话].mp4', 'ed2k', '宠物小精灵[第47话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4ac76006a', 48, 1, 'ftp://tv:tv@xlh.2tu.cc:42127/[迅雷下载www.2tu.cc]宠物小精灵XY][第48话].mp4', 'ed2k', '宠物小精灵[第48话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4ac9b006b', 49, 1, 'ftp://tv:tv@xlh.2tu.cc:42134/[迅雷下载www.2tu.cc]宠物小精灵XY][第49话].mp4', 'ed2k', '宠物小精灵[第49话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4acd4006c', 50, 1, 'ftp://tv:tv@xlh.2tu.cc:42147/[迅雷下载www.2tu.cc]宠物小精灵XY][第50话].mp4', 'ed2k', '宠物小精灵[第50话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4ad0b006d', 51, 1, 'ftp://tv:tv@xlh.2tu.cc:42162/[迅雷下载www.2tu.cc]宠物小精灵XY][第51话].mp4', 'ed2k', '宠物小精灵[第51话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4ad29006e', 52, 1, 'ftp://tv:tv@xlh.2tu.cc:42176/[迅雷下载www.2tu.cc]宠物小精灵XY][第52话].mp4', 'ed2k', '宠物小精灵[第52话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4ad94006f', 53, 1, 'ftp://ds:ds@d2.4567.tv:10143/[迅雷下载www.2tu.cc]宠物小精灵XY][第53话].mp4', 'ed2k', '宠物小精灵[第53话].mp4', '2016-10-15 22:00:17', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4adaf0070', 54, 1, 'ftp://tv:tv@xlh.2tu.cc:641/[迅雷下载www.2tu.cc]宠物小精灵[第54话].mp4', 'ed2k', '宠物小精灵[第54话].mp4', '2016-10-15 22:00:18', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4adde0071', 55, 1, 'ftp://tv:tv@xlh.2tu.cc:42204/[迅雷下载www.2tu.cc]宠物小精灵[第55话].mp4', 'ed2k', '宠物小精灵[第55话].mp4', '2016-10-15 22:00:18', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4adfb0072', 56, 1, 'ftp://tv:tv@xlh.2tu.cc:42212/[迅雷下载www.2tu.cc]宠物小精灵[第56话].mp4', 'ed2k', '宠物小精灵[第56话].mp4', '2016-10-15 22:00:18', 'f39c979857c72e810157c87bc86100d3');
INSERT INTO `t_res` VALUES ('f39c979857c888c10157c8a4ae190073', 57, 1, 'ftp://ds:ds@d2.4567.tv:10177/[迅雷下载www.2tu.cc]宠物小精灵[第57话].mp4', 'ed2k', '宠物小精灵[第57话].mp4', '2016-10-15 22:00:18', 'f39c979857c72e810157c87bc86100d3');

-- ----------------------------
-- Table structure for t_subclass
-- ----------------------------
DROP TABLE IF EXISTS `t_subclass`;
CREATE TABLE `t_subclass`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_use` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `catalog_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_dui4eygakshpow7ia82sf0wff`(`catalog_id`) USING BTREE,
  CONSTRAINT `t_subclass_ibfk_1` FOREIGN KEY (`catalog_id`) REFERENCES `t_cate_log` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_subclass
-- ----------------------------
INSERT INTO `t_subclass` VALUES ('f39c979857a4874a0157a4a723560001', 1, '动作片', 'f39c979857a4874a0157a4a6a4fe0000');
INSERT INTO `t_subclass` VALUES ('f39c979857a4c8c50157a8fe00ff001a', 1, '剧情片', 'f39c979857a4874a0157a4a6a4fe0000');
INSERT INTO `t_subclass` VALUES ('f39c979857a4c8c50157ac76b5140027', 1, '恐怖片', 'f39c979857a4874a0157a4a6a4fe0000');
INSERT INTO `t_subclass` VALUES ('f39c979857ad7e8c0157ae8927290011', 1, '喜剧片', 'f39c979857a4874a0157a4a6a4fe0000');
INSERT INTO `t_subclass` VALUES ('f39c979857ad7e8c0157af45971a0018', 1, '科幻片', 'f39c979857a4c8c50157a8ea80700018');
INSERT INTO `t_subclass` VALUES ('f39c979857b48a2a0157b7b0974e0024', 1, '剧情片', 'f39c979857a4c8c50157a8ea80700018');
INSERT INTO `t_subclass` VALUES ('f39c979857b48a2a0157b83af6940044', 1, '科幻片', 'f39c979857a4874a0157a4a6a4fe0000');
INSERT INTO `t_subclass` VALUES ('f39c979857b48a2a0157bdd983220054', 1, '爱情片', 'f39c979857a4874a0157a4a6a4fe0000');
INSERT INTO `t_subclass` VALUES ('f39c979857b48a2a0157be5f224f007a', 1, '剧情片', 'f39c979857a4c8c50157a8eaaee30019');
INSERT INTO `t_subclass` VALUES ('f39c979857b48a2a0157c2c386d600b1', 1, '古装片', 'f39c979857a4c8c50157a8ea80700018');
INSERT INTO `t_subclass` VALUES ('f39c979857b48a2a0157c3053fdc010a', 1, '喜剧片', 'f39c979857a4c8c50157a8ea80700018');
INSERT INTO `t_subclass` VALUES ('f39c979857c72e810157c74e89a8002e', 1, '动画片', 'f39c979857a4c8c50157a8eaaee30019');

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type`  (
  `id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_use` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `subclass_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `FK_1bgyfw3vyq0tadn4wuyykopak`(`subclass_id`) USING BTREE,
  CONSTRAINT `t_type_ibfk_1` FOREIGN KEY (`subclass_id`) REFERENCES `t_subclass` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_type
-- ----------------------------
INSERT INTO `t_type` VALUES ('f39c979857a4c8c50157a8fe5ad8001b', 1, '犯罪片', 'f39c979857a4c8c50157a8fe00ff001a');
INSERT INTO `t_type` VALUES ('f39c979857a4c8c50157ac793ffc0029', 1, '惊悚片', 'f39c979857a4c8c50157ac76b5140027');
INSERT INTO `t_type` VALUES ('f39c979857ad7e8c0157ae5d8ce30008', 1, '情色片', 'f39c979857a4c8c50157a8fe00ff001a');
INSERT INTO `t_type` VALUES ('f39c979857ad7e8c0157ae6ea77a000c', 1, '爱情片', 'f39c979857a4c8c50157a8fe00ff001a');
INSERT INTO `t_type` VALUES ('f39c979857ad7e8c0157af44759b0016', 1, '科幻片', NULL);
INSERT INTO `t_type` VALUES ('f39c979857ad7e8c0157af4c961b001a', 1, '惊悚片', 'f39c979857ad7e8c0157af45971a0018');
INSERT INTO `t_type` VALUES ('f39c979857b48a2a0157b788a8c10003', 1, '爱情片', 'f39c979857ad7e8c0157ae8927290011');
INSERT INTO `t_type` VALUES ('f39c979857b48a2a0157b7a248fb0018', 1, '悬疑片', 'f39c979857ad7e8c0157af45971a0018');
INSERT INTO `t_type` VALUES ('f39c979857b48a2a0157b7b0c3120025', 1, '爱情片', 'f39c979857b48a2a0157b7b0974e0024');
INSERT INTO `t_type` VALUES ('f39c979857b48a2a0157b81d64dd003b', 1, '喜剧片', 'f39c979857a4874a0157a4a723560001');
INSERT INTO `t_type` VALUES ('f39c979857b48a2a0157b83b41680045', 1, '恐怖片', 'f39c979857b48a2a0157b83af6940044');
INSERT INTO `t_type` VALUES ('f39c979857b48a2a0157bdc2b98c004e', 1, '灾难片', 'f39c979857b48a2a0157b83af6940044');
INSERT INTO `t_type` VALUES ('f39c979857b48a2a0157bdd9e3b10055', 1, '科幻片', 'f39c979857b48a2a0157bdd983220054');
INSERT INTO `t_type` VALUES ('f39c979857b48a2a0157be5f4bd0007b', 1, '武侠片', 'f39c979857b48a2a0157be5f224f007a');
INSERT INTO `t_type` VALUES ('f39c979857b48a2a0157bebe075200a1', 1, '家庭片', 'f39c979857a4c8c50157a8fe00ff001a');
INSERT INTO `t_type` VALUES ('f39c979857b48a2a0157c2c3c94e00b2', 1, '武侠片', 'f39c979857b48a2a0157c2c386d600b1');
INSERT INTO `t_type` VALUES ('f39c979857b48a2a0157c2c3f42800b3', 1, '奇幻片', 'f39c979857b48a2a0157c2c386d600b1');
INSERT INTO `t_type` VALUES ('f39c979857b48a2a0157c2f13a6d00f1', 1, '犯罪片', 'f39c979857b48a2a0157b7b0974e0024');
INSERT INTO `t_type` VALUES ('f39c979857b48a2a0157c30a04e7010b', 1, '奇幻片', 'f39c979857b48a2a0157c3053fdc010a');
INSERT INTO `t_type` VALUES ('f39c979857c72e810157c74ee3f80030', 1, '内详', 'f39c979857c72e810157c74e89a8002e');
INSERT INTO `t_type` VALUES ('f39c979857c72e810157c75d1583003f', 1, '动作片', 'f39c979857a4c8c50157a8fe00ff001a');
INSERT INTO `t_type` VALUES ('f39c979857c72e810157c75d80c80040', 1, '动作片', 'f39c979857b48a2a0157be5f224f007a');
INSERT INTO `t_type` VALUES ('f39c979857c72e810157c77eac7d0054', 1, '喜剧片', 'f39c979857c72e810157c74e89a8002e');
INSERT INTO `t_type` VALUES ('f39c979857c72e810157c784d4f70056', 1, '奇幻片', 'f39c979857ad7e8c0157ae8927290011');
INSERT INTO `t_type` VALUES ('f39c979857c72e810157c814e869005a', 1, '格斗片', 'f39c979857b48a2a0157b83af6940044');
INSERT INTO `t_type` VALUES ('f39c979857c72e810157c81a48f4006a', 1, '格斗片', 'f39c979857ad7e8c0157af45971a0018');
INSERT INTO `t_type` VALUES ('f39c979857c72e810157c822a1cf006b', 1, '格斗片', 'f39c979857c72e810157c74e89a8002e');
INSERT INTO `t_type` VALUES ('f39c979857c72e810157c8269392006c', 1, '惊悚片', 'f39c979857c72e810157c74e89a8002e');
INSERT INTO `t_type` VALUES ('f39c979857c72e810157c82d5f250080', 1, '动作片', 'f39c979857c72e810157c74e89a8002e');
INSERT INTO `t_type` VALUES ('f39c979857c72e810157c8319d420081', 1, '科幻片', 'f39c979857c72e810157c74e89a8002e');
INSERT INTO `t_type` VALUES ('f39c979857c72e810157c83fd8d10098', 1, '冒险片', 'f39c979857b48a2a0157be5f224f007a');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_login` datetime(6) NULL DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NULL,
  `expire_date` datetime(6) NULL DEFAULT NULL,
  `is_vip` bigint(20) NOT NULL,
  `is_manager` int(11) NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (10, 'pbkdf2_sha256$36000$h5PniLlQoF9l$Xj/UA7KgixruFdvJ0nWBOqT9U1N/qZd04VOTO2YM9MI=', '2018-11-26 13:10:49.852403', 0, 'jxk', '', '', 'm17538238049@163.com', 0, 1, '2018-11-24 17:24:08.481832', NULL, 0, NULL, '18537642521');

-- ----------------------------
-- Table structure for t_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `t_user_groups`;
CREATE TABLE `t_user_groups`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `t_user_groups_tuser_id_group_id_31443fc3_uniq`(`tuser_id`, `group_id`) USING BTREE,
  INDEX `t_user_groups_group_id_9bc1d710_fk_auth_group_id`(`group_id`) USING BTREE,
  CONSTRAINT `t_user_groups_group_id_9bc1d710_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_user_groups_tuser_id_d2abad4c_fk_t_user_id` FOREIGN KEY (`tuser_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `t_user_user_permissions`;
CREATE TABLE `t_user_user_permissions`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `t_user_user_permissions_tuser_id_permission_id_16150fe1_uniq`(`tuser_id`, `permission_id`) USING BTREE,
  INDEX `t_user_user_permissi_permission_id_2fd0b058_fk_auth_perm`(`permission_id`) USING BTREE,
  CONSTRAINT `t_user_user_permissi_permission_id_2fd0b058_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_user_user_permissions_tuser_id_3eb33704_fk_t_user_id` FOREIGN KEY (`tuser_id`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for t_vipcode
-- ----------------------------
DROP TABLE IF EXISTS `t_vipcode`;
CREATE TABLE `t_vipcode`  (
  `id` varchar(225) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `code` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `is_use` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `expire_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_vipcode
-- ----------------------------
INSERT INTO `t_vipcode` VALUES ('05ed1054fb0762514e0e8b0b0b7d4e17', '3D3ADC1B704FF0AC8C3DC313B5CB01F3', '1', '2018-05-11 15:51:41', '2018-05-11 15:51:41');
INSERT INTO `t_vipcode` VALUES ('065d81dcc4f59a98ba59211ae6a0c30c', '4CC402233772EFE28C89BA232E0950A1', '1', '2018-05-11 15:51:41', '2018-05-11 15:51:41');
INSERT INTO `t_vipcode` VALUES ('252121a85bd4fdcba1bf3a4cadcfb597', '6A9A2EF21C04CCB71FBD484711389640', '1', '2018-05-11 15:51:41', '2018-05-11 15:51:41');
INSERT INTO `t_vipcode` VALUES ('402881e8651518890165152d7dfd0002', '2751C52DCE6D4953B78F74E94749BE4A', '1', '2018-08-08 00:17:07', '2018-08-08 00:17:07');
INSERT INTO `t_vipcode` VALUES ('402881e8651518890165152d7dfd0003', 'DF52387923BD46C8AD984FDE35AC9F33', '1', '2018-08-08 00:17:07', '2018-08-08 00:17:07');
INSERT INTO `t_vipcode` VALUES ('402881e8651518890165152d7dfd0004', 'A2A2F320ACD847648BD3055081C2AAD1', '1', '2018-08-08 00:17:07', '2018-08-08 00:17:07');
INSERT INTO `t_vipcode` VALUES ('402881e8651518890165152d7dfe0005', '813A0ECDACE8499BB5C2F0BC4BF5BB2B', '1', '2018-08-08 00:17:07', '2018-08-08 00:17:07');
INSERT INTO `t_vipcode` VALUES ('402881e8651518890165152d7dfe0006', 'B4988A1AC07142A5836FB3806F578A82', '1', '2018-08-08 00:17:07', '2018-08-08 00:17:07');
INSERT INTO `t_vipcode` VALUES ('d4ee751208daa8d8bef3ca29d086fa92', '07999C1C4CBAEEEA127B11AD9731B312', '1', '2018-05-11 15:51:41', '2018-05-11 15:51:41');
INSERT INTO `t_vipcode` VALUES ('dc3c54c81c8e2d4b208cae74d70e93e1', '08EDC174726E4C84A9FDF904B90578E5', '1', '2018-05-11 15:51:41', '2018-05-11 15:51:41');

SET FOREIGN_KEY_CHECKS = 1;
