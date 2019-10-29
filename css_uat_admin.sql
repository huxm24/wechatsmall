-- MySQL dump 10.14  Distrib 5.5.64-MariaDB, for Linux (x86_64)
--
-- Host: rm-n9edp0d5b30389531.mysql.rds.aliyuncs.com    Database: css_uat_admin
-- ------------------------------------------------------
-- Server version	5.7.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config_oss`
--

DROP TABLE IF EXISTS `config_oss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config_oss` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `access_key_id` varchar(100) DEFAULT NULL COMMENT 'accessKey',
  `access_key_secret` varchar(100) DEFAULT NULL COMMENT 'accessSecret',
  `endpoint` varchar(100) DEFAULT NULL COMMENT 'endpoint',
  `bucket` varchar(50) DEFAULT NULL COMMENT 'bucketname',
  `active` tinyint(5) DEFAULT '1' COMMENT '启动状态 1启用 0关闭',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_oss`
--

LOCK TABLES `config_oss` WRITE;
/*!40000 ALTER TABLE `config_oss` DISABLE KEYS */;
INSERT INTO `config_oss` VALUES (1,'LTAIvx4hp6Naomx3','YVw5Jk8R3k5H5LYGI2zCVSKdjZAT8V','oss-cn-shanghai.aliyuncs.com','ardenblackbox',0,'2019-06-24 04:10:11',NULL);
/*!40000 ALTER TABLE `config_oss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `element`
--

DROP TABLE IF EXISTS `element`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `element` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `page_id` (`page_id`) USING BTREE,
  CONSTRAINT `element_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=464 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `element`
--

LOCK TABLES `element` WRITE;
/*!40000 ALTER TABLE `element` DISABLE KEYS */;
INSERT INTO `element` VALUES (450,45,'[{\"tag\":\"column_2_btn\",\"name\":\"双列带按钮\",\"nodes\":[{\"tag\":\"image\",\"src\":\"/upload/d/5da85ca7d0a1d.png\",\"url\":\"\",\"action\":{\"data\":{\"type\":\"navigateTo\",\"path\":\"/pages/product/product?product_id=2\"},\"type\":\"inner_link\",\"route\":{\"name\":\"商品页面\",\"pageKey\":\"product\",\"route\":\"/pages/product/product\"}},\"height\":866,\"title\":\"灵感源自V&A博物馆\",\"desc\":\"「龙凤篇」足金戒指\"},{\"tag\":\"image\",\"src\":\"/upload/6/5da85cab82ad6.png\",\"url\":\"\",\"action\":{\"data\":{\"type\":\"navigateTo\",\"path\":\"/pages/category/category?category_id=11\"},\"type\":\"inner_link\",\"route\":{\"name\":\"分类页面\",\"pageKey\":\"category\",\"route\":\"/pages/category/category\"}},\"height\":918,\"title\":\"Lace 「蕾丝」\",\"desc\":\"伦敦顶尖设计学府\"}],\"columns\":2},{\"tag\":\"swiper_horizontal\",\"name\":\"左右轮播\",\"nodes\":false,\"height\":0},{\"tag\":\"image_tab\",\"name\":\"单图带TAB切换\",\"nodes\":[{\"tabName\":\"111\",\"image\":{\"tag\":\"image\",\"src\":\"/upload/6/5da9962e9d746.png\",\"url\":\"\",\"action\":{\"data\":{\"type\":\"navigateTo\",\"path\":\"/pages/category/category?category_id=6\"},\"type\":\"inner_link\",\"route\":{\"name\":\"分类页面\",\"pageKey\":\"category\",\"route\":\"/pages/category/category\"}},\"height\":866},\"products\":[{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/b/18625b/EPCM18625GDB_41a0df32-1c0e-4302-8fba-ccf824da08b5_250.jpg\",\"name\":\"测试商品01\",\"id\":1},{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/89953k/EPCM89953DIK_86a7787e-c53e-47e9-b354-21a2c9f1eb0d_350.jpg\",\"name\":\"测试商品05\",\"id\":5}]},{\"tabName\":\"222\",\"image\":{\"tag\":\"image\",\"src\":\"/upload/0/5da9964d3e0c0.png\",\"url\":\"\",\"action\":{\"data\":{\"type\":\"navigateTo\",\"path\":\"/pages/product/product?product_id=4\"},\"type\":\"inner_link\",\"route\":{\"name\":\"商品页面\",\"pageKey\":\"product\",\"route\":\"/pages/product/product\"}},\"height\":918},\"products\":[{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/89953k/EPCM89953DIK_86a7787e-c53e-47e9-b354-21a2c9f1eb0d_350.jpg\",\"name\":\"测试商品05\",\"id\":5},{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/88005k/EPCM88005GDK_dc53696d-8df5-4417-9d4e-d11c6f0dcd3c_350.jpg\",\"name\":\"测试商品08\",\"id\":7}]},{\"tabName\":\"333\",\"image\":{\"tag\":\"image\",\"src\":\"/upload/3/5da9966619bb3.png\",\"url\":\"\",\"action\":{\"data\":{\"path\":\"/pages/page/detail?id=2\",\"type\":\"navigateTo\"},\"type\":\"inner_link\",\"route\":{\"name\":\"活动页面\",\"pageKey\":\"cms\",\"route\":\"/pages/page/detail\"}},\"height\":927},\"products\":[{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/90190k/EPCM90190GDK_38cb7884-b9d1-4358-bebd-3df5ae19936b_350.jpg\",\"name\":\"测试商品13\",\"id\":13},{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/90190k/EPCM90190GDK_38cb7884-b9d1-4358-bebd-3df5ae19936b_350.jpg\",\"name\":\"测试商品13\",\"id\":13}]},{\"tabName\":\"444\",\"image\":{\"tag\":\"image\",\"src\":\"/upload/9/5da996800b8e9.png\",\"url\":\"\",\"action\":{\"data\":{\"type\":\"navigateTo\",\"path\":\"/pages/product/product?product_id=7\"},\"type\":\"inner_link\",\"route\":{\"name\":\"商品页面\",\"pageKey\":\"product\",\"route\":\"/pages/product/product\"}},\"height\":853},\"products\":[{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/23929k/EPCM23929GDK_b513e897-6f0b-40af-b473-15cec1f6df1a_350.jpg\",\"name\":\"测试商品03\",\"id\":3},{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/23929k/EPCM23929GDK_b513e897-6f0b-40af-b473-15cec1f6df1a_350.jpg\",\"name\":\"测试商品03\",\"id\":3}]}],\"height\":927,\"productCount\":2,\"newTabName\":\"\"},{\"tag\":\"column_2_title\",\"name\":\"双列带标题\",\"nodes\":[{\"scr\":\"\",\"name\":\"测试商品08\",\"id\":7,\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/88005k/EPCM88005GDK_dc53696d-8df5-4417-9d4e-d11c6f0dcd3c_350.jpg\"},{\"scr\":\"\",\"name\":\"测试商品12\",\"id\":12,\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/78862k/EPCM78862GDK_0c03e296-9299-4721-9167-9b506e50ba07_350.jpg\"}],\"columns\":2},{\"tag\":\"swiper\",\"name\":\"轮播组件\",\"nodes\":[{\"tag\":\"image\",\"src\":\"/upload/3/5da7e1fcec8a3.jpg\",\"url\":\"\",\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}},{\"tag\":\"image\",\"src\":\"/upload/2/5da7e200d1b22.jpg\",\"url\":\"\",\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}}]},{\"tag\":\"swiper_horizontal\",\"name\":\"左右轮播\",\"nodes\":[{\"tag\":\"image\",\"src\":\"/upload/3/5da7e23685503.jpg\",\"url\":\"\",\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}},{\"tag\":\"image\",\"src\":\"/upload/c/5da7e23a4623c.jpg\",\"url\":\"\",\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}},{\"tag\":\"image\",\"src\":\"/upload/c/5da7e23e0d99c.jpg\",\"url\":\"\",\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}},{\"tag\":\"image\",\"src\":\"/upload/1/5da7e241f11a1.jpg\",\"url\":\"\",\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}}]},{\"tag\":\"title_no_line\",\"name\":\"标题无装饰线\",\"style\":false,\"title\":\"灵感源自V&A博物馆\",\"description\":\"重新演绎珠宝藏品\"},{\"tag\":\"swiper_title\",\"name\":\"轮播带标题\",\"nodes\":[{\"tag\":\"image\",\"src\":\"/upload/8/5da7e20f982b8.jpg\",\"url\":\"\",\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}},{\"tag\":\"image\",\"src\":\"/upload/9/5da7e212e3fc9.jpg\",\"url\":\"\",\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}}]}]'),(459,47,'[{\"tag\":\"title_line\",\"name\":\"标题有装饰线\",\"style\":false,\"enTitle\":\"CATEGORIES\",\"cnTitle\":\"产品类别\"}]'),(460,48,'[{\"tag\":\"title_line\",\"name\":\"标题有装饰线\",\"style\":false,\"enTitle\":\"CATEGORIES\",\"cnTitle\":\"产品类别\"},{\"tag\":\"image\",\"name\":\"单图组件\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/demo/1.jpg\",\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}},{\"tag\":\"swiper\",\"name\":\"轮播组件\",\"nodes\":false,\"height\":0},{\"tag\":\"image_map\",\"name\":\"一图片多链接\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/demo/1.jpg\",\"rows\":1,\"columns\":2,\"height\":200,\"actions\":[[{\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}},{\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}}]]}]'),(461,49,'[{\"tag\":\"title_line\",\"name\":\"标题有装饰线\",\"style\":false,\"enTitle\":\"CATEGORIES\",\"cnTitle\":\"产品类别\"},{\"tag\":\"image\",\"name\":\"单图组件\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/demo/1.jpg\",\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}},{\"tag\":\"image_map\",\"name\":\"一图片多链接\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/demo/1.jpg\",\"rows\":1,\"columns\":4,\"height\":200,\"actions\":[[{\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}},{\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}},{\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}}]]},{\"tag\":\"image_tab\",\"name\":\"单图带TAB切换\",\"nodes\":[{\"tabName\":\"1\",\"image\":{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/6/5db69aff3ce56.jpg\",\"url\":\"\",\"action\":{\"data\":{},\"type\":\"none\",\"route\":false},\"height\":750},\"products\":[{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/89953k/EPCM89953DIK_86a7787e-c53e-47e9-b354-21a2c9f1eb0d_350.jpg\",\"name\":\"测试商品05\",\"id\":5},{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/89953k/EPCM89953DIK_86a7787e-c53e-47e9-b354-21a2c9f1eb0d_350.jpg\",\"name\":\"测试商品05\",\"id\":5}]},{\"tabName\":\"2\",\"image\":\"\",\"products\":[{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/23929k/EPCM23929GDK_b513e897-6f0b-40af-b473-15cec1f6df1a_350.jpg\",\"name\":\"测试商品03\",\"id\":3},{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/89953k/EPCM89953DIK_86a7787e-c53e-47e9-b354-21a2c9f1eb0d_350.jpg\",\"name\":\"测试商品05\",\"id\":5}]}],\"height\":750,\"productCount\":2,\"newTabName\":\"\"}]'),(463,46,'[{\"tag\":\"title_line\",\"name\":\"标题有装饰线\",\"style\":false,\"enTitle\":\"CATEGORIES\",\"cnTitle\":\"产品类别\"},{\"tag\":\"title_no_line\",\"name\":\"标题无装饰线\",\"style\":false,\"title\":\"灵感源自V&A博物馆\",\"description\":\"重新演绎珠宝藏品\"},{\"tag\":\"image_map\",\"name\":\"一图片多链接\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/3/5dae7fd36d243.jpg\",\"rows\":2,\"columns\":4,\"height\":422,\"actions\":[[{\"action\":{\"data\":{\"path\":\"https://www.sohu.com\"},\"type\":\"outer_link\"}},{\"action\":{\"data\":{\"type\":\"navigateTo\",\"path\":\"/pages/product/product?product_id=3\"},\"type\":\"inner_link\",\"route\":{\"name\":\"商品页面\",\"pageKey\":\"product\",\"route\":\"/pages/product/product\"}}},{\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}},{\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}}],[{\"action\":{\"data\":{\"isAuto\":\"1\",\"poster\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/2/5dae758ccc3c2.jpg\",\"src\":\"https://www.youtube.com/1.mp4\"},\"type\":\"popVideo\"}},{\"action\":{\"data\":{\"path\":\"/pages/home/home\",\"type\":\"navigateTo\"},\"type\":\"inner_link\",\"route\":{\"name\":\"首页\",\"pageKey\":\"home\",\"route\":\"/pages/home/home\"}}},{\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}},{\"action\":{\"data\":{},\"type\":\"none\",\"route\":false}}]]},{\"tag\":\"column_2_title\",\"name\":\"双列带标题\",\"nodes\":[{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/b/18625b/EPCM18625GDB_41a0df32-1c0e-4302-8fba-ccf824da08b5_250.jpg\",\"name\":\"测试商品01\",\"id\":1},{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/89953k/EPCM89953DIK_86a7787e-c53e-47e9-b354-21a2c9f1eb0d_350.jpg\",\"name\":\"测试商品05\",\"id\":5}],\"columns\":2},{\"tag\":\"column_2_btn\",\"name\":\"双列带按钮\",\"nodes\":[{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/1/5db6a2cbf26a1.png\",\"action\":{\"data\":{},\"type\":\"none\",\"route\":false},\"height\":981,\"title\":\"LOL \"},{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/3/5db6a2d4870f3.jpg\",\"action\":{\"data\":{},\"type\":\"none\",\"route\":false},\"height\":930,\"title\":\"2211\",\"desc\":\"221\"}],\"columns\":2,\"height\":981},{\"tag\":\"image_tab\",\"name\":\"单图带TAB切换\",\"nodes\":[{\"tabName\":\"11\",\"image\":{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/1/5dad621cf1b11.jpg\",\"url\":\"\",\"action\":{\"data\":{\"type\":\"navigateTo\",\"path\":\"/pages/product/product?product_id=2\"},\"type\":\"inner_link\",\"route\":{\"name\":\"商品页面\",\"pageKey\":\"product\",\"route\":\"/pages/product/product\"}},\"height\":422},\"products\":[{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/23929k/EPCM23929GDK_b513e897-6f0b-40af-b473-15cec1f6df1a_350.jpg\",\"name\":\"测试商品03\",\"id\":3},{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/b/18625b/EPCM18625GDB_41a0df32-1c0e-4302-8fba-ccf824da08b5_250.jpg\",\"name\":\"测试商品01\",\"id\":1},{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/89953k/EPCM89953DIK_86a7787e-c53e-47e9-b354-21a2c9f1eb0d_350.jpg\",\"name\":\"测试商品05\",\"id\":5},{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/b/18625b/EPCM18625GDB_41a0df32-1c0e-4302-8fba-ccf824da08b5_250.jpg\",\"name\":\"测试商品01\",\"id\":1}]},{\"tabName\":\"22\",\"image\":{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/0/5dad62389f650.jpg\",\"url\":\"\",\"action\":{\"data\":{\"isAuto\":\"1\",\"poster\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/b/5dad62437953b.jpg\",\"src\":\"https://www.youtube.com/1.mp4\"},\"type\":\"popVideo\"},\"height\":422},\"products\":[{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/b/18625b/EPCM18625GDB_41a0df32-1c0e-4302-8fba-ccf824da08b5_250.jpg\",\"name\":\"测试商品01\",\"id\":1},{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/90233k/EPCM90233KGK_22089843-e191-4040-9a2b-0a4417b4348b_350.jpg\",\"name\":\"测试商品02\",\"id\":2},{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/23929k/EPCM23929GDK_b513e897-6f0b-40af-b473-15cec1f6df1a_350.jpg\",\"name\":\"测试商品03\",\"id\":3},{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/89956k/EPCM89956DIK_ca802c62-52e2-4811-9930-d20deede6e25_350.jpg\",\"name\":\"测试商品04\",\"id\":4}]}],\"height\":422,\"productCount\":4,\"newTabName\":\"\"},{\"tag\":\"image_tab\",\"name\":\"单图带TAB切换\",\"nodes\":[{\"tabName\":\"11\",\"image\":{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/f/5dad617de8eef.jpg\",\"url\":\"\",\"action\":{\"data\":{\"path\":\"https://www.sohu.com\"},\"type\":\"outer_link\"},\"height\":422},\"products\":[{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/b/18625b/EPCM18625GDB_41a0df32-1c0e-4302-8fba-ccf824da08b5_250.jpg\",\"name\":\"测试商品01\",\"id\":1},{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/89956k/EPCM89956DIK_ca802c62-52e2-4811-9930-d20deede6e25_350.jpg\",\"name\":\"测试商品04\",\"id\":4}]},{\"tabName\":\"22\",\"image\":{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/5/5dad61a3cd8c5.jpg\",\"url\":\"\",\"action\":{\"data\":{\"path\":\"/pages/home/home\",\"type\":\"navigateTo\"},\"type\":\"inner_link\",\"route\":{\"name\":\"首页\",\"pageKey\":\"home\",\"route\":\"/pages/home/home\"}},\"height\":422},\"products\":[{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/15812k/EPCM15812GDK_9a163ad7-870a-4156-b44e-63d4173e62bb_350.jpg\",\"name\":\"测试商品07\",\"id\":7},{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/90008k/EPCM90008DIK_e09649cd-6b0d-492b-816b-c11648c9c1c3_350.jpg\",\"name\":\"测试商品09\",\"id\":8}]},{\"tabName\":\"33\",\"image\":{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/e/5dad61bd1f21e.jpg\",\"url\":\"\",\"action\":{\"data\":{\"isAuto\":\"1\",\"poster\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/2/5dad61c5c63b2.jpg\",\"src\":\"https://www.youtube.com/1.mp4\"},\"type\":\"popVideo\"},\"height\":422},\"products\":[{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/90233k/EPCM90233KGK_22089843-e191-4040-9a2b-0a4417b4348b_350.jpg\",\"name\":\"测试商品02\",\"id\":2},{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/90008k/EPCM90008DIK_e09649cd-6b0d-492b-816b-c11648c9c1c3_350.jpg\",\"name\":\"测试商品09\",\"id\":8}]},{\"tabName\":\"44\",\"image\":{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/5/5dad61e3349a5.jpg\",\"url\":\"\",\"action\":{\"data\":{\"path\":\"/aaa/bbb/ccc\",\"appid\":\"1234567890\"},\"type\":\"newMP\"},\"height\":422},\"products\":[{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/90008k/EPCM90008DIK_e09649cd-6b0d-492b-816b-c11648c9c1c3_350.jpg\",\"name\":\"测试商品09\",\"id\":8},{\"src\":\"https://cdn2.chowsangsang.com/cneshop/images/p/k/90008k/EPCM90008DIK_e09649cd-6b0d-492b-816b-c11648c9c1c3_350.jpg\",\"name\":\"测试商品09\",\"id\":8}]}],\"height\":422,\"productCount\":2,\"newTabName\":\"\"},{\"tag\":\"video\",\"name\":\"视频组件\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/demo/1.jpg\",\"action\":false,\"url\":\"https://www.youtueb.com/11.mp4\",\"screenshot\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/6/5dad615333ef6.jpg\"},{\"tag\":\"swiper\",\"name\":\"轮播组件\",\"nodes\":[{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/2/5dad60bc08202.jpg\",\"action\":{\"data\":{\"path\":\"https://www.sohu.com/\"},\"type\":\"outer_link\"},\"height\":422},{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/d/5dad60c0d4b8d.jpg\",\"action\":{\"data\":{\"path\":\"/pages/home/home\",\"type\":\"navigateTo\"},\"type\":\"inner_link\",\"route\":{\"name\":\"首页\",\"pageKey\":\"home\",\"route\":\"/pages/home/home\"}},\"height\":422},{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/f/5dad60c37c11f.jpg\",\"action\":{\"data\":{\"type\":\"navigateTo\",\"path\":\"/pages/category/category?category_id=6\"},\"type\":\"inner_link\",\"route\":{\"name\":\"分类页面\",\"pageKey\":\"category\",\"route\":\"/pages/category/category\"}},\"height\":422},{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/3/5dad60c5e2373.jpg\",\"action\":{\"data\":{\"path\":\"/aaa/bbb/ccc\",\"appid\":\"1234567890\"},\"type\":\"newMP\"},\"height\":422},{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/c/5dad6104364fc.jpg\",\"action\":{\"data\":{\"isAuto\":\"1\",\"poster\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/2/5dad612d84552.jpg\",\"src\":\"https://www.youtueb.com/1.mp4\"},\"type\":\"popVideo\"},\"height\":422}],\"height\":422},{\"tag\":\"swiper_title\",\"name\":\"轮播带标题\",\"nodes\":[{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/6/5dad600993186.jpg\",\"action\":{\"data\":{},\"type\":\"none\",\"route\":false},\"height\":422,\"title\":\"标题1\",\"desc\":\"描述1\"},{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/0/5dad60101c050.jpg\",\"action\":{\"data\":{\"path\":\"https://www.sohu.com\"},\"type\":\"outer_link\"},\"height\":422,\"title\":\"标题2\",\"desc\":\"描述2\"},{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/3/5dad60142ad53.jpg\",\"action\":{\"data\":{\"path\":\"/pages/home/home\",\"type\":\"navigateTo\"},\"type\":\"inner_link\",\"route\":{\"name\":\"首页\",\"pageKey\":\"home\",\"route\":\"/pages/home/home\"}},\"height\":422,\"title\":\"标题3\",\"desc\":\"描述3\"},{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/3/5dad60172e833.jpg\",\"action\":{\"data\":{\"type\":\"navigateTo\",\"path\":\"/pages/product/product?product_id=4\"},\"type\":\"inner_link\",\"route\":{\"name\":\"商品页面\",\"pageKey\":\"product\",\"route\":\"/pages/product/product\"}},\"height\":422,\"desc\":\"描述4\",\"title\":\"标题4\"},{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/c/5dad6019ef9bc.jpg\",\"action\":{\"data\":{\"type\":\"navigateTo\",\"path\":\"/pages/category/category?category_id=1\"},\"type\":\"inner_link\",\"route\":{\"name\":\"分类页面\",\"pageKey\":\"category\",\"route\":\"/pages/category/category\"}},\"height\":422,\"desc\":\"描述5\",\"title\":\"标题5\"},{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/9/5dad601d7a089.jpg\",\"action\":{\"data\":{\"isAuto\":\"1\",\"poster\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/b/5dad60a47f9eb.jpg\",\"src\":\"https://www.youtube.com/1.mp4\"},\"type\":\"popVideo\"},\"height\":563,\"desc\":\"描述6\",\"title\":\"标题6\"}],\"height\":563},{\"tag\":\"swiper_horizontal\",\"name\":\"左右轮播\",\"nodes\":[{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/8/5dad5fb5a8d48.jpg\",\"action\":{\"data\":{},\"type\":\"none\"},\"height\":422},{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/2/5dad5fb96c082.jpg\",\"action\":{\"data\":{\"path\":\"https://www.sohu.com\"},\"type\":\"outer_link\"},\"height\":422},{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/5/5dad5fbcf1f45.jpg\",\"action\":{\"data\":{\"type\":\"navigateTo\",\"path\":\"/pages/product/product?product_id=2\"},\"type\":\"inner_link\",\"route\":{\"name\":\"商品页面\",\"pageKey\":\"product\",\"route\":\"/pages/product/product\"}},\"height\":422},{\"tag\":\"image\",\"src\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/f/5dad5fc42a3ff.jpg\",\"action\":{\"data\":{\"isAuto\":\"1\",\"poster\":\"https://css-wec-ec-uat.oss-cn-shenzhen.aliyuncs.com/cms/upload/1/5dad5fef50981.jpg\",\"src\":\"https://www.youtube.com/1.mp4\"},\"type\":\"popVideo\"},\"height\":422}],\"height\":422}]');
/*!40000 ALTER TABLE `element` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page`
--

DROP TABLE IF EXISTS `page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `key` varchar(50) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `show_header_footer` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `like_count` int(10) DEFAULT '0',
  `share_title` text,
  `share_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `key` (`key`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page`
--

LOCK TABLES `page` WRITE;
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` VALUES (45,NULL,' 测试轮播和图片','image1',NULL,0,0,'2019-10-14 11:27:30','2019-10-17 03:39:46',0,' 测试轮播和图片','/upload/3/5da59a9c7f523.jpg'),(46,NULL,'demo','demo',NULL,1,0,'2019-10-21 07:35:03','2019-10-21 07:35:03',0,'demo','/upload/d/5dad5fa7a4d8d.jpg'),(47,NULL,'jack','jack',NULL,1,0,'2019-10-23 11:11:06','2019-10-23 11:11:06',0,'jack','/upload/f/5db0354ab795f.png'),(48,NULL,'首页','home',NULL,1,1,'2019-10-28 03:14:05','2019-10-28 03:14:05',0,'首页',''),(49,NULL,'ces','css11',NULL,0,1,'2019-10-28 07:38:53','2019-10-28 07:38:53',0,'ces','');
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rule_type`
--

DROP TABLE IF EXISTS `rule_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rule_type` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rule_type`
--

LOCK TABLES `rule_type` WRITE;
/*!40000 ALTER TABLE `rule_type` DISABLE KEYS */;
INSERT INTO `rule_type` VALUES (1,'full_reduction_of_order','订单满减'),(2,'order_discount','订单折扣'),(3,'n_piece_n_discount','n件n折扣');
/*!40000 ALTER TABLE `rule_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `users_email_unique` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'user01','user01@163.com','$2y$10$yku4ysf.9K.5EH1IO/2MlOwgMPj4zj8XfaL.qOtcgoRmb4vlewZZK','2bYSNeni1kp2LPpAdhuGwcStX2yUEjYIvGM8QQbWtn5spXUXDHcbuIrA8ufL','2019-05-22 17:54:06','2019-05-22 17:54:06'),(2,'user02','user02@163.com','$2y$10$vt4GzM2ttlaSGOkKmG1oQuowHE13pjhBiUInuTdG2.xPN3WNjjjvy',NULL,'2019-05-22 17:54:40','2019-05-22 17:54:40');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-29 11:04:32
