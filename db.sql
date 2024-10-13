/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - minsuzulinxitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`minsuzulinxitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `minsuzulinxitong`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='在线投诉反馈';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'111111111','2023-03-02 17:33:39',NULL,NULL,2,1,'2023-03-02 17:33:39'),(2,1,NULL,NULL,'回复111111111111','2023-03-02 17:33:49',NULL,2,'2023-03-02 17:33:50');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (38,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-03-02 16:12:14'),(39,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-03-02 16:12:14'),(40,'minsu_types','民宿类型',1,'民宿类型1',NULL,NULL,'2023-03-02 16:12:14'),(41,'minsu_types','民宿类型',2,'民宿类型2',NULL,NULL,'2023-03-02 16:12:14'),(42,'minsu_types','民宿类型',3,'民宿类型3',NULL,NULL,'2023-03-02 16:12:14'),(43,'minsu_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-03-02 16:12:14'),(44,'minsu_order_types','订单类型',101,'已预定',NULL,NULL,'2023-03-02 16:12:15'),(45,'minsu_order_types','订单类型',102,'退订',NULL,NULL,'2023-03-02 16:12:15'),(46,'minsu_order_types','订单类型',103,'已完成',NULL,NULL,'2023-03-02 16:12:15'),(47,'minsu_order_types','订单类型',105,'已评价',NULL,NULL,'2023-03-02 16:12:15'),(48,'minsu_order_payment_types','订单支付类型',1,'现金',NULL,NULL,'2023-03-02 16:12:15'),(49,'shangjia_xingji_types','商家信用类型',1,'一级',NULL,NULL,'2023-03-02 16:12:15'),(50,'shangjia_xingji_types','商家信用类型',2,'二级',NULL,NULL,'2023-03-02 16:12:15'),(51,'shangjia_xingji_types','商家信用类型',3,'三级',NULL,NULL,'2023-03-02 16:12:15'),(52,'chat_types','数据类型',1,'问题',NULL,NULL,'2023-03-02 16:12:15'),(53,'chat_types','数据类型',2,'回复',NULL,NULL,'2023-03-02 16:12:15'),(54,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-03-02 16:12:15'),(55,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-03-02 16:12:15'),(56,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-02 16:12:15'),(57,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-02 16:12:15'),(58,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-02 16:12:15'),(59,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-02 16:12:15'),(60,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-02 16:12:15'),(61,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-02 16:12:15');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`shangjia_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,NULL,'发布内容1',56,1,'2023-03-02 16:12:50','2023-03-02 16:12:50','2023-03-02 16:12:50'),(2,'帖子标题2',1,NULL,NULL,'发布内容2',132,1,'2023-03-02 16:12:50','2023-03-02 16:12:50','2023-03-02 16:12:50'),(3,'帖子标题3',1,NULL,NULL,'发布内容3',397,1,'2023-03-02 16:12:50','2023-03-02 16:12:50','2023-03-02 16:12:50'),(4,'帖子标题4',1,NULL,NULL,'发布内容4',174,1,'2023-03-02 16:12:50','2023-03-02 16:12:50','2023-03-02 16:12:50'),(5,'帖子标题5',2,NULL,NULL,'发布内容5',287,1,'2023-03-02 16:12:50','2023-03-02 16:12:50','2023-03-02 16:12:50'),(6,'帖子标题6',1,NULL,NULL,'发布内容6',356,1,'2023-03-02 16:12:50','2023-03-02 16:12:50','2023-03-02 16:12:50'),(7,'帖子标题7',2,NULL,NULL,'发布内容7',462,1,'2023-03-02 16:12:50','2023-03-02 16:12:50','2023-03-02 16:12:50'),(8,'帖子标题8',2,NULL,NULL,'发布内容8',453,1,'2023-03-02 16:12:50','2023-03-02 16:12:50','2023-03-02 16:12:50'),(9,'帖子标题9',2,NULL,NULL,'发布内容9',94,1,'2023-03-02 16:12:50','2023-03-02 16:12:50','2023-03-02 16:12:50'),(10,'帖子标题10',1,NULL,NULL,'发布内容10',499,1,'2023-03-02 16:12:50','2023-03-02 16:12:50','2023-03-02 16:12:50'),(11,'帖子标题11',1,NULL,NULL,'发布内容11',305,1,'2023-03-02 16:12:50','2023-03-02 16:12:50','2023-03-02 16:12:50'),(12,'帖子标题12',2,NULL,NULL,'发布内容12',289,1,'2023-03-02 16:12:50','2023-03-02 16:12:50','2023-03-02 16:12:50'),(13,'帖子标题13',3,NULL,NULL,'发布内容13',99,1,'2023-03-02 16:12:50','2023-03-02 16:12:50','2023-03-02 16:12:50'),(14,'帖子标题14',3,NULL,NULL,'发布内容14',64,1,'2023-03-02 16:12:50','2023-03-02 16:12:50','2023-03-02 16:12:50'),(15,NULL,1,NULL,NULL,'123123',14,2,'2023-03-02 17:32:09',NULL,'2023-03-02 17:32:09'),(16,NULL,NULL,1,NULL,'123123',14,2,'2023-03-02 17:32:58',NULL,'2023-03-02 17:32:58'),(17,NULL,NULL,NULL,1,'12312',14,2,'2023-03-02 17:33:59',NULL,'2023-03-02 17:33:59');

