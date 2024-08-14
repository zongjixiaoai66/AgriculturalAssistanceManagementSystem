/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t341`;
CREATE DATABASE IF NOT EXISTS `t341` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t341`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1222', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-03-04 05:39:35'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-03-04 05:39:35'),
	(3, 'ewaishouru_types', '是否有额外收入', 1, '无', NULL, NULL, '2023-03-04 05:39:35'),
	(4, 'ewaishouru_types', '是否有额外收入', 2, '有', NULL, NULL, '2023-03-04 05:39:35'),
	(5, 'yunshukunnan_types', '是否存在运输困难', 1, '不存在', NULL, NULL, '2023-03-04 05:39:35'),
	(6, 'yunshukunnan_types', '是否存在运输困难', 2, '存在', NULL, NULL, '2023-03-04 05:39:35'),
	(7, 'cangku_types', '仓库', 1, '仓库1', NULL, NULL, '2023-03-04 05:39:35'),
	(8, 'cangku_types', '仓库', 2, '仓库2', NULL, NULL, '2023-03-04 05:39:35'),
	(9, 'cangku_types', '仓库', 3, '仓库3', NULL, NULL, '2023-03-04 05:39:35'),
	(10, 'nongchanpin_types', '农产品类型', 1, '农产品类型1', NULL, NULL, '2023-03-04 05:39:35'),
	(11, 'nongchanpin_types', '农产品类型', 2, '农产品类型2', NULL, NULL, '2023-03-04 05:39:35'),
	(12, 'nongchanpin_types', '农产品类型', 3, '农产品类型3', NULL, NULL, '2023-03-04 05:39:35'),
	(13, 'nongchanpin_types', '农产品类型', 4, '农产品类型4', NULL, NULL, '2023-03-04 05:39:35'),
	(14, 'nongchanpin_xiaoshou_types', '销售类型', 1, '线上推广销售', NULL, NULL, '2023-03-04 05:39:35'),
	(15, 'nongchanpin_xiaoshou_types', '销售类型', 2, '线下摆摊', NULL, NULL, '2023-03-04 05:39:35'),
	(16, 'nongchanpin_xiaoshou_types', '销售类型', 3, '线下批发', NULL, NULL, '2023-03-04 05:39:35'),
	(17, 'nongchanpin_xiaoshou_types', '销售类型', 4, '政府采购', NULL, NULL, '2023-03-04 05:39:35'),
	(18, 'nongchanpin_xiaoshou_types', '销售类型', 5, '其他', NULL, NULL, '2023-03-04 05:39:35'),
	(19, 'gonggao_types', '助农政策类型', 1, '助农政策类型1', NULL, NULL, '2023-03-04 05:39:35'),
	(20, 'gonggao_types', '助农政策类型', 2, '助农政策类型2', NULL, NULL, '2023-03-04 05:39:35'),
	(21, 'news_types', '农产品经济数据类型', 1, '农产品经济数据类型1', NULL, NULL, '2023-03-04 05:39:36'),
	(22, 'news_types', '农产品经济数据类型', 2, '农产品经济数据类型2', NULL, NULL, '2023-03-04 05:39:36'),
	(23, 'single_seach_types', '单页数据类型', 1, '网站介绍', NULL, NULL, '2023-03-04 05:39:36'),
	(24, 'single_seach_types', '单页数据类型', 2, '助农报名', NULL, NULL, '2023-03-04 05:39:36'),
	(25, 'news_types', '农产品经济数据类型', 3, '经济数据类型3', NULL, '', '2023-03-04 06:35:52');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '助农政策名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '助农政策图片 ',
  `gonggao_types` int NOT NULL COMMENT '助农政策类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '助农政策发布时间 ',
  `gonggao_content` text COMMENT '助农政策详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='助农政策';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '助农政策名称1', 'upload/gonggao1.jpg', 2, '2023-03-04 05:39:42', '助农政策详情1', '2023-03-04 05:39:42'),
	(2, '助农政策名称2', 'upload/gonggao2.jpg', 1, '2023-03-04 05:39:42', '助农政策详情2', '2023-03-04 05:39:42'),
	(3, '助农政策名称3', 'upload/gonggao3.jpg', 1, '2023-03-04 05:39:42', '助农政策详情3', '2023-03-04 05:39:42'),
	(4, '助农政策名称4', 'upload/gonggao4.jpg', 2, '2023-03-04 05:39:42', '助农政策详情4', '2023-03-04 05:39:42'),
	(5, '助农政策名称5', 'upload/gonggao5.jpg', 2, '2023-03-04 05:39:42', '助农政策详情5', '2023-03-04 05:39:42'),
	(6, '助农政策名称6', 'upload/gonggao6.jpg', 1, '2023-03-04 05:39:42', '助农政策详情6', '2023-03-04 05:39:42'),
	(7, '助农政策名称7', 'upload/gonggao7.jpg', 1, '2023-03-04 05:39:42', '助农政策详情7', '2023-03-04 05:39:42'),
	(8, '助农政策名称8', 'upload/gonggao8.jpg', 2, '2023-03-04 05:39:42', '助农政策详情8', '2023-03-04 05:39:42'),
	(9, '助农政策名称9', 'upload/gonggao9.jpg', 2, '2023-03-04 05:39:42', '助农政策详情9', '2023-03-04 05:39:42'),
	(10, '助农政策名称10', 'upload/gonggao10.jpg', 2, '2023-03-04 05:39:42', '助农政策详情10', '2023-03-04 05:39:42'),
	(11, '助农政策名称11', 'upload/gonggao11.jpg', 1, '2023-03-04 05:39:42', '助农政策详情11', '2023-03-04 05:39:42'),
	(12, '助农政策名称12', 'upload/gonggao12.jpg', 1, '2023-03-04 05:39:42', '助农政策详情12', '2023-03-04 05:39:42'),
	(13, '助农政策名称13', 'upload/gonggao13.jpg', 1, '2023-03-04 05:39:42', '助农政策详情13', '2023-03-04 05:39:42'),
	(14, '助农政策名称14', 'upload/gonggao14.jpg', 2, '2023-03-04 05:39:42', '助农政策详情14', '2023-03-04 05:39:42');

