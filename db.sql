/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - shoujishangcheng
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shoujishangcheng` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `shoujishangcheng`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `address_name` varchar(200) NOT NULL COMMENT '联系人',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址',
  `address_phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault_types` int(200) NOT NULL COMMENT '是否默认地址',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_dizhi`,`address_phone`,`isdefault_types`,`insert_time`) values (1,1,'222222','端门','17785566494',1,'2021-10-21 13:40:59'),(2,1,'1111','天安门','17785599651',1,'2021-10-21 13:44:44'),(3,1,'123','中原区碧沙岗公园(嵩山北路东)','17785544692',2,'2021-11-02 14:34:45');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `goods_id` int(20) NOT NULL COMMENT '商品id',
  `buy_number` int(11) NOT NULL COMMENT '购买数量',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='客服聊天';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`chat_reply`,`issue_time`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'112233',NULL,'2021-11-02 14:41:04',NULL,1,1,'2021-11-02 14:41:05'),(2,1,'客服可以回复用户发送的消息',NULL,'2021-11-02 14:41:26',NULL,1,1,'2021-11-02 14:41:27');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/shoujishangcheng/upload/1634699263769.webp'),(2,'picture2','http://localhost:8080/shoujishangcheng/upload/1634699291644.webp'),(3,'picture3','http://localhost:8080/shoujishangcheng/upload/1634699298900.webp'),(6,'homepage','http://localhost:8080/shoujishangcheng/upload/1634699317002.webp');

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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,NULL,'2021-10-20 10:34:01'),(2,'sex_types','性别',2,'女',NULL,NULL,'2021-10-20 10:34:01'),(3,'news_types','资讯类型名称',1,'资讯类型1',NULL,NULL,'2021-10-20 10:34:01'),(4,'news_types','资讯类型名称',2,'资讯类型2',NULL,NULL,'2021-10-20 10:34:01'),(5,'news_types','资讯类型名称',3,'资讯类型3',NULL,NULL,'2021-10-20 10:34:01'),(6,'isdefault_types','是否是默认地址',1,'否',NULL,NULL,'2021-10-20 10:34:01'),(7,'isdefault_types','是否是默认地址',2,'是',NULL,NULL,'2021-10-20 10:34:01'),(8,'order_types','订单状态',1,'已支付',NULL,NULL,'2021-10-20 10:34:01'),(9,'order_types','订单状态',2,'已取消',NULL,NULL,'2021-10-20 10:34:01'),(10,'order_types','订单状态',3,'已发货',NULL,NULL,'2021-10-20 10:34:01'),(11,'order_types','订单状态',4,'已完成',NULL,NULL,'2021-10-20 10:34:01'),(12,'goods_types','商品分类名称',1,'商品分类1',NULL,NULL,'2021-10-20 10:34:01'),(13,'goods_types','商品分类名称',2,'商品分类2',NULL,NULL,'2021-10-20 10:34:01'),(14,'goods_biaoqian_types','商品标签名称',1,'商品标签1',NULL,NULL,'2021-10-20 10:34:01'),(15,'goods_biaoqian_types','商品标签名称',2,'商品标签2',NULL,NULL,'2021-10-20 10:34:01'),(16,'goods_temai_types','是否特卖',1,'特卖',NULL,NULL,'2021-10-20 10:34:01'),(17,'goods_temai_types','是否特卖',2,'非特卖',NULL,NULL,'2021-10-20 10:34:01'),(18,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2021-10-20 10:34:01'),(19,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2021-10-20 10:34:01');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_name` varchar(200) NOT NULL COMMENT '商品名称 Search111',
  `goods_types` int(200) NOT NULL COMMENT '商品分类 Search111',
  `goods_biaoqian_types` int(200) NOT NULL COMMENT '商品标签 Search111',
  `goods_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `goods_pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `goods_guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `goods_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `goods_click_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最近点击时间',
  `goods_click_number` int(11) DEFAULT '0' COMMENT '点击次数',
  `goods_content` text COMMENT '商品详情',
  `goods_temai_types` int(11) DEFAULT NULL COMMENT '是否特卖',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `goods` */