/*Table structure for table `minsu` */

DROP TABLE IF EXISTS `minsu`;

CREATE TABLE `minsu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `minsu_name` varchar(200) DEFAULT NULL COMMENT '房间名称 Search111',
  `minsu_photo` varchar(200) DEFAULT NULL COMMENT '房间照片',
  `minsu_types` int(11) DEFAULT NULL COMMENT '房间类型 Search111',
  `minsu_new_money` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `minsu_clicknum` int(11) DEFAULT NULL COMMENT '点击次数',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `minsu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `minsu_content` text COMMENT '民宿简介 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow homeMain',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='民宿信息';

/*Data for the table `minsu` */

insert  into `minsu`(`id`,`shangjia_id`,`minsu_name`,`minsu_photo`,`minsu_types`,`minsu_new_money`,`minsu_clicknum`,`shangxia_types`,`minsu_delete`,`minsu_content`,`create_time`) values (1,1,'房间名称1','upload/minsu1.jpg',2,'201.30',440,1,1,'民宿简介1','2023-03-02 16:12:50'),(2,1,'房间名称2','upload/minsu2.jpg',1,'218.69',400,1,1,'民宿简介2','2023-03-02 16:12:50'),(3,1,'房间名称3','upload/minsu3.jpg',3,'192.73',408,1,1,'民宿简介3','2023-03-02 16:12:50'),(4,3,'房间名称4','upload/minsu4.jpg',2,'193.53',413,1,1,'民宿简介4','2023-03-02 16:12:50'),(5,2,'房间名称5','upload/minsu5.jpg',1,'160.70',23,1,1,'民宿简介5','2023-03-02 16:12:50'),(6,1,'房间名称6','upload/minsu6.jpg',1,'380.28',27,1,1,'民宿简介6','2023-03-02 16:12:50'),(7,1,'房间名称7','upload/minsu7.jpg',2,'329.70',488,1,1,'民宿简介7','2023-03-02 16:12:50'),(8,3,'房间名称8','upload/minsu8.jpg',1,'488.14',208,1,1,'民宿简介8','2023-03-02 16:12:50'),(9,3,'房间名称9','upload/minsu9.jpg',1,'489.91',310,1,1,'民宿简介9','2023-03-02 16:12:50'),(10,3,'房间名称10','upload/minsu10.jpg',2,'438.44',61,1,1,'民宿简介10','2023-03-02 16:12:50'),(11,3,'房间名称11','upload/minsu11.jpg',1,'37.58',47,1,1,'民宿简介11','2023-03-02 16:12:50'),(12,1,'房间名称12','upload/minsu12.jpg',1,'230.33',111,2,1,'民宿简介12','2023-03-02 16:12:50'),(13,2,'房间名称13','upload/minsu13.jpg',2,'322.03',491,1,1,'民宿简介13','2023-03-02 16:12:50'),(14,3,'房间名称14','upload/minsu14.jpg',1,'228.32',3,1,1,'民宿简介14','2023-03-02 16:12:50');

/*Table structure for table `minsu_collection` */

DROP TABLE IF EXISTS `minsu_collection`;

CREATE TABLE `minsu_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `minsu_id` int(11) DEFAULT NULL COMMENT '民宿',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `minsu_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='民宿收藏';

/*Data for the table `minsu_collection` */