DROP TABLE IF EXISTS `gongzuorenyuan`;
CREATE TABLE IF NOT EXISTS `gongzuorenyuan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `gongzuorenyuan_name` varchar(200) DEFAULT NULL COMMENT '工作人员姓名 Search111 ',
  `gongzuorenyuan_phone` varchar(200) DEFAULT NULL COMMENT '工作人员手机号',
  `gongzuorenyuan_id_number` varchar(200) DEFAULT NULL COMMENT '工作人员身份证号',
  `gongzuorenyuan_photo` varchar(200) DEFAULT NULL COMMENT '工作人员头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `gongzuorenyuan_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='工作人员';

DELETE FROM `gongzuorenyuan`;
INSERT INTO `gongzuorenyuan` (`id`, `username`, `password`, `gongzuorenyuan_name`, `gongzuorenyuan_phone`, `gongzuorenyuan_id_number`, `gongzuorenyuan_photo`, `sex_types`, `gongzuorenyuan_email`, `create_time`) VALUES
	(1, '工作人员1', '123456', '工作人员姓名1', '17703786901', '410224199010102001', 'upload/gongzuorenyuan1.jpg', 1, '1@qq.com', '2023-03-04 05:39:42'),
	(2, '工作人员2', '123456', '工作人员姓名2', '17703786902', '410224199010102002', 'upload/gongzuorenyuan2.jpg', 2, '2@qq.com', '2023-03-04 05:39:42'),
	(3, '工作人员3', '123456', '工作人员姓名3', '17703786903', '410224199010102003', 'upload/gongzuorenyuan3.jpg', 2, '3@qq.com', '2023-03-04 05:39:42');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '农产品经济数据标题 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '农产品经济数据封面',
  `news_types` int NOT NULL COMMENT '农产品经济数据类型 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间 ',
  `news_content` text COMMENT '农产品经济数据内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='农产品经济数据信息';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `news_name`, `news_photo`, `news_types`, `insert_time`, `news_content`, `create_time`) VALUES
	(1, '农产品经济数据标题1', 'upload/news1.jpg', 2, '2023-03-04 05:39:42', '农产品经济数据内容1', '2023-03-04 05:39:42'),
	(2, '农产品经济数据标题2', 'upload/news2.jpg', 2, '2023-03-04 05:39:42', '农产品经济数据内容2', '2023-03-04 05:39:42'),
	(3, '农产品经济数据标题3', 'upload/news3.jpg', 2, '2023-03-04 05:39:42', '农产品经济数据内容3', '2023-03-04 05:39:42'),
	(4, '农产品经济数据标题4', 'upload/news4.jpg', 1, '2023-03-04 05:39:42', '农产品经济数据内容4', '2023-03-04 05:39:42'),
	(5, '农产品经济数据标题5', 'upload/news5.jpg', 1, '2023-03-04 05:39:42', '农产品经济数据内容5', '2023-03-04 05:39:42'),
	(6, '农产品经济数据标题6', 'upload/news6.jpg', 2, '2023-03-04 05:39:42', '农产品经济数据内容6', '2023-03-04 05:39:42'),
	(7, '农产品经济数据标题7', 'upload/news7.jpg', 2, '2023-03-04 05:39:42', '农产品经济数据内容7', '2023-03-04 05:39:42'),
	(8, '农产品经济数据标题8', 'upload/news8.jpg', 1, '2023-03-04 05:39:42', '农产品经济数据内容8', '2023-03-04 05:39:42'),
	(9, '农产品经济数据标题9', 'upload/news9.jpg', 1, '2023-03-04 05:39:42', '农产品经济数据内容9', '2023-03-04 05:39:42'),
	(10, '农产品经济数据标题10', 'upload/news10.jpg', 2, '2023-03-04 05:39:42', '农产品经济数据内容10', '2023-03-04 05:39:42'),
	(11, '农产品经济数据标题11', 'upload/news11.jpg', 2, '2023-03-04 05:39:42', '农产品经济数据内容11', '2023-03-04 05:39:42'),
	(12, '农产品经济数据标题12', 'upload/news12.jpg', 2, '2023-03-04 05:39:42', '农产品经济数据内容12', '2023-03-04 05:39:42'),
	(13, '农产品经济数据标题13', 'upload/news13.jpg', 1, '2023-03-04 05:39:42', '农产品经济数据内容13', '2023-03-04 05:39:42'),
	(14, '农产品经济数据标题14', 'upload/news14.jpg', 2, '2023-03-04 05:39:42', '<p>农产更好地施工方第三个品经济数据内容14</p>', '2023-03-04 05:39:42');

