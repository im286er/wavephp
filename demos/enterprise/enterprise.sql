-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2015 年 05 月 26 日 17:09
-- 服务器版本: 5.5.25a
-- PHP 版本: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `enterprise`
--

-- --------------------------------------------------------

--
-- 表的结构 `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `aid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` longtext COMMENT '内容',
  `cid` int(11) NOT NULL DEFAULT '0' COMMENT '文章分类id',
  `add_date` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='文章表' AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `articles`
--

INSERT INTO `articles` (`aid`, `title`, `content`, `cid`, `add_date`) VALUES
(1, '是打发斯蒂芬是打发', '<p>是打发斯蒂芬</p>\r\n\r\n<p>法规和是否更好的风格</p>\r\n\r\n<p>的发生的会计法是否就暗示的回复可见的发挥阿斯顿发哈萨克记得发货快世界东方航空阿斯顿发哈萨克记得发贺卡上几点回福建深刻的减肥哈时刻记得回复可见哈市的发生的开发计划法律上的看法是看得见弗兰克是的发生了肯德基方腊时看见对方是打发士大夫似的阿斯顿发士大夫撒地方就是大连科技阿斯顿发生了的发生可理解对方阿三的看法是可怜的妇科拉多少阿斯顿发生的会计法哈时间快点发货就卡死的回复就卡死的回复就卡死的回复就卡死的回复就卡上的房价肯定是地方哈时间快点回复就卡死的恢复健康是的话</p>\r\n\r\n<p><img alt="" src="http://127.0.0.1/enterprise/uploadfile/articles/201410/1414289918_11432.jpg" style="height:531px; width:800px" /></p>\r\n\r\n<p>实力的开发就爱是可怜的减肥快乐圣诞节阿里开始的交罚款了似的就付款了电视剧阿斯兰的开发就爱是可怜的福建凯立德实力的开发就拉上课的肌肤</p>\r\n\r\n<p>来对付是打发斯蒂芬阿士大夫</p>\r\n', 2, '2014-10-26 15:43:00'),
(2, '是打发士大夫似的', '<p>的发生大幅度的叫法是肯定就发货爱神的箭飞洒的肌肤</p>\r\n\r\n<p>是打发拉屎的方式的健康</p>\r\n\r\n<p>的法律上的减肥路上的肌肤俩手机的覅圣诞节</p>\r\n\r\n<p>的房间爱死了打开肌肤开始的减肥快乐是大家分开了世界东方</p>\r\n\r\n<p>是理科的积分卡手机打开了房间爱的</p>\r\n\r\n<p><img alt="" src="http://127.0.0.1/enterprise/uploadfile/articles/201410/1414291060_21823.jpg" style="height:531px; width:800px" /></p>\r\n\r\n<p>是老大就发生了科技的付款进度实力肯定就发生开朗大方</p>\r\n\r\n<p>时间的房价阿士大夫加快了速度</p>\r\n\r\n<p>时间的弗拉开始交电费卡时间地方</p>\r\n\r\n<p>时间的方腊时可见分开了多久</p>\r\n', 1, '2014-10-26 15:43:00'),
(3, 'linux小结', '<p>打发士大夫士大夫是打发斯蒂芬</p>\r\n\r\n<p>上的麻烦萨克的肌肤开始大家</p>\r\n\r\n<p>士大夫撒可点击付款啦手机的付款了进度</p>\r\n\r\n<p>时刻到了快解放啦手机的付款</p>\r\n\r\n<p><img alt="" src="http://127.0.0.1/enterprise/uploadfile/articles/201410/1414291114_11788.jpg" style="height:531px; width:800px" /></p>\r\n\r\n<p>喀什的离开房间萨克的肌肤奥斯卡的积分卡死了的九分裤按实际的弗拉斯柯达九分裤是打开就发生快乐大脚</p>\r\n\r\n<p>是的发生了科技的妇科类似的纠纷</p>\r\n', 3, '2014-10-26 15:43:00'),
(4, '阿士大夫士大夫', '<p>是打发斯蒂芬</p>\r\n\r\n<p>是的减肥那时间的复活节</p>\r\n\r\n<p>是打发了深刻的九分裤</p>\r\n\r\n<p>是理科的房间阿里开始的减肥克里斯蒂</p>\r\n', 1, '2014-10-26 15:43:00'),
(5, '开始计划的副科级阿士大夫', '<p>阿萨德尖峰时刻大姐夫是打发似的</p>\r\n\r\n<p>我而为我俄日我日我饿哦日哦额外我日我饿哦平</p>\r\n\r\n<p>哦ioiasdjfasdfj巍巍然了开始的开发受打击的加快立法SD卡</p>\r\n\r\n<p>开始的房间爱斯柯达</p>\r\n\r\n<p>卡死了都士大夫士大夫士大夫时刻打发士大夫</p>\r\n\r\n<p>快考试大法师打发打发阿士大夫的课文</p>\r\n', 1, '2014-10-26 15:43:00'),
(6, '间距为', '<p>是打发斯蒂芬覆盖规划局规划局和肌肤更好</p>\r\n\r\n<p>工会经费骨灰级分工会经费骨灰级分工会经费骨灰级法规和解放后法规及回复该回家附件法规及回复该回家更符合股份合计分工会经费骨灰级分工会经费骨灰级腹股沟黄金分割积分骨灰级好几个回复该计划</p>\r\n\r\n<p>股份何健飞个放过机会骨灰级法规及 福建福建工会就感觉</p>\r\n\r\n<p>更好的法国恢复供货的法国恢复供货的法规和地方规划</p>\r\n\r\n<p>的法国恢复的规划法规和<br />\r\n&nbsp;</p>\r\n', 1, '2014-10-26 15:43:00'),
(7, '色人体各瑞特人突然', '<p>尔特瑞特瑞特瑞特尔特瑞特让他</p>\r\n\r\n<p>师父问看看的飞机离开士大夫看是否及时的反馈</p>\r\n\r\n<p>。时刻的弗兰克打发时间的咖啡机阿萨德飞机啊历史课打飞机</p>\r\n\r\n<p>是打发文件看了就开发历史课打飞机了肯德基弗拉斯柯达</p>\r\n\r\n<p>温柔品味荣iwewwww</p>\r\n', 1, '2014-10-26 15:43:00');

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `c_name` varchar(255) DEFAULT NULL COMMENT '分类名',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='分类表' AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`cid`, `c_name`) VALUES
(1, '行业资讯'),
(2, '企业动态'),
(3, '技术文章');

-- --------------------------------------------------------

--
-- 表的结构 `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `lid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `links`
--

INSERT INTO `links` (`lid`, `url`, `title`) VALUES
(1, 'http://www.baidu.com', '百度');

-- --------------------------------------------------------

--
-- 表的结构 `substance`
--

CREATE TABLE IF NOT EXISTS `substance` (
  `sid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `content` longtext COMMENT '内容',
  `add_date` datetime DEFAULT NULL COMMENT '添加日期',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='内容表' AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `substance`
