-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 20 2019 г., 15:17
-- Версия сервера: 8.0.15
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `mushroomshop`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cats`
--

CREATE TABLE `cats` (
  `id` int(11) NOT NULL COMMENT 'айди',
  `name` varchar(50) NOT NULL COMMENT 'имя категории',
  `rus_name` varchar(50) NOT NULL COMMENT 'имя на русском'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Таблиц категорий грибов';

--
-- Дамп данных таблицы `cats`
--

INSERT INTO `cats` (`id`, `name`, `rus_name`) VALUES
(1, 'edible', 'Съедобные грибы'),
(2, 'poisonus', 'Ядовитые грибы'),
(3, 'condedible', 'Условно-съедобные');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `cat` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `rus_name` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `descr` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `title`, `cat`, `price`, `rus_name`, `img`, `descr`) VALUES
(1, 'amanita', 'poisonus', 100, 'Мухомор красный', 'amanita.jpg', 'Плодовое тело гриба содержит ряд токсичных соединений, некоторые из которых обладают психотропным эффектом. Токсические и психоактивные вещества хорошо растворяются в горячей воде, и употребление грибов, отваренных в нескольких водах, приводит к менее сильному отравлению. Однако, содержание ядов в плодовых телах может сильно варьировать, что делает употребление мухоморов в пищу опасным'),
(2, 'panther', 'poisonus', 200, 'Мухомор пантерный', 'panther.jpg', 'Сильно ядовит. Образует микоризу со многими деревьями, встречается в хвойных, смешанных и широколиственных лесах, часто под сосной, дубом, буком, предпочитает щелочные почвы. Широко распространён в умеренном климате Северного полушария'),
(3, 'kingbolete', 'edible', 300, 'Белый гриб', 'kingbolete.jpg', 'Классический вид, который в народе прозвали «полковником» – чествуя самым главным и лучшим из сородичей. Каштаново-коричневая шляпка выпуклая, затем плоско-выпуклая, подушковидная, редко распростертая, достигает диаметра 25–30 см. Известны гигантские представители – с диаметром шляпки до 45 см и весом до 2–3 кг. Поверхность гладкая, иногда неровная, бороздчатая ил'),
(4, 'leccinum', 'edible', 400, 'Подосиновик', 'leccinum.jpg', 'Плодоносит чаще поодиночке. Обычный гриб в северной умеренной зоне, в России наиболее известен в Европейской части и на Дальнем Востоке, где встречается под берёзой маньчжурской и каменной. Сезон июнь — сентябрь, иногда до поздней осени. Съедобен'),
(5, 'chanterelle', 'edible', 500, 'Лисичка', 'chanterelle.jpg', 'Хорошо известный съедобный гриб, высоко ценится, годится для употребления в любом виде. Образует микоризу с различными деревьями, наиболее часто с елью, сосной, дубом, буком'),
(6, 'pax', 'poisonus', 600, 'Свинушка', 'pax.jpg', 'До 1981 года этот гриб считался условно съедобным и относился к 4-й категории по пищевым качествам. В настоящее время отнесён к ядовитым, хотя симптомы отравления проявляются не всегда и/или не сразу. Содержит токсины (лектины), не разрушающиеся даже при многократном отваривании'),
(7, 'load', 'condedible', 700, 'Груздь', 'load.jpg', 'сорт с плотной мякотью, которая вполне пригодна для употребления в пищу, хотя в странах Запада грузди считаются несъедобными. Их принято замачивать для удаления горечи, после чего засаливать и мариновать.'),
(8, 'greenfinch', 'condedible', 800, 'Рядовка зеленая (зеленушка)', 'greenfinch.jpg', 'отличается от других ярко выраженным зеленым цветом ножки и шляпки, который сохраняется даже после термической обработки.'),
(9, 'morels', 'condedible', 900, 'Сморчки', 'morels.jpg', 'Условно-съедобные экземпляры с необычной формой шляпки и толстой ножкой. Употреблять их в пищу рекомендуется только после тщательной термической обработки.');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat` (`cat`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cats`
--
ALTER TABLE `cats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'айди', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`cat`) REFERENCES `cats` (`name`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