DROP TABLE IF EXISTS `nongchanpin`;
CREATE TABLE IF NOT EXISTS `nongchanpin` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `pinkunhu_id` int DEFAULT NULL,
  `nongchanpin_name` varchar(200) DEFAULT NULL COMMENT '农产品名称  Search111 ',
  `nongchanpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '农产品编号',
  `nongchanpin_photo` varchar(200) DEFAULT NULL COMMENT '农产品照片',
  `nongchanpin_address` varchar(200) DEFAULT NULL COMMENT '产出地',
  `nongchanpin_types` int DEFAULT NULL COMMENT '农产品类型 Search111',
  `nongchanpin_kucun_number` int DEFAULT NULL COMMENT '农产品库存',
  `nongchanpin_caigou_jine` decimal(10,2) DEFAULT NULL COMMENT '采购价',
  `nongchanpin_new_jine` decimal(10,2) DEFAULT NULL COMMENT '销售价',
  `cangku_types` int DEFAULT NULL COMMENT '所属仓库 Search111',
  `nongchanpin_content` text COMMENT '产品介绍 ',
  `nongchanpin_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='农产品';

DELETE FROM `nongchanpin`;
INSERT INTO `nongchanpin` (`id`, `pinkunhu_id`, `nongchanpin_name`, `nongchanpin_uuid_number`, `nongchanpin_photo`, `nongchanpin_address`, `nongchanpin_types`, `nongchanpin_kucun_number`, `nongchanpin_caigou_jine`, `nongchanpin_new_jine`, `cangku_types`, `nongchanpin_content`, `nongchanpin_delete`, `create_time`) VALUES
	(1, 1, '农产品名称1', '1677908383024', 'upload/nongchanpin1.jpg', '产出地1', 1, 92, 206.65, 312.20, 2, '产品介绍1', 1, '2023-03-04 05:39:42'),
	(2, 2, '农产品名称2', '1677908383082', 'upload/nongchanpin2.jpg', '产出地2', 3, 102, 206.65, 932.04, 2, '产品介绍2', 1, '2023-03-04 05:39:42'),
	(3, 2, '农产品名称3', '1677908383073', 'upload/nongchanpin3.jpg', '产出地3', 1, 103, 206.65, 482.52, 3, '产品介绍3', 1, '2023-03-04 05:39:42'),
	(4, 2, '农产品名称4', '1677908383006', 'upload/nongchanpin4.jpg', '产出地4', 3, 104, 146.32, 196.19, 1, '产品介绍4', 1, '2023-03-04 05:39:42'),
	(5, 2, '农产品名称5', '1677908383082', 'upload/nongchanpin5.jpg', '产出地5', 1, 105, 146.32, 908.89, 1, '产品介绍5', 1, '2023-03-04 05:39:42'),
	(6, 2, '农产品名称6', '1677908383040', 'upload/nongchanpin6.jpg', '产出地6', 3, 105, 146.32, 800.26, 1, '产品介绍6', 1, '2023-03-04 05:39:42'),
	(7, 3, '农产品名称7', '1677908383066', 'upload/nongchanpin7.jpg', '产出地7', 3, 107, 146.32, 741.93, 1, '产品介绍7', 1, '2023-03-04 05:39:42'),
	(8, 3, '农产品名称8', '1677908383050', 'upload/nongchanpin8.jpg', '产出地8', 4, 108, 146.32, 159.15, 3, '产品介绍8', 1, '2023-03-04 05:39:42'),
	(9, 3, '农产品名称9', '1677908383085', 'upload/nongchanpin9.jpg', '产出地9', 3, 109, 206.65, 532.88, 2, '产品介绍9', 1, '2023-03-04 05:39:42'),
	(10, 3, '农产品名称10', '1677908383067', 'upload/nongchanpin10.jpg', '产出地10', 3, 1010, 206.65, 911.36, 3, '产品介绍10', 1, '2023-03-04 05:39:42'),
	(11, 3, '农产品名称11', '1677908383027', 'upload/nongchanpin11.jpg', '产出地11', 4, 1011, 206.65, 341.71, 1, '产品介绍11', 1, '2023-03-04 05:39:42'),
	(12, 2, '农产品名称12', '1677908383076', 'upload/nongchanpin12.jpg', '产出地12', 4, 1010, 324.61, 656.99, 3, '产品介绍12', 1, '2023-03-04 05:39:42'),
	(13, 2, '农产品名称13', '1677908383004', 'upload/nongchanpin13.jpg', '产出地13', 1, 1013, 214.13, 649.11, 3, '产品介绍13', 1, '2023-03-04 05:39:42'),
	(14, 2, '农产品名称14', '1677908383079', 'upload/nongchanpin14.jpg', '产出地14', 3, 1010, 146.32, 142.30, 1, '产品介绍14', 1, '2023-03-04 05:39:42');

