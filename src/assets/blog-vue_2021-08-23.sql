# ************************************************************
# Sequel Pro SQL dump
# Version 5446
#
# https://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 8.0.26)
# Database: blog-vue
# Generation Time: 2021-08-23 07:09:06 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table article
# ------------------------------------------------------------

DROP TABLE IF EXISTS `article`;

CREATE TABLE `article` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `introduce` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tags` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `html` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '',
  `creat_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;

INSERT INTO `article` (`id`, `user_id`, `title`, `introduce`, `tags`, `content`, `html`, `status`, `creat_at`, `update_at`)
VALUES
	(1,1,'文章标题','文章简介-MySQL 是最流行的关系型数据库管理系统，在 WEB 应用方面 MySQL 是最好的 RDBMS(Relational Database Management System：关系数据库管理系统)应用软件之一。','Javascript,Vue,Node,MySQL','::: hljs-center\n\n# 标题\n\n:::\n\n\n# 一级标题\n## 二级标题\n### 三级标题\n\n1. js\n2. css\n3. vue\n4. react\n\n- ele\n- antd\n\n***数据库***（Database）是按照数据结构来组织、存储和管理数据的仓库。\n\n每个数据库都有一个或多个不同的 API 用于创建，访问，管理，搜索和复制所保存的数据。\n\n我们也可以将数据存储在文件中，但是在文件中读写数据速度相对较慢。\n\n所以，现在我们使用关系型数据库管理系统（RDBMS）来存储和管理大数据量。所谓的关系型数据库，是建立在关系模型基础上的数据库，借助于集合代数等数学概念和方法来处理数据库中的数据。\n\nRDBMS 即关系数据库管理系统(Relational Database Management System)的特点：\n\n1.数据以表格的形式出现\n2.每行为各种记录名称\n3.每列为记录名称所对应的数据域\n4.许多的行和列组成一张表单\n5.若干的表单组成database\n\n![wedding.jpg](/upload/imgFile-1629702209451.jpg)\n\n|column1|column2|column3|\n|-|-|-|\n|Java|C++|PHP|\n\n```\njavascript\n\nsessionStorage.setItem(\'token\',res.data.data.token;\nsessionStorage.setItem(\'nickname\',res.data.data.nickname);\n\n```\n','<div class=\"hljs-center\">\n<h1><a id=\"_2\"></a>标题</h1>\n</div>\n<h1><a id=\"_7\"></a>一级标题</h1>\n<h2><a id=\"_8\"></a>二级标题</h2>\n<h3><a id=\"_9\"></a>三级标题</h3>\n<ol>\n<li>js</li>\n<li>css</li>\n<li>vue</li>\n<li>react</li>\n</ol>\n<ul>\n<li>ele</li>\n<li>antd</li>\n</ul>\n<p><em><strong>数据库</strong></em>（Database）是按照数据结构来组织、存储和管理数据的仓库。</p>\n<p>每个数据库都有一个或多个不同的 API 用于创建，访问，管理，搜索和复制所保存的数据。</p>\n<p>我们也可以将数据存储在文件中，但是在文件中读写数据速度相对较慢。</p>\n<p>所以，现在我们使用关系型数据库管理系统（RDBMS）来存储和管理大数据量。所谓的关系型数据库，是建立在关系模型基础上的数据库，借助于集合代数等数学概念和方法来处理数据库中的数据。</p>\n<p>RDBMS 即关系数据库管理系统(Relational Database Management System)的特点：</p>\n<p>1.数据以表格的形式出现<br />\n2.每行为各种记录名称<br />\n3.每列为记录名称所对应的数据域<br />\n4.许多的行和列组成一张表单<br />\n5.若干的表单组成database</p>\n<p><img src=\"/upload/imgFile-1629702209451.jpg\" alt=\"wedding.jpg\" /></p>\n<table>\n<thead>\n<tr>\n<th>column1</th>\n<th>column2</th>\n<th>column3</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>Java</td>\n<td>C++</td>\n<td>PHP</td>\n</tr>\n</tbody>\n</table>\n<pre><code class=\"lang-\">javascript\n\nsessionStorage.setItem(\'token\',res.data.data.token;\nsessionStorage.setItem(\'nickname\',res.data.data.nickname);\n\n</code></pre>\n','1','2021-08-23 14:38:04','2021-08-23 15:06:53');

/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `nickname` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `portrait` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `email`, `nickname`, `password`, `portrait`)
VALUES
	(1,'hutao@qq.com','海盗船长','123456','/upload/imgFile-1629702209451.jpg');

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
