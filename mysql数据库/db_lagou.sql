/*
Navicat MySQL Data Transfer

Source Server         : 本地连接
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : db_lagou

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2020-07-18 17:22:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `admin_name` varchar(10) NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `head_pic` varchar(128) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `password` varchar(16) NOT NULL,
  `sex` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_775atqwkcr2t6m8fyocxro333` (`admin_name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '2020-07-02 22:41:01', '2020-07-17 18:57:37', '拉勾网管理员', '823208782@qq.com', '20200708/1594201189905.jpg', '13774559485', '123456', '1');

-- ----------------------------
-- Table structure for `company`
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `finance` varchar(255) DEFAULT NULL,
  `founder_name` varchar(10) DEFAULT NULL,
  `founder_photo` varchar(128) DEFAULT NULL,
  `founder_position` varchar(15) DEFAULT NULL,
  `introduction` longtext,
  `locale` varchar(255) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `photo` varchar(128) DEFAULT NULL,
  `product_content` longtext,
  `product_photo` varchar(128) DEFAULT NULL,
  `product_title` varchar(15) DEFAULT NULL,
  `scale` varchar(255) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `tags` varchar(30) DEFAULT NULL,
  `territory` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdy4v2yb46hefqicjpyj7b7e4s` (`user_id`),
  CONSTRAINT `FKdy4v2yb46hefqicjpyj7b7e4s` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('8', '2020-07-14 18:19:39', '2020-07-18 00:28:38', '上市公司', '马化腾', '20200717/1595000870023.jpg', 'CEO', '腾讯公司成立于1998年11月，是目前中国最大的互联网综合服z务提供商之一，也是中国服务用户最多的互联网企业之一。成立十年多以来，腾讯一直秉承一切以用户价值为依归的经营理念，始终处于稳健、高速发展的状态。目前公司主要产品有im软件、网络游戏、门户网站以及相关增值产品。 ', '深圳市南山区粤海街道麻岭社区科技中一路腾讯大厦', '深圳市腾讯计算机系统有限公司', '20200718/1595001608927.png', '一个简单但功能齐全的茶商城系统，网址：https://www.yuanlrc.com/product/details.html?pid=346', '20200714/1594722060538.png', '茶售卖商城系统', '2000人以上', '已认证', 'IT,互联网,游戏,信息', '互联网', 'www.tencent.com', '腾讯是中国最大的互联网综合服务提供商之一，也是中国服务用户最多的互联网企业之一', '2');
INSERT INTO `company` VALUES ('9', '2020-07-14 22:45:54', '2020-07-18 10:51:46', '上市公司', '汪海兵', '20200718/1595002974686.jpg', 'CEO', '上海淘米网络科技有限公司在社会普遍不认可儿童用网的2008年推出了国内首个专门面向6至14岁儿童的虚拟社区产品——《摩尔庄园》。注册用户达上亿人；接着又推出了《赛尔号》、《小花仙》、《功夫派》等虚拟社区产品，拥有注册用户2.4亿，活跃用户超过5000万人，在国内儿童虚拟社区市场占据垄断地位。 [21] \n淘米旗下的儿童虚拟社区产品以其创新的形式、良好的市场表现曾先后斩获多项行业大奖。随着淘米在儿童互联网领域的深入发展，越来越多的人看到了这片蓝海所蕴藏的商业价值。 [21]  ', '上海市徐汇区古美路1528号A2幢12-16楼', '上海淘米网络科技有限公司', '20200718/1595040677796.jpg', '好项目，真的，上网址：https://www.yuanlrc.com/product/details.html?pid=346', '20200714/1594738011393.png', '茶叶售卖商城', '2000人以上', '已认证', '游戏,电影,互联网', '游戏，互联网', 'www.taomi.com', '用心运营，快乐童年', '5');
INSERT INTO `company` VALUES ('10', '2020-07-14 23:10:03', '2020-07-18 00:33:31', '上市公司', '郭晓', '20200718/1595003580234.jpg', 'CEO', '思特沃克一般指thoughtworks。thoughtWorks是一家创办于1993年的全球性软件及咨询公司，致力于用科技驱动商业变革，针对全球客户数字化业务提供专业组织转型咨询、创新软件交付、用户体验设计、产品及一体化解决方案等服务。', '香港中环皇后大道中区中环中心2806室', '思特沃克软件技术(香港)有限公司', '20200714/1594739359406.jpg', 'very good 项目，地址：https://www.yuanlrc.com/product/details.html?pid=346，真的棒！！！', '20200714/1594739434006.png', '茶售卖商城系统', '2000人以上', '已认证', '软件,信息,硬件,服务', '软件，信息', 'www.skwt.com', '一家全球信息技术服务公司', '6');
INSERT INTO `company` VALUES ('11', '2020-07-15 11:37:32', '2020-07-18 00:54:37', 'D轮及以上', '张涓', '20200718/1595004849321.jpg', 'CEO', '堆糖提供超快捷的图文收集工具，一键收集分享兴趣，还有各种兴趣主题小组，可以轻易地找到日常生活中难以遇到的、跟自己兴趣相同的朋友。 ', '上海市黄浦区北京东路666号B区810-1室', '上海堆糖信息科技有限公司', '20200715/1594784541084.jpg', '一个简单但功能齐全的博客系统，网址：https://www.yuanlrc.com/product/details.html?pid=366  oh!!this 项目真的很nice', '20200715/1594784798049.png', '博客发布系统', '500-2000人', '已认证', '社区,信息,科技,互联网', '社区,信息共享，收集', 'www.duitang.com', '堆糖网是一个全新社区，主题是收集发现喜爱的事物，以图片的方式来展示和浏览。', '7');
INSERT INTO `company` VALUES ('12', '2020-07-17 11:52:59', '2020-07-17 11:56:42', '上市公司', '柳传志', '20200717/1594958155589.jpg', 'CEO', '联想集团是1984年中国科学院计算技术研究所投资20万元人民币，由11名科技人员创办，是中国的一家在信息产业内多元化发展的大型企业集团，和富有创新性的国际化的科技公司。从1996年开始，联想电脑销量一直位居中国国内市场首位；作为全球电脑市场的领导企业，联想从事开发、制造并销售可靠的、安全易用的技术产品及优质专业的服务，帮助全球客户和合作伙伴取得成功。联想公司主要生产台式电脑、服务器、笔记本电脑、智能电视、打印机、掌上电脑、主板、手机、一体机电脑等商品。\n2005年，联想集团收购IBM PC（Personal computer，个人电脑）事业部；2013年，联想电脑销售量升居世界第一，成为全球最大的PC生产厂商。2014年10月，联想集团宣布该公司已经完成对摩托罗拉移动的收购。自2014年4月1日起， 联想集团成立了四个新的、相对独立的业务集团，分别是PC业务集团、移动业务集团、企业级业务集团、云服务业务集团。2016年8月，全国工商联发布“2016中国民营企业500强”榜单，联想名列第四。 [1]  ', '北京市海淀区上地西路6号2幢2层201-H2-6', ' 联想控股股份有限公司', '20200717/1594957977512.jpg', '好项目，快来买，网址：https://www.yuanlrc.com/product/details.html?pid=346', '20200717/1594957988969.png', '茶商城售卖系统', '2000人以上', '已认证', '研发,计算机,电子', '研发、生产、维修、测试电子计算机', 'www.lianxiang.com', '中国的一家在信息产业内多元化发展的大型企业集团，和富有创新性的国际化的科技公司。', '8');
INSERT INTO `company` VALUES ('14', '2020-07-18 10:27:51', '2020-07-18 10:37:30', '上市公司', '杨伟东', '20200718/1595039832842.jpg', 'CEO', '       优酷网是中国领先的视频分享网站，是中国网络视频行业的第一品牌。优酷网以 “快者为王”为产品理念，注重用户体验，不断完善服务策略，其卓尔不群的“快速播放，快速发布，快速搜索”的产品特性，充分满足用户日益增长的多元化互动需求，使之成为中国视频网站中的领军势力。优酷网现已成为互联网拍客聚集的阵营。美国东部时间2010年12月8日，优酷网成功在纽约证券交易所正式挂牌上市。\n       优酷网以视频分享为基础，开拓三网合一的成功应用模式，为用户浏览、搜索、创造和分享视频提供最高品质的服务。 优酷网是对古永锵诠释的“微视频”概念的全面演绎。关于“优酷”这个网名的由来，古永锵谈到：“优，代表服务品质，优酷倡导一种精品视频文化，让精品内容浮出水面，让用户价值充分展现;酷，代表用户体验，第一时间品味独特的视频自助餐，满足人人参与的热情与个性化生活方式的表达。”在优酷你可以最快、最方便地浏览、上传、搜索、分享丰富多彩的微视频内容。与播客有所不同，优酷不一定只有原创才能登台表演，无论业余或专业，无论个人或机构，优酷欢迎一切以微视频形式出现的视频收藏、自创与分享。', '北京市海淀区海淀东三街2号7层701-01室', '优酷信息技术(北京)有限公司', '20200718/1595039582295.png', '话不多说，上网址：https://www.yuanlrc.com/product/details.html?pid=366', '20200718/1595039609248.png', '博客发布系统', '2000人以上', '已认证', '视频,信息,科技,互联网', '信息，科技技术', 'www.youku.com', '优酷网全称合一网络技术有限公司是中国领先的视频分享网站，是国内网络视频行业的第一品牌。', '11');
INSERT INTO `company` VALUES ('15', '2020-07-18 11:03:44', '2020-07-18 11:17:40', '上市公司', '谢少军', '20200718/1595041703235.png', 'CEO', '深圳市奇猫科技有限公司的经营范围是：计算机数据库，计算机系统分析；计算机技术服务；数据库服务、数据库管理；计算机编程；计算机软件设计及开发；从事广告业务；无线电及外部设备、网络游戏、多媒体产品的系统集成及电子产品的技术开发与销售；无线接入设备、无线直放站设备的研发与销售；网页设计。', '深圳市龙岗区龙城街道中心城黄阁北路天安数码城1号大厦B座703', '深圳奇猫科技有限公司', '20200718/1595041368631.png', 'SSM项目，真不错，网址：https://www.yuanlrc.com/product/details.html?pid=346 ', '20200718/1595041452248.png', '茶售卖商城系统', '500-2000人', '已认证', '互联网,产品,科技', '互联网，科技', 'www.qimao.com', '深圳奇猫科技是一家科技公司,专注于移动互联网、互联网产品研发,目前产品还在开发中。', '12');

-- ----------------------------
-- Table structure for `education_background`
-- ----------------------------
DROP TABLE IF EXISTS `education_background`;
CREATE TABLE `education_background` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `end_year` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `start_year` varchar(255) NOT NULL,
  `study_record` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfjmjepb8jchkn9nw92q0gj1l` (`user_id`),
  CONSTRAINT `FKfjmjepb8jchkn9nw92q0gj1l` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of education_background
-- ----------------------------
INSERT INTO `education_background` VALUES ('1', '2020-07-13 11:54:56', '2020-07-13 14:59:38', '2022', '软件工程', '福建师范大学', '2018', '本科', '1');
INSERT INTO `education_background` VALUES ('3', '2020-07-18 11:26:22', '2020-07-18 11:26:22', '2014', '信息技术专业', '福建农林大学', '2010', '本科', '10');

-- ----------------------------
-- Table structure for `expect_work`
-- ----------------------------
DROP TABLE IF EXISTS `expect_work`;
CREATE TABLE `expect_work` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `money` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2kpbn1nwuixp9d8il9jyrst2l` (`user_id`),
  CONSTRAINT `FK2kpbn1nwuixp9d8il9jyrst2l` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of expect_work
-- ----------------------------
INSERT INTO `expect_work` VALUES ('2', '2020-07-12 18:01:48', '2020-07-13 14:57:01', '宁波', '50k以上', '项目总监', '1', '全职');

-- ----------------------------
-- Table structure for `operater_log`
-- ----------------------------
DROP TABLE IF EXISTS `operater_log`;
CREATE TABLE `operater_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` varchar(512) NOT NULL,
  `operator` varchar(18) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of operater_log
-- ----------------------------
INSERT INTO `operater_log` VALUES ('1', '2020-07-08 18:13:59', '2020-07-08 18:13:59', '修改了管理员信息。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('2', '2020-07-08 18:17:01', '2020-07-08 18:17:01', '登录了批改网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('3', '2020-07-08 21:19:03', '2020-07-08 21:19:03', '登录了批改网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('4', '2020-07-08 22:31:08', '2020-07-08 22:31:08', '登录了批改网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('5', '2020-07-08 22:37:05', '2020-07-08 22:37:05', '登录了批改网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('6', '2020-07-08 22:42:52', '2020-07-08 22:42:52', '登录了批改网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('7', '2020-07-08 22:45:30', '2020-07-08 22:45:30', '登录了批改网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('8', '2020-07-08 23:49:03', '2020-07-08 23:49:03', '登录了批改网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('13', '2020-07-09 14:29:10', '2020-07-09 14:29:10', '登录了批改网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('14', '2020-07-09 14:55:46', '2020-07-09 14:55:46', '登录了批改网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('15', '2020-07-09 15:14:44', '2020-07-09 15:14:44', '登录了批改网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('16', '2020-07-09 15:16:11', '2020-07-09 15:16:11', '登录了批改网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('17', '2020-07-09 15:16:23', '2020-07-09 15:16:23', '删除了职业类别(ID)：【5】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('18', '2020-07-09 17:42:20', '2020-07-09 17:42:20', '登录了批改网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('19', '2020-07-09 18:06:44', '2020-07-09 18:06:44', '删除了职业类别(ID)：【3】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('20', '2020-07-09 18:06:48', '2020-07-09 18:06:48', '删除了职业类别(ID)：【2】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('21', '2020-07-09 18:06:50', '2020-07-09 18:06:50', '删除了职业类别(ID)：【1】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('22', '2020-07-09 18:13:17', '2020-07-09 18:13:17', '添加了职业类别：【PositionCategory [parentId=null, _parentId=null, name=技术, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('23', '2020-07-09 18:13:34', '2020-07-09 18:13:34', '添加了职业类别：【PositionCategory [parentId=null, _parentId=null, name=产品, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('24', '2020-07-09 18:13:38', '2020-07-09 18:13:38', '添加了职业类别：【PositionCategory [parentId=null, _parentId=null, name=设计, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('25', '2020-07-09 18:13:48', '2020-07-09 18:13:48', '添加了职业类别：【PositionCategory [parentId=null, _parentId=null, name=运营, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('26', '2020-07-09 18:13:58', '2020-07-09 18:13:58', '添加了职业类别：【PositionCategory [parentId=null, _parentId=null, name=市场与销售, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('27', '2020-07-09 18:14:11', '2020-07-09 18:14:11', '添加了职业类别：【PositionCategory [parentId=null, _parentId=null, name=职能, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('28', '2020-07-09 18:17:06', '2020-07-09 18:17:06', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=8, name=移动开发, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('29', '2020-07-09 18:17:15', '2020-07-09 18:17:15', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=8, name=前端开发, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('30', '2020-07-09 18:17:26', '2020-07-09 18:17:26', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=8, name=测试, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('31', '2020-07-09 18:17:32', '2020-07-09 18:17:32', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=8, name=运维, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('32', '2020-07-09 18:17:38', '2020-07-09 18:17:38', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=8, name=DBA, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('33', '2020-07-09 18:17:52', '2020-07-09 18:17:52', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=8, name=DBA, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('34', '2020-07-09 18:20:44', '2020-07-09 18:20:44', '删除了职业类别(ID)：【19】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('35', '2020-07-09 18:29:18', '2020-07-09 18:29:18', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=8, name=项目管理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('36', '2020-07-09 18:29:30', '2020-07-09 18:29:30', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=8, name=高端技术职位, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('37', '2020-07-09 18:29:44', '2020-07-09 18:29:44', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=9, name=产品经理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('38', '2020-07-09 18:29:52', '2020-07-09 18:29:52', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=9, name=产品设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('39', '2020-07-09 18:30:14', '2020-07-09 18:30:14', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=9, name=高端产品职位, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('40', '2020-07-09 18:30:31', '2020-07-09 18:30:31', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=10, name=视觉设计, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('41', '2020-07-09 18:30:38', '2020-07-09 18:30:38', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=10, name=交互设计, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('42', '2020-07-09 18:30:49', '2020-07-09 18:30:49', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=10, name=用户研究, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('43', '2020-07-09 18:31:00', '2020-07-09 18:31:00', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=10, name=高端设计职位, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('44', '2020-07-09 18:31:15', '2020-07-09 18:31:15', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=11, name=运营, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('45', '2020-07-09 18:31:32', '2020-07-09 18:31:32', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=11, name=编辑, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('46', '2020-07-09 18:31:39', '2020-07-09 18:31:39', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=11, name=客服, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('47', '2020-07-09 18:31:52', '2020-07-09 18:31:52', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=11, name=高端运营职位, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('48', '2020-07-09 18:32:14', '2020-07-09 18:32:14', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=12, name=市场/销售, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('49', '2020-07-09 18:32:29', '2020-07-09 18:32:29', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=12, name=公关, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('50', '2020-07-09 18:32:36', '2020-07-09 18:32:36', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=12, name=销售, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('51', '2020-07-09 18:32:43', '2020-07-09 18:32:43', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=12, name=高端市场职位, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('52', '2020-07-09 18:33:05', '2020-07-09 18:33:05', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=13, name=人力资源, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('53', '2020-07-09 18:33:13', '2020-07-09 18:33:13', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=13, name=行政, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('54', '2020-07-09 18:33:23', '2020-07-09 18:33:23', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=13, name=财务, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('55', '2020-07-09 18:33:35', '2020-07-09 18:33:35', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=13, name=高端职能职位, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('56', '2020-07-09 18:33:53', '2020-07-09 18:33:53', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=14, name=Java, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('57', '2020-07-09 18:34:09', '2020-07-09 18:34:09', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=14, name=C++, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('58', '2020-07-09 18:34:18', '2020-07-09 18:34:18', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=14, name=PHP, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('59', '2020-07-09 18:34:36', '2020-07-09 18:34:36', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=14, name=数据挖掘, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('60', '2020-07-09 18:34:56', '2020-07-09 18:34:56', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=14, name=C, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('61', '2020-07-09 18:35:07', '2020-07-09 18:35:07', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=14, name=C#, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('62', '2020-07-09 18:35:22', '2020-07-09 18:35:22', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=14, name=.Net, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('63', '2020-07-09 18:35:36', '2020-07-09 18:35:36', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=后端开发, url=], _parentId=14, name=.NET, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('64', '2020-07-09 18:35:45', '2020-07-09 18:35:45', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=14, name=Hadoop, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('65', '2020-07-09 18:36:08', '2020-07-09 18:36:08', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=14, name=python, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('66', '2020-07-09 18:36:22', '2020-07-09 18:36:22', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=14, name=Delphi, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('67', '2020-07-09 18:36:27', '2020-07-09 18:36:27', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=后端开发, url=], _parentId=14, name=Python, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('68', '2020-07-09 18:54:02', '2020-07-09 18:54:02', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=14, name=VB, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('69', '2020-07-09 18:54:10', '2020-07-09 18:54:10', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=14, name=Perl, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('70', '2020-07-09 18:54:38', '2020-07-09 18:54:38', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=14, name=Ruby, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('71', '2020-07-09 18:54:48', '2020-07-09 18:54:48', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=14, name=Node.js, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('72', '2020-07-09 18:55:32', '2020-07-09 18:55:32', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=15, name=HTML5, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('73', '2020-07-09 18:55:47', '2020-07-09 18:55:47', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=15, name=Android, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('74', '2020-07-09 18:56:41', '2020-07-09 18:56:41', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=15, name=iOS, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('75', '2020-07-09 18:56:52', '2020-07-09 18:56:52', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=15, name=WP, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('76', '2020-07-09 18:57:37', '2020-07-09 18:57:37', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=16, name=web前端, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('77', '2020-07-09 18:57:44', '2020-07-09 18:57:44', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=16, name=Flash, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('78', '2020-07-09 18:58:39', '2020-07-09 18:58:39', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=16, name=html5, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('79', '2020-07-09 18:58:52', '2020-07-09 18:58:52', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=16, name=JavaScript, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('80', '2020-07-09 18:59:06', '2020-07-09 18:59:06', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=16, name=U3D, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('81', '2020-07-09 18:59:34', '2020-07-09 18:59:34', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=16, name=COCOS2D-X, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('82', '2020-07-09 18:59:50', '2020-07-09 18:59:50', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=17, name=测试工程师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('84', '2020-07-09 19:55:27', '2020-07-09 19:55:27', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=17, name=自动化测试, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('85', '2020-07-09 19:55:36', '2020-07-09 19:55:36', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=17, name=功能测试, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('86', '2020-07-09 19:55:55', '2020-07-09 19:55:55', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=17, name=性能测试, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('87', '2020-07-09 19:58:27', '2020-07-09 19:58:27', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=17, name=测试开发, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('88', '2020-07-09 19:58:53', '2020-07-09 19:58:53', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=18, name=运维工程师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('89', '2020-07-09 19:59:01', '2020-07-09 19:59:01', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=18, name=运维开发工程师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('90', '2020-07-09 19:59:16', '2020-07-09 19:59:16', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=18, name=网络工程师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('91', '2020-07-09 19:59:28', '2020-07-09 19:59:28', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=18, name=系统工程师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('92', '2020-07-09 19:59:40', '2020-07-09 19:59:40', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=18, name=IT支持, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('93', '2020-07-09 19:59:51', '2020-07-09 19:59:51', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=20, name=MySQL, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('94', '2020-07-09 20:00:16', '2020-07-09 20:00:16', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=20, name=SQLServer, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('95', '2020-07-09 20:00:22', '2020-07-09 20:00:22', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=20, name=Oracle, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('96', '2020-07-09 20:00:45', '2020-07-09 20:00:45', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=20, name=DB2, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('97', '2020-07-09 20:01:09', '2020-07-09 20:01:09', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=20, name=MongoDB, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('98', '2020-07-09 20:01:22', '2020-07-09 20:01:22', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=21, name=项目经理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('99', '2020-07-09 20:01:36', '2020-07-09 20:01:36', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=22, name=技术经理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('100', '2020-07-09 20:01:42', '2020-07-09 20:01:42', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=22, name=技术总监, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('101', '2020-07-09 20:01:55', '2020-07-09 20:01:55', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=22, name=测试经理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('102', '2020-07-09 20:02:02', '2020-07-09 20:02:02', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=22, name=架构师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('103', '2020-07-09 20:02:17', '2020-07-09 20:02:17', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=22, name=CTO, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('104', '2020-07-09 20:02:26', '2020-07-09 20:02:26', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=22, name=运维总监, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('105', '2020-07-09 20:02:53', '2020-07-09 20:02:53', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=23, name=产品经理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('106', '2020-07-09 20:03:02', '2020-07-09 20:03:02', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=23, name=网页产品经理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('107', '2020-07-09 20:03:18', '2020-07-09 20:03:18', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=23, name=移动产品经理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('108', '2020-07-09 20:03:33', '2020-07-09 20:03:33', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=23, name=产品助理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('109', '2020-07-09 20:03:42', '2020-07-09 20:03:42', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=23, name=数据产品经理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('110', '2020-07-09 20:04:01', '2020-07-09 20:04:01', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=23, name=电商产品经理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('111', '2020-07-09 20:04:08', '2020-07-09 20:04:08', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=23, name=游戏策划, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('112', '2020-07-09 20:04:47', '2020-07-09 20:04:47', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=24, name=网页产品设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('113', '2020-07-09 20:05:17', '2020-07-09 20:05:17', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=24, name=无线产品设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('114', '2020-07-09 20:05:33', '2020-07-09 20:05:33', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=25, name=产品部经理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('115', '2020-07-09 20:05:39', '2020-07-09 20:05:39', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=25, name=产品总监, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('116', '2020-07-09 20:06:03', '2020-07-09 20:06:03', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=26, name=视觉设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('117', '2020-07-09 20:06:11', '2020-07-09 20:06:11', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=26, name=网页设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('118', '2020-07-09 20:06:27', '2020-07-09 20:06:27', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=26, name=Flash设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('119', '2020-07-09 20:06:33', '2020-07-09 20:06:33', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=26, name=APP设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('120', '2020-07-09 20:06:44', '2020-07-09 20:06:44', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=26, name=UI设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('121', '2020-07-09 20:06:51', '2020-07-09 20:06:51', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=26, name=平面设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('122', '2020-07-09 20:07:10', '2020-07-09 20:07:10', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=26, name=美术设计师（2D/3D）, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('123', '2020-07-09 20:07:24', '2020-07-09 20:07:24', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=26, name=广告设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('124', '2020-07-09 20:07:33', '2020-07-09 20:07:33', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=26, name=多媒体设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('125', '2020-07-09 20:08:25', '2020-07-09 20:08:25', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=26, name=原画师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('126', '2020-07-09 20:08:32', '2020-07-09 20:08:32', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=26, name=游戏特效, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('127', '2020-07-09 20:08:49', '2020-07-09 20:08:49', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=26, name=游戏界面设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('128', '2020-07-09 20:09:08', '2020-07-09 20:09:08', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=26, name=游戏场景, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('129', '2020-07-09 20:09:14', '2020-07-09 20:09:14', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=26, name=游戏角色, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('130', '2020-07-09 20:09:22', '2020-07-09 20:09:22', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=26, name=游戏动作, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('131', '2020-07-09 20:09:37', '2020-07-09 20:09:37', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=27, name=交互设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('132', '2020-07-09 20:09:42', '2020-07-09 20:09:42', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=27, name=无线交互设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('133', '2020-07-09 20:09:55', '2020-07-09 20:09:55', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=27, name=网页交互设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('134', '2020-07-09 20:10:05', '2020-07-09 20:10:05', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=27, name=硬件交互设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('135', '2020-07-09 20:10:20', '2020-07-09 20:10:20', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=28, name=数据分析师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('136', '2020-07-09 20:10:32', '2020-07-09 20:10:32', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=28, name=用户研究员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('137', '2020-07-09 20:10:46', '2020-07-09 20:10:46', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=28, name=游戏数值策划, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('138', '2020-07-09 20:11:01', '2020-07-09 20:11:01', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=29, name=设计经理/主管, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('139', '2020-07-09 20:11:07', '2020-07-09 20:11:07', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=29, name=设计总监, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('140', '2020-07-09 20:11:28', '2020-07-09 20:11:28', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=29, name=视觉设计经理/主管, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('141', '2020-07-09 20:11:46', '2020-07-09 20:11:46', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=29, name=视觉设计总监, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('142', '2020-07-09 20:12:02', '2020-07-09 20:12:02', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=29, name=交互设计经理/主管, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('143', '2020-07-09 20:12:10', '2020-07-09 20:12:10', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=29, name=交互设计总监, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('144', '2020-07-09 20:12:28', '2020-07-09 20:12:28', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=29, name=用户研究经理/主管, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('145', '2020-07-09 20:12:37', '2020-07-09 20:12:37', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=29, name=用户研究总监, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('146', '2020-07-09 20:12:52', '2020-07-09 20:12:52', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=30, name=用户运营, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('147', '2020-07-09 20:12:57', '2020-07-09 20:12:57', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=30, name=产品运营, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('148', '2020-07-09 20:13:14', '2020-07-09 20:13:14', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=30, name=数据运营, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('149', '2020-07-09 20:13:20', '2020-07-09 20:13:20', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=30, name=内容运营, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('150', '2020-07-09 20:13:27', '2020-07-09 20:13:27', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=30, name=活动运营, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('151', '2020-07-09 20:13:40', '2020-07-09 20:13:40', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=30, name=商家运营, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('152', '2020-07-09 20:13:56', '2020-07-09 20:13:56', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=30, name=品类运营, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('153', '2020-07-09 20:14:03', '2020-07-09 20:14:03', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=30, name=游戏运营, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('154', '2020-07-09 20:14:15', '2020-07-09 20:14:15', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=30, name=网络推广, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('155', '2020-07-09 20:14:34', '2020-07-09 20:14:34', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=31, name=副主编, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('156', '2020-07-09 20:14:46', '2020-07-09 20:14:46', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=31, name=内容编辑, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('157', '2020-07-09 20:15:00', '2020-07-09 20:15:00', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=32, name=售前咨询, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('158', '2020-07-09 20:15:07', '2020-07-09 20:15:07', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=32, name=售后客服, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('159', '2020-07-09 20:15:21', '2020-07-09 20:15:21', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=33, name=主编, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('160', '2020-07-09 20:15:30', '2020-07-09 20:15:30', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=33, name=运营总监, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('161', '2020-07-09 20:16:06', '2020-07-09 20:16:06', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=33, name=COO, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('162', '2020-07-09 20:16:28', '2020-07-09 20:16:28', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=34, name=市场营销, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('163', '2020-07-09 20:16:33', '2020-07-09 20:16:33', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=34, name=市场策划, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('164', '2020-07-09 20:16:44', '2020-07-09 20:16:44', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=34, name=市场顾问, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('165', '2020-07-09 20:16:50', '2020-07-09 20:16:50', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=34, name=市场推广, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('166', '2020-07-09 20:17:03', '2020-07-09 20:17:03', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=34, name=SEO, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('167', '2020-07-09 20:17:09', '2020-07-09 20:17:09', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=34, name=SEM, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('168', '2020-07-09 20:17:34', '2020-07-09 20:17:34', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=34, name=商务渠道, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('169', '2020-07-09 20:17:42', '2020-07-09 20:17:42', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=34, name=商业数据分析, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('170', '2020-07-09 20:17:57', '2020-07-09 20:17:57', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=34, name=活动策划, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('171', '2020-07-09 20:18:14', '2020-07-09 20:18:14', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=35, name=媒介经理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('172', '2020-07-09 20:18:23', '2020-07-09 20:18:23', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=35, name=广告协调, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('173', '2020-07-09 20:18:45', '2020-07-09 20:18:45', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=35, name=品牌公关, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('174', '2020-07-09 20:19:08', '2020-07-09 20:19:08', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=36, name=销售专员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('175', '2020-07-09 20:19:13', '2020-07-09 20:19:13', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=36, name=销售经理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('176', '2020-07-09 20:19:30', '2020-07-09 20:19:30', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=36, name=客户代表, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('177', '2020-07-09 20:19:35', '2020-07-09 20:19:35', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=36, name=大客户代表, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('178', '2020-07-09 20:19:52', '2020-07-09 20:19:52', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=36, name=BD经理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('179', '2020-07-09 20:19:59', '2020-07-09 20:19:59', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=36, name=商务渠道, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('180', '2020-07-09 20:20:15', '2020-07-09 20:20:15', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=36, name=渠道销售, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('181', '2020-07-09 20:20:21', '2020-07-09 20:20:21', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=36, name=代理商销售, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('182', '2020-07-09 20:20:42', '2020-07-09 20:20:42', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=37, name=市场总监, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('183', '2020-07-09 20:20:51', '2020-07-09 20:20:51', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=37, name=销售总监, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('184', '2020-07-09 20:21:07', '2020-07-09 20:21:07', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=37, name=商务总监, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('185', '2020-07-09 20:21:12', '2020-07-09 20:21:12', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=37, name=CMO, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('186', '2020-07-09 20:21:33', '2020-07-09 20:21:33', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=37, name=公关总监, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('187', '2020-07-09 20:22:02', '2020-07-09 20:22:02', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=38, name=人力资源, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('188', '2020-07-09 20:22:09', '2020-07-09 20:22:09', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=38, name=招聘, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('189', '2020-07-09 20:22:24', '2020-07-09 20:22:24', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=38, name=HRBP, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('190', '2020-07-09 20:22:36', '2020-07-09 20:22:36', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=38, name=人事/HR, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('191', '2020-07-09 20:22:54', '2020-07-09 20:22:54', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=38, name=培训经理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('192', '2020-07-09 20:23:03', '2020-07-09 20:23:03', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=38, name=薪资福利经理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('193', '2020-07-09 20:23:29', '2020-07-09 20:23:29', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=38, name=绩效考核经理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('194', '2020-07-09 20:23:42', '2020-07-09 20:23:42', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=39, name=助理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('195', '2020-07-09 20:23:48', '2020-07-09 20:23:48', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=39, name=前台, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('196', '2020-07-09 20:23:58', '2020-07-09 20:23:58', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=39, name=法务, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('197', '2020-07-09 20:24:05', '2020-07-09 20:24:05', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=39, name=行政, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('198', '2020-07-09 20:24:19', '2020-07-09 20:24:19', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=40, name=会计, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('199', '2020-07-09 20:24:32', '2020-07-09 20:24:32', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=40, name=出纳, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('200', '2020-07-09 20:24:39', '2020-07-09 20:24:39', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=40, name=财务, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('201', '2020-07-09 20:25:04', '2020-07-09 20:25:04', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=41, name=行政总监/经理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('202', '2020-07-09 20:25:10', '2020-07-09 20:25:10', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=41, name=财务总监/经理, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('203', '2020-07-09 20:25:24', '2020-07-09 20:25:24', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=41, name=HRD/HRM, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('204', '2020-07-09 20:25:35', '2020-07-09 20:25:35', '添加了职业类别：【PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=null, url=null], _parentId=41, name=CFO, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('205', '2020-07-09 21:23:33', '2020-07-09 21:23:33', '登录了拉勾网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('206', '2020-07-13 14:39:02', '2020-07-13 14:39:02', '登录了拉勾网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('207', '2020-07-17 14:42:25', '2020-07-17 14:42:25', '登录了拉勾网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('208', '2020-07-17 14:43:06', '2020-07-17 14:43:06', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=后端开发, url=], _parentId=14, name=Java开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('209', '2020-07-17 14:43:13', '2020-07-17 14:43:13', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=后端开发, url=], _parentId=14, name=C++开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('210', '2020-07-17 14:44:21', '2020-07-17 14:44:21', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=后端开发, url=], _parentId=14, name=PHP开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('211', '2020-07-17 14:44:29', '2020-07-17 14:44:29', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=后端开发, url=], _parentId=14, name=C开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('212', '2020-07-17 14:44:37', '2020-07-17 14:44:37', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=后端开发, url=], _parentId=14, name=C#开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('213', '2020-07-17 14:44:40', '2020-07-17 14:44:40', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=后端开发, url=], _parentId=14, name=.NET开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('214', '2020-07-17 14:44:45', '2020-07-17 14:44:45', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=后端开发, url=], _parentId=14, name=Hadoop开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('215', '2020-07-17 14:45:09', '2020-07-17 14:45:09', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=后端开发, url=], _parentId=14, name=Python开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('216', '2020-07-17 14:45:17', '2020-07-17 14:45:17', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=后端开发, url=], _parentId=14, name=Delphi开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('217', '2020-07-17 14:45:29', '2020-07-17 14:45:29', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=后端开发, url=], _parentId=14, name=VB开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('218', '2020-07-17 14:45:33', '2020-07-17 14:45:33', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=后端开发, url=], _parentId=14, name=Perl开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('219', '2020-07-17 14:45:36', '2020-07-17 14:45:36', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=后端开发, url=], _parentId=14, name=Ruby开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('220', '2020-07-17 14:45:40', '2020-07-17 14:45:40', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=后端开发, url=], _parentId=14, name=Node.js开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('221', '2020-07-17 14:45:44', '2020-07-17 14:45:44', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=移动开发, url=], _parentId=15, name=HTML5开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('222', '2020-07-17 14:45:48', '2020-07-17 14:45:48', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=移动开发, url=], _parentId=15, name=iOS开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('223', '2020-07-17 14:45:51', '2020-07-17 14:45:51', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=移动开发, url=], _parentId=15, name=Android开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('224', '2020-07-17 14:45:55', '2020-07-17 14:45:55', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=移动开发, url=], _parentId=15, name=WP开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('225', '2020-07-17 14:45:59', '2020-07-17 14:45:59', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=前端开发, url=], _parentId=16, name=web前端开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('226', '2020-07-17 14:46:02', '2020-07-17 14:46:02', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=前端开发, url=], _parentId=16, name=Flash开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('227', '2020-07-17 14:46:05', '2020-07-17 14:46:05', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=前端开发, url=], _parentId=16, name=html5开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('228', '2020-07-17 14:46:09', '2020-07-17 14:46:09', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=前端开发, url=], _parentId=16, name=JavaScript开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('229', '2020-07-17 14:46:13', '2020-07-17 14:46:13', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=前端开发, url=], _parentId=16, name=U3D开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('230', '2020-07-17 14:46:23', '2020-07-17 14:46:23', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=前端开发, url=], _parentId=16, name=COCOS2D-X开发员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('231', '2020-07-17 14:46:39', '2020-07-17 14:46:39', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=测试, url=], _parentId=17, name=自动化测试测试员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('232', '2020-07-17 14:46:43', '2020-07-17 14:46:43', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=测试, url=], _parentId=17, name=功能测试测试员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('233', '2020-07-17 14:46:46', '2020-07-17 14:46:46', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=测试, url=], _parentId=17, name=测试开发测试员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('234', '2020-07-17 14:46:49', '2020-07-17 14:46:49', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=测试, url=], _parentId=17, name=性能测试测试员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('235', '2020-07-17 14:46:57', '2020-07-17 14:46:57', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=运维, url=], _parentId=18, name=IT支持工程师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('236', '2020-07-17 14:47:11', '2020-07-17 14:47:11', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=DBA, url=], _parentId=20, name=MySQL设计员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('237', '2020-07-17 14:47:15', '2020-07-17 14:47:15', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=DBA, url=], _parentId=20, name=SQLServer设计员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('238', '2020-07-17 14:47:17', '2020-07-17 14:47:17', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=DBA, url=], _parentId=20, name=Oracle设计员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('239', '2020-07-17 14:47:20', '2020-07-17 14:47:20', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=DBA, url=], _parentId=20, name=DB2设计员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('240', '2020-07-17 14:47:24', '2020-07-17 14:47:24', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=技术, url=], _parentId=8, name=DBA, url=], _parentId=20, name=MongoDB设计员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('241', '2020-07-17 14:47:40', '2020-07-17 14:47:40', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=设计, url=], _parentId=10, name=视觉设计, url=], _parentId=26, name=游戏特效设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('242', '2020-07-17 14:47:50', '2020-07-17 14:47:50', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=设计, url=], _parentId=10, name=视觉设计, url=], _parentId=26, name=游戏场景设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('243', '2020-07-17 14:47:53', '2020-07-17 14:47:53', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=设计, url=], _parentId=10, name=视觉设计, url=], _parentId=26, name=游戏角色设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('244', '2020-07-17 14:47:56', '2020-07-17 14:47:56', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=设计, url=], _parentId=10, name=视觉设计, url=], _parentId=26, name=游戏动作设计师, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('245', '2020-07-17 14:48:05', '2020-07-17 14:48:05', '修改了职业类别：【PositionCategory [parentId=PositionCategory [parentId=PositionCategory [parentId=null, _parentId=null, name=设计, url=], _parentId=10, name=用户研究, url=], _parentId=28, name=游戏数值策划员, url=]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('246', '2020-07-17 18:00:57', '2020-07-17 18:00:57', '登录了拉勾网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('247', '2020-07-17 18:57:32', '2020-07-17 18:57:32', '修改了管理员信息：【Admin [adminName=拉勾网管理员, password=123456, headPic=20200708/1594201189905.jpg, sex=2, mobile=13774559485, email=823208782@qq.com]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('248', '2020-07-17 18:57:37', '2020-07-17 18:57:37', '修改了管理员信息：【Admin [adminName=拉勾网管理员, password=123456, headPic=20200708/1594201189905.jpg, sex=1, mobile=13774559485, email=823208782@qq.com]】。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('249', '2020-07-17 19:03:59', '2020-07-17 19:03:59', '登录了拉勾网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('250', '2020-07-17 20:38:40', '2020-07-17 20:38:40', '登录了拉勾网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('251', '2020-07-17 20:59:11', '2020-07-17 20:59:11', '登录了拉勾网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('252', '2020-07-17 23:44:10', '2020-07-17 23:44:10', '登录了拉勾网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('253', '2020-07-18 09:57:53', '2020-07-18 09:57:53', '登录了拉勾网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('254', '2020-07-18 16:07:55', '2020-07-18 16:07:55', '登录了拉勾网后台管理系统。', '【拉勾网管理员】：');
INSERT INTO `operater_log` VALUES ('255', '2020-07-18 16:08:41', '2020-07-18 16:08:41', '登录了拉勾网后台管理系统。', '【拉勾网管理员】：');

-- ----------------------------
-- Table structure for `position`
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `address` varchar(255) NOT NULL,
  `advantage` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `description` longtext,
  `max_money` int(11) NOT NULL,
  `min_money` int(11) NOT NULL,
  `name` varchar(18) NOT NULL,
  `type` varchar(18) NOT NULL,
  `work_experience` varchar(255) NOT NULL,
  `work_type` varchar(255) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkpqfp6ontwcnqpkrfwv02iw1y` (`company_id`),
  CONSTRAINT `FKkpqfp6ontwcnqpkrfwv02iw1y` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES ('1', '2020-07-15 17:04:05', '2020-07-18 11:45:54', '南京市玄武区板仓街69号', '待遇好，薪资可面谈', '南京', '博士', '人力资源管理部门', '1. 千人以下快速发展的优秀互联网公司，HRM、HRD工作经验；<br/><br/>2. 具备具体项目独立操盘能力；<br/><br/>3. 目标导向，强自我驱动，认可并拥抱企业文化；<br/><br/>4. 过往经历过企业快速发展变革，具备有事业心和创业激情，愿意同公司一同发展、成长；<br/><br/>5. 良好的沟通/协调/推动能力，较高的人际敏感度、逻辑思维及分析能力，能够承担快速发展状态下的工作压力；', '13', '10', 'HRD/HRM', '高端职能职位', '5-10年', '全职', '8', 'effective', '2');
INSERT INTO `position` VALUES ('3', '2020-07-15 21:20:57', '2020-07-17 23:45:27', '厦门市湖滨东路319号', '适合大四学生实习，待遇也不错', '厦门', '大专', '开发部门', '你真心看不上用网页三剑客的人； <br/><br/> 你在git上开发或参与的项目，并持续维护； <br/><br/> 你不会在不是多屏工作的公司上班； <br/><br/> 你支持开源，对bootstrap 这种框架，喜爱程度是无法言语的； <br/><br/> 你有很好的设计品味，坚持移动优先的理念，跨屏幕的响应式，有很多经验； <br/><br/> 你是个超级APP控、工具控； <br/><br/> 你精通HTML5和CSS3规范和标准； <br/><br/> 你精通ANDRIOD和IOS开发标准； <br/><br/> 你静通JS，手写是你的业余爱好； <br/><br/> 当然，我们更欢迎各种超人加盟我们正日益壮大的团队。 <br/><br/> 人生苦短，为了生活和未来而奋斗的人儿，是时候换个姿势取悦自己了！ <br/><br/> 我们就是这样一群爱自己的人。 <br/><br/> 如果你也爱自己，请将你的故事及作品传送至：公司hr邮箱，我们翘首以盼。 ', '8', '5', 'web前端开发员', '前端开发', '应届毕业生', '实习', '8', 'effective', '1');
INSERT INTO `position` VALUES ('7', '2020-07-16 22:38:04', '2020-07-17 23:44:41', '重庆市南岸区广福大道22号 ', '有专门行业大佬带你手把手做项目，待遇也不错', '重庆', '本科', '开发部门', '岗位职责：<br/>1. 参加用户需求调研，详细记录用户的需求；<br/>2.用NET编程语言编写出实现各项功能的完整代码；<br/>3. 负责网站代码的优化和维护，保证网站的运行效率；<br/>4. 按时按质按量地完成日常公司网站业务的编程开发技术工作；<br/>5. 负责系统或软件的持续优化和改进。<br/>任职要求：<br/>1. 一年以上.NET开发经验，有当主程序员的工作经历；<br/>2. 掌握ASP.NET、C#、CSS、JavaScript、XML、jQuery、,AJAX、JOSN等开发技术；<br/>3. 熟悉关系数据库知识，熟练编写SQL语言、存储过程；能熟练使用SQL Server数据库或者Oracle数据库；<br/>4. 优秀的面向对象设计经验，熟悉常用的设计模式；<br/>5. 有良好的软件工程知识和质量意识，有优良的编程风格习惯。 ', '7', '5', '.NET开发员', '后端开发', '1年以下', '实习', '8', 'effective', '0');
INSERT INTO `position` VALUES ('8', '2020-07-16 22:39:26', '2020-07-17 23:44:51', '哈尔滨市道里区端街11号 ', '兼职待遇好，可以学到很多东西', '哈尔滨', '本科', '开发部门', '1.负责协助bai技术总监进行技术评du测，bug处理，代码开发；<br/><br/>2.负责网站数据库zhi、栏目、程序模块的设dao计与开发；<br/><br/>3.负责根据公司要求进行erp、oa、crm系统等项目开发；<br/><br/>4.定期与培训部和测试部沟通，获取反馈信息并进行相应的处理；<br/><br/>5.按时按质完成公司下达程度开发、系统评测等工作任务；<br/><br/>6.定期维护网站程序，处理反馈回来的系统bug；<br/><br/>7.网站程序开发文档的编写。', '7', '5', 'PHP开发员', '后端开发', '应届毕业生', '兼职', '8', 'effective', '1');
INSERT INTO `position` VALUES ('9', '2020-07-17 11:58:52', '2020-07-18 00:36:04', '杭州市下城区东新路155号 ', '有专业培训，薪资有加成，福利多', '杭州', '大专', '行政部门', '1.来访客人的接待。<br/><br/>2.正确和及时地处理各种电话、传达信息。<br/><br/>3.收发公司信件、传真、报纸、杂志等。<br/><br/>4.预订酒店、机票。<br/><br/>5.办公文具的申领及控制。<br/><br/>6.会议室使用预约及安排。<br/><br/>7.每月考勤记录和统计。<br/><br/>8.其他日常行政工作。', '8', '5', '前台', '行政', '1年以下', '实习', '10', 'effective', '0');
INSERT INTO `position` VALUES ('10', '2020-07-18 00:39:21', '2020-07-18 11:46:01', '广州市府前路一号', '升职快，该岗位急缺人才，可加薪，面谈', '广东', '博士', '设计部门', '教育培训： 美术及相关设计专业，博士以上学历。<br/>工作经验： 扎实的美术功底，丰富的页面设计经验，很好地把握视觉色彩与版面布局，优秀的创意能力及良好的艺术修养；精通Flash、Photoshop、Illusrtator的操作,熟悉Fireworks,InDesign,Dreamweaver,Coreldraw等设计软件；具备较强的学习能力，领悟能力，执行力，沟通能力。', '11', '9', '多媒体设计师', '视觉设计', '3-5年', '全职', '10', 'effective', '1');
INSERT INTO `position` VALUES ('12', '2020-07-18 00:45:58', '2020-07-18 00:46:54', '泉州市鲤城区浮桥街168号', '快速入门，五险一金，福利多', '泉州', '本科', '设计部门', '网页设计师的工作职责如下：<br/>1、负责公司网站的页面设计及美观优化；<br/>2、负责网站各类专题模板的设计及制作；<br/>3、负责网站各类活动的宣传广告、标语的图片设计；<br/>4、负责网站产品的美工设计，对交互体验有较为深入的了解；<br/>5、对页面进行持续的优化，不断提升访问者的用户体验；<br/>6、编写可复用的用户界面组件；<br/>7、协同其他技术部门，做前端开发技术支持。 ', '7', '5', '网页产品设计师', '产品设计师', '应届毕业生', '全职', '10', 'effective', '0');
INSERT INTO `position` VALUES ('13', '2020-07-18 00:56:36', '2020-07-18 01:05:59', '武汉汉口解放大道686号世界贸易大厦4201-4204室', '工作不会太累，薪资待遇不错，有专业培训', '武汉', '硕士', '编辑部门', '1.坚持贯彻办刊方针，负责刊物的学术、编辑和出版质量。<br/><br/>2.协助主编做好编委会工作。<br/><br/>3.协助并指导编辑部制订工作规划，做好总体设计和导向，并检查执行情况。<br/><br/>4.负责期刊二校样的复核工作。<br/><br/>5.关注期刊工作的开展动向，加强信息反馈,借鉴国内外先进的办刊方法，注意提高刊物在国内外的学术影响。', '9', '7', '副主编', '编辑', '1-3年', '兼职', '11', 'effective', '0');
INSERT INTO `position` VALUES ('14', '2020-07-18 00:59:58', '2020-07-18 01:00:45', '天津和平区永安道罗马花园', '五险一金，待遇好，有分红', '天津', '硕士', '开发部门', '岗位职责：<br/>　　 1、 负责数据库系统的运行维护、管理和性能调优(SQL Server);2、 负责系统软、硬件的部署、监控以及调优，包括 JVM 的调优、中间件调优、底层硬件设备的优化;3、 负责关键数据备份和恢复，设计可恢复备份策略。<br/><br/>任职要求:<br/>　　 1、精通SQL Server、Oracle数据库的运行机制和体系架构以及系统的调优;2、熟练安装搭建数据库服务器及集群系统、双机热备，包括SQL Server和Oracle;3、能够向开发人员提供数据库技术支持，并对程序开发中调用的sql语句进行优化;4、熟悉Linux、FreeBSD等操作系统安装、配置和使用;5、具备一定的JAVA开发编程基础,以及数据库脚本编程能力、掌握数据库维护相关的脚本工具;6、熟悉数据库系统的监控，能及时发现和解决问题;7、深入理解存储系统，精通面向应用的IO性能优化。', '12', '8', 'SQLServer设计员', 'DBA', '5-10年', '全职', '11', 'effective', '0');
INSERT INTO `position` VALUES ('15', '2020-07-18 01:05:02', '2020-07-18 01:05:52', '上海市静安区陕西北路486 ', '高薪资，多福利，多保障', '上海', '博士', '管理部门', '主要职责有：<br/><br/>1.负责项目立项、需求调研、需求分析、系统开发、系统部署实施等过程的管理；<br/><br/>2. 负责项目团队管理和项目开发工作，包括确定项目的人员工作安排；<br/><br/>3. 编制项目开发计划；识别和控制项目风险；有效控制项目开发过程和项目质量；<br/><br/>4. 参与项目评审评估会议；<br/><br/>5. 有效管理项目资源，为项目所有成员提供足够的设备、有效的工具和项目开发过程；<br/><br/>6. 负责与客户的沟通，有效的控制客户需求，解决项目开发过程中遇到的质量问题和管理问题；<br/><br/>7. 负责项目资料的收集、整理、建档、保存。', '16', '13', '项目经理', '项目管理', '5-10年', '全职', '11', 'effective', '0');
INSERT INTO `position` VALUES ('16', '2020-07-18 10:03:11', '2020-07-18 10:03:41', '青岛市市南区香港中路11号', '薪资高，福利多，前景好', '青岛', '博士', '开发部门', '岗位职责：<br/><br/>1.系统架构设计，编码、调试及维护升级；<br/><br/>2.负责项目开发过程文档材料编写。<br/><br/>任职要求：<br/><br/>1.本科及以上学历，两年以上java开发经验；<br/><br/>2.精通java开发，掌握java多线程并发处理和socket通信技术<br/><br/>3、熟练应用（Spring，Spring mvc，Spring boot，Hibernate/MyBatis）<br/><br/>4. 精通Tomcat的使用和工程发布；<br/><br/>4.了解JavaScript，HTML，CSS，Ajax等前端技术。', '11', '9', 'Java开发员', '后端开发', '3-5年', '全职', '12', 'effective', '0');
INSERT INTO `position` VALUES ('17', '2020-07-18 10:06:11', '2020-07-18 10:06:33', '江西南昌高新区京东大道1699号', '有专门的培训人员带你入门，上手快，实习几年可转正', '南昌', '本科', '开发部门', '岗位职责：<br/>1．根据产品需求，设计并完成Android端开发工作<br/>2．参与产品需求分析并参与技术实施方案设计<br/>3．负责编写和维护技术文档<br/>4．与html5进行交互式移动平台的开发<br/><br/>任职要求：<br/>1. 本科以上学历，计算机相关专业<br/>2. 2年以上Android软件开发经验,至少3个独立开发并上线的App<br/>3. 较强的Java和面向对象语言功能,Android应用程序开发专家<br/>4. 优秀的沟通技巧', '6', '4', 'Android开发员', '移动开发', '应届毕业生', '实习', '12', 'effective', '0');
INSERT INTO `position` VALUES ('18', '2020-07-18 10:10:13', '2020-07-18 10:10:37', '福州仓山区建新镇金林路35号', '兼职工作任务少，待遇不错，值得考虑！！', '福州', '硕士', '开发部门', '工作内容：<br/>移动app开发：<br/>1.根据需求在IOS移动端进行APP的设计与开发；<br/><br/>2.参与移动端的接口开发，架构设计；<br/><br/>3.独立完成开发工作，进行模块测试，保证代码的质量；<br/><br/><br/>任职要求：<br/>1.熟悉IOS网络编程、UI框架，熟练应用Xcode，interface Builder等开发工具；<br/><br/>2.精通XML，Json，熟悉加密算法；<br/><br/>3.熟练Object-c程序设计，了解iphone sdk及相关开发工具，具有完整完成IOS平台应用程序熟悉开发流程；<br/><br/>4.已有应用在苹果App store上线优先；<br/><br/>', '8', '6', 'iOS开发员', '移动开发', '1-3年', '兼职', '12', 'effective', '0');
INSERT INTO `position` VALUES ('19', '2020-07-18 10:16:43', '2020-07-18 10:17:34', '西安市凤城八路109号', '晋升快，待遇好，五险一金', '西安', '博士', '开发部门', '岗位职责：<br/>为网站上提供的产品和服务实现一流的Web界面，优化代码并保持良好兼容性;<br/><br/>1.HTML5开发表现层及与前后端交互的架构设计和开发;<br/><br/>2.JavaScript程序模块开发，通用类库、框架编写;<br/><br/>3.利用各种Web技术模拟开发产品原型;<br/><br/>4.配合后台开发人员实现产品界面和功能;<br/><br/>5.Web新技术调研和资讯整理;<br/><br/>6.精通HTML/XHTML、CSS，熟悉页面架构和布局，对Web标准和标签语义化有深入理解;<br/><br/>7.精通Ajax、JavaScript(或者ActionScript)、DOM等前端技术，掌握面向对象编程思想;<br/><br/>8.熟悉一种以上后台开发语言(如PHP/Java或C/C++/.NET)以及一种数据库(如MySQL/Oracle)，有Linux系统操作;', '10', '8', 'html5开发员', '前端开发', '5-10年', '全职', '9', 'effective', '0');
INSERT INTO `position` VALUES ('20', '2020-07-18 10:19:39', '2020-07-18 10:19:57', '珠海市香洲区东风路104号 ', '薪资高，分红多，公司发展前景好！', '珠海', '博士', '产品部门', '产品经理岗位职责<br/><br/>1、负责产品的需求发现和分析，产品功能设计；<br/><br/>2、持续挖掘用户需求进行产品创新，合理规划产品发展与功能规划，协调推动产品功能实施；<br/><br/>3、关注运营数据、用户调研与反馈等，持续优化产品；<br/><br/>4、关注竞争对手的状况，对市场变化反应敏锐；<br/><br/>5、负责产品界面和交互全局和细节设计，推动产品交互体验持续提升；<br/><br/>6、规划管理项目进度，推动项目的技术实现，把控项目实施质量和效率；<br/><br/>7、指导和管理产品设计师，建设高品质UI&交互团队；<br/><br/>8、对产品的长期发展战略提出建设性意见，进行相关市场调查，为公司决策层提供相应依据。 <br/><br/>产品经理岗位要求<br/><br/>1、对网站易用性设计和用户体验有良好的直觉，注重细节；<br/><br/>2、具有较强的策划能力，对产品和运营敏感，思维清晰有条理；<br/><br/>3、对数据敏感，善于发现问题，解决问题；<br/><br/>4、具有较强的产品文档书写能力和团队沟通协调能力；<br/><br/>5、具有强烈责任心和上进心；', '14', '11', '产品经理', '产品经理', '5-10年', '全职', '9', 'effective', '0');
INSERT INTO `position` VALUES ('21', '2020-07-18 10:23:09', '2020-07-18 11:45:36', '海口新宏基大厦B座902 ', '分红多，待遇好，公司规模大', '海口', '硕士', '销售部门', '销售经理岗bai位职责<br/>1、 在销售总部领导下，du和各部门密切配zhi合完成工作。<br/>2、 严格遵守公司各项规章制度dao，处处起到表率作用。<br/>3、 制订销售计划。<br/>4、 确定销售政策。<br/>5、 设计销售模式。<br/>6、 销售人员的招募、选择、培训、调配。<br/>7、 销售业绩的考察评估。<br/>8、 销售渠道与客户管理。<br/>9、 财务管理、防止呆帐坏帐对策、帐款回收。<br/>10、 销售情况的及时汇总、汇报并提出合理建议。 ', '9', '6', '销售经理', '销售', '1年以下', '兼职', '9', 'effective', '1');
INSERT INTO `position` VALUES ('22', '2020-07-18 10:30:38', '2020-07-18 10:31:16', '云南省昆明市西山区书林街139号 ', '工作量少，待遇不菲，岗位急缺人才，应聘就能上位', '昆明', '硕士', '人力部门', '人事部岗位职责：<br/>1、 bai负责公司人力资源工作du的规划，建立、执行招聘、zhi培训、考勤、dao劳动纪律等人事程序或规章制度；<br/>2、 负责制定和完善公司岗位编制，协调公司各部门有效的开发和利用人力，满足公司的经营管理需要；<br/>3、 根据现有的编织及业务发展需求，协调、统计各部门的招聘需求，编制年度/月度人员招聘计划，经批准后实施；<br/>4、 做好各岗位的职位说明书，并根据公司职位调整组要进行相应的变更，保证职位说明书与实际相符；<br/>5、 负责办理入职手续，负责人事档案的管理、保管、用工合同的签订；', '8', '6', '人事/HR', '人力资源', '1-3年', '兼职', '14', 'effective', '0');
INSERT INTO `position` VALUES ('23', '2020-07-18 10:44:02', '2020-07-18 11:45:12', '江苏无锡市滨湖区新金匮路1号', '待遇丰厚，提拔快，前景好！', '无锡', '博士', '公关部门', '媒介经理岗位职责：<br/><br/>1、参与组织并落实公司制du订的广告投放计划及zhi费用与预算；<br/><br/>2、协调和指导各地代理商的广告宣dao传、促销、公关等工作；<br/><br/>3、监管各地vi系统的执行，并行使不符合要求的否决权，责成定期整改；<br/><br/>4、对公司广告投放效果进行评估；<br/><br/>5、制定年度媒介宣传计划；<br/><br/>6、维护媒体关系，定期举行媒体见面会；<br/><br/>7、对新产品上市及推广制定相关计划；<br/><br/>8、负责拍摄公司的广告片及产品专题片（品牌片，产品片，产品功能专题片）。', '11', '9', '媒介经理', '公关', '5-10年', '全职', '14', 'effective', '1');
INSERT INTO `position` VALUES ('24', '2020-07-18 10:48:01', '2020-07-18 10:48:19', '贵州省贵阳市云岩区毓秀路18号', '入门快，有专业大佬带你入门，干得好可转正!', '贵阳', '大专', '营销部门', '市场营销职责：<br/><br/>（1）正确地掌握市场和合理地协助总经理室设定销售目标。<br/><br/>（2）决定销售策略和建立销售计划，采取行动实施。<br/><br/>（3）善用推销员的能力、引发推销员的斗志。<br/><br/>（4）进行管理销售活动，职务分配和内部沟通。<br/><br/>（5）有效地组织销售事务、统计、分析和工作量测定<br/><br/>（6）利益计划与管理。<br/><br/>（7）及时总结汇报情况，上呈总经理室', '5', '3', '市场营销', '市场/销售', '1年以下', '实习', '14', 'effective', '0');
INSERT INTO `position` VALUES ('25', '2020-07-18 11:12:29', '2020-07-18 11:16:32', '郑州市中原区淮河西路56号 ', '岗位急缺数据分析师人才，薪资从优！', '郑州', '博士', '研究部门', '数据分析师招聘要求<br/><br/><br/>　　1、3年或以上相关工作经验，有知名教育和互联网公司工作经验优先<br/><br/><br/>　　2、良好的逻辑思维能力，沟通能力和抗压能力<br/><br/><br/>　　3、熟练使用SQL & Hive SQL，熟悉一门脚本语言，如Python或者R<br/><br/><br/>　　4、具备开放的团队合作心态，和拼搏的工作状态<br/><br/><br/>　　5、应用数学、统计学、电子商务、计算机等相关专业背景，本科及以上学历，5年以上数据分析工作经验<br/><br/><br/>　　6、具备良好的沟通能力和表达能力，能够独立开展业务调研、数据分析、报告编写工作<br/><br/><br/>　　7、有较强的数据敏感度，良好的沟通协调能力，能承受一定的工作压力<br/><br/> <br/><br/>　　8、具有专业的业务研究、分析能力，根据业务数据变化及时发现问题的能力<br/><br/><br/>　　9、能精通操作Excel、Powerpoint等软件，熟悉至少一种数据库，熟悉SQL/运用SAS、SPSS等专业统计分析工具<br/><br/><br/>　　10、较强的工作主动性及抗压能力，工作细致耐心，有责任感,有较强的保密意识，团队合作意识强<br/><br/><br/>　　11、熟悉数据挖掘常用算法优先，有互联网工作经验者优先', '14', '10', '数据分析师', '用户研究', '10年以上', '全职', '15', 'effective', '0');
INSERT INTO `position` VALUES ('26', '2020-07-18 11:15:46', '2020-07-18 11:16:41', '大连西岗区人民广场1号', '分红多，兼职任务少，待遇也不错！', '大连', '本科', '技术部门', '岗位职责：<br/>1、坚决服从总经理的统一指挥，认真执行其工作指令，一切管理行为向领导负责。<br/>2、严格遵守公司规章制度，认真履行其工作职责。<br/>3、负责制定公司技术管理制度。负责建立和完善产品设计、新产品的试制、标准化技术规程、技术情报管理制度，组织、协调、督促有关部门建立和完善设备、质量、能源等管理标准及制度。<br/>4、组织和编制公司技术发展规划。编制近期技术提高工作计划，编制长远技术发展和技术措施规划，并组织对计划、规划的拟定、修改、补充、实施等一系列技术组织和管理工作。<br/>5、负责制定和修改技术规程。编制产品的使用、维修和技术安全等有关的技术规定。<br/>6、负责公司新技术引进和产品开发工作的计划、实施，确保产品品种不断更新和扩大。<br/>7、合理编制技术文件，改进和规范工艺流程。<br/>8、研究和摸索科学的流水作业规律，认真做好各类技术信息和资料收集、整理、分析、研究汇归档保管工作，为逐步实现公司现代化销售的目标，提供可靠的指导依据。<br/>9、负责制定公司产品的企业统一标准，实现产品的规范化管理。<br/>10、编制公司产品标准，按年度审核、补充、修订定额内容。<br/>11、认真做好技术图纸、技术资料的归档工作。<br/>负责制定严格的技术资料交接、保管工作制度。<br/>12、及时指导、处理、协调和解决产品出现的技术问题，确保经营工作的正常进行。<br/>13、及时搜集整理国内外产品发展信息，及时把握产品发展趋势。<br/>14、负责编制公司技术开发计划，抓好技术管理人才培养，技术队伍的管理。有计划的推荐引进培养专业技术人员，搞好业务培训和管理工作。<br/>15、组织技术成果及技术经济效益的评价工作。<br/>16、负责公司技术管理制度制订、监督、指导、考核专业管理人员。<br/>17、按时完成公司领导交办的其它工作任务。', '10', '8', '技术经理', '高端技术职位', '3-5年', '兼职', '15', 'effective', '0');

-- ----------------------------
-- Table structure for `position_category`
-- ----------------------------
DROP TABLE IF EXISTS `position_category`;
CREATE TABLE `position_category` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `name` varchar(18) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  `_parent_id` bigint(20) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfa2drl4ultklu8022uwenvfbh` (`parent_id`),
  CONSTRAINT `FKfa2drl4ultklu8022uwenvfbh` FOREIGN KEY (`parent_id`) REFERENCES `position_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of position_category
-- ----------------------------
INSERT INTO `position_category` VALUES ('8', '2020-07-09 18:13:17', '2020-07-09 18:13:17', '技术', '', null, null);
INSERT INTO `position_category` VALUES ('9', '2020-07-09 18:13:34', '2020-07-09 18:13:34', '产品', '', null, null);
INSERT INTO `position_category` VALUES ('10', '2020-07-09 18:13:38', '2020-07-09 18:13:38', '设计', '', null, null);
INSERT INTO `position_category` VALUES ('11', '2020-07-09 18:13:48', '2020-07-09 18:13:48', '运营', '', null, null);
INSERT INTO `position_category` VALUES ('12', '2020-07-09 18:13:58', '2020-07-09 18:13:58', '市场与销售', '', null, null);
INSERT INTO `position_category` VALUES ('13', '2020-07-09 18:14:11', '2020-07-09 18:14:11', '职能', '', null, null);
INSERT INTO `position_category` VALUES ('14', '2020-07-09 18:14:42', '2020-07-09 18:14:42', '后端开发', '', '8', '8');
INSERT INTO `position_category` VALUES ('15', '2020-07-09 18:17:06', '2020-07-09 18:17:06', '移动开发', '', '8', '8');
INSERT INTO `position_category` VALUES ('16', '2020-07-09 18:17:15', '2020-07-09 18:17:15', '前端开发', '', '8', '8');
INSERT INTO `position_category` VALUES ('17', '2020-07-09 18:17:26', '2020-07-09 18:17:26', '测试', '', '8', '8');
INSERT INTO `position_category` VALUES ('18', '2020-07-09 18:17:32', '2020-07-09 18:17:32', '运维', '', '8', '8');
INSERT INTO `position_category` VALUES ('20', '2020-07-09 18:17:52', '2020-07-09 18:17:52', 'DBA', '', '8', '8');
INSERT INTO `position_category` VALUES ('21', '2020-07-09 18:29:18', '2020-07-09 18:29:18', '项目管理', '', '8', '8');
INSERT INTO `position_category` VALUES ('22', '2020-07-09 18:29:30', '2020-07-09 18:29:30', '高端技术职位', '', '8', '8');
INSERT INTO `position_category` VALUES ('23', '2020-07-09 18:29:44', '2020-07-09 18:29:44', '产品经理', '', '9', '9');
INSERT INTO `position_category` VALUES ('24', '2020-07-09 18:29:52', '2020-07-09 18:29:52', '产品设计师', '', '9', '9');
INSERT INTO `position_category` VALUES ('25', '2020-07-09 18:30:14', '2020-07-09 18:30:14', '高端产品职位', '', '9', '9');
INSERT INTO `position_category` VALUES ('26', '2020-07-09 18:30:31', '2020-07-09 18:30:31', '视觉设计', '', '10', '10');
INSERT INTO `position_category` VALUES ('27', '2020-07-09 18:30:38', '2020-07-09 18:30:38', '交互设计', '', '10', '10');
INSERT INTO `position_category` VALUES ('28', '2020-07-09 18:30:49', '2020-07-09 18:30:49', '用户研究', '', '10', '10');
INSERT INTO `position_category` VALUES ('29', '2020-07-09 18:31:00', '2020-07-09 18:31:00', '高端设计职位', '', '10', '10');
INSERT INTO `position_category` VALUES ('30', '2020-07-09 18:31:15', '2020-07-09 18:31:15', '运营', '', '11', '11');
INSERT INTO `position_category` VALUES ('31', '2020-07-09 18:31:32', '2020-07-09 18:31:32', '编辑', '', '11', '11');
INSERT INTO `position_category` VALUES ('32', '2020-07-09 18:31:39', '2020-07-09 18:31:39', '客服', '', '11', '11');
INSERT INTO `position_category` VALUES ('33', '2020-07-09 18:31:52', '2020-07-09 18:31:52', '高端运营职位', '', '11', '11');
INSERT INTO `position_category` VALUES ('34', '2020-07-09 18:32:14', '2020-07-09 18:32:14', '市场/销售', '', '12', '12');
INSERT INTO `position_category` VALUES ('35', '2020-07-09 18:32:29', '2020-07-09 18:32:29', '公关', '', '12', '12');
INSERT INTO `position_category` VALUES ('36', '2020-07-09 18:32:36', '2020-07-09 18:32:36', '销售', '', '12', '12');
INSERT INTO `position_category` VALUES ('37', '2020-07-09 18:32:43', '2020-07-09 18:32:43', '高端市场职位', '', '12', '12');
INSERT INTO `position_category` VALUES ('38', '2020-07-09 18:33:05', '2020-07-09 18:33:05', '人力资源', '', '13', '13');
INSERT INTO `position_category` VALUES ('39', '2020-07-09 18:33:13', '2020-07-09 18:33:13', '行政', '', '13', '13');
INSERT INTO `position_category` VALUES ('40', '2020-07-09 18:33:23', '2020-07-09 18:33:23', '财务', '', '13', '13');
INSERT INTO `position_category` VALUES ('41', '2020-07-09 18:33:35', '2020-07-09 18:33:35', '高端职能职位', '', '13', '13');
INSERT INTO `position_category` VALUES ('42', '2020-07-09 18:33:53', '2020-07-17 14:58:48', 'Java开发员', '/home/position/list?search_value=Java开发员', '14', '14');
INSERT INTO `position_category` VALUES ('43', '2020-07-09 18:34:09', '2020-07-17 14:58:48', 'C++开发员', '/home/position/list?search_value=C++开发员', '14', '14');
INSERT INTO `position_category` VALUES ('44', '2020-07-09 18:34:18', '2020-07-17 14:58:48', 'PHP开发员', '/home/position/list?search_value=PHP开发员', '14', '14');
INSERT INTO `position_category` VALUES ('45', '2020-07-09 18:34:36', '2020-07-17 14:58:48', '数据挖掘', '/home/position/list?search_value=数据挖掘', '14', '14');
INSERT INTO `position_category` VALUES ('46', '2020-07-09 18:34:56', '2020-07-17 14:58:48', 'C开发员', '/home/position/list?search_value=C开发员', '14', '14');
INSERT INTO `position_category` VALUES ('47', '2020-07-09 18:35:07', '2020-07-17 14:58:48', 'C#开发员', '/home/position/list?search_value=C#开发员', '14', '14');
INSERT INTO `position_category` VALUES ('48', '2020-07-09 18:35:22', '2020-07-17 14:58:48', '.NET开发员', '/home/position/list?search_value=.NET开发员', '14', '14');
INSERT INTO `position_category` VALUES ('49', '2020-07-09 18:35:45', '2020-07-17 14:58:48', 'Hadoop开发员', '/home/position/list?search_value=Hadoop开发员', '14', '14');
INSERT INTO `position_category` VALUES ('50', '2020-07-09 18:36:08', '2020-07-17 14:58:48', 'Python开发员', '/home/position/list?search_value=Python开发员', '14', '14');
INSERT INTO `position_category` VALUES ('51', '2020-07-09 18:36:22', '2020-07-17 14:58:48', 'Delphi开发员', '/home/position/list?search_value=Delphi开发员', '14', '14');
INSERT INTO `position_category` VALUES ('52', '2020-07-09 18:54:02', '2020-07-17 14:58:48', 'VB开发员', '/home/position/list?search_value=VB开发员', '14', '14');
INSERT INTO `position_category` VALUES ('53', '2020-07-09 18:54:10', '2020-07-17 14:58:48', 'Perl开发员', '/home/position/list?search_value=Perl开发员', '14', '14');
INSERT INTO `position_category` VALUES ('54', '2020-07-09 18:54:38', '2020-07-17 14:58:48', 'Ruby开发员', '/home/position/list?search_value=Ruby开发员', '14', '14');
INSERT INTO `position_category` VALUES ('55', '2020-07-09 18:54:48', '2020-07-17 14:58:48', 'Node.js开发员', '/home/position/list?search_value=Node.js开发员', '14', '14');
INSERT INTO `position_category` VALUES ('56', '2020-07-09 18:55:32', '2020-07-17 14:58:48', 'HTML5开发员', '/home/position/list?search_value=HTML5开发员', '15', '15');
INSERT INTO `position_category` VALUES ('57', '2020-07-09 18:55:47', '2020-07-17 14:58:48', 'Android开发员', '/home/position/list?search_value=Android开发员', '15', '15');
INSERT INTO `position_category` VALUES ('58', '2020-07-09 18:56:41', '2020-07-17 14:58:48', 'iOS开发员', '/home/position/list?search_value=iOS开发员', '15', '15');
INSERT INTO `position_category` VALUES ('59', '2020-07-09 18:56:52', '2020-07-17 14:58:48', 'WP开发员', '/home/position/list?search_value=WP开发员', '15', '15');
INSERT INTO `position_category` VALUES ('60', '2020-07-09 18:57:37', '2020-07-17 14:58:48', 'web前端开发员', '/home/position/list?search_value=web前端开发员', '16', '16');
INSERT INTO `position_category` VALUES ('61', '2020-07-09 18:57:44', '2020-07-17 14:58:48', 'Flash开发员', '/home/position/list?search_value=Flash开发员', '16', '16');
INSERT INTO `position_category` VALUES ('62', '2020-07-09 18:58:39', '2020-07-17 14:58:48', 'html5开发员', '/home/position/list?search_value=html5开发员', '16', '16');
INSERT INTO `position_category` VALUES ('63', '2020-07-09 18:58:52', '2020-07-17 14:58:48', 'JavaScript开发员', '/home/position/list?search_value=JavaScript开发员', '16', '16');
INSERT INTO `position_category` VALUES ('64', '2020-07-09 18:59:06', '2020-07-17 14:58:48', 'U3D开发员', '/home/position/list?search_value=U3D开发员', '16', '16');
INSERT INTO `position_category` VALUES ('65', '2020-07-09 18:59:34', '2020-07-17 14:58:48', 'COCOS2D-X开发员', '/home/position/list?search_value=COCOS2D-X开发员', '16', '16');
INSERT INTO `position_category` VALUES ('66', '2020-07-09 18:59:50', '2020-07-17 14:58:48', '测试工程师', '/home/position/list?search_value=测试工程师', '17', '17');
INSERT INTO `position_category` VALUES ('67', '2020-07-09 19:55:27', '2020-07-17 14:58:48', '自动化测试测试员', '/home/position/list?search_value=自动化测试测试员', '17', '17');
INSERT INTO `position_category` VALUES ('68', '2020-07-09 19:55:36', '2020-07-17 14:58:48', '功能测试测试员', '/home/position/list?search_value=功能测试测试员', '17', '17');
INSERT INTO `position_category` VALUES ('69', '2020-07-09 19:55:55', '2020-07-17 14:58:48', '性能测试测试员', '/home/position/list?search_value=性能测试测试员', '17', '17');
INSERT INTO `position_category` VALUES ('70', '2020-07-09 19:58:27', '2020-07-17 14:58:48', '测试开发测试员', '/home/position/list?search_value=测试开发测试员', '17', '17');
INSERT INTO `position_category` VALUES ('71', '2020-07-09 19:58:53', '2020-07-17 14:58:48', '运维工程师', '/home/position/list?search_value=运维工程师', '18', '18');
INSERT INTO `position_category` VALUES ('72', '2020-07-09 19:59:01', '2020-07-17 14:58:48', '运维开发工程师', '/home/position/list?search_value=运维开发工程师', '18', '18');
INSERT INTO `position_category` VALUES ('73', '2020-07-09 19:59:16', '2020-07-17 14:58:48', '网络工程师', '/home/position/list?search_value=网络工程师', '18', '18');
INSERT INTO `position_category` VALUES ('74', '2020-07-09 19:59:28', '2020-07-17 14:58:48', '系统工程师', '/home/position/list?search_value=系统工程师', '18', '18');
INSERT INTO `position_category` VALUES ('75', '2020-07-09 19:59:40', '2020-07-17 14:58:48', 'IT支持工程师', '/home/position/list?search_value=IT支持工程师', '18', '18');
INSERT INTO `position_category` VALUES ('76', '2020-07-09 19:59:51', '2020-07-17 14:58:48', 'MySQL设计员', '/home/position/list?search_value=MySQL设计员', '20', '20');
INSERT INTO `position_category` VALUES ('77', '2020-07-09 20:00:16', '2020-07-17 14:58:48', 'SQLServer设计员', '/home/position/list?search_value=SQLServer设计员', '20', '20');
INSERT INTO `position_category` VALUES ('78', '2020-07-09 20:00:22', '2020-07-17 14:58:48', 'Oracle设计员', '/home/position/list?search_value=Oracle设计员', '20', '20');
INSERT INTO `position_category` VALUES ('79', '2020-07-09 20:00:45', '2020-07-17 14:58:48', 'DB2设计员', '/home/position/list?search_value=DB2设计员', '20', '20');
INSERT INTO `position_category` VALUES ('80', '2020-07-09 20:01:09', '2020-07-17 14:58:48', 'MongoDB设计员', '/home/position/list?search_value=MongoDB设计员', '20', '20');
INSERT INTO `position_category` VALUES ('81', '2020-07-09 20:01:22', '2020-07-17 14:58:48', '项目经理', '/home/position/list?search_value=项目经理', '21', '21');
INSERT INTO `position_category` VALUES ('82', '2020-07-09 20:01:36', '2020-07-17 14:58:48', '技术经理', '/home/position/list?search_value=技术经理', '22', '22');
INSERT INTO `position_category` VALUES ('83', '2020-07-09 20:01:42', '2020-07-17 14:58:48', '技术总监', '/home/position/list?search_value=技术总监', '22', '22');
INSERT INTO `position_category` VALUES ('84', '2020-07-09 20:01:55', '2020-07-17 14:58:48', '测试经理', '/home/position/list?search_value=测试经理', '22', '22');
INSERT INTO `position_category` VALUES ('85', '2020-07-09 20:02:02', '2020-07-17 14:58:48', '架构师', '/home/position/list?search_value=架构师', '22', '22');
INSERT INTO `position_category` VALUES ('86', '2020-07-09 20:02:17', '2020-07-17 14:58:48', 'CTO', '/home/position/list?search_value=CTO', '22', '22');
INSERT INTO `position_category` VALUES ('87', '2020-07-09 20:02:26', '2020-07-17 14:58:48', '运维总监', '/home/position/list?search_value=运维总监', '22', '22');
INSERT INTO `position_category` VALUES ('88', '2020-07-09 20:02:53', '2020-07-17 14:58:48', '产品经理', '/home/position/list?search_value=产品经理', '23', '23');
INSERT INTO `position_category` VALUES ('89', '2020-07-09 20:03:02', '2020-07-17 14:58:48', '网页产品经理', '/home/position/list?search_value=网页产品经理', '23', '23');
INSERT INTO `position_category` VALUES ('90', '2020-07-09 20:03:18', '2020-07-17 14:58:48', '移动产品经理', '/home/position/list?search_value=移动产品经理', '23', '23');
INSERT INTO `position_category` VALUES ('91', '2020-07-09 20:03:33', '2020-07-17 14:58:48', '产品助理', '/home/position/list?search_value=产品助理', '23', '23');
INSERT INTO `position_category` VALUES ('92', '2020-07-09 20:03:42', '2020-07-17 14:58:48', '数据产品经理', '/home/position/list?search_value=数据产品经理', '23', '23');
INSERT INTO `position_category` VALUES ('93', '2020-07-09 20:04:01', '2020-07-17 14:58:48', '电商产品经理', '/home/position/list?search_value=电商产品经理', '23', '23');
INSERT INTO `position_category` VALUES ('94', '2020-07-09 20:04:08', '2020-07-17 14:58:48', '游戏策划', '/home/position/list?search_value=游戏策划', '23', '23');
INSERT INTO `position_category` VALUES ('95', '2020-07-09 20:04:47', '2020-07-17 14:58:48', '网页产品设计师', '/home/position/list?search_value=网页产品设计师', '24', '24');
INSERT INTO `position_category` VALUES ('96', '2020-07-09 20:05:17', '2020-07-17 14:58:48', '无线产品设计师', '/home/position/list?search_value=无线产品设计师', '24', '24');
INSERT INTO `position_category` VALUES ('97', '2020-07-09 20:05:33', '2020-07-17 14:58:48', '产品部经理', '/home/position/list?search_value=产品部经理', '25', '25');
INSERT INTO `position_category` VALUES ('98', '2020-07-09 20:05:39', '2020-07-17 14:58:48', '产品总监', '/home/position/list?search_value=产品总监', '25', '25');
INSERT INTO `position_category` VALUES ('99', '2020-07-09 20:06:03', '2020-07-17 14:58:48', '视觉设计师', '/home/position/list?search_value=视觉设计师', '26', '26');
INSERT INTO `position_category` VALUES ('100', '2020-07-09 20:06:11', '2020-07-17 14:58:48', '网页设计师', '/home/position/list?search_value=网页设计师', '26', '26');
INSERT INTO `position_category` VALUES ('101', '2020-07-09 20:06:27', '2020-07-17 14:58:48', 'Flash设计师', '/home/position/list?search_value=Flash设计师', '26', '26');
INSERT INTO `position_category` VALUES ('102', '2020-07-09 20:06:33', '2020-07-17 14:58:48', 'APP设计师', '/home/position/list?search_value=APP设计师', '26', '26');
INSERT INTO `position_category` VALUES ('103', '2020-07-09 20:06:44', '2020-07-17 14:58:48', 'UI设计师', '/home/position/list?search_value=UI设计师', '26', '26');
INSERT INTO `position_category` VALUES ('104', '2020-07-09 20:06:51', '2020-07-17 14:58:48', '平面设计师', '/home/position/list?search_value=平面设计师', '26', '26');
INSERT INTO `position_category` VALUES ('105', '2020-07-09 20:07:10', '2020-07-17 14:58:48', '美术设计师（2D/3D）', '/home/position/list?search_value=美术设计师（2D/3D）', '26', '26');
INSERT INTO `position_category` VALUES ('106', '2020-07-09 20:07:24', '2020-07-17 14:58:48', '广告设计师', '/home/position/list?search_value=广告设计师', '26', '26');
INSERT INTO `position_category` VALUES ('107', '2020-07-09 20:07:33', '2020-07-17 14:58:48', '多媒体设计师', '/home/position/list?search_value=多媒体设计师', '26', '26');
INSERT INTO `position_category` VALUES ('108', '2020-07-09 20:08:25', '2020-07-17 14:58:48', '原画师', '/home/position/list?search_value=原画师', '26', '26');
INSERT INTO `position_category` VALUES ('109', '2020-07-09 20:08:32', '2020-07-17 14:58:48', '游戏特效设计师', '/home/position/list?search_value=游戏特效设计师', '26', '26');
INSERT INTO `position_category` VALUES ('110', '2020-07-09 20:08:49', '2020-07-17 14:58:48', '游戏界面设计师', '/home/position/list?search_value=游戏界面设计师', '26', '26');
INSERT INTO `position_category` VALUES ('111', '2020-07-09 20:09:08', '2020-07-17 14:58:48', '游戏场景设计师', '/home/position/list?search_value=游戏场景设计师', '26', '26');
INSERT INTO `position_category` VALUES ('112', '2020-07-09 20:09:14', '2020-07-17 14:58:48', '游戏角色设计师', '/home/position/list?search_value=游戏角色设计师', '26', '26');
INSERT INTO `position_category` VALUES ('113', '2020-07-09 20:09:22', '2020-07-17 14:58:48', '游戏动作设计师', '/home/position/list?search_value=游戏动作设计师', '26', '26');
INSERT INTO `position_category` VALUES ('114', '2020-07-09 20:09:37', '2020-07-17 14:58:48', '交互设计师', '/home/position/list?search_value=交互设计师', '27', '27');
INSERT INTO `position_category` VALUES ('115', '2020-07-09 20:09:42', '2020-07-17 14:58:48', '无线交互设计师', '/home/position/list?search_value=无线交互设计师', '27', '27');
INSERT INTO `position_category` VALUES ('116', '2020-07-09 20:09:55', '2020-07-17 14:58:48', '网页交互设计师', '/home/position/list?search_value=网页交互设计师', '27', '27');
INSERT INTO `position_category` VALUES ('117', '2020-07-09 20:10:05', '2020-07-17 14:58:48', '硬件交互设计师', '/home/position/list?search_value=硬件交互设计师', '27', '27');
INSERT INTO `position_category` VALUES ('118', '2020-07-09 20:10:20', '2020-07-17 14:58:48', '数据分析师', '/home/position/list?search_value=数据分析师', '28', '28');
INSERT INTO `position_category` VALUES ('119', '2020-07-09 20:10:32', '2020-07-17 14:58:48', '用户研究员', '/home/position/list?search_value=用户研究员', '28', '28');
INSERT INTO `position_category` VALUES ('120', '2020-07-09 20:10:46', '2020-07-17 14:58:48', '游戏数值策划员', '/home/position/list?search_value=游戏数值策划员', '28', '28');
INSERT INTO `position_category` VALUES ('121', '2020-07-09 20:11:01', '2020-07-17 14:58:48', '设计经理/主管', '/home/position/list?search_value=设计经理/主管', '29', '29');
INSERT INTO `position_category` VALUES ('122', '2020-07-09 20:11:07', '2020-07-17 14:58:48', '设计总监', '/home/position/list?search_value=设计总监', '29', '29');
INSERT INTO `position_category` VALUES ('123', '2020-07-09 20:11:28', '2020-07-17 14:58:48', '视觉设计经理/主管', '/home/position/list?search_value=视觉设计经理/主管', '29', '29');
INSERT INTO `position_category` VALUES ('124', '2020-07-09 20:11:46', '2020-07-17 14:58:48', '视觉设计总监', '/home/position/list?search_value=视觉设计总监', '29', '29');
INSERT INTO `position_category` VALUES ('125', '2020-07-09 20:12:02', '2020-07-17 14:58:48', '交互设计经理/主管', '/home/position/list?search_value=交互设计经理/主管', '29', '29');
INSERT INTO `position_category` VALUES ('126', '2020-07-09 20:12:10', '2020-07-17 14:58:48', '交互设计总监', '/home/position/list?search_value=交互设计总监', '29', '29');
INSERT INTO `position_category` VALUES ('127', '2020-07-09 20:12:28', '2020-07-17 14:58:48', '用户研究经理/主管', '/home/position/list?search_value=用户研究经理/主管', '29', '29');
INSERT INTO `position_category` VALUES ('128', '2020-07-09 20:12:37', '2020-07-17 14:58:48', '用户研究总监', '/home/position/list?search_value=用户研究总监', '29', '29');
INSERT INTO `position_category` VALUES ('129', '2020-07-09 20:12:52', '2020-07-17 14:58:48', '用户运营', '/home/position/list?search_value=用户运营', '30', '30');
INSERT INTO `position_category` VALUES ('130', '2020-07-09 20:12:57', '2020-07-17 14:58:48', '产品运营', '/home/position/list?search_value=产品运营', '30', '30');
INSERT INTO `position_category` VALUES ('131', '2020-07-09 20:13:14', '2020-07-17 14:58:48', '数据运营', '/home/position/list?search_value=数据运营', '30', '30');
INSERT INTO `position_category` VALUES ('132', '2020-07-09 20:13:20', '2020-07-17 14:58:48', '内容运营', '/home/position/list?search_value=内容运营', '30', '30');
INSERT INTO `position_category` VALUES ('133', '2020-07-09 20:13:27', '2020-07-17 14:58:48', '活动运营', '/home/position/list?search_value=活动运营', '30', '30');
INSERT INTO `position_category` VALUES ('134', '2020-07-09 20:13:40', '2020-07-17 14:58:48', '商家运营', '/home/position/list?search_value=商家运营', '30', '30');
INSERT INTO `position_category` VALUES ('135', '2020-07-09 20:13:56', '2020-07-17 14:58:48', '品类运营', '/home/position/list?search_value=品类运营', '30', '30');
INSERT INTO `position_category` VALUES ('136', '2020-07-09 20:14:03', '2020-07-17 14:58:48', '游戏运营', '/home/position/list?search_value=游戏运营', '30', '30');
INSERT INTO `position_category` VALUES ('137', '2020-07-09 20:14:15', '2020-07-17 14:58:48', '网络推广', '/home/position/list?search_value=网络推广', '30', '30');
INSERT INTO `position_category` VALUES ('138', '2020-07-09 20:14:34', '2020-07-17 14:58:48', '副主编', '/home/position/list?search_value=副主编', '31', '31');
INSERT INTO `position_category` VALUES ('139', '2020-07-09 20:14:46', '2020-07-17 14:58:48', '内容编辑', '/home/position/list?search_value=内容编辑', '31', '31');
INSERT INTO `position_category` VALUES ('140', '2020-07-09 20:15:00', '2020-07-17 14:58:48', '售前咨询', '/home/position/list?search_value=售前咨询', '32', '32');
INSERT INTO `position_category` VALUES ('141', '2020-07-09 20:15:07', '2020-07-17 14:58:48', '售后客服', '/home/position/list?search_value=售后客服', '32', '32');
INSERT INTO `position_category` VALUES ('142', '2020-07-09 20:15:21', '2020-07-17 14:58:48', '主编', '/home/position/list?search_value=主编', '33', '33');
INSERT INTO `position_category` VALUES ('143', '2020-07-09 20:15:30', '2020-07-17 14:58:48', '运营总监', '/home/position/list?search_value=运营总监', '33', '33');
INSERT INTO `position_category` VALUES ('144', '2020-07-09 20:16:06', '2020-07-17 14:58:48', 'COO', '/home/position/list?search_value=COO', '33', '33');
INSERT INTO `position_category` VALUES ('145', '2020-07-09 20:16:28', '2020-07-17 14:58:48', '市场营销', '/home/position/list?search_value=市场营销', '34', '34');
INSERT INTO `position_category` VALUES ('146', '2020-07-09 20:16:33', '2020-07-17 14:58:48', '市场策划', '/home/position/list?search_value=市场策划', '34', '34');
INSERT INTO `position_category` VALUES ('147', '2020-07-09 20:16:44', '2020-07-17 14:58:48', '市场顾问', '/home/position/list?search_value=市场顾问', '34', '34');
INSERT INTO `position_category` VALUES ('148', '2020-07-09 20:16:50', '2020-07-17 14:58:48', '市场推广', '/home/position/list?search_value=市场推广', '34', '34');
INSERT INTO `position_category` VALUES ('149', '2020-07-09 20:17:03', '2020-07-17 14:58:48', 'SEO', '/home/position/list?search_value=SEO', '34', '34');
INSERT INTO `position_category` VALUES ('150', '2020-07-09 20:17:09', '2020-07-17 14:58:48', 'SEM', '/home/position/list?search_value=SEM', '34', '34');
INSERT INTO `position_category` VALUES ('151', '2020-07-09 20:17:34', '2020-07-17 14:58:48', '商务渠道', '/home/position/list?search_value=商务渠道', '34', '34');
INSERT INTO `position_category` VALUES ('152', '2020-07-09 20:17:42', '2020-07-17 14:58:48', '商业数据分析', '/home/position/list?search_value=商业数据分析', '34', '34');
INSERT INTO `position_category` VALUES ('153', '2020-07-09 20:17:57', '2020-07-17 14:58:48', '活动策划', '/home/position/list?search_value=活动策划', '34', '34');
INSERT INTO `position_category` VALUES ('154', '2020-07-09 20:18:14', '2020-07-17 14:58:48', '媒介经理', '/home/position/list?search_value=媒介经理', '35', '35');
INSERT INTO `position_category` VALUES ('155', '2020-07-09 20:18:23', '2020-07-17 14:58:48', '广告协调', '/home/position/list?search_value=广告协调', '35', '35');
INSERT INTO `position_category` VALUES ('156', '2020-07-09 20:18:45', '2020-07-17 14:58:48', '品牌公关', '/home/position/list?search_value=品牌公关', '35', '35');
INSERT INTO `position_category` VALUES ('157', '2020-07-09 20:19:08', '2020-07-17 14:58:48', '销售专员', '/home/position/list?search_value=销售专员', '36', '36');
INSERT INTO `position_category` VALUES ('158', '2020-07-09 20:19:13', '2020-07-17 14:58:48', '销售经理', '/home/position/list?search_value=销售经理', '36', '36');
INSERT INTO `position_category` VALUES ('159', '2020-07-09 20:19:30', '2020-07-17 14:58:48', '客户代表', '/home/position/list?search_value=客户代表', '36', '36');
INSERT INTO `position_category` VALUES ('160', '2020-07-09 20:19:35', '2020-07-17 14:58:48', '大客户代表', '/home/position/list?search_value=大客户代表', '36', '36');
INSERT INTO `position_category` VALUES ('161', '2020-07-09 20:19:52', '2020-07-17 14:58:48', 'BD经理', '/home/position/list?search_value=BD经理', '36', '36');
INSERT INTO `position_category` VALUES ('162', '2020-07-09 20:19:59', '2020-07-17 14:58:48', '商务渠道', '/home/position/list?search_value=商务渠道', '36', '36');
INSERT INTO `position_category` VALUES ('163', '2020-07-09 20:20:15', '2020-07-17 14:58:48', '渠道销售', '/home/position/list?search_value=渠道销售', '36', '36');
INSERT INTO `position_category` VALUES ('164', '2020-07-09 20:20:21', '2020-07-17 14:58:48', '代理商销售', '/home/position/list?search_value=代理商销售', '36', '36');
INSERT INTO `position_category` VALUES ('165', '2020-07-09 20:20:42', '2020-07-17 14:58:48', '市场总监', '/home/position/list?search_value=市场总监', '37', '37');
INSERT INTO `position_category` VALUES ('166', '2020-07-09 20:20:51', '2020-07-17 14:58:48', '销售总监', '/home/position/list?search_value=销售总监', '37', '37');
INSERT INTO `position_category` VALUES ('167', '2020-07-09 20:21:07', '2020-07-17 14:58:48', '商务总监', '/home/position/list?search_value=商务总监', '37', '37');
INSERT INTO `position_category` VALUES ('168', '2020-07-09 20:21:12', '2020-07-17 14:58:48', 'CMO', '/home/position/list?search_value=CMO', '37', '37');
INSERT INTO `position_category` VALUES ('169', '2020-07-09 20:21:33', '2020-07-17 14:58:48', '公关总监', '/home/position/list?search_value=公关总监', '37', '37');
INSERT INTO `position_category` VALUES ('170', '2020-07-09 20:22:02', '2020-07-17 14:58:48', '人力资源', '/home/position/list?search_value=人力资源', '38', '38');
INSERT INTO `position_category` VALUES ('171', '2020-07-09 20:22:09', '2020-07-17 14:58:48', '招聘', '/home/position/list?search_value=招聘', '38', '38');
INSERT INTO `position_category` VALUES ('172', '2020-07-09 20:22:24', '2020-07-17 14:58:48', 'HRBP', '/home/position/list?search_value=HRBP', '38', '38');
INSERT INTO `position_category` VALUES ('173', '2020-07-09 20:22:36', '2020-07-17 14:58:48', '人事/HR', '/home/position/list?search_value=人事/HR', '38', '38');
INSERT INTO `position_category` VALUES ('174', '2020-07-09 20:22:54', '2020-07-17 14:58:48', '培训经理', '/home/position/list?search_value=培训经理', '38', '38');
INSERT INTO `position_category` VALUES ('175', '2020-07-09 20:23:03', '2020-07-17 14:58:48', '薪资福利经理', '/home/position/list?search_value=薪资福利经理', '38', '38');
INSERT INTO `position_category` VALUES ('176', '2020-07-09 20:23:29', '2020-07-17 14:58:48', '绩效考核经理', '/home/position/list?search_value=绩效考核经理', '38', '38');
INSERT INTO `position_category` VALUES ('177', '2020-07-09 20:23:42', '2020-07-17 14:58:48', '助理', '/home/position/list?search_value=助理', '39', '39');
INSERT INTO `position_category` VALUES ('178', '2020-07-09 20:23:48', '2020-07-17 14:58:48', '前台', '/home/position/list?search_value=前台', '39', '39');
INSERT INTO `position_category` VALUES ('179', '2020-07-09 20:23:58', '2020-07-17 14:58:48', '法务', '/home/position/list?search_value=法务', '39', '39');
INSERT INTO `position_category` VALUES ('180', '2020-07-09 20:24:05', '2020-07-17 14:58:48', '行政', '/home/position/list?search_value=行政', '39', '39');
INSERT INTO `position_category` VALUES ('181', '2020-07-09 20:24:19', '2020-07-17 14:58:48', '会计', '/home/position/list?search_value=会计', '40', '40');
INSERT INTO `position_category` VALUES ('182', '2020-07-09 20:24:32', '2020-07-17 14:58:48', '出纳', '/home/position/list?search_value=出纳', '40', '40');
INSERT INTO `position_category` VALUES ('183', '2020-07-09 20:24:39', '2020-07-17 14:58:48', '财务', '/home/position/list?search_value=财务', '40', '40');
INSERT INTO `position_category` VALUES ('184', '2020-07-09 20:25:04', '2020-07-17 14:58:48', '行政总监/经理', '/home/position/list?search_value=行政总监/经理', '41', '41');
INSERT INTO `position_category` VALUES ('185', '2020-07-09 20:25:10', '2020-07-17 14:58:48', '财务总监/经理', '/home/position/list?search_value=财务总监/经理', '41', '41');
INSERT INTO `position_category` VALUES ('186', '2020-07-09 20:25:24', '2020-07-17 14:58:48', 'HRD/HRM', '/home/position/list?search_value=HRD/HRM', '41', '41');
INSERT INTO `position_category` VALUES ('187', '2020-07-09 20:25:35', '2020-07-17 14:58:48', 'CFO', '/home/position/list?search_value=CFO', '41', '41');

-- ----------------------------
-- Table structure for `project_experience`
-- ----------------------------
DROP TABLE IF EXISTS `project_experience`;
CREATE TABLE `project_experience` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` longtext,
  `end_month` varchar(255) NOT NULL,
  `end_year` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `start_month` varchar(255) NOT NULL,
  `start_year` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6mjj5tpthn13i66qsn48e0kbs` (`user_id`),
  CONSTRAINT `FK6mjj5tpthn13i66qsn48e0kbs` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of project_experience
-- ----------------------------
INSERT INTO `project_experience` VALUES ('1', '2020-07-13 10:16:26', '2020-07-13 14:59:22', '我的第一个项目，很不错！', '02', '2020', '茶商城售票系统', '项目总监', '05', '2017', '1');
INSERT INTO `project_experience` VALUES ('3', '2020-07-18 11:25:38', '2020-07-18 11:25:38', '上网址：https://www.yuanlrc.com/product/details.html?pid=366', '01', '2016', 'springboot框架博客发布系统', '项目负责人', '05', '2015', '10');

-- ----------------------------
-- Table structure for `resume`
-- ----------------------------
DROP TABLE IF EXISTS `resume`;
CREATE TABLE `resume` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `position_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `state` varchar(255) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKfs3x0i2rlgf11kqrgd22185mj` (`position_id`),
  KEY `FKiqntisdlc7ta7sjr6d8rj5ae2` (`user_id`),
  KEY `FK681rm6lwm57pvwir58nqboosr` (`company_id`),
  CONSTRAINT `FK681rm6lwm57pvwir58nqboosr` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  CONSTRAINT `FKfs3x0i2rlgf11kqrgd22185mj` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`),
  CONSTRAINT `FKiqntisdlc7ta7sjr6d8rj5ae2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resume
-- ----------------------------
INSERT INTO `resume` VALUES ('5', '2020-07-16 18:17:27', '2020-07-17 23:46:08', '1', '1', 'out', '8');
INSERT INTO `resume` VALUES ('6', '2020-07-16 20:27:26', '2020-07-16 20:27:26', '3', '1', 'wait', '8');
INSERT INTO `resume` VALUES ('7', '2020-07-17 19:19:35', '2020-07-17 23:45:57', '8', '1', 'effective', '8');
INSERT INTO `resume` VALUES ('8', '2020-07-18 11:45:12', '2020-07-18 11:45:12', '23', '10', 'wait', '14');
INSERT INTO `resume` VALUES ('9', '2020-07-18 11:45:36', '2020-07-18 11:45:36', '21', '10', 'wait', '9');
INSERT INTO `resume` VALUES ('10', '2020-07-18 11:45:54', '2020-07-18 11:49:54', '1', '10', 'effective', '8');
INSERT INTO `resume` VALUES ('11', '2020-07-18 11:46:01', '2020-07-18 11:46:01', '10', '10', 'wait', '10');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(16) NOT NULL,
  `head_pic` varchar(128) DEFAULT NULL,
  `mobile` varchar(12) DEFAULT NULL,
  `sex` int(11) DEFAULT NULL,
  `type` bigint(20) NOT NULL,
  `username` varchar(6) NOT NULL,
  `content` longtext,
  `work_experience` varchar(10) DEFAULT NULL,
  `degree` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '2020-07-11 16:12:19', '2020-07-17 14:33:23', '832858782@qq.com', '12345678', '20200712/1594541168216.jpg', '13774559485', '1', '0', '杨杨吖', '热爱编程', '3年', '硕士');
INSERT INTO `user` VALUES ('2', '2020-07-11 16:13:13', '2020-07-13 21:42:36', '2250173789@qq.com', '12345678', 'common/default_img.jpg', '', '1', '1', '腾讯招聘者', null, '10年以上', '博士');
INSERT INTO `user` VALUES ('5', '2020-07-08 22:23:57', '2020-07-14 22:24:01', '2250125345@qq.com', '12345678', 'common/default_img.jpg', null, '2', '1', '淘米网招聘者', null, '10年以上', '博士');
INSERT INTO `user` VALUES ('6', '2020-07-08 23:04:43', '2020-07-14 23:04:47', '745623953@qq.com', '12345678', 'common/default_img.jpg', null, '2', '1', '思特沃克招聘', null, '10年以上', '博士');
INSERT INTO `user` VALUES ('7', '2020-07-01 11:35:58', '2020-07-15 11:36:02', '347195327@qq.com', '12345678', 'common/default_img.jpg', null, '2', '1', '堆糖网招聘者', null, null, null);
INSERT INTO `user` VALUES ('8', '2020-07-01 11:45:47', '2020-07-17 11:45:51', '348127542@qq.com', '12345678', 'common/default_img.jpg', null, '1', '1', '联想招聘者', null, null, null);
INSERT INTO `user` VALUES ('10', '2020-07-17 19:25:16', '2020-07-18 11:26:22', '3744528261@163.com', '12345678', '20200718/1595042553725.jpg', '15932744218', '2', '0', '小憨包', null, '应届毕业生', '本科');
INSERT INTO `user` VALUES ('11', '2020-07-02 10:25:23', '2020-07-08 10:25:27', '876352874@qq.com', '12345678', 'common/default_img.jpg', null, '1', '1', '优酷招聘者', null, null, null);
INSERT INTO `user` VALUES ('12', '2020-07-10 10:52:23', '2020-07-15 10:52:27', '809812692@qq.com', '12345678', 'common/default_img.jpg', null, '0', '1', '奇猫招聘者', null, null, null);

-- ----------------------------
-- Table structure for `work_experience`
-- ----------------------------
DROP TABLE IF EXISTS `work_experience`;
CREATE TABLE `work_experience` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `end_month` varchar(255) NOT NULL,
  `end_year` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `start_month` varchar(255) NOT NULL,
  `start_year` varchar(255) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKhnxjamc0hrv0uok9w7aayk6kk` (`user_id`),
  CONSTRAINT `FKhnxjamc0hrv0uok9w7aayk6kk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work_experience
-- ----------------------------
INSERT INTO `work_experience` VALUES ('1', '2020-07-12 23:24:16', '2020-07-13 14:57:14', '03', '2019', '腾讯公司', '产品经理', '04', '2017', '1');
INSERT INTO `work_experience` VALUES ('3', '2020-07-18 11:24:30', '2020-07-18 11:24:30', '03', '2015', '新大陆公司', '前台', '03', '2013', '10');

-- ----------------------------
-- Table structure for `work_show`
-- ----------------------------
DROP TABLE IF EXISTS `work_show`;
CREATE TABLE `work_show` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `content` longtext,
  `url` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKiagbp8nnl01v528v8uuf79lod` (`user_id`),
  CONSTRAINT `FKiagbp8nnl01v528v8uuf79lod` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of work_show
-- ----------------------------
INSERT INTO `work_show` VALUES ('1', '2020-07-13 13:46:12', '2020-07-13 13:46:12', 'springboot框架开发的博客发布网站', 'https://www.yuanlrc.com/product/details.html?pid=366', '1');