DROP TABLE IF EXISTS `nongchanpin_xiaoshou`;
CREATE TABLE IF NOT EXISTS `nongchanpin_xiaoshou` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `nongchanpin_xiaoshou_uuid_number` varchar(200) DEFAULT NULL COMMENT '销售编号 Search111 ',
  `gongzuorenyuan_id` int DEFAULT NULL COMMENT '工作人员',
  `nongchanpin_id` int DEFAULT NULL COMMENT '农产品',
  `buy_number` int DEFAULT NULL COMMENT '销售数量',
  `nongchanpin_xiaoshou_xiaoshouzonge` decimal(10,2) DEFAULT NULL COMMENT '销售总额',
  `nongchanpin_xiaoshou_lirun` decimal(10,2) DEFAULT NULL COMMENT '本次利润',
  `nongchanpin_xiaoshou_types` int DEFAULT NULL COMMENT '销售类型 Search111',
  `xiaoshou_time` timestamp NULL DEFAULT NULL COMMENT '销售时间',
  `nongchanpin_xiaoshou_content` text COMMENT '销售备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COMMENT='农产品售卖';

DELETE FROM `nongchanpin_xiaoshou`;
INSERT INTO `nongchanpin_xiaoshou` (`id`, `nongchanpin_xiaoshou_uuid_number`, `gongzuorenyuan_id`, `nongchanpin_id`, `buy_number`, `nongchanpin_xiaoshou_xiaoshouzonge`, `nongchanpin_xiaoshou_lirun`, `nongchanpin_xiaoshou_types`, `xiaoshou_time`, `nongchanpin_xiaoshou_content`, `insert_time`, `create_time`) VALUES
	(15, '1677910314419', 1, 12, 2, 1313.98, 664.76, 3, '2023-03-04 06:23:42', '<p>发广东省格式个</p>', '2023-03-04 06:23:44', '2023-03-04 06:23:44'),
	(16, '1677911096955', 1, 14, 4, 569.20, 16.08, 4, '2023-03-04 06:25:05', '<p>话费电话费的</p>', '2023-03-04 06:25:08', '2023-03-04 06:25:08'),
	(17, '1677911203107', 1, 1, 9, 2809.80, 949.95, 4, '2023-03-04 06:26:51', '<p>广东省格式</p>', '2023-03-04 06:26:54', '2023-03-04 06:26:54'),
	(18, '1677911863095', 1, 6, 1, 800.26, 653.94, 3, '2023-03-04 06:37:53', '<p>广东发生过的</p>', '2023-03-04 06:38:05', '2023-03-04 06:38:05');

