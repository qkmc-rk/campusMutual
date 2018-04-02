/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : campus

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 23/03/2018 14:03:53
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `state` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_admin_user_idx`(`userid`) USING BTREE,
  CONSTRAINT `fk_admin_user` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES (1, 1, 1);

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `infoid` int(11) NOT NULL,
  `title` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `comment` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `commenttime` timestamp(0) DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_comment_user_idx`(`userid`) USING BTREE,
  INDEX `fk_comment_info_idx`(`infoid`) USING BTREE,
  CONSTRAINT `fk_comment_info` FOREIGN KEY (`infoid`) REFERENCES `t_helpinfo` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_comment_user` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_helpinfo
-- ----------------------------
DROP TABLE IF EXISTS `t_helpinfo`;
CREATE TABLE `t_helpinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `crettime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `timeout` bigint(20) NOT NULL,
  `title` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tip` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `imgpath` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reward` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `t_helpinfocol` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_helpinfo_user_idx`(`userid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_helpinfo
-- ----------------------------
INSERT INTO `t_helpinfo` VALUES (4, 200027, '2018-03-21 14:36:35', 1521648000000, '收被子', '<p style=\"text-align: center;\">哎呀.....</p><p style=\"text-align: center;\"><img src=\"http:/campusMutual/static/uploadfile/1175282124$K((JP6CSU{]X]6L)MC)B)C.jpg\" style=\"max-width:100%;\"></p>', '请今天下午5点前收', NULL, '12', NULL);
INSERT INTO `t_helpinfo` VALUES (5, 200027, '2018-03-21 14:38:38', 1521648000000, 'test', '<p><img src=\"http:/campusMutual/static/uploadfile/-1340794368about.jpg\" style=\"max-width:100%;\"></p>', 'test', NULL, '12', NULL);
INSERT INTO `t_helpinfo` VALUES (6, 200027, '2018-03-21 14:39:49', 1522339200000, 'test2', '<p>毛十八带中文测试</p>', 'test2', NULL, '15', NULL);
INSERT INTO `t_helpinfo` VALUES (7, 200027, '2018-03-22 10:37:41', 1522425600000, 'fuckyou', '<p>\n							在这里键入 <b>求助信息详情内容</b>\n						</p><p style=\"color: orange\">(提示:为美观起见,可尽量将内容居中)</p><p><br></p>', 'test', NULL, '10000', NULL);
INSERT INTO `t_helpinfo` VALUES (8, 200027, '2018-03-22 10:56:12', 1521648000000, '食堂打饭', '<p>食堂打饭,小木屋的<img src=\"http:/campusMutual/static/uploadfile/1175282124$K((JP6CSU{]X]6L)MC)B)C.jpg\" style=\"max-width: 100%;\"></p>', '中午12点', NULL, '15', NULL);
INSERT INTO `t_helpinfo` VALUES (9, 200028, '2018-03-22 22:40:41', 1521820800000, '中国移动招新啦', '<p>中国移动招新啦,谁来负责帮我找人</p><p>薪资:3000起,五险一金</p><p>岗位:后端JAVA攻城狮</p><p>要求:</p><div>作者：无鞋<br>链接：https://www.zhihu.com/question/67014697/answer/251101421<br>来源：知乎<br>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。<br><br><div><p>进来开会了”，未见其人，先问其声，只见领导从会议室探出了半个头！</p><p>于是我依依不舍的放下手中才咬了两口的包子，虽然它也只剩下六分之一了。</p><p>开完会，我熟练的打开ide放在一边，然后刷起了知乎，我不抬头根据脚步声我都知道是领导还是财务小姐姐或者是十点钟方向的珍稀动物---程序媛，所以这一手“听脚步来走神”的绝技让我根本不怕领导突然的来指导一下，想学的私信，五毛钱包教包会。</p><p>还没刷一会，领导让我来一起完善一个应用的数据库，我上去就开始“炫技”，“卧槽这个一看就是连接字段不加索引？小数类型还用float？为了性能这个字段明显可以冗余啊！“我丝毫没听到领导的咳嗽声，我甚至说道：“这个varchar长度7000？text要气死啊！不知道谁建的这几张表，笑死我了，哈哈哈！”最后领导淡淡的说句：“这是去年<b>你</b>刚进来让你接手的一个小项目！”</p><p>我脸色丝毫没有变化继续说道：“我就说吧，你看这字段命名的相当规范，完全是教科书级别的，还有领导你看....”</p><p>领导头也没抬：“好了，别说了，出去擦你自己的屁股吧！”</p><p>“好的好的，马上就能改好！”我一边谄媚的笑着一边带上了会议室的门走了出去。</p><p>中午吃饭的时候，我拍着强哥的肩膀：“我就说三星今天有机会的吧，你以为是安掌门拿不动刀了，还是他们lz飘了！？昨天赌了一瓶可乐的，我要百事的等下给我带上来哈！”</p><p>下午我继续搬砖，你说这个请求怎么就是500呢？这个NullPointerException我倒看看是哪弄的？哎呀这个还建什么pojo，一个map mybatis不也能进去，多方便啊！这哪个离职的同事还用EasyUI这么老套的布局，最不爱改这个了，哼！这里居然我之前写了十几个if else，不用状态者模式，用两个数组解决也好看呀！移动端的小伙伴又来催接口了，上次一个文件流操作他们就弄了半天，早就跟领导提前后端分离了多省事，现在还不是要弄，这个破跨域限制真多，谁没事要访问攻击我们这破网站？</p><p>然后不时会被同事喊去交流：</p><p>“你这原型画的可以呀。”</p><p>“你这里常用查询字段就基本就两个，你把那个也加上索引不就覆盖索引了嘛，贼快。你不能count（*）null也会被统计的，你直接count具体字段。”</p><p>“哎呀这个tomcat你重启不了，你ps -ef|grep tomcat 查一下进程把他干了重启就好了！”</p><p>“这个明显是nginx fastcgi进程响应的缓冲区太小造成的，你在配置文件把它调大点就可以了。”</p><p>“RpcException: No provider available for remote service，去看看服务提供者存不存在正不正常，百分百是这的问题。”</p><p>“你还查啥ip、路由、端口，你这就是网线松了，插上不就好了！”</p><p>哎呀，终于摆完了，继续回来我的工位刷知乎，我去这个小姐姐身材不错呀，哎呀这个段子笑死我了......</p><p>下午茶时间，珍稀动物--程序媛问我：“你看我这双凉鞋好不好看？”</p><p>我说好看并随口问了一句多少钱买的？她说八百多！我一听就把手里的饼干吓掉了：“就你这<b>塑料板上绑几个破布条八百多</b>，<b>大姐</b>你是多败家啊！”于是我被一顿毒打，不是因为嘲讽她的凉鞋，而是因为喊她“大姐”，真是不懂女人啊！为什么一个塑料板绑几根布条要800多，是我20都嫌贵！有知道答案的还请给我解惑！</p><p>准备下班了，一边希望以前的代码正常运行，一边祈祷明天不要有新的需求变化，然后顺便吃完早上剩下的包子（哼，我就是不浪费一滴粮食的新时代五好少年），最后打卡的时候碰见hr小姐姐温柔的笑着对我说：“xxx，今天<b>才九点多</b>这么早就下班了啊？”</p><p>回到家不写那种恶心的业务代码，能研究研究自己感兴趣的技术是真的爽，但11点半之前绝对上床睡觉，谁tm让我上次重装电脑系统忘了备份我的E盘女神，她就离我远去了呢！哭！</p></div></div>', '截止', NULL, '3000', NULL);
INSERT INTO `t_helpinfo` VALUES (10, 200028, '2018-03-23 08:04:57', 1522425600000, 'test3', '<p>只是测试一下而已</p>', '请填写完整', NULL, '10', NULL);

-- ----------------------------
-- Table structure for t_helpstate
-- ----------------------------
DROP TABLE IF EXISTS `t_helpstate`;
CREATE TABLE `t_helpstate`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `infoid` int(11) NOT NULL,
  `timeout` tinyint(4) NOT NULL,
  `received` tinyint(4) NOT NULL,
  `receiverid` int(11) DEFAULT NULL,
  `achieved` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_helpstate_helpinfo_idx`(`infoid`) USING BTREE,
  INDEX `fk__idx`(`receiverid`) USING BTREE,
  CONSTRAINT `fk_helpstate_helpinfo` FOREIGN KEY (`infoid`) REFERENCES `t_helpinfo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_helpstate_user` FOREIGN KEY (`receiverid`) REFERENCES `t_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_helpstate
-- ----------------------------
INSERT INTO `t_helpstate` VALUES (1, 4, 0, 1, 200023, 1);
INSERT INTO `t_helpstate` VALUES (2, 5, 0, 1, 200023, 0);
INSERT INTO `t_helpstate` VALUES (3, 6, 0, 0, NULL, 0);
INSERT INTO `t_helpstate` VALUES (4, 7, 0, 0, NULL, 0);
INSERT INTO `t_helpstate` VALUES (5, 8, 0, 0, NULL, 0);
INSERT INTO `t_helpstate` VALUES (6, 9, 0, 1, 200027, 1);
INSERT INTO `t_helpstate` VALUES (7, 10, 0, 1, 200027, 1);

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cretime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `creatorid` int(11) DEFAULT NULL,
  `notice` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_notice_user_idx`(`creatorid`) USING BTREE,
  CONSTRAINT `fk_notice_user` FOREIGN KEY (`creatorid`) REFERENCES `t_user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stuid` int(11) NOT NULL,
  `account` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `oldpassword` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `stuid_UNIQUE`(`stuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200030 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, 11, 'mrruan', '22', '33');
INSERT INTO `t_user` VALUES (200007, 30240566, 'kun', 'kun', 'dsd');
INSERT INTO `t_user` VALUES (200008, 30240567, 's', 'sd', 'f');
INSERT INTO `t_user` VALUES (200009, 1314520, 'aaa', 'aaa', 'aaa');
INSERT INTO `t_user` VALUES (200011, 213423, 'xxx', 'xxx', 'xxx');
INSERT INTO `t_user` VALUES (200012, 20140162, 'jiao', 'jiao', 'jiao');
INSERT INTO `t_user` VALUES (200013, 20140250, 'lijiawei', '123', '123');
INSERT INTO `t_user` VALUES (200014, 201402500, 'lijiawei', '123', '123');
INSERT INTO `t_user` VALUES (200016, 32564532, 'dsf', '123', '123');
INSERT INTO `t_user` VALUES (200017, 2365432, 'dsfdsf', '12', '12');
INSERT INTO `t_user` VALUES (200018, 43243265, 'qwewq', '12', '12');
INSERT INTO `t_user` VALUES (200019, 345435, '436', '12', '12');
INSERT INTO `t_user` VALUES (200020, 3246543, '32432', '12', '12');
INSERT INTO `t_user` VALUES (200021, 546, '546', '12', '12');
INSERT INTO `t_user` VALUES (200022, 324, '543', '12', '12');
INSERT INTO `t_user` VALUES (200023, 20140005, 'wang', 'cnVZ6M', 'VjnBgL');
INSERT INTO `t_user` VALUES (200025, 20140001, 'jiao', '123', '123');
INSERT INTO `t_user` VALUES (200027, 20141111, 'jiaojiao', '0dVmeF', '123');
INSERT INTO `t_user` VALUES (200028, 10086, 'yidong', 'nhpjqp', 'yidong');
INSERT INTO `t_user` VALUES (200029, 510623, 'qulaoer', '123', '123');

-- ----------------------------
-- Table structure for t_usercertif
-- ----------------------------
DROP TABLE IF EXISTS `t_usercertif`;
CREATE TABLE `t_usercertif`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `state` tinyint(4) NOT NULL,
  `cardpath` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_certif_user_idx`(`userid`) USING BTREE,
  CONSTRAINT `fk_certif_user` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_usercertif
-- ----------------------------
INSERT INTO `t_usercertif` VALUES (1, 200018, 0, '');
INSERT INTO `t_usercertif` VALUES (2, 200019, 0, '');
INSERT INTO `t_usercertif` VALUES (3, 200020, 0, '');
INSERT INTO `t_usercertif` VALUES (4, 200021, 0, '');
INSERT INTO `t_usercertif` VALUES (5, 200022, 0, '');
INSERT INTO `t_usercertif` VALUES (6, 200023, 0, '');
INSERT INTO `t_usercertif` VALUES (7, 200027, 0, '1360822280555.jpg');
INSERT INTO `t_usercertif` VALUES (8, 200028, 0, '');
INSERT INTO `t_usercertif` VALUES (9, 200029, 0, '');

-- ----------------------------
-- Table structure for t_userportrait
-- ----------------------------
DROP TABLE IF EXISTS `t_userportrait`;
CREATE TABLE `t_userportrait`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `portrait` blob,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_port_user_idx`(`userid`) USING BTREE,
  CONSTRAINT `fk_port_user` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_userportrait
-- ----------------------------
INSERT INTO `t_userportrait` VALUES (1, 200011, NULL);
INSERT INTO `t_userportrait` VALUES (2, 200012, NULL);
INSERT INTO `t_userportrait` VALUES (3, 200013, NULL);
INSERT INTO `t_userportrait` VALUES (4, 200016, NULL);
INSERT INTO `t_userportrait` VALUES (5, 200017, NULL);
INSERT INTO `t_userportrait` VALUES (6, 200018, NULL);
INSERT INTO `t_userportrait` VALUES (7, 200019, NULL);
INSERT INTO `t_userportrait` VALUES (8, 200020, NULL);
INSERT INTO `t_userportrait` VALUES (9, 200021, NULL);
INSERT INTO `t_userportrait` VALUES (10, 200022, NULL);
INSERT INTO `t_userportrait` VALUES (11, 200023, NULL);
INSERT INTO `t_userportrait` VALUES (12, 200027, NULL);
INSERT INTO `t_userportrait` VALUES (13, 200028, NULL);
INSERT INTO `t_userportrait` VALUES (14, 200029, NULL);

-- ----------------------------
-- Table structure for t_userpriminfo
-- ----------------------------
DROP TABLE IF EXISTS `t_userpriminfo`;
CREATE TABLE `t_userpriminfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `neckname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `usermail` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `userphone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sex` enum('M','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `qq` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dormnum` int(11) DEFAULT NULL,
  `dormaddr` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `homeaddr` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_prim_user_idx`(`userid`) USING BTREE,
  CONSTRAINT `fk_prim_user` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_userpriminfo
-- ----------------------------
INSERT INTO `t_userpriminfo` VALUES (1, 200007, '阮坤', 'qkmc@outx', '1354545', 'M', 18, '3144454', 3, 'asas', 'sdsad');
INSERT INTO `t_userpriminfo` VALUES (2, 200011, '无名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (3, 200012, '无名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (4, 200013, '无名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (5, 200016, '无名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (6, 200017, '无名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (7, 200018, '无名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (8, 200019, '无名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (9, 200020, '无名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (10, 200021, '无名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (11, 200022, '无名', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userpriminfo` VALUES (12, 200023, '阮中华', 'qkmc@outlook.com', '18783551223', 'M', 2, '314445437', 0, '-', '西安');
INSERT INTO `t_userpriminfo` VALUES (13, 200027, '娇娇', 'qkmc@outlook.com', '18783551223', 'F', 23, '314445437', 22, '7楼', '四川省阿坝州松潘县');
INSERT INTO `t_userpriminfo` VALUES (14, 200028, '中国移动', '314445437@qq.com', '1008611', 'F', 50, '1008611', 0, '不定', '上海明珠');
INSERT INTO `t_userpriminfo` VALUES (15, 200029, '屈老二', '314445437@qq.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_userquestion
-- ----------------------------
DROP TABLE IF EXISTS `t_userquestion`;
CREATE TABLE `t_userquestion`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `question1` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `answer1` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question2` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `answer2` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `question3` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `answer3` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_qustion_user_idx`(`userid`) USING BTREE,
  CONSTRAINT `fk_qustion_user` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_userquestion
-- ----------------------------
INSERT INTO `t_userquestion` VALUES (1, 200018, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userquestion` VALUES (2, 200019, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userquestion` VALUES (3, 200020, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userquestion` VALUES (4, 200021, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userquestion` VALUES (5, 200022, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_userquestion` VALUES (6, 200023, '我爸叫什么', 'ruankun', '我妈叫什么', 'niejiao', '我生日', '824');
INSERT INTO `t_userquestion` VALUES (7, 200027, '我爸爸是谁?', '阮坤', '我妈妈是谁?', '聂娇', '我爸爸生日?', '726');
INSERT INTO `t_userquestion` VALUES (8, 200028, '中国移动的爸爸是?', '阮坤', '中国移动的妈妈是?', '聂娇', '中国移动妈妈多少岁了?', '23');
INSERT INTO `t_userquestion` VALUES (9, 200029, '粑粑', 'qu', '妈妈', 'ma', '我', 'qu');

-- ----------------------------
-- Table structure for t_usertoken
-- ----------------------------
DROP TABLE IF EXISTS `t_usertoken`;
CREATE TABLE `t_usertoken`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `crettime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_token_user_idx`(`userid`) USING BTREE,
  CONSTRAINT `fk_token_user` FOREIGN KEY (`userid`) REFERENCES `t_user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_usertoken
-- ----------------------------
INSERT INTO `t_usertoken` VALUES (1, 200011, 'f561aaf6ef0bf14d4208bb46a4ccb3ad', '2018-03-20 11:01:46');
INSERT INTO `t_usertoken` VALUES (2, 200012, '27c46636f45bd6689d17130ccd117064', '2018-03-20 11:10:37');
INSERT INTO `t_usertoken` VALUES (3, 200013, '202cb962ac59075b964b07152d234b70', '2018-03-20 11:30:14');
INSERT INTO `t_usertoken` VALUES (4, 200016, '202cb962ac59075b964b07152d234b70', '2018-03-20 11:40:22');
INSERT INTO `t_usertoken` VALUES (5, 200017, 'c20ad4d76fe97759aa27a0c99bff6710', '2018-03-20 11:41:57');
INSERT INTO `t_usertoken` VALUES (6, 200018, 'c20ad4d76fe97759aa27a0c99bff6710', '2018-03-20 11:44:38');
INSERT INTO `t_usertoken` VALUES (7, 200019, 'c20ad4d76fe97759aa27a0c99bff6710', '2018-03-20 11:45:30');
INSERT INTO `t_usertoken` VALUES (8, 200020, 'c20ad4d76fe97759aa27a0c99bff6710', '2018-03-20 11:45:45');
INSERT INTO `t_usertoken` VALUES (9, 200021, 'c20ad4d76fe97759aa27a0c99bff6710', '2018-03-20 11:46:18');
INSERT INTO `t_usertoken` VALUES (10, 200022, 'c20ad4d76fe97759aa27a0c99bff6710', '2018-03-20 11:46:55');
INSERT INTO `t_usertoken` VALUES (11, 200023, '202cb962ac59075b964b07152d234b70', '2018-03-20 12:44:36');
INSERT INTO `t_usertoken` VALUES (12, 200027, '202cb962ac59075b964b07152d234b70', '2018-03-20 22:22:10');
INSERT INTO `t_usertoken` VALUES (13, 200028, 'c6b31b1d32a2da9df64dd63de50f6ba9', '2018-03-22 22:32:29');
INSERT INTO `t_usertoken` VALUES (14, 200029, '202cb962ac59075b964b07152d234b70', '2018-03-23 08:35:11');

SET FOREIGN_KEY_CHECKS = 1;
