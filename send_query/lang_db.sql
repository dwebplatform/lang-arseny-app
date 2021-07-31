-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Июл 31 2021 г., 10:23
-- Версия сервера: 10.4.13-MariaDB
-- Версия PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lang_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `challenges`
--

CREATE TABLE `challenges` (
  `id` int(11) NOT NULL,
  `expression_list` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '{}' CHECK (json_valid(`expression_list`)),
  `wrong_words` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '{}' CHECK (json_valid(`wrong_words`)),
  `correct_tokens` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '{}' CHECK (json_valid(`correct_tokens`)),
  `dictionary` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '[]' CHECK (json_valid(`dictionary`)),
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `taskId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `challenges`
--

INSERT INTO `challenges` (`id`, `expression_list`, `wrong_words`, `correct_tokens`, `dictionary`, `from`, `to`, `type`, `taskId`) VALUES
(1, '{\"ko\": [ \"저는\", \"공원에\", \"가요\" ],\"ru\": [\"Я\", \"иду\", \"в\", \"парк\"]}', '{\"ko:\": [\"한국은\", \"날씨가\", \"더워요\", \"미국\", \"음악을\", \"좋아해요\"],\"ru\":[\"голубь\", \"Ты\", \"абоба\"]}', '{\"ko\": [\"저는\", \"공원에\", \"가요\"],\"ru\": [\"Я\", \"иду\", \"в\", \"парк\"]}', '[{ \"저는\": \"я\" },{ \"공원에\": \"в парк\" },{ \"가요\": \"иду\" }]', 'ko', 'ru', 'TranslateByBlocks', 1),
(2, '{\"ko\": [ \"저는\", \"공원에\", \"가요\" ],\"ru\": [\"Я\", \"иду\", \"в\", \"парк\"]}', '{\"ko:\": [\"한국은\", \"날씨가\", \"더워요\", \"미국\", \"음악을\", \"좋아해요\"],\"ru\":[\"голубь\", \"Ты\", \"абоба\"]}', '{\"ko\": [\"저는\", \"공원에\", \"가요\"],\"ru\": [\"Я\", \"иду\", \"в\", \"парк\"]}', '[{ \"저는\": \"я\" },{ \"공원에\": \"в парк\" },{ \"가요\": \"иду\" }]', 'ko', 'ru', 'TranslateByBlocks', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id`, `level`) VALUES
(1, '1'),
(2, '2');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `challenges`
--
ALTER TABLE `challenges`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_3f70b92fe3e22b970906e7be364` (`taskId`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `challenges`
--
ALTER TABLE `challenges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `challenges`
--
ALTER TABLE `challenges`
  ADD CONSTRAINT `FK_3f70b92fe3e22b970906e7be364` FOREIGN KEY (`taskId`) REFERENCES `tasks` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
