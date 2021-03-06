-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 22 2018 г., 16:52
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `mcplanshet_base`
--

-- --------------------------------------------------------

--
-- Структура таблицы `announcement`
--

CREATE TABLE IF NOT EXISTS `announcement` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `intro_text` text NOT NULL,
  `full_text` text NOT NULL,
  `image_src` varchar(255) NOT NULL,
  `image_alt` varchar(50) NOT NULL DEFAULT 'картинка к посту',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `announcement`
--

INSERT INTO `announcement` (`id`, `title`, `intro_text`, `full_text`, `image_src`, `image_alt`) VALUES
(1, 'MC PlanShet предлагает услуги звукозаписи', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam assumenda at debitis dolorem earum eligendi eveniet fugit id ipsam, labore libero maiores molestias nisi obcaecati porro possimus provident quae, quaerat, quam quas qui rerum sed soluta tenetur veniam. Architecto aspernatur blanditiis doloribus eos exercitationem inventore, modi perspiciatis. Beatae blanditiis consequuntur eum ex expedita laboriosam mollitia natus nisi odio perspiciatis, quo sit unde, velit veniam voluptatem. Alias dolorum explicabo fugiat hic id, incidunt ipsa iure iusto laborum neque perferendis quis repellendus sit temporibus totam unde ut velit. Beatae, cum, doloribus eligendi ex hic odit optio praesentium quidem quos reprehenderit, similique soluta. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium ad at doloremque facere, iste magnam, minima mollitia perspiciatis quasi quia quo saepe vero. \n', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam assumenda at debitis dolorem earum eligendi eveniet fugit id ipsam, labore libero maiores molestias nisi obcaecati porro possimus provident quae, quaerat, quam quas qui rerum sed soluta tenetur veniam. Architecto aspernatur blanditiis doloribus eos exercitationem inventore, modi perspiciatis. Beatae blanditiis consequuntur eum ex expedita laboriosam mollitia natus nisi odio perspiciatis, quo sit unde, velit veniam voluptatem. Alias dolorum explicabo fugiat hic id, incidunt ipsa iure iusto laborum neque perferendis quis repellendus sit temporibus totam unde ut velit. Beatae, cum, doloribus eligendi ex hic odit optio praesentium quidem quos reprehenderit, similique soluta. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusantium ad at doloremque facere, iste magnam, minima mollitia perspiciatis quasi quia quo saepe vero. Accusantium asperiores at commodi consequatur cumque debitis dignissimos doloribus excepturi fugit hic id inventore laboriosam magnam modi nesciunt nihil nulla obcaecati odio optio quaerat qui quo quod repellat sapiente sit tempore, ut. Adipisci, amet consequatur consequuntur doloremque, fuga impedit itaque iure laboriosam nemo nesciunt optio rerum sequi, sint tenetur voluptatem. Accusantium aliquid beatae consequatur culpa dignissimos distinctio dolor enim est explicabo facere, fugit, id impedit ipsam ipsum itaque, laborum mollitia nobis obcaecati quas reiciendis repellat rerum sit soluta tempora tempore unde ut veniam vero voluptatem voluptatibus? ', 'images/repetition1.jpg', 'картинка репетиция 1'),
(2, 'группа "Космос Рядом" выступит у вас на корпоративе', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam assumenda at debitis dolorem earum eligendi eveniet fugit id ipsam, labore libero maiores molestias nisi obcaecati porro possimus provident quae, quaerat, quam quas qui rerum sed soluta tenetur veniam. Architecto aspernatur blanditiis doloribus eos exercitationem inventore, modi perspiciatis. Beatae blanditiis consequuntur eum ex expedita laboriosam mollitia natus nisi odio perspiciatis, quo sit unde, velit veniam voluptaem.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam assumenda at debitis dolorem earum eligendi eveniet fugit id ipsam, labore libero maiores molestias nisi obcaecati porro possimus provident quae, quaerat, quam quas qui rerum sed soluta tenetur veniam. Architecto aspernatur blanditiis doloribus eos exercitationem inventore, modi perspiciatis. Beatae blanditiis consequuntur eum ex expedita laboriosam mollitia natus nisi odio perspiciatis, quo sit unde, velit veniam voluptatem.\n', 'images/firstconcert.jpg', 'картинка 2'),
(3, 'MC PlanShet планирует выпустить свой новый альбом в конце этого года', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam assumenda at debitis dolorem earum eligendi eveniet fugit id ipsam, labore libero maiores molestias nisi obcaecati porro possimus provident quae, quaerat, quam quas qui rerum sed soluta tenetur veniam. Architecto aspernatur blanditiis doloribus eos exercitationem inventore, modi perspiciatis. Beatae blanditiis consequuntur eum ex expedita laboriosam mollitia natus nisi odio perspiciatis, quo sit unde, velit veniam voluptaem.\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam assumenda at debitis dolorem earum eligendi eveniet fugit id ipsam, labore libero maiores molestias nisi obcaecati porro possimus provident quae, quaerat, quam quas quierum sed soluta tenetur veniam. Architecto aspernatur blanditiis doloribus eos exercitationem inventore, modi perspiciatis. Beatae blanditiis consequuntur eum ex expedita laboriosam mollitia natus nisi odio perspiciatis, quo sit unde, velit veniam voluptaem.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam assumenda at debitis dolorem earum eligendi eveniet fugit id ipsam, labore libero maiores molestias nisi obcaecati porro possimus provident quae, quaerat, quam quas qui rerum sed soluta tenetur veniam. Architecto aspernatur blanditiis doloribus eos exercitationem inventore, modi perspiciatis. Beatae blanditiis consequuntur eum ex expedita laboriosam mollitia natus nisi odio perspiciatis, quo sit unde, velit veniam voluptaem.\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam assumenda at debitis dolorem earum eligendi eveniet fugit id ipsam, labore libero maiores molestias nisi obcaecati porro possimus provident quae, quaerat, quam quas quierum sed soluta tenetur veniam. Architecto aspernatur blanditiis doloribus eos exercitationem inventore, modi perspiciatis. Beatae blanditiis consequuntur eum ex expedita laboriosam mollitia natus nisi odio perspiciatis, quo sit unde, velit veniam voluptaem.\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam assumenda at debitis dolorem earum eligendi eveniet fugit id ipsam, labore libero maiores molestias nisi obcaecati porro possimus provident quae, quaerat, quam quas qui rerum sed soluta tenetur veniam. Architecto aspernatur blanditiis doloribus eos exercitationem inventore, modi perspiciatis. Beatae blanditiis consequuntur eum ex expedita laboriosam mollitia natus nisi odio perspiciatis, quo sit unde, velit veniam voluptaem.\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam assumenda at debitis dolorem earum eligendi eveniet fugit id ipsam, labore libero maiores molestias nisi obcaecati porro possimus provident quae, quaerat, quam quas quierum sed soluta tenetur veniam. Architecto aspernatur blanditiis doloribus eos exercitationem inventore, modi perspiciatis. Beatae blanditiis consequuntur eum ex expedita laboriosam mollitia natus nisi odio perspiciatis, quo sit unde, velit veniam voluptaem.\n', 'images/monstrp.jpg', 'картинка альбом'),
(4, 'Рок-группа "Космос Рядом" выступит в клубе "Джолли Роджер"', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam assumenda at debitis dolorem earum eligendi eveniet fugit id ipsam, labore libero maiores molestias nisi obcaecati porro possimus provident quae, quaerat, quam quas qui rerum sed soluta tenetur veniam. Architecto aspernatur blanditiis doloribus eos exercitationem inventore, modi perspiciatis. Beatae blanditiis consequuntur eum ex expedita laboriosam mollitia natus nisi odio perspiciatis, quo sit unde, velit veniam voluptaem.\nLorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam assumenda at debitis dolorem earum eligendi eveniet fugit id ipsam, labore libero maiores molestias nisi obcaecati porro possimus provident quae, quaerat, quam quas qui rerum sed soluta tenetur veniam. Architecto aspernatur blanditiis doloribus eos exercitationem inventore, modi perspiciatis. Beatae blanditiis consequuntur eum ex expedita laboriosam mollitia natus nisi odio perspiciatis, quo sit unde, velit veniam voluptaem.\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam assumenda at debitis dolorem earum eligendi eveniet fugit id ipsam, labore libero maiores molestias nisi obcaecati porro possimus provident quae, quaerat, quam quas quierum sed soluta tenetur veniam. Architecto aspernatur blanditiis doloribus eos exercitationem inventore, modi perspiciatis. Beatae blanditiis consequuntur eum ex expedita laboriosam mollitia natus nisi odio perspiciatis, quo sit unde, velit veniam voluptaem.\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam assumenda at debitis dolorem earum eligendi eveniet fugit id ipsam, labore libero maiores molestias nisi obcaecati porro possimus provident quae, quaerat, quam quas qui rerum sed soluta tenetur veniam. Architecto aspernatur blanditiis doloribus eos exercitationem inventore, modi perspiciatis. Beatae blanditiis consequuntur eum ex expedita laboriosam mollitia natus nisi odio perspiciatis, quo sit unde, velit veniam voluptaem.\nLorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam assumenda at debitis dolorem earum eligendi eveniet fugit id ipsam, labore libero maiores molestias nisi obcaecati porro possimus provident quae, quaerat, quam quas quierum sed soluta tenetur veniam. Architecto aspernatur blanditiis doloribus eos exercitationem inventore, modi perspiciatis. Beatae blanditiis consequuntur eum ex expedita laboriosam mollitia natus nisi odio perspiciatis, quo sit unde, velit veniam voluptaem.\n\n', 'images/concert5.jpg', 'картинка выступление 1');

-- --------------------------------------------------------

--
-- Структура таблицы `comments_foto`
--

CREATE TABLE IF NOT EXISTS `comments_foto` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `dt` int(11) unsigned NOT NULL,
  `id_foto` int(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Дамп данных таблицы `comments_foto`
--

INSERT INTO `comments_foto` (`id`, `name`, `text`, `dt`, `id_foto`) VALUES
(1, 'Grigory', 'super!!!', 1534329566, 37),
(2, 'Grigory', 'good song!', 1534329649, 36),
(3, 'Green', 'i agree with you', 1534329664, 36),
(4, 'Sera', 'i was there )', 1534329823, 36),
(5, 'Herald', 'i was not )', 1534329852, 36),
(6, 'Green', 'it is a good foto )', 1534329960, 34),
(7, 'Green', 'yes )', 1534331204, 37),
(8, 'Mike', 'hello world!', 1535101407, 26),
(9, 'Mike', ')))))', 1535372936, 36),
(10, 'Mike', 'really good )', 1535372954, 36),
(11, 'Mike', 'what are you thinking about? )', 1535373428, 35);

-- --------------------------------------------------------

--
-- Структура таблицы `comments_news`
--

CREATE TABLE IF NOT EXISTS `comments_news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `dt` int(11) unsigned NOT NULL,
  `id_article` int(5) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Дамп данных таблицы `comments_news`
--

INSERT INTO `comments_news` (`id`, `name`, `text`, `dt`, `id_article`) VALUES
(1, 'Alexey', 'hoy!!!!!!', 1533128152, 5),
(2, 'Alexey', 'Зачем!!!???', 1533128229, 9),
(3, 'Green', 'what is it???', 1533128270, 9),
(4, 'Green', 'What does she want to do?', 1533128325, 9),
(5, 'Green', 'it a good story!!!', 1533128353, 8),
(6, 'Сергей', 'круто!!!!', 1533129737, 10),
(7, 'Сергей', 'не знаю, что на это и сказать )))', 1533129768, 8),
(8, 'Grigory', 'super!!!!!!!!!!!!!!!!', 1533132951, 7),
(9, 'Grigory', 'super!!!!!!!!', 1533132971, 8),
(10, 'Grigory', 'super!!!!!!!!!!', 1533132990, 9),
(11, 'Grigory', 'super!!!!!!!!!!!', 1533133009, 10),
(12, 'Grigory', 'it is great!!!', 1533134009, 10),
(13, 'Mark', 'hahahaha!!!', 1533135009, 3),
(14, 'Max', 'Hello World!', 1533288377, 10),
(15, 'Max', 'i am so sad ((((', 1533288501, 6),
(16, 'Mark', 'it is good news', 1533288651, 5),
(17, 'Mark', 'I will go to this event!', 1533288709, 5),
(18, 'Alex', 'i wait it ))))', 1533288868, 4),
(19, 'Alex23', 'i do too ))', 1533289016, 4),
(20, 'Max', 'what is fun?', 1533290784, 3),
(21, 'Mark', 'i like this man )))', 1533290946, 3),
(22, 'Max', 'and i )', 1533291049, 3),
(23, 'Unique25', 'i want listen to it )', 1533291158, 13),
(24, 'Den', 'ok )', 1533291378, 13),
(25, 'Den', 'it will be a great thing', 1533291407, 13),
(26, 'Miss Monica', 'it is my life )', 1533291549, 13),
(27, 'Anastacia', 'it is cool )', 1533291662, 13),
(28, 'Den', 'Hello World!', 1533292019, 13),
(29, 'Den', 'i need it )', 1533292062, 13),
(30, 'Prince', 'it is my girl )', 1533292628, 12),
(31, 'Men111', ')))))', 1533292679, 11),
(32, 'Green', 'super!!!', 1534328572, 12),
(33, 'Green', 'super!!!', 1534328752, 11),
(34, 'Man123', 'i dont like it', 1534330108, 11),
(35, 'Grey', 'it is sad (((', 1534844966, 18),
(36, 'Mike', 'i like this video', 1535373129, 14),
(37, 'Garic', 'it is a good news!', 1537785958, 16),
(38, 'Mark', 'i like this girl!', 1541156351, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `foto_gallery`
--

CREATE TABLE IF NOT EXISTS `foto_gallery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `foto_small` varchar(255) NOT NULL,
  `foto_src` varchar(255) NOT NULL,
  `foto_title` text NOT NULL,
  `foto_date` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=38 ;

--
-- Дамп данных таблицы `foto_gallery`
--

INSERT INTO `foto_gallery` (`id`, `foto_small`, `foto_src`, `foto_title`, `foto_date`) VALUES
(1, 'images/foto/small/foto1_small.JPG', 'images/foto/foto1.jpg', 'наш первый концерт', 1388219999),
(2, 'images/foto/small/foto2_small.JPG', 'images/foto/foto2.jpg', 'наш первый концерт', 1388319999),
(3, 'images/foto/small/foto3_small.JPG', 'images/foto/foto3.jpg', 'наш первый концерт. гитарист играет соло', 1388419999),
(4, 'images/foto/small/foto4_small.JPG', 'images/foto/foto4.jpg', 'репаем на день города', 1388511999),
(5, 'images/foto/small/foto5_small.JPG', 'images/foto/foto5.jpg', 'репаем на день города', 1388512999),
(6, 'images/foto/small/foto6_small.JPG', 'images/foto/foto6.jpg', 'репаем на день города', 1388513999),
(7, 'images/foto/small/foto7_small.JPG', 'images/foto/foto7.jpg', 'репаем на день города', 1388514999),
(8, 'images/foto/small/foto9_small.JPG', 'images/foto/foto9.jpg', 'выступаем в йо-ма-йо', 1388515999),
(9, 'images/foto/small/foto10_small.JPG', 'images/foto/foto10.jpg', 'выступаем в йо-ма-йо', 1388516999),
(10, 'images/foto/small/foto11_small.JPG', 'images/foto/foto11.jpg', 'вы ступаем в йо-ма-йо', 1388517999),
(11, 'images/foto/small/foto12_small.JPG', 'images/foto/foto12.jpg', 'выступаем в йо-ма-йо', 1388518999),
(12, 'images/foto/small/foto14_small.JPG', 'images/foto/foto14.jpg', 'джолли роджер', 1451511000),
(13, 'images/foto/small/foto15_small.JPG', 'images/foto/foto15.jpg', 'джолли роджер', 1451521000),
(14, 'images/foto/small/foto16_small.JPG', 'images/foto/foto16.jpg', 'джолли роджер', 1451531000),
(15, 'images/foto/small/foto17_small.JPG', 'images/foto/foto17.jpg', 'джолли роджер', 1451541000),
(16, 'images/foto/small/foto19_small.JPG', 'images/foto/foto19.jpg', 'джолли роджер', 1451551000),
(17, 'images/foto/small/foto20_small.JPG', 'images/foto/foto20.jpg', 'джолли роджер', 1451561000),
(18, 'images/foto/small/foto21_small.JPG', 'images/foto/foto21.jpg', 'реактор', 1451571000),
(19, 'images/foto/small/foto22_small.JPG', 'images/foto/foto22.jpg', 'реактор', 1451581000),
(20, 'images/foto/small/foto24_small.JPG', 'images/foto/foto24.jpg', 'реактор', 1451591000),
(21, 'images/foto/small/foto27_small.JPG', 'images/foto/foto27.jpg', 'репа на парке челюскинцев', 1483214444),
(22, 'images/foto/small/foto28_small.JPG', 'images/foto/foto28.jpg', 'репа на парке челюскинцев', 1483215444),
(23, 'images/foto/small/foto30_small.JPG', 'images/foto/foto30.jpg', 'репа на парке челюскинцев', 1483216444),
(24, 'images/foto/small/foto32_small.JPG', 'images/foto/foto32.jpg', 'трудовые будни )', 1483217444),
(25, 'images/foto/small/foto33_small.JPG', 'images/foto/foto33.jpg', 'трудовые будни )', 1483218444),
(26, 'images/foto/small/foto35_small.JPG', 'images/foto/foto35.jpg', 'трудовые будни )', 1483219444),
(27, 'images/foto/small/foto36_small.JPG', 'images/foto/foto36.jpg', 'трудовые будни )', 1483224444),
(28, 'images/foto/small/foto37_small.JPG', 'images/foto/foto37.jpg', 'трудовые будни )', 1483234444),
(29, 'images/foto/small/foto38_small.JPG', 'images/foto/foto38.jpg', 'трудовые будни )', 1483244444),
(30, 'images/foto/small/foto39_small.JPG', 'images/foto/foto39.jpg', 'трудовые будни )', 1483254444),
(31, 'images/foto/small/foto40_small.JPG', 'images/foto/foto40.jpg', 'салтайм', 1534236707),
(32, 'images/foto/small/foto42_small.JPG', 'images/foto/foto42.jpg', 'салтайм', 1534236709),
(33, 'images/foto/small/foto43_small.JPG', 'images/foto/foto43.jpg', 'салтайм', 1534236711),
(34, 'images/foto/small/foto44_small.JPG', 'images/foto/foto44.jpg', 'салтайм', 1534236712),
(35, 'images/foto/small/foto45_small.JPG', 'images/foto/foto45.jpg', 'салтайм', 1534236713),
(36, 'images/foto/small/foto47_small.JPG', 'images/foto/foto47.jpg', 'салтайм', 1534236718),
(37, 'images/foto/small/foto48_small.JPG', 'images/foto/foto48.jpg', 'салтайм', 1534236719);

-- --------------------------------------------------------

--
-- Структура таблицы `music_albums`
--

CREATE TABLE IF NOT EXISTS `music_albums` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name_artist` varchar(50) NOT NULL,
  `album_src` varchar(255) NOT NULL,
  `img_src` varchar(255) NOT NULL,
  `album_name` varchar(255) NOT NULL,
  `album_text` text NOT NULL,
  `album_date` int(4) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `music_albums`
--

INSERT INTO `music_albums` (`id`, `name_artist`, `album_src`, `img_src`, `album_name`, `album_text`, `album_date`) VALUES
(1, 'MC PlanShet', 'files/demovoy.rar', 'images/images_album/1.jpg', 'ДЕМОвой', '01 - О Любви<br>\n02 - Ночная<br>\n03 - Такие Как Я<br>\n04 - Колыбельная<br>\n05 - Криминальное Речитативо<br>\n06 - Прощальная<br>\n07 - Солдат<br>\n08 - Сделай Себя Сам<br>\n09 - Сезон Открыт (немига style)<br>\n10 - Надо Быть Проще<br>\n11 - Летаю в Облаках<br>\n12 - О Себе (полная версия)<br>\n13 - Нам Двоим (bonus track)\n', 2011),
(2, 'MC PlanShet', 'files/mnis.rar', 'images/images_album/2.jpg', 'Между Небом И Землей', '01 - Intro<br>\n02 - Мона Лиза<br>\n03 - Нам Двоим<br>\n04 - Кого Когда-то Любила<br>\n05 - А Что Нужно Тебе<br>\n06 - Наше Дело<br>\n07 - Столица<br>\n08 - Happy New Year<br>\n09 - Рождество<br>\n10 - Помню Тебя<br>\n11 - Это Мой Стиль<br>\n12 - Атеист<br>\n13 - Я Хочу Тебе Сказать<br>\n14 - Ты Меня Поймешь\n', 2012),
(3, 'MC PlanShet', 'files/perviyshag.rar', 'images/images_album/3.jpg', 'Первый Шаг', '01 - Своя Роль<br>\n02 - Деньги<br>\n03 - Последние Слова<br>\n04 - Гороскопы<br>\n05 - Студенческая<br>\n06 - Подруга<br>\n07 - Поднимай Свою Жопу<br>\n08 - Разлука<br>\n09 - А Мне Так Не Хватает<br>\n10 - Манипуляция<br>\n11 - Я Умираю<br>\n12 - Привет, Мам<br>\n13 - Выдыхай\n', 2013),
(4, 'MC PlanShet', 'files/domovoy.rar', 'images/images_album/4.jpg', 'ДОМОвой', '01 - Еще Один Шанс<br>\n02 - Весна<br>\n03 - Конфликт<br>\n04 - Революция<br>\n05 - Выходной<br>\n06 - Лето<br>\n07 - Экзамен<br>\n08 - Пешка<br>\n09 - Бессонница<br>\n10 - Осень<br>\n11 - Звонок<br>\n12 - Смерть<br>\n13 - Романтика<br>\n14 - Зима<br>\n15 - Ау-Ау-Ау<br>\n16 - Звонок (bonus track)\n', 2015),
(5, 'MC PlanShet', 'files/istorii.rar', 'images/images_album/5.jpg', 'Истории', '01 - Новый Год<br>\n02 - Соседка<br>\n03 - Романтика<br>\n04 - Вершина Айсберга<br>\n05 - Уже Не Важно<br>\n06 - Серая Реальность', 2017),
(6, 'Космос Рядом', 'files/monalisa.rar', 'images/images_album/7.jpg', 'Мона Лиза', '01 - В Поисках Себя<br>\n02 - Если Хочешь Быть Со Мной<br>\n03 - Этот День<br>\n04 - Я Не Продаюсь<br>\n05 - Навстречу Солнцу<br>\n06 - Мона Лиза<br>\n07 - Нам Двоим<br>\n08 - Моя Любовь<br>\n09 - Когда Я Стану Прошлым<br>\n10 - Ты Меня Поймешь<br>\n11 - Уничтожить Себя<br>\n12 - Дорога В Никуда', 2014),
(7, 'Космос Рядом', 'files/nadne.rar', 'images/images_album/8.jpg', 'На Дне', '01 - В Даль<br>\n02 - Под Прицелом<br>\n03 - Когда Лучше Расстаться<br>\n04 - Не Умирай<br>\n05 - Прости Меня<br>\n06 - Мечтай<br>\n07 - Пролетают Года<br>\n08 - Последние Дни Лета<br>\n09 - Наркота<br>\n10 - Рассвет<br>\n11 - Впереди', 2016),
(8, 'Космос Рядом', 'files/singles.rar', 'images/images_album/9.jpg', 'Синглы', '', 2010);

-- --------------------------------------------------------

--
-- Структура таблицы `music_news`
--

CREATE TABLE IF NOT EXISTS `music_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` int(11) unsigned NOT NULL,
  `video_src` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Дамп данных таблицы `music_news`
--

INSERT INTO `music_news` (`id`, `title`, `text`, `date`, `video_src`, `views`) VALUES
(1, 'Аскольд Запашный госпитализирован', 'Дрессировщик Аскольд Запашный попал в больницу после падения с водных лыж. Об этом ТАСС 31 июля 2018 года сообщила мать дрессировщика Татьяна Запашная, исполняющая обязанности первого заместителя директора Большого Московского цирка.<br>\n\n<i>- Аскольд действительно в больнице, но там нет ничего серьезного, все нормально, все хорошо, - сказала Запашная. - Вчера он был в Подмосковье, катался по водоему на водных лыжах, упал и нахлебался воды. Сейчас прочистят желудок, и сегодня же выпишут.</i><br>\n\nРанее некоторые СМИ сообщили, что Аскольд Запашный экстренно госпитализирован с подозрением на панкреатит.', 1533031650, '', 5),
(2, 'Nazareth возвращаются в Москву с новым альбомом', 'Шотландская рок-группа Nazareth даст большой концерт на московской площадке Crocus City Hall 7 февраля 2019 года. Выступление пройдёт в рамках мирового тура и будет приурочено к 50-летию коллектива, а также к выходу нового альбома.<br>\n\nРелиз пластинки «Tattooed On My Brain» запланирован на 12 октября 2018 года. На московском концерте поклонники смогут услышать как новые песни, так и хорошо известные хиты.', 1533034650, '', 5),
(3, 'Скриптонит покажет «Хиты» в ДС «Мегаспорт»', 'Рэпер Адиль Жалелов, также известный как Скриптонит, даст большой сольный концерт в московском ДС «Мегаспорт» 3 ноября 2018 года. Организаторы обещают, что шоу станет самым масштабным в истории артиста.<br>\n\nВ программу под названием «Хиты» войдут главные треки Скриптонита со всех четырёх альбомов, в том числе с вышедшей зимой 2017 года концептуальной пластинки «Уроборос». Комментируя его выход, рэпер отметил, что намерен взять паузу и в ближайшие два-три года не выпускать «никаких больших релизов».', 1533044650, '', 10),
(4, 'Роджер Уотерс исполнит песни Pink Floyd со сцены «Олимпийского»', 'Один из участников и автор большинства хитов группы Pink Floyd Роджер Уотерс выступит в СК «Олимпийский» 31 августа 2018 года. Музыкант приедет в Россию в рамках мирового тура «Us + Them». Помимо Москвы, артист также посетит Северную столицу, где даст концерт в СКК «Петербургский» 28 августа.<br>\n\n<i>- Мы отправились в путь с новым шоу, – говорит Роджер Уотерс, – Это будет набор песен из всей моей музыкальной карьеры — композиции времен Pink Floyd и несколько новых вещей. Возможно, 80% программы составит старый материал и 20% новый, но все песни будут объединены основной темой. Обещаю, будет так же круто, как и раньше.</i><br>\n\nШоу «Us + Them» уже удостоилось лестных отзывов в мировой прессе благодаря своему масштабу, аудиовизуальным решениям, характерным для концертов Pink Floyd и, конечно, музыке. Название тура отсылает к песне «Us and Them» с классического альбома «The Dark Side of the Moon», который многие считают последним шедевром коллектива. В программу входят лучшие хиты с классических альбомов Pink Floyd «The Dark Side Of The Moon», «The Wall», «Animals, Wish You Were Here» и др., а также песни со свежего альбома Уотерса «Is This the Life We Really Want». Эту пластинку фанаты ждали почти четверть века – последний сольный альбом музыканта выходил в 1992 году.<br>\n\nПо словам представителей компании SAV Entertainment, выступающей организатором московского концерта, особенно ценно, что Роджер Уотерс именно сейчас принял предложение выступить в России.<br>\n\n<i>- Роджер Уотерс — возможно, самый неравнодушный к политической повестке рок-музыкант в истории, - говорят организаторы. - Достаточно вспомнить антитоталитарный альбом Pink Floyd «The Wall», жесткую критику политического истеблишмента в альбоме «Final Cut» и опять же недавний сольный диск «Is This The Life We Really Want?», написанный под впечатлением от глобальных политических метаморфоз последнего времени. Вместо того, чтобы отвернуться от своих российских поклонников, как это сделал целый ряд рок-звезд, Роджер Уотерс едет к нам, чтобы поделиться тем, что у него на душе, со своей публикой, и показать свое новое шоу, не имеющее аналогов в мире.</i><br>\n\nInterMedia напоминает, что предыдущие гастроли Роджера Уотерса «The Wall Live», проходившие с 2010 по 2013 год, имели выдающийся масштаб: 219 выступлений собрали в общей сложности более 4 млн человек по всему миру.<br>\n\nСправки и аккредитация: +7 (495) 229-0171 (SAV Entertainment).', 1533046650, '', 10),
(5, 'Krec сыграет «Head»', 'Концерт рэп-группы Krec состоится 28 сентября 2018 года в клубе Arbat Hall. На выступлении коллектив представит вышедший в июле альбом «Head».', 1533047650, '', 14),
(6, 'Трой Картер уходит из Spotify', 'Директор по глобальному развитию креативных сервисов Spotify Трой Картер покидает свой пост. Как сообщает Variety, он уйдёт с должности в начале сентября, однако продолжит сотрудничать с компанией как советник. Место Картера займёт Ник Холмстен, работающий в Spotify в 2013 года и в данный момент занимающий пост вице-президента по контенту, а также являющийся главой отдела редакторов и всемирных шоу.<br>\n\n<i>- Я пришёл в эту компанию, чтобы помочь ликвидировать разрыв между Spotify и креативным сообществом. Со временем эта цель эволюционировала от решения трудной задачи до выстраивания глобальной команды, сфокусированной на изменении игры для артистов по всему миру, на сотрудничестве с ними, на том, чтобы помочь им претворить в жизнь их креативное видение новыми и инновационными способами. Я очень горжусь нашими достижениями, но, учитывая большое количество решённых задач, сейчас самое время отойти от сотрудничества на регулярной основе и переместиться на пост советника. Знания, связи и опыт останутся со мной, и я знаю, что эта талантливая команда посвятит себя продолжению этой важной работы, – говорится в официальном заявлении Картера.</i><br>\n\nКартер занимал свой текущий пост с июня 2016 года, а параллельно сотрудничал с наследниками Принса. Ранее он был менеджером и наиболее известен по своей работе с Леди Гагой.', 1533047950, '', 3),
(7, 'Влад Валов и Децл рассказали о Михее и обсудили новых рэперов (Видео)', 'Вторая часть интервью со звёздами российского хип-хопа 90-х опубликована на канале «А поговорить» на YouTube. Гостями нового выпуска спецпроекта стали Влад Валов (на фото), Кирилл Толмацкий, Богдан Титомир, Мутабор и другие. Они рассказали ведущей о творческом пути и смерти Михея, о стремительном взлёте и популярности Децла, а также обсудили новое рэп-поколение.<br>\n\nПервая часть спецпроекта «Russian Old School» вышла 27 июля 2018 года. В ней те же артисты рассказывали о буднях того времени, успехе, отношениях с поклонницами и многом другом.<br>\n\nInterMedia предупреждает: ролик содержит нецензурную лексику.\n', 1533048525, '<iframe width="730" height="315" src="https://www.youtube.com/embed/ba0ALyAFiqo" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>', 12),
(8, 'Гречка отказалась выступать в Сочи с Земфирой', 'Певица Гречка отказалась выступать на одном фестивале с Земфирой, раскритиковавшей ее недавно в соцсетях. Юная певица должна была принять участие в фестивале Live Fest Summer, который пройдет в Сочи 11 августа 2018 года, но фестиваль, одним из хедлайнеров которого заявлена Земфира, пройдет без нее. Журнал «Стархит» предполагает, что Гречка боится столкнуться с рок-певицей, и в живую услышать от нее оскорбительные слова.<br>\r\n\r\n<i>- Гречка сообщила организаторам, что не будет выступать в Сочи «по своим причинам, — рассказал источник. – На дальнейшие звонки и сообщения устроителей мероприятия она и ее менеджмент просто не отвечают, все вопросы игнорируются. Хотя договоренность с Live Fest была давно, и вопросы решались на высоком уровне. Возможно, отказ участвовать в мероприятии связан со скандалом, который разразился после высказывания Земфиры в адрес молодой исполнительницы.</i>', 1533060996, '', 15),
(9, 'Елена Ваенга обложила Монеточку матом', 'Исполнительница шансона Елена Ваенга, вслед за Земфирой, жестко раскритиковала поп-исполнительницу Лизу Гырдымову, выступающую под псевдонимом Монеточка. В комментариях к видео с выступления Монеточки, которое опубликовал в своем инстаграме пользователь nikolaipeshkov, Ваенга разразилась нецензурной бранью в адрес певицы.<br>\r\n\r\n<i>- Какая же это чудовищная [...], - написала она (орфография и пунктуация авторские). - А " все" как с катушек... даже те у кого вроде и со вкусом и с мозгами впорядке...... жесть</i><br>\r\n\r\nПользователи инстаграма выступили в защиту молодой певицы, написав Ваенге, что она «дура конченая» и «кабацкое быдло», которую «слушают одни обрыганы».', 1533061251, '', 7),
(10, 'Умер Рэй Купер, подаривший мировой успех группам Spice Girls, Daft Punk и Verve', 'Бывший сопрезидент американского подразделения Virgin Records Рэй Купер скончался в возрасте 69 лет в британском городе Гилфорд 28 июля 2018 года. Как сообщает Variety, причиной смерти стало редкое неврологическое заболевание – первичная прогрессирующая афазия. От аналогичного недуга также страдает участник комик-группы «Монти Пайтон» Терри Джонс.<br>\r\n\r\nКупер делил пост сопрезидента Virgin Records America с Эшли Ньютоном с сентября 1997 года. В конце 70-х годов Рэй работал с компаниями Anchor Records и Jet Records и открыл миру группу Electric Light Orchestra. В 1986 году вместе с Ньютоном он запустил лейбл Circa Records, где издавались Massive Attack и Нене Черри, а в 1995-м компанию приобрела Virgin. В составе Virgin Рэю и Эшли удалось привести к мировому успеху такие команды, как Spice Girls, Daft Punk и Verve. В 2002-м Купер покинул компанию и основал собственное агентство Zama Media Management.<br>\r\n\r\nКомментируя грустную новость о смерти Купера, экс-участница Spice Girls Виктория Бекхэм назвала его творческий подход «неоценимым» для успеха группы, добавив, что Рэя искренне любили все, кто с ним работал.', 1533116172, '', 117),
(11, 'Сегодня: группе Hi-Fi – 20 лет', '2 августа 2018 года <br>\n\n20 лет назад была основана группа Hi-Fi (на фото). <br>\n\n33 года рэперу Джигану.<br>\n\n40 лет певцу Илье Зудину.<br>\n\n46 лет лидеру группы «Пилот» Илье «Чёрту» Кнабенгофу.<br>\n\n57 лет автору пародийных переводов блокбастеров Дмитрию «Гоблину» Пучкову.<br>\n\n59 лет лидеру группы «Оптимальный вариант» Олегу Чилапу.<br>\n\n67 лет певцу Джо Линну Тёрнеру.\n<br><br>\n\n3 августа<br>\n\nФестиваль «Нашествие» откроется в Большом Завидове.<br>\n\n10 лет назад умер актёр Зиновий Высоковский (1932-2009).<br>\n\n10 лет назад умер писатель Александр Солженицын (1918-2008).<br>\n\n20 лет назад умер композитор Альфред Шнитке (1934-1998).<br>\n\n32 года биатлонистке Дарье Домрачевой.<br>\n\n39 лет актрисе Эванджелин Лилли.<br>\n\n43 года клавишнику группы Brainstorm Марису Михельсонсу.<br>\n\n44 года режиссёру и драматургу Ивану Вырыпаеву.<br>\n\n51 год актёру Матье Кассовицу.<br>\n\n55 лет вокалисту группы Metallica Джеймсу Хетфилду.<br>\n\n60 лет тележурналисту Александру Невзорову.<br>\n\n70 лет артисту балета Вячеславу Гордееву.<br>\n\n72 года актёру и режиссёру Николаю Бурляеву.<br>\n\n78 лет актёру Мартину Шину.<br>\n\n92 года певцу Тони Беннетту.<br>\n\n4 августа<br><br>\n\nПикник «Афиши»-2018 состоится в музее-заповеднике «Коломенское».<br>\n\nФестиваль «Нашествие» продолжится в Большом Завидове.<br>\n\nАнтон Лаврентьев выступит в клубе «16 тонн».<br>\n\nФестиваль Deathpop Fest состоится в Arbat Hall.<br>\n\n33 года певице и фотомодели Даше Астафьевой.<br>\n\n35 лет назад умер диктор Юрий Левитан (1914-1983).<br>\n\n35 лет участнику группы 5sta Family Валерию Ефремову.<br>\n\n37 лет жене принца Гарри Меган Маркл.<br>\n\n48 лет лидеру группы Matrixx Глебу Самойлову.<br>\n\n53 года певице Анастасии.<br>\n\n55 лет солистке группы «Фристайл» Нине Кирсо.<br>\n\n57 лет экс-президенту США Бараку Обаме.<br>\n\n63 года актёру Билли Бобу Торнтону.', 1533197920, '', 40),
(12, 'Ники Минаж снова перенесла выход альбома', 'Ники Минаж объявила, что выход её нового альбома «Queen» переносится и теперь состоится 17 августа 2018 года. Об этом стало известно из её сообщения поклонникам в сервисе Apple Music.<br><br>\n\n<i>- Дорогие мои! У меня для вас есть огромный сюрприз, который я не могу раскрыть до дня релиза «Queen», – добавила артистка.</i><br><br>\n\nИзначально четвёртая пластинка Минаж должна была выйти 15 июня 2018 года. Чуть позже дата поменялась на 10 августа – предположительно, из-за того, что артистка не укладывалась в сроки, установленные лейблом. Теперь же, как указывает Pitchfork, проблема может быть в том, что Ники намерена включить в альбом трек, где использован сэмпл из песни Трэйси Чэпмен, однако права на него пока не очищены. Незадолго до переноса релиза Минаж запустила в твиттере голосование, предложив поклонникам выбрать – сохранить дату выхода альбома, но убрать спорный трек, или же сохранить на альбоме трек, передвинув релиз ещё на неделю.<br>\n\nКонцертный тур артистки в поддержку новой пластинки начнётся в сентябре и продлится до марта 2019 года, в концертах примут участие Future и 6ix9ine. В июле Ники пообещала одному из своих поклонников, что обязательно приедет в Россию, однако пока таких планов в расписании тура нет.', 1533198817, '', 51),
(13, 'Новый альбом Мадонны выйдет в этом году', 'Мадонна подтвердила, что её новый альбом выйдет до конца 2018 года. Об этом она рассказала в интервью журналу Vogue Italia.<br><br>\r\n\r\n<i>- Я только что встретила кучу совершенно потрясающих музыкантов, и это вылилось в то, что со многими из них я поработала над своей новой пластинкой – так что Лиссабон значительно повлиял на мои музыку и работу, – заявила певица. – Да и как он мог не повлиять? Просто не представляю, как бы я прожила этот год, не познакомившись со всем этим пластом культуры.</i><br><br>\r\n\r\nВ столицу Португалии Мадонна переехала недавно, чтобы её 12-летний сын Дэвид Банда смог осуществить свою мечту и стать профессиональным футболистом. По словам артистки, город сильно вдохновил её и задал тон всем новым песням.\r\n', 1533199574, '', 41),
(14, 'Стинг и Шэгги сняли Моржа и Плотника в новом клипе (Видео)', 'Стинг и Шэгги представили свой новый клип на песню «Just One Lifetime» из совместного альбома «44/876». Главными персонажами анимационного ролика стали Морж и Плотник – герои известного стихотворения из книги Льюиса Кэрролла «Алиса в Зазеркалье» (оно цитируется и в тексте песни). Они знакомятся с нарисованными Стингом и Шэгги на пляже и отправляются в путешествие на автомобиле по Америке, а потом – в плавание на бумажном кораблике.', 1534843954, '<iframe width="730" height="315" src="https://www.youtube.com/embed/iGvDSOaV6_w" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>', 4),
(15, 'Сборник хитов Eagles стал самым продаваемым альбомом всех времен в США', 'Сборник лучших песен группы Eagles «Their Greatest Hits 1971-1975», выпущенный в 1976 году, стал самым продаваемым альбомом всех времен в США. Его продажи достигли 38 млн копий, сообщает meduza.io со ссылкой на данные Американской ассоциации звукозаписывающих компаний (RIAA).<br>\r\n\r\nРанее самым продаваемым альбом в США был шестой студийный альбом Майкла Джексона «Thriller» 1982 года, который с момента выхода был продан в количестве 33 миллиона копий. Теперь он оказался на втором месте.<br>\r\n\r\nТретье место в списке самых продаваемых альбомов в истории США занимает еще один диск Eagles 1976 года — «Hotel California», который был продан в количестве 26 млн копий.<br>\r\n\r\nRIAA подсчитывает данные по продажам отдельных альбомов раз в несколько лет — для хитов Eagles в последний раз подсчеты делались в 2006 году, тогда у альбома было 29 миллионов проданных копий. С 2013 года RIAA к продажам альбомов добавляет их прослушивание через стриминговые сервисы или скачивание отдельных песен из них. Эквивалентом одной проданной копии альбома являются 15 тысяч стриминг-прослушиваний или 10 скачанных треков.', 1534844184, '', 2),
(16, 'Анастейша привезет в Москву «Evolution»', 'Американская певица Анастейша выступит на сцене Crocus City Hall 21 ноября 2018 года. В Москве исполнительница представит программу «Evolution», в основу которой лег одноименный седьмой альбом исполнительницы, выпущенный в прошлом году.', 1534844223, '', 6),
(17, 'Камила Кабелло и Cardi B разобрали награды MTV Video Music Awards', 'Церемония вручения музыкальной премии MTV Video Music Awards прошла 20 августа 2018 года. В главной номинации «Лучшее музыкальное видео года» победила Камила Кабелло (на фото) с клипом на песню «Havana», записанную в дуэте с Young Thug. Певица, представленная в пяти категориях, также была признана «Лучшим артистом года».<br>\r\n\r\nЛидером по количеству номинаций в 2018 году стала Cardi B — она претендовала на победу в 12 категориях, однако получила только три статуэтки: за лучшую песню лета («I Like It»), лучшую совместную работу с Dinero и как лучший новый артист. Еще три награды забрал домой Childish Gambino за клип «This Is America», признанный лучшим видео с социальным подтекстом и отмеченный за лучшую хореографию и режиссуру.<br>\r\n\r\nЛучшим поп-клипом стал «No Tears Left to Cry» Арианы Гранде, лучшим рок-клипом — «Whatever It Takes» Imagine Dragons. Награду в номинации «Лучшее хип-хоп-видео» получила Ники Минаж за клип «Chun-Li». Семейный дуэт Бейонсе и Джей-Зи, представленный в восьми номинациях, получил только две статуэтки — за лучшую операторскую работу и за лучшую работу художника-постановщика в клипе «Apeshit».', 1534844271, '', 16),
(18, 'Умер участник Funk Brothers Эдди Уиллис', 'Американский соул-музыкант Эдди Уиллис по прозвищу «Чанк» скончался 20 августа 2018 года в возрасте 82 лет в Горе-Спрингс, штат Миссисипи.<br>\r\n\r\nЭдди родился в городке Гренада и в детстве перенес полиомиелит, последствия которого ощущал всю жизь и был вынужден с молодости передвигаться с помощью трости. Мальчик сам научился играть на гитаре, после школы перебрался в Детройт и выступал с разными группами.<br>\r\n\r\nВ 1960-х и начале 1970-х Уиллис играл в составе коллектива Funk Brothers – знаменитой студийной сессионной группы лейбла Motown Records. Он принял участие в записи хитов Temptations «The Way You Do the Things You Do», «The Supremes», «You Keep Me Hanging On», «The Marvelettes», «Please Mr. Postman», композиции «I Was Made to Love Her» Стиви Уандера и многих других. Он также гастролировал с Эдди Кендриксом (после его ухода из Temptations) и Four Tops.<br>\r\n\r\nПосле того, как Motown Records переехал из Детройта в Лос-Анджелес, Эдди решил вернуться в родной Миссисипи, но не отказывал коллегам в совместной работе. Так, он принял участие в записили альбома соул-каверов Фила Коллинза «Going Back» 2010 года.', 1534844311, '', 30);

-- --------------------------------------------------------

--
-- Структура таблицы `video`
--

CREATE TABLE IF NOT EXISTS `video` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `video_src` text NOT NULL,
  `video_date` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `video`
--

INSERT INTO `video` (`id`, `video_src`, `video_date`) VALUES
(1, 'https://www.youtube.com/embed/K3VmxCTQ2bM', 1534408383),
(2, 'https://www.youtube.com/embed/siMRxRokNr8', 1534408423),
(3, 'https://www.youtube.com/embed/6EOpsj6e6_I', 1534408526),
(4, 'https://www.youtube.com/embed/C36l9XzXB3g', 1534408585),
(6, 'https://www.youtube.com/embed/QI02-vDJFMM', 1534408660),
(7, 'https://www.youtube.com/embed/TgCgWnhaMaw', 1534408687),
(9, 'https://vk.com/video_ext.php?oid=7210351&id=167302169&hash=886e1fb461e8a036', 1534408845);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
