-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 2022 年 2 月 03 日 23:16
-- サーバのバージョン： 5.7.32
-- PHP のバージョン: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- データベース: `gs_user`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_users`
--

CREATE TABLE `gs_users` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_users`
--

INSERT INTO `gs_users` (`id`, `name`, `email`, `password`) VALUES
(2, 'bb', 'bb@bb', '$2y$10$yx0vB3F04oKk3YzcEbhJl.eJF18XXwZf4ybmVUtICrxfr1YyWcPJa'),
(3, '山田　太郎', 'example@email.com', '$2y$10$Mgl9HPdWw2NSWXikIU8RvOTLMpaLFAMGs7HIrthGhKCmGGtaAJpOO'),
(17, 'ccc', 'cc@cc', '$2y$10$tpyaTWGbIKkk5pmfMQCXeurjsSEsKCcP7N5qvDaQE1rDvqH1ybsL2');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_users`
--
ALTER TABLE `gs_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_users`
--
ALTER TABLE `gs_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