DROP TABLE IF EXISTS `pinkunhu`;
CREATE TABLE IF NOT EXISTS `pinkunhu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `gongzuorenyuan_id` int DEFAULT NULL COMMENT '工作人员',
  `pinkunhu_name` varchar(200) DEFAULT NULL COMMENT '姓名 Search111 ',
  `pinkunhu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `pinkunhu_address` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `pinkunhu_id_number` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `pinkunhu_photo` varchar(200) DEFAULT NULL COMMENT '贫困户照片',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `pinkunhu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `pinkunhu_chengyuan_text` text COMMENT '家庭成员',
  `yonghu_nianshouru` decimal(10,2) DEFAULT NULL COMMENT '年收入',
  `ewaishouru_types` int DEFAULT NULL COMMENT '是否有额外收入',
  `yunshukunnan_types` int DEFAULT NULL COMMENT '是否存在运输困难',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='贫困户';

DELETE FROM `pinkunhu`;
INSERT INTO `pinkunhu` (`id`, `username`, `password`, `gongzuorenyuan_id`, `pinkunhu_name`, `pinkunhu_phone`, `pinkunhu_address`, `pinkunhu_id_number`, `pinkunhu_photo`, `sex_types`, `pinkunhu_email`, `pinkunhu_chengyuan_text`, `yonghu_nianshouru`, `ewaishouru_types`, `yunshukunnan_types`, `create_time`) VALUES
	(1, '用户1', '123456', 1, '姓名1', '17703786901', '身份证号1', '410224199010102001', 'upload/pinkunhu1.jpg', 2, '1@qq.com', '家庭成员1', 60.83, 2, 2, '2023-03-04 05:39:42'),
	(2, '用户2', '123456', 1, '姓名2', '17703786902', '身份证号2', '410224199010102002', 'upload/pinkunhu2.jpg', 1, '2@qq.com', '家庭成员2广东人三个地方', 878.81, 2, 1, '2023-03-04 05:39:42'),
	(3, '用户3', '123456', 2, '姓名3', '17703786903', '身份证号3', '410224199010102003', 'upload/pinkunhu3.jpg', 1, '3@qq.com', '家庭成员3', 334.43, 1, 1, '2023-03-04 05:39:42');

DROP TABLE IF EXISTS `single_seach`;
CREATE TABLE IF NOT EXISTS `single_seach` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int DEFAULT NULL COMMENT '数据类型',
  `single_seach_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `single_seach_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='单页数据';

DELETE FROM `single_seach`;
INSERT INTO `single_seach` (`id`, `single_seach_name`, `single_seach_types`, `single_seach_photo`, `single_seach_content`, `create_time`) VALUES
	(1, '网站介绍', 1, '/upload/1677909000887.jpg', '<p>	北京华夏助农科技有限公司（简称“华夏助农”），注册资金5000万元，与守农扶贫基金会和多家农村合作社强强联合，以现代农业产业为核心，积极探索产业扶贫新模式，促进贫困人口就业创业，加快脱贫致富步伐。</p><p>	实业强则中国强。目前企业旗下拥有水果生产基地超过万亩，技术服务托管合作的生产基地超过三十万亩。华夏助农以亚热带水果种植为核心基础，从“种苗、农资、亚热带水果种植基地、线上app+线下社区生鲜连锁店销售”整条现代农业供应链入手，通过带资金、带技术、带管理、带积极向上的文化到贫困村，能真正把技术转化成经济成果，带领农民脱贫致富，带动农村特色产业发展；并以农业为基础的产业融合，加速中国现代化农业产业的发展。</p>', '2023-03-04 05:51:31'),
	(2, '助农报名', 2, '/upload/1677909104914.jpg', '<p>北京报名电话:17703786991</p><p>北京线下报名地址:地址***********</p><p><br></p><p>上海报名电话:17703786991</p><p>上海线下报名地址:地址***********</p><p><br></p><p>杭州报名电话:17703786991</p><p>杭州线下报名地址:地址***********</p><p><br></p><p>深圳报名电话:17703786991</p><p>深圳线下报名地址:地址***********</p>', '2023-03-04 05:52:57');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '学生id',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '8n8hqztwnnc1alw2wruqdznj7yw07zp9', '2023-03-04 05:42:18', '2024-08-04 06:11:58'),
	(2, 1, 'a1', 'pinkunhu', '贫困户', '4xobeyjrxsw1jescqmhoa2nkvt8fg5qe', '2023-03-04 05:49:14', '2024-08-04 06:13:01'),
	(3, 1, 'a1', 'gongzuorenyuan', '工作人员', '9pvb592vfcn54uunhvm9lujc7yqez82v', '2023-03-04 05:58:04', '2024-08-04 06:12:45'),
	(4, 2, 'a2', 'pinkunhu', '贫困户', '7lo2fl996we4n5rwvbqrvr47gr3s2s9i', '2023-03-04 06:35:13', '2023-03-04 07:35:14');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '学生名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-04 05:39:35');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
