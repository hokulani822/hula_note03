-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2024 年 7 月 03 日 08:59
-- サーバのバージョン： 10.4.28-MariaDB
-- PHP のバージョン: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gs_db_kadai`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_kadai_hula`
--

CREATE TABLE `gs_kadai_hula` (
  `id` int(12) NOT NULL,
  `name` varchar(64) NOT NULL,
  `age` int(3) NOT NULL,
  `tel` varchar(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `hulareki` varchar(2) DEFAULT NULL,
  `halauname` varchar(50) DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- テーブルのデータのダンプ `gs_kadai_hula`
--

INSERT INTO `gs_kadai_hula` (`id`, `name`, `age`, `tel`, `email`, `hulareki`, `halauname`, `indate`) VALUES
(1, 'test1', 10, '0', 'test1@test.jp', '1', 'test1', '2024-06-25 23:17:42'),
(2, 'test2', 20, '0', 'test2@test.jp', '2', 'test2', '2024-06-25 23:19:22'),
(3, 'test3', 30, '0', 'test3@test.jp', '3', 'test3', '2024-06-25 23:19:49'),
(4, 'test4', 40, '0', 'test4@test.jp', '4', 'test4', '2024-06-25 23:20:03'),
(5, 'test5', 50, '0', 'test5@test.jp', '5', 'test5', '2024-06-25 23:23:23'),
(6, 'test6', 60, '0', 'test6@test.jp', '6', 'test6', '2024-06-25 23:23:58'),
(7, 'test7', 70, '0', 'test7@test.jp', '7', 'test7', '2024-06-25 23:24:22'),
(8, 'test8', 80, '0', 'test8@test.jp', '8', 'test8', '2024-06-25 23:29:23'),
(13, 'test9', 90, '0', 'test9@test.jp', '9', 'test9', '2024-07-03 00:10:16');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_kadai_hula`
--
ALTER TABLE `gs_kadai_hula`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_kadai_hula`
--
ALTER TABLE `gs_kadai_hula`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
