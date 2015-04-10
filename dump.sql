-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               5.5.41-log - MySQL Community Server (GPL)
-- ОС Сервера:                   Win32
-- HeidiSQL Версия:              9.1.0.4867
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры базы данных blog
DROP DATABASE IF EXISTS `blog`;
CREATE DATABASE IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `blog`;


-- Дамп структуры для таблица blog.config
DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) DEFAULT NULL,
  `config_key` text,
  `config_value` text,
  `group_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы blog.config: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
/*!40000 ALTER TABLE `config` ENABLE KEYS */;


-- Дамп структуры для таблица blog.posts
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

-- Дамп данных таблицы blog.posts: ~6 rows (приблизительно)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `userId`, `title`, `annonce`, `post`) VALUES
	(1, 1, '«Мне сказали, что права я не увижу»', 'Постановление правительства, принятое в декабре прошлого года, существенно ухудшило права автомобилистов и спровоцировало шквал судебных исков на незаконные действия врачей. В перечне заболеваний, попавших под запрет, оказались расстройства, которые никогда не препятствовали вождению автомобиля.', '<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">Постановление правительства, принятое в декабре прошлого года, существенно ухудшило права автомобилистов и спровоцировало шквал судебных исков на незаконные действия врачей. В перечне заболеваний, попавших под запрет, оказались расстройства, которые никогда не препятствовали вождению автомобиля. Теперь люди, у которых были годы безаварийной езды, больше не могут водить машины, потому что им отказывают в получении медицинской справки.</p>\n<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">IT-шник Михаил Семенов (фамилия по его просьбе изменена&nbsp;&mdash; &laquo;Газета.Ru&raquo;) пошел устраиваться на госслужбу, где требовалось получить допуск к гостайне. По этому поводу его отправили по врачам, одна из справок была нужна от психиатра из районного ПНД. Уже в диспансере от него потребовали пройти дополнительные обследования&nbsp;&mdash; причем за деньги.</p>'),
	(2, 1, 'Болельщик «Спартака» выжил после падения с козырька трибуны', 'Болельщик московского «Спартака» во время гостевого матча 22-го тура чемпионата России с тульским «Арсеналом» упал с козырька трибуны стадиона, но остался жив. Об этом сообщает «Р-Спорт».', '<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">Болельщик московского &laquo;Спартака&raquo; во время гостевого матча 22-го тура чемпионата России с тульским &laquo;Арсеналом&raquo; упал с козырька трибуны стадиона, но остался жив. Об этом сообщает &laquo;Р-Спорт&raquo;.</p>\n<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">По ходу второго тайма несколько фанатов красно-белых забрались на защищающий трибуну от непогоды козырек и игнорировали требования диктора арены вернуться на свои места. В концовке матча один из болельщиков &laquo;Спартака&raquo; поскользнулся и упал с крыши южной трибуны. На место происшествия прибыла машина скорой помощи. Болельщик получил переломы рук и ног.</p>'),
	(3, 1, 'В центре Москвы появился плакат с изображением Сталина', 'На заборе возле дома 11 А по улице Плющиха в Москве появился плакат с изображением Иосифа Сталина с надписью «Вечная слава победителям!».', '<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">На заборе возле дома 11 А по улице Плющиха в Москве появился плакат с изображением Иосифа Сталина с надписью &laquo;Вечная слава победителям!&raquo;. Плакат на раме из труб, передает &laquo;Интерфакс&raquo;. На баннере изображен фотоколлаж хроники военных и послевоенных лет, а по центру&nbsp;&mdash; знамя Победы, на фоне которого расположен портрет Сталина в маршальском кителе с орденами.</p>\n<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">Городские власти пока не предоставили комментарии на этот счет.</p>'),
	(4, 2, 'Фастфуд Михалкова-Кончаловского не получит специальной бюджетной поддержки', 'Проект российской сети фастфуда "Едим дома", инициированный Андреем Кончаловским и Никитой Михалковым, не требует бюджетной поддержки, но будет претендовать на участие в существующих механизмах поддержки малого и среднего бизнеса в общем порядке, сообщила журналистам пресс-секретарь вице-премьера Аркадия Дворковича Алия Самигуллина.', '<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;" align="left">Проект российской сети фастфуда "Едим дома", инициированный Андреем Кончаловским и Никитой Михалковым, не требует бюджетной поддержки, но будет претендовать на участие в существующих механизмах поддержки малого и среднего бизнеса в общем порядке, сообщила журналистам пресс-секретарь вице-премьера Аркадия Дворковича Алия Самигуллина.</p>\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;" align="left">Она сообщила, что в соответствии с поручением президента Владимира Путина вице-премьер Дворкович провел в четверг совещание, посвященное проекту "Едим дома". Участники совещания обсудили параметры проекта, предполагающего создание сети кафе-кулинарий, где будут использоваться экологически чистые продукты. "Было подтверждено, что для реализации проекта не требуется бюджетной поддержки. Проект будет претендовать на участие в существующих механизмах поддержки малого и среднего бизнеса в общем порядке", &ndash;&nbsp;сообщила Самигуллина.</p>\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;" align="left">По ее словам, как и по другим подобным проектам, регионы будут взаимодействовать с инициаторами "Едим дома" для определения благоприятных условий для реализации данного проекта.</p>'),
	(5, 2, 'Ралли рубля. Чем опасно укрепление нацвалюты?', 'Рубль продолжает стремительный рост. Доллар в ходе торгов на Московской бирже подешевел на полтора рубля. В моменте курс американской валюты опускался ниже отметки 52 — минимума с конца декабря. Евро опускался ниже 56 рублей впервые с ноября. При этом стоимость майских фьючерсов на нефть Brent сегодня упала ниже 57 долларов. Всего же с начала апреля российский рубль укрепился примерно на 10%.', '<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">Рубль продолжает стремительный рост. Доллар в ходе торгов на Московской бирже подешевел на полтора рубля. В моменте курс американской валюты опускался ниже отметки 52 &mdash; минимума с конца декабря. Евро опускался ниже 56 рублей&nbsp;впервые с ноября. При этом стоимость майских фьючерсов на нефть Brent сегодня упала ниже 57 долларов. Всего же с начала апреля российский рубль укрепился примерно на 10%.</p>\n<p style="font-family: Arial, Helvetica, sans-serif; font-size: 12px;">Накануне на фоне ралли рубля глава Минэкономразвития Улюкаев заявил, что российская валюта возвращается к своим фундаментальным значениям. А сегодня в Госдуме попросили ЦБ предоставить план по валютному регулированию, чтобы предотвратить чрезмерное укрепление рубля. Автор обращения, депутат Владимир Гутенев, в письме Эльвире Набиуллиной отмечает, что ему поступают обращения представителей реального сектора, которые опасаются снижения конкурентоспособности российской продукции на внешнем рынке из-за укрепления рубля.</p>'),
	(6, 2, 'Во Всеволожске началось производство нового Ford Mondeo', 'Серийное производство российской версии нового поколения Ford Mondeo стартовало 9 апреля 2015 года. Собирается автомобиль на заводе Ford Sollers во Всеволожске.', '<p style="margin: 0px; padding: 0px 0px 1em; font-size: 13.6108865737915px; height: auto; font-family: Arial, sans-serif;">Серийное производство российской версии нового поколения Ford Mondeo стартовало 9&nbsp;апреля 2015&nbsp;года. Собирается автомобиль на&nbsp;заводе Ford Sollers во&nbsp;Всеволожске.</p>\n<p style="margin: 0px; padding: 0px 0px 1em; font-size: 13.6108865737915px; height: auto; font-family: Arial, sans-serif;">На&nbsp;отечественном рынке модель предлагается в&nbsp;кузове седан. Автомобиль доступен в&nbsp;четырех комплектациях: Ambiente, Trend, Titanium и&nbsp;Titanium Plus. Цены на&nbsp;новинку начинаются от&nbsp;1&nbsp;млн 149&nbsp;тыс. рублей. Топовая модификация новинки обойдется в&nbsp;1&nbsp;млн 799&nbsp;тыс. рублей.</p>'),
	(7, 3, 'Молния пробила дыру в пассажирском самолете, летевшем из Исландии в США', 'Вскоре после вылета из аэропорта столицы Исландии Рейкьявика в нос пассажирского самолета авиакомпании Icelandair, направлявшегося в американский Денвер (штат Колорадо), ударила молния. Об этом сообщили в четверг местные СМИ.', '<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;"><img src="http://img01.rl0.ru/915d9f6e9cc59c8641a2503da750cfdb/432x288/news.rambler.ru/img/2015/04/09225600.926692.9392.jpg" alt="" width="257" height="171" /></p>\n<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">Вскоре после вылета из аэропорта столицы Исландии Рейкьявика в нос пассажирского самолета авиакомпании Icelandair, направлявшегося в американский Денвер (штат Колорадо), ударила молния. Об этом сообщили в четверг местные СМИ.</p>\n<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">Системы Boeing 757 из строя не вышли, и пилоты решили продолжить восьмичасовой полет. Лишь после посадки выяснилось, что в месте удара молнии образовалась пробоина. Сколько человек находилось на борту самолета, не сообщается. Приземление прошло штатно, никто из пассажиров и членов экипажа не пострадал.</p>\n<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">По словам представителей Icelandair, попадания молний в воздушное судно происходят довольно часто, и самолеты к ним приспособлены. Таким образом, решив продолжить полет, пилоты должностные инструкции не нарушили. Расстояние от Рейкьявика до Денвера составляет почти 6 тыс. км.</p>\n<p class="b-article__paragraph" style="margin: 0px 0px 13px; font-family: Georgia, serif; font-size: 1.05em; line-height: 1.55em; color: #333333;">Лайнер был изъят из эксплуатации и будет отправлен на ремонт.</p>');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;


-- Дамп структуры для таблица blog.roles
DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы blog.roles: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `description`) VALUES
	(1, 'login', 'Login privileges, granted after account confirmation'),
	(2, 'admin', 'Administrative user, has access to everything.');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;


-- Дамп структуры для таблица blog.roles_users
DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE IF NOT EXISTS `roles_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_role_id` (`role_id`),
  CONSTRAINT `roles_users_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `roles_users_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Дамп данных таблицы blog.roles_users: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `roles_users` DISABLE KEYS */;
INSERT INTO `roles_users` (`user_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(1, 2);
/*!40000 ALTER TABLE `roles_users` ENABLE KEYS */;


-- Дамп структуры для таблица blog.users
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

-- Дамп данных таблицы blog.users: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `email`, `username`, `password`, `logins`, `last_login`) VALUES
	(1, 'andreyot@gmail.com', 'admin', '80d5ae2a2839361538032c43855de70d67ba657ca0dd905b59567b679a427ad3', 18, 1428616873),
	(2, 'ranello@mail.ru', 'ranello@mail.ru', '7956ca001f1c5b1c76d0cae32f5f031a3204fc823088c8eed8c52a584446e45c', 5, 1428612728),
	(3, 'test@mail.ru', 'test@mail.ru', '998fc089bb4fb857dee5f64a72148dc7dcc4ad7038979bb7cd6f4ad55b134165', 2, 1428616565),
	(4, 'user@mail.com', 'user@mail.com', '7956ca001f1c5b1c76d0cae32f5f031a3204fc823088c8eed8c52a584446e45c', 2, 1428613621);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;


-- Дамп структуры для таблица blog.user_tokens
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

-- Дамп данных таблицы blog.user_tokens: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `user_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_tokens` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