insert  into `goods`(`id`,`goods_name`,`goods_types`,`goods_biaoqian_types`,`goods_photo`,`goods_pinpai`,`goods_guige`,`goods_new_money`,`goods_click_time`,`goods_click_number`,`goods_content`,`goods_temai_types`,`insert_time`) values (1,'手机1',1,1,'http://localhost:8080/shoujishangcheng/upload/1634699808995.webp','品牌1','规格1','1000.00','2021-10-22 10:50:55',26,'<p><span style=\"color: rgb(96, 98, 102);\">商品详情1</span></p>',2,'2021-10-20 11:17:03'),(2,'手机2',2,2,'http://localhost:8080/shoujishangcheng/upload/1634699860775.webp','品牌2','规格2','2000.00','2021-11-02 14:34:55',78,'<p><span style=\"color: rgb(96, 98, 102);\">商品详情2</span></p>',1,'2021-10-20 11:17:50'),(3,'手机3',1,1,'http://localhost:8080/shoujishangcheng/upload/1634699910574.webp','品牌3','规格3','3000.00','2021-10-22 09:43:49',20,'<p><span style=\"color: rgb(96, 98, 102);\">商品详情3</span></p>',2,'2021-10-20 11:18:40'),(4,'手机4',2,2,'http://localhost:8080/shoujishangcheng/upload/1634699934916.jpg','品牌4','规格4','4000.00','2021-10-22 10:20:47',47,'<p><span style=\"color: rgb(96, 98, 102);\">商品详情4</span></p>',1,'2021-10-20 11:19:07'),(5,'商品5',2,1,'http://localhost:8080/shoujishangcheng/upload/1635833159925.jpg','品牌5','规格5','5000.00','2021-11-02 14:41:54',1,'<p><span style=\"color: rgb(96, 98, 102);\">商品详情5</span></p>',1,'2021-11-02 14:06:15');

/*Table structure for table `goods_collection` */

DROP TABLE IF EXISTS `goods_collection`;

CREATE TABLE `goods_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `goods_collection` */

insert  into `goods_collection`(`id`,`goods_id`,`yonghu_id`,`insert_time`,`create_time`) values (2,5,1,'2021-11-02 14:41:58','2021-11-02 14:41:58');

/*Table structure for table `goods_commentback` */

DROP TABLE IF EXISTS `goods_commentback`;

CREATE TABLE `goods_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_id` int(11) DEFAULT NULL COMMENT '评论商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '评论人',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `goods_commentback_content` text COMMENT '评论内容',
  `goods_reply_content` text COMMENT '回复内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品评论';

/*Data for the table `goods_commentback` */

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `news_name` varchar(200) DEFAULT NULL COMMENT '资讯名称 Search111  ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '资讯图片 ',
  `news_types` int(11) NOT NULL COMMENT '资讯类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '资讯发布时间 ',
  `news_content` text COMMENT '资讯详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_photo`,`news_types`,`insert_time`,`news_content`,`create_time`) values (1,'优惠质询','http://localhost:8080/shoujishangcheng/upload/1634713447183.jpg',1,'2021-10-20 15:04:13','<p><span style=\"color: rgb(96, 98, 102);\">资讯详情1</span></p>','2021-10-20 15:04:13'),(2,'热卖质询','http://localhost:8080/shoujishangcheng/upload/1634713468813.jpg',2,'2021-10-20 15:04:32','<p><span style=\"color: rgb(96, 98, 102);\">资讯详情2</span></p>','2021-10-20 15:04:32'),(3,'资讯3','http://localhost:8080/shoujishangcheng/upload/1634713493751.jpg',3,'2021-10-20 15:05:01','<p>资讯详情3</p>','2021-10-20 15:05:01');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `goods_order_uuid_number` varchar(200) NOT NULL COMMENT '订单编号',
  `yonghu_id` int(20) NOT NULL COMMENT '用户id',
  `goods_id` int(20) NOT NULL COMMENT '商品id',
  `buy_number` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `order_gongshi` varchar(255) DEFAULT NULL COMMENT '物流公司',
  `order_number` varchar(255) DEFAULT NULL COMMENT '物流单号',
  `order_types` int(11) DEFAULT '1' COMMENT '订单状态',
  `address_id` int(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`insert_time`,`goods_order_uuid_number`,`yonghu_id`,`goods_id`,`buy_number`,`price`,`discountprice`,`total`,`discounttotal`,`order_gongshi`,`order_number`,`order_types`,`address_id`) values (6,'2021-11-02 14:41:40','202111214413976540491',1,2,1,0,0,0,2000,'某东',' A01B02C03',3,3);

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1,'111','yonghu','用户','3gi8bsl4q0fmzcw529yhenmei71qz0w8','2021-10-22 09:20:42','2021-11-29 11:19:31'),(5,1,'admin','users','管理员','7rmfvazegj8uq46snj9n17g1gwnosl1v','2021-10-22 09:25:34','2021-11-29 10:51:40'),(6,6,'123','yonghu','用户','x3906nrpdvmgcx3ugbagkm7fh1h5v5nc','2021-11-02 14:23:24','2021-11-02 15:23:24');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像  ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号  ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `new_money` decimal(20,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_photo`,`yonghu_phone`,`yonghu_id_number`,`new_money`,`create_time`) values (1,'111','123456','111',2,'http://localhost:8080/shoujishangcheng/upload/1635835254222.jpg','17785544652','410882200011211155','100387096.00','2021-10-20 10:47:20'),(6,'123','123','123',1,NULL,'17796688971','410882200011114611','0.00','2021-11-02 14:23:13'),(7,'12333','123456','123',1,NULL,'14785693125','410882200011111123','0.00','2021-11-02 14:33:32');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