--

INSERT INTO `substance` (`sid`, `title`, `content`, `add_date`) VALUES
(1, '公司简介', '<p>是打发斯蒂芬多少</p>\r\n\r\n<p>类似的纠纷连卡时间的分开了就爱是打开了附件快乐时间的分开就暗示的客服就阿里开始的积分卡时间到了房间爱历史课大姐夫是理科的肌肤卡拉是大家分开了撒娇的副科级阿士大夫刻录机奥斯卡的飞机拉是看得见方腊时刻的肌肤凯立德了深刻的肌肤拉克是大家分开了就是打开了房间了深刻的激发了开始的减肥临时卡打飞机了凯撒的机房里卡时间的咖啡机</p>\r\n\r\n<p><img alt="" src="http://127.0.0.1/enterprise/uploadfile/substance/201410/1414290969_11953.jpg" style="height:531px; width:800px" /></p>\r\n\r\n<p>暗示法师打发士大夫士大夫</p>\r\n\r\n<p>卡死了的看法开开开始的丰厚的健康的合法为客户发放啊是理科的肌肤哈就开始大富豪</p>\r\n\r\n<p>可是记得回复卡就是的回房间阿克苏的肌肤会卡就是的恢复健康阿卡时间的回复可就是的合法可是记得发货快接啊四大行结婚d</p>\r\n\r\n<p>是看得见回复卡就是的复活节</p>\r\n', NULL),
(2, '加入我们', '<p>电脑发士大夫士大夫还记得</p>\r\n\r\n<p>舍得放开撒娇的法律会计师打开</p>\r\n\r\n<p>是的激发了深刻的肌肤可拉萨的疯狂</p>\r\n\r\n<p>事登记法拉克时间的法律会计师打开</p>\r\n\r\n<p>实力的快件费卢卡斯的肌肤开始觉得</p>\r\n\r\n<p>哦对了房间里是卡的肌肤开始的减肥的减肥</p>\r\n\r\n<p><img alt="" src="http://127.0.0.1/enterprise/uploadfile/substance/201410/1414301759_28039.jpg" style="height:531px; width:800px" /></p>\r\n\r\n<p>时间开房记录是卡机的付款了是的减肥了开始就爱的分开了</p>\r\n', NULL),
(3, '联系我们', '<p>历史的肌肤可就是的离开房间SD卡房间里是卡的积分</p>\r\n\r\n<p>实力的开发就是可怜的肌肤</p>\r\n\r\n<p>是打飞机阿士大夫就离开</p>\r\n\r\n<p><img alt="" src="http://127.0.0.1/enterprise/uploadfile/substance/201410/1414301874_4100.jpg" style="height:531px; width:800px" /></p>\r\n\r\n<p>离开是大家看法是理科的肌肤是打发</p>\r\n\r\n<p>是，的卡夫卡时间的方式见对方奥斯卡的房间爱时刻的肌肤开始的减肥阿斯兰的科技弗拉斯柯达复健科就暗示了对方可就是开的房间来看就是了打开房间爱死了肯德基阿斯兰的开发就爱是可怜的叫法是可怜的金风科技是咖啡机 暗示了对方即可</p>\r\n\r\n<p>是的发生的健康</p>\r\n\r\n<p>是打发了深刻的肌肤开始的减肥</p>\r\n', NULL),
(4, '关于我们', '<p>哦了时间方腊时可见的福克斯的九分裤</p>\r\n\r\n<p>是围绕玩儿玩儿阿士大夫士大夫 士大夫似的发生是打发斯蒂芬</p>\r\n\r\n<p>是打飞机啊是的回复时间的符合实际看到是的减肥哈时间肯定符合实际得分</p>\r\n\r\n<p>打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥打开肌肤哈市科技的回复就卡死的发挥</p>\r\n\r\n<p>了时刻记得了副科级奥斯卡的减肥快乐圣诞节阿斯利康的房间爱是可怜的减肥了开始大家了深刻的积分卡拉斯加豆腐</p>\r\n\r\n<p>克里斯多夫看见爱是打开了房间啊是理科的肌肤斯科拉的复健科</p>\r\n\r\n<p>卢卡斯的肌肤uweiurweuy科技的回复是开机动画</p>\r\n', NULL),
(5, '客户案例', '<p>是打发斯蒂芬就是的合法会计师的附件是的话</p>\r\n\r\n<p>是开的房间爱死了的科技富士康的附件是看得见阿斯达克积分卡时间的分类看时间到了附近阿斯兰的房间爱是可怜的积分卡拉斯的见附件阿斯兰的剑法是可怜的减肥快乐驾驶的客服就爱是看得见开始交电费卡时间的付款链接阿什利会计法</p>\r\n\r\n<p>时刻的减肥了卡时间的咖啡机</p>\r\n\r\n<p>拉屎开的房间爱上是可怜的发生的纠纷是的肌肤的肌肤</p>\r\n\r\n<p>开始的房间爱斯柯达分历史的分开就是的看法</p>\r\n\r\n<p>开始的减肥死了打飞机是理科的副驾驶的空间是理科的肌肤可适当</p>\r\n\r\n<p>是开的房是理科的肌肤肯德基</p>\r\n\r\n<p>卡死了都发卡机是打发是打发斯蒂芬阿斯顿发士大夫是打发斯蒂芬是打发斯蒂芬</p>\r\n', NULL),
(6, '桌面服务', '<p>时间的发货及时打飞机阿斯达克附件是肯定</p>\r\n\r\n<p>是打开房间爱时刻打飞机</p>\r\n\r\n<p>是打开房间爱时刻的肌肤开始打飞机是打开房间爱时刻打飞机</p>\r\n\r\n<p>看时间的分开就暗示的咖啡机</p>\r\n\r\n<p>了深刻的积分卡拉斯的肌肤可就是开朗大方</p>\r\n\r\n<p>离开时间的付款时间的付款时间的法律</p>\r\n\r\n<p>卢卡斯的肌肤克拉就是的开发阶段</p>\r\n\r\n<p>离开时间的分开就是打开了附件是老大副科级</p>\r\n', NULL),
(7, '网络服务', '<p>是打开房间爱上的飞机打开士大夫撒打发士大夫</p>\r\n\r\n<p>是打发士大夫士大夫士大夫</p>\r\n\r\n<p>是打发士大夫士大夫是打发士大夫士大夫士大夫啊是打发士大夫士大夫士大夫是打发斯蒂芬</p>\r\n\r\n<p>是打发士大夫似的奋斗</p>\r\n\r\n<p>是打发是打发士大夫士大夫士大夫阿士大夫士大夫撒打发士大夫啊是打发士大夫似的士大夫撒打发士大夫</p>\r\n\r\n<p>是打发士大夫士大夫阿斯顿发送到</p>\r\n\r\n<p>是打发是打发士大夫似的是打发斯蒂芬</p>\r\n\r\n<p>是打发士大夫士大夫地方</p>\r\n', NULL),
(8, '系统服务', '<p>是打发士大夫士大夫士大夫是打发斯蒂芬</p>\r\n\r\n<p>是打发是打发士大夫似的发送到fsadf</p>\r\n\r\n<p>是打发似的发是打发是打发士大夫似的发是打发是打发士大夫似的</p>\r\n\r\n<p>士大夫卡士大夫撒打发士大夫</p>\r\n\r\n<p>是打发士大夫似的发士大夫是打发是打发似的</p>\r\n\r\n<p>是打发是打发似的</p>\r\n', NULL),
(9, '办公设备服务', '<p>是打发是打发士大夫士大夫阿士大夫士大夫士大夫</p>\r\n\r\n<p>是打发是打发士大夫士大夫</p>\r\n\r\n<p>是打发是打发士大夫士大夫士大夫士大夫的师傅是打发是打发士大夫士大夫第三方士大夫的方式的发生大幅度</p>\r\n\r\n<p>士大夫撒打发士大夫的</p>\r\n\r\n<p>地方是打发是打发士大夫士大夫士大夫</p>\r\n\r\n<p>是打发是打发士大夫士大夫士大夫士大夫的师傅是打发是打发士大夫士大夫第三方士大夫的方式的发生大幅度</p>\r\n\r\n<p>打发士大夫撒地方是打发士大夫士大夫地方第三方<br />\r\n&nbsp;</p>\r\n', NULL),
(10, '数据安全', '<p>士大夫撒打发士大夫士大夫士大夫阿士大夫士大夫撒打发士大夫是打发斯蒂芬</p>\r\n\r\n<p>是打发士大夫士大夫是打发斯蒂芬</p>\r\n\r\n<p>发是打发是打发士大夫士大夫第三方</p>\r\n\r\n<p>实施打发打发打发士大夫撒打发似的</p>\r\n\r\n<p>温温热人味儿是打发是打发士大夫士大夫士大夫士大夫的师傅是打发是打发士大夫士大夫第三方士大夫的方式的发生大幅度</p>\r\n\r\n<p>士大夫撒打发士大夫</p>\r\n', NULL),
(11, 'IT设备迁移', '<p>事发时的飞洒的方式发生的范德萨</p>\r\n\r\n<p>士大夫撒打发士大夫是打发是打发斯蒂芬</p>\r\n\r\n<p>是打发是打发士大夫士大夫士大夫士大夫的师傅是打发是打发士大夫士大夫第三方士大夫的方式的发生大幅度sdfasdf</p>\r\n\r\n<p>是打发士大夫士大夫是打发似的</p>\r\n\r\n<p>打发士大夫士大夫</p>\r\n\r\n<p>是打发是打发士大夫士大夫</p>\r\n\r\n<p>士大夫撒打发士大夫是打发</p>\r\n', NULL),
(12, '紧急服务', '<p>紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务紧急服务</p>\r\n', NULL),
(13, '例行巡检', '<p>例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检例行巡检</p>\r\n', NULL),
(14, '场地驻场', '<p>场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场场地驻场</p>\r\n', NULL),
(15, '远程服务', '<p>远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务远程服务</p>\r\n', NULL),
(16, '咨询服务', '<p>咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务咨询服务</p>\r\n', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
