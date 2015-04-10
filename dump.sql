-- --------------------------------------------------------
-- ����:                         127.0.0.1
-- ������ �������:               5.5.41-log - MySQL Community Server (GPL)
-- �� �������:                   Win32
-- HeidiSQL ������:              9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- ���� ��������� ���� ������ blog
DROP DATABASE IF EXISTS `blog`;
CREATE DATABASE IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `blog`;


-- ���� ��������� ��� ������� blog.config
DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) DEFAULT NULL,
  `config_key` text,
  `config_value` text,
  `group_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ���� ������ ������� blog.config: ~0 rows (��������������)
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
/*!40000 ALTER TABLE `config` ENABLE KEYS */;


-- ���� ��������� ��� ������� blog.posts
DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT '0',
  `title` text,
  `annonce` text,
  `post` text,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ���� ������ ������� blog.posts: ~6 rows (��������������)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `userId`, `title`, `annonce`, `post`) VALUES
	(1, 1, '���� �������, ��� ����� � �� �����', '������������� �������������, �������� � ������� �������� ����, ����������� �������� ����� �������������� � �������������� ����� �������� ����� �� ���������� �������� ������. � ������� �����������, �������� ��� ������, ��������� ������������, ������� ������� �� �������������� �������� ����������.', '<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">������������� �������������, �������� � ������� �������� ����, ����������� �������� ����� �������������� � �������������� ����� �������� ����� �� ���������� �������� ������. � ������� �����������, �������� ��� ������, ��������� ������������, ������� ������� �� �������������� �������� ����������. ������ ����, � ������� ���� ���� ������������ ����, ������ �� ����� ������ ������, ������ ��� �� ���������� � ��������� ����������� �������.</p>\n<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">IT-���� ������ ������� (������� �� ��� ������� ��������&nbsp;&mdash; &laquo;������.Ru&raquo;) ����� ������������ �� ���������, ��� ����������� �������� ������ � ��������. �� ����� ������ ��� ��������� �� ������, ���� �� ������� ���� ����� �� ��������� �� ��������� ���. ��� � ���������� �� ���� ����������� ������ �������������� ������������&nbsp;&mdash; ������ �� ������.</p>'),
	(2, 1, '��������� ��������� ����� ����� ������� � �������� �������', '��������� ����������� ��������� �� ����� ��������� ����� 22-�� ���� ���������� ������ � �������� ���������� ���� � �������� ������� ��������, �� ������� ���. �� ���� �������� ��-�����.', '<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">��������� ����������� &laquo;��������&raquo; �� ����� ��������� ����� 22-�� ���� ���������� ������ � �������� &laquo;���������&raquo; ���� � �������� ������� ��������, �� ������� ���. �� ���� �������� &laquo;�-�����&raquo;.</p>\n<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">�� ���� ������� ����� ��������� ������� ������-����� ��������� �� ���������� ������� �� �������� ������� � ������������ ���������� ������� ����� ��������� �� ���� �����. � �������� ����� ���� �� ����������� &laquo;��������&raquo; ������������� � ���� � ����� ����� �������. �� ����� ������������ ������� ������ ������ ������. ��������� ������� �������� ��� � ���.</p>'),
	(3, 1, '� ������ ������ �������� ������ � ������������ �������', '�� ������ ����� ���� 11 � �� ����� ������� � ������ �������� ������ � ������������ ������ ������� � �������� ������� ����� �����������!�.', '<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">�� ������ ����� ���� 11 � �� ����� ������� � ������ �������� ������ � ������������ ������ ������� � �������� &laquo;������ ����� �����������!&raquo;. ������ �� ���� �� ����, �������� &laquo;���������&raquo;. �� ������� ��������� ���������� ������� ������� � ������������ ���, � �� ������&nbsp;&mdash; ����� ������, �� ���� �������� ���������� ������� ������� � ����������� ������ � ��������.</p>\n<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">��������� ������ ���� �� ������������ ����������� �� ���� ����.</p>'),
	(4, 2, '������� ���������-������������� �� ������� ����������� ��������� ���������', '������ ���������� ���� �������� "���� ����", �������������� ������� ������������ � ������� ����������, �� ������� ��������� ���������, �� ����� ������������ �� ������� � ������������ ���������� ��������� ������ � �������� ������� � ����� �������, �������� ����������� �����-��������� ����-�������� ������� ���������� ���� �����������.', '<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;" align="left">������ ���������� ���� �������� "���� ����", �������������� ������� ������������ � ������� ����������, �� ������� ��������� ���������, �� ����� ������������ �� ������� � ������������ ���������� ��������� ������ � �������� ������� � ����� �������, �������� ����������� �����-��������� ����-�������� ������� ���������� ���� �����������.</p>\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;" align="left">��� ��������, ��� � ������������ � ���������� ���������� ��������� ������ ����-������� ��������� ������ � ������� ���������, ����������� ������� "���� ����". ��������� ��������� �������� ��������� �������, ��������������� �������� ���� ����-���������, ��� ����� �������������� ������������ ������ ��������. "���� ������������, ��� ��� ���������� ������� �� ��������� ��������� ���������. ������ ����� ������������ �� ������� � ������������ ���������� ��������� ������ � �������� ������� � ����� �������", &ndash;&nbsp;�������� �����������.</p>\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;" align="left">�� �� ������, ��� � �� ������ �������� ��������, ������� ����� ����������������� � ������������ "���� ����" ��� ����������� ������������� ������� ��� ���������� ������� �������.</p>'),
	(5, 2, '����� �����. ��� ������ ���������� ���������?', '����� ���������� ������������� ����. ������ � ���� ������ �� ���������� ����� ��������� �� ������� �����. � ������� ���� ������������ ������ ��������� ���� ������� 52 � �������� � ����� �������. ���� ��������� ���� 56 ������ ������� � ������. ��� ���� ��������� ������� ��������� �� ����� Brent ������� ����� ���� 57 ��������. ����� �� � ������ ������ ���������� ����� ��������� �������� �� 10%.', '<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">����� ���������� ������������� ����. ������ � ���� ������ �� ���������� ����� ��������� �� ������� �����. � ������� ���� ������������ ������ ��������� ���� ������� 52 &mdash; �������� � ����� �������. ���� ��������� ���� 56 ������&nbsp;������� � ������. ��� ���� ��������� ������� ��������� �� ����� Brent ������� ����� ���� 57 ��������. ����� �� � ������ ������ ���������� ����� ��������� �������� �� 10%.</p>\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">�������� �� ���� ����� ����� ����� ����������������� ������� ������, ��� ���������� ������ ������������ � ����� ��������������� ���������. � ������� � ������� ��������� �� ������������ ���� �� ��������� �������������, ����� ������������� ���������� ���������� �����. ����� ���������, ������� �������� �������, � ������ ������� ����������� ��������, ��� ��� ��������� ��������� �������������� ��������� �������, ������� ��������� �������� ��������������������� ���������� ��������� �� ������� ����� ��-�� ���������� �����.</p>'),
	(6, 2, '�� ����������� �������� ������������ ������ Ford Mondeo', '�������� ������������ ���������� ������ ������ ��������� Ford Mondeo ���������� 9 ������ 2015 ����. ���������� ���������� �� ������ Ford Sollers �� �����������.', '<p style="margin: 0px; padding: 0px 0px 1em; font-size: 13.6108865737915px; height: auto; font-family: Arial, sans-serif;">�������� ������������ ���������� ������ ������ ��������� Ford Mondeo ���������� 9&nbsp;������ 2015&nbsp;����. ���������� ���������� ��&nbsp;������ Ford Sollers ��&nbsp;�����������.</p>\n<p style="margin: 0px; padding: 0px 0px 1em; font-size: 13.6108865737915px; height: auto; font-family: Arial, sans-serif;">��&nbsp;������������� ����� ������ ������������ �&nbsp;������ �����. ���������� �������� �&nbsp;������� �������������: Ambiente, Trend, Titanium �&nbsp;Titanium Plus. ���� ��&nbsp;������� ���������� ��&nbsp;1&nbsp;��� 149&nbsp;���. ������. ������� ����������� ������� ��������� �&nbsp;1&nbsp;��� 799&nbsp;���. ������.</p>'),
	(7, 3, '������ ������� ���� � ������������ ��������, �������� �� �������� � ���', '������ ����� ������ �� ��������� ������� �������� ���������� � ��� ������������� �������� ������������ Icelandair, ��������������� � ������������ ������ (���� ��������), ������� ������. �� ���� �������� � ������� ������� ���.', '<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;"><img src="http://img01.rl0.ru/915d9f6e9cc59c8641a2503da750cfdb/432x288/news.rambler.ru/img/2015/04/09225600.926692.9392.jpg" alt="" width="257" height="171" /></p>\n<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">������ ����� ������ �� ��������� ������� �������� ���������� � ��� ������������� �������� ������������ Icelandair, ��������������� � ������������ ������ (���� ��������), ������� ������. �� ���� �������� � ������� ������� ���.</p>\n<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">������� Boeing 757 �� ����� �� �����, � ������ ������ ���������� ������������� �����. ���� ����� ������� ����������, ��� � ����� ����� ������ ������������ ��������. ������� ������� ���������� �� ����� ��������, �� ����������. ����������� ������ ������, ����� �� ���������� � ������ ������� �� ���������.</p>\n<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">�� ������ �������������� Icelandair, ��������� ������ � ��������� ����� ���������� �������� �����, � �������� � ��� �������������. ����� �������, ����� ���������� �����, ������ ����������� ���������� �� ��������. ���������� �� ���������� �� ������� ���������� ����� 6 ���. ��.</p>\n<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">������ ��� ����� �� ������������ � ����� ��������� �� ������.</p>');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;


-- ���� ��������� ��� ������� blog.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ���� ������ ������� blog.roles: ~2 rows (��������������)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `description`) VALUES
	(1, 'login', 'Login privileges, granted after account confirmation'),
	(2, 'admin', 'Administrative user, has access to everything.');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


-- ���� ��������� ��� ������� blog.roles_users
DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE IF NOT EXISTS `roles_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_role_id` (`role_id`),
  CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ���� ������ ������� blog.roles_users: ~3 rows (��������������)
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` (`user_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(1, 2);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;


-- ���� ��������� ��� ������� blog.users
DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `username` varchar(32) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL,
  `logins` int(10) unsigned NOT NULL DEFAULT '0',
  `last_login` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_username` (`username`),
  UNIQUE KEY `uniq_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ���� ������ ������� blog.users: ~2 rows (��������������)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `username`, `password`, `logins`, `last_login`) VALUES
	(1, 'andreyot@gmail.com', 'admin', '80d5ae2a2839361538032c43855de70d67ba657ca0dd905b59567b679a427ad3', 18, 1428616873),
	(2, 'ranello@mail.ru', 'ranello@mail.ru', '7956ca001f1c5b1c76d0cae32f5f031a3204fc823088c8eed8c52a584446e45c', 5, 1428612728),
	(3, 'test@mail.ru', 'test@mail.ru', '998fc089bb4fb857dee5f64a72148dc7dcc4ad7038979bb7cd6f4ad55b134165', 2, 1428616565),
	(4, 'user@mail.com', 'user@mail.com', '7956ca001f1c5b1c76d0cae32f5f031a3204fc823088c8eed8c52a584446e45c', 2, 1428613621);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- ���� ��������� ��� ������� blog.user_tokens
DROP TABLE IF EXISTS `user_tokens`;
CREATE TABLE IF NOT EXISTS `user_tokens` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `user_agent` varchar(40) NOT NULL,
  `token` varchar(40) NOT NULL,
  `created` int(10) unsigned NOT NULL,
  `expires` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_token` (`token`),
  KEY `fk_user_id` (`user_id`),
  KEY `expires` (`expires`),
  CONSTRAINT `user_tokens_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ���� ������ ������� blog.user_tokens: ~0 rows (��������������)
/*!40000 ALTER TABLE `user_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tokens` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