insert  into `minsu_collection`(`id`,`minsu_id`,`yonghu_id`,`minsu_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-03-02 16:12:50','2023-03-02 16:12:50'),(3,3,3,1,'2023-03-02 16:12:50','2023-03-02 16:12:50'),(4,4,2,1,'2023-03-02 16:12:50','2023-03-02 16:12:50'),(5,5,2,1,'2023-03-02 16:12:50','2023-03-02 16:12:50'),(6,6,1,1,'2023-03-02 16:12:50','2023-03-02 16:12:50'),(7,7,1,1,'2023-03-02 16:12:50','2023-03-02 16:12:50'),(8,8,3,1,'2023-03-02 16:12:50','2023-03-02 16:12:50'),(9,9,1,1,'2023-03-02 16:12:50','2023-03-02 16:12:50'),(10,10,3,1,'2023-03-02 16:12:50','2023-03-02 16:12:50'),(11,11,2,1,'2023-03-02 16:12:50','2023-03-02 16:12:50'),(13,13,3,1,'2023-03-02 16:12:50','2023-03-02 16:12:50'),(14,14,1,1,'2023-03-02 16:12:50','2023-03-02 16:12:50'),(15,4,1,1,'2023-03-02 17:31:43','2023-03-02 17:31:43');

/*Table structure for table `minsu_commentback` */

DROP TABLE IF EXISTS `minsu_commentback`;

CREATE TABLE `minsu_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `minsu_id` int(11) DEFAULT NULL COMMENT '民宿',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `minsu_commentback_text` text COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` text COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='民宿评价';

/*Data for the table `minsu_commentback` */

insert  into `minsu_commentback`(`id`,`minsu_id`,`yonghu_id`,`minsu_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评价内容1','2023-03-02 16:12:50','回复信息1','2023-03-02 16:12:50','2023-03-02 16:12:50'),(2,2,1,'评价内容2','2023-03-02 16:12:50','回复信息2','2023-03-02 16:12:50','2023-03-02 16:12:50'),(3,3,3,'评价内容3','2023-03-02 16:12:50','回复信息3','2023-03-02 16:12:50','2023-03-02 16:12:50'),(4,4,3,'评价内容4','2023-03-02 16:12:50','回复信息4','2023-03-02 16:12:50','2023-03-02 16:12:50'),(5,5,2,'评价内容5','2023-03-02 16:12:50','回复信息5','2023-03-02 16:12:50','2023-03-02 16:12:50'),(6,6,1,'评价内容6','2023-03-02 16:12:50','回复信息6','2023-03-02 16:12:50','2023-03-02 16:12:50'),(7,7,3,'评价内容7','2023-03-02 16:12:50','回复信息7','2023-03-02 16:12:50','2023-03-02 16:12:50'),(8,8,1,'评价内容8','2023-03-02 16:12:50','回复信息8','2023-03-02 16:12:50','2023-03-02 16:12:50'),(9,9,3,'评价内容9','2023-03-02 16:12:50','回复信息9','2023-03-02 16:12:50','2023-03-02 16:12:50'),(10,10,3,'评价内容10','2023-03-02 16:12:50','回复信息10','2023-03-02 16:12:50','2023-03-02 16:12:50'),(11,11,2,'评价内容11','2023-03-02 16:12:50','回复信息11','2023-03-02 16:12:50','2023-03-02 16:12:50'),(12,12,2,'评价内容12','2023-03-02 16:12:50','回复信息12','2023-03-02 16:12:50','2023-03-02 16:12:50'),(13,13,1,'评价内容13','2023-03-02 16:12:50','回复信息13','2023-03-02 16:12:50','2023-03-02 16:12:50'),(14,14,2,'评价内容14','2023-03-02 16:12:50','回复信息14','2023-03-02 16:12:50','2023-03-02 16:12:50'),(15,13,1,'123','2023-03-02 17:12:39',NULL,NULL,'2023-03-02 17:12:39');

/*Table structure for table `minsu_order` */

DROP TABLE IF EXISTS `minsu_order`;

CREATE TABLE `minsu_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `minsu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号',
  `minsu_id` int(11) DEFAULT NULL COMMENT '民宿',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `minsu_order_time` timestamp NULL DEFAULT NULL COMMENT '预定时间',
  `minsu_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `minsu_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111',
  `minsu_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='民宿订单';

/*Data for the table `minsu_order` */

insert  into `minsu_order`(`id`,`minsu_order_uuid_number`,`minsu_id`,`yonghu_id`,`minsu_order_time`,`minsu_order_true_price`,`minsu_order_types`,`minsu_order_payment_types`,`insert_time`,`create_time`) values (7,'1677748051148',13,1,'2023-03-03 17:07:22','322.03',102,1,'2023-03-02 17:07:31','2023-03-02 17:07:31'),(8,'1677748114548',13,1,'2023-03-03 17:07:22','322.03',105,1,'2023-03-02 17:09:23','2023-03-02 17:09:23'),(9,'1677748270712',4,1,'2023-03-04 17:11:06','193.53',102,1,'2023-03-02 17:11:11','2023-03-02 17:11:11'),(10,'1677749487317',7,1,'2023-03-11 17:31:23','329.70',103,1,'2023-03-02 17:31:27','2023-03-02 17:31:27');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-03-02 16:12:50','公告详情1','2023-03-02 16:12:50'),(2,'公告标题2',2,'upload/news2.jpg','2023-03-02 16:12:50','公告详情2','2023-03-02 16:12:50'),(3,'公告标题3',1,'upload/news3.jpg','2023-03-02 16:12:50','公告详情3','2023-03-02 16:12:50'),(4,'公告标题4',2,'upload/news4.jpg','2023-03-02 16:12:50','公告详情4','2023-03-02 16:12:50'),(5,'公告标题5',1,'upload/news5.jpg','2023-03-02 16:12:50','公告详情5','2023-03-02 16:12:50'),(6,'公告标题6',1,'upload/news6.jpg','2023-03-02 16:12:50','公告详情6','2023-03-02 16:12:50'),(7,'公告标题7',2,'upload/news7.jpg','2023-03-02 16:12:50','公告详情7','2023-03-02 16:12:50'),(8,'公告标题8',2,'upload/news8.jpg','2023-03-02 16:12:50','公告详情8','2023-03-02 16:12:50'),(9,'公告标题9',2,'upload/news9.jpg','2023-03-02 16:12:50','公告详情9','2023-03-02 16:12:50'),(10,'公告标题10',1,'upload/news10.jpg','2023-03-02 16:12:50','公告详情10','2023-03-02 16:12:50'),(11,'公告标题11',2,'upload/news11.jpg','2023-03-02 16:12:50','公告详情11','2023-03-02 16:12:50'),(12,'公告标题12',2,'upload/news12.jpg','2023-03-02 16:12:50','公告详情12','2023-03-02 16:12:50'),(13,'公告标题13',1,'upload/news13.jpg','2023-03-02 16:12:50','公告详情13','2023-03-02 16:12:50'),(14,'公告标题14',1,'upload/news14.jpg','2023-03-02 16:12:50','公告详情14','2023-03-02 16:12:50');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_xingji_types` int(11) DEFAULT NULL COMMENT '商家信用类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` text COMMENT '商家介绍 ',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_photo`,`shangjia_xingji_types`,`new_money`,`shangjia_content`,`shangjia_delete`,`create_time`) values (1,'a1','123456','商家名称1','17703786901','1@qq.com','upload/shangjia1.jpg',2,'423.83','商家介绍1',1,'2023-03-02 16:12:50'),(2,'a2','123456','商家名称2','17703786902','2@qq.com','upload/shangjia2.jpg',2,'593.22','商家介绍2',1,'2023-03-02 16:12:50'),(3,'a3','123456','商家名称3','17703786903','3@qq.com','upload/shangjia3.jpg',2,'51.73','商家介绍3',1,'2023-03-02 16:12:50');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','yw1a551ju71ma2sh6fauhakunkw065pg','2023-03-02 16:19:32','2023-03-02 18:31:20'),(2,1,'admin','users','管理员','a4ggy6vzk23n1hyu150gqa3wj6tj412d','2023-03-02 16:19:45','2023-03-02 18:37:25'),(3,1,'a1','shangjia','商家','he20hd22gijkwifr2t0z1coghmk50k2a','2023-03-02 17:06:02','2023-03-02 18:32:29'),(4,2,'a2','shangjia','商家','tbovno6glt2x2ahwmk56wlc7knuispb7','2023-03-02 17:12:23','2023-03-02 18:12:23');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com','12601.42','2023-03-02 16:12:50'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','859.02','2023-03-02 16:12:50'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','902.98','2023-03-02 16:12:50');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
