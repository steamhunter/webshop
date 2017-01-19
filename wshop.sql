-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2017. Jan 19. 13:13
-- Kiszolgáló verziója: 10.1.16-MariaDB
-- PHP verzió: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `wshop`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `cart`
--

INSERT INTO `cart` (`id`, `orderid`, `productid`) VALUES
(26, 9, 3),
(27, 9, 9),
(28, 9, 1),
(29, 9, 5),
(30, 9, 6),
(31, 9, 4),
(32, 9, 3),
(33, 9, 2),
(34, 10, 3),
(35, 10, 3),
(36, 10, 3),
(37, 10, 3),
(38, 10, 3),
(39, 10, 3),
(40, 10, 3),
(41, 10, 3),
(42, 10, 3),
(43, 10, 3),
(44, 11, 1),
(45, 11, 1),
(46, 11, 1),
(47, 11, 1),
(48, 11, 1),
(49, 11, 1),
(50, 11, 7),
(51, 11, 7),
(52, 11, 7),
(53, 11, 8),
(54, 11, 8),
(55, 11, 8),
(56, 11, 8),
(57, 11, 8),
(58, 11, 8),
(59, 11, 9),
(60, 11, 9),
(61, 11, 9),
(62, 11, 9),
(63, 11, 9),
(64, 11, 9),
(65, 11, 9),
(66, 11, 9),
(67, 11, 9),
(68, 11, 9),
(69, 11, 9),
(70, 11, 9),
(71, 11, 9),
(72, 11, 9),
(73, 11, 9),
(74, 11, 9),
(75, 11, 9),
(76, 11, 9),
(77, 11, 9),
(78, 11, 9),
(79, 11, 9),
(80, 11, 9),
(81, 11, 9),
(82, 11, 9),
(83, 11, 9),
(84, 11, 9),
(85, 11, 9),
(86, 11, 9),
(87, 11, 9),
(88, 11, 9),
(89, 11, 9),
(90, 11, 9),
(91, 11, 9),
(92, 11, 9),
(93, 11, 9),
(94, 11, 9),
(95, 11, 9),
(96, 11, 9),
(97, 11, 9),
(98, 11, 9),
(99, 11, 9),
(100, 11, 9),
(101, 11, 9),
(102, 11, 9),
(103, 11, 9),
(104, 11, 9),
(105, 11, 9),
(106, 11, 9),
(107, 11, 9),
(108, 11, 9),
(109, 11, 9),
(110, 11, 9),
(111, 11, 9),
(112, 12, 3),
(113, 12, 2),
(114, 12, 2),
(115, 12, 7),
(116, 12, 8),
(117, 12, 1),
(118, 12, 2),
(119, 12, 2),
(120, 12, 1),
(121, 12, 1),
(122, 12, 1),
(123, 12, 7),
(124, 12, 7),
(125, 12, 8),
(126, 12, 9),
(127, 12, 9),
(128, 12, 9),
(129, 12, 9),
(130, 12, 5),
(131, 12, 6),
(132, 12, 6),
(133, 12, 8),
(134, 12, 8),
(135, 12, 8),
(136, 12, 8),
(137, 12, 8),
(138, 12, 8),
(139, 12, 1),
(140, 12, 1),
(141, 12, 1),
(142, 12, 1),
(143, 12, 1),
(144, 12, 2),
(145, 12, 2),
(146, 12, 3),
(147, 12, 3),
(148, 12, 4),
(149, 12, 4),
(150, 12, 5),
(151, 12, 5),
(152, 12, 5),
(153, 12, 5),
(154, 12, 5),
(155, 12, 4),
(156, 12, 4),
(157, 12, 4),
(158, 12, 4),
(159, 12, 6),
(160, 12, 6),
(161, 13, 1),
(162, 13, 99999),
(163, 13, 0),
(164, 14, 4),
(165, 14, 4),
(166, 14, 4),
(167, 14, 4),
(168, 14, 4),
(169, 14, 4),
(170, 14, 4),
(171, 14, 4),
(172, 14, 4),
(173, 14, 4),
(174, 14, 4),
(175, 14, 4),
(176, 14, 4),
(177, 14, 4),
(178, 14, 4),
(179, 14, 4),
(180, 14, 4),
(181, 14, 4),
(182, 14, 4),
(183, 14, 4),
(184, 14, 4),
(185, 14, 4),
(186, 14, 4),
(187, 14, 4),
(188, 14, 4),
(189, 14, 4),
(190, 14, 4),
(191, 14, 4),
(192, 14, 4),
(193, 14, 4),
(194, 14, 4),
(195, 14, 4),
(196, 14, 4),
(197, 14, 4),
(198, 14, 4),
(199, 14, 4),
(200, 14, 4),
(201, 14, 4),
(202, 14, 4),
(203, 14, 4),
(204, 14, 4),
(205, 14, 4),
(206, 14, 4),
(207, 14, 4),
(208, 14, 4),
(209, 14, 4),
(210, 14, 4),
(211, 14, 4),
(212, 14, 4),
(213, 14, 4),
(214, 14, 4),
(215, 14, 4),
(216, 14, 4),
(217, 14, 4),
(218, 14, 4),
(219, 14, 4),
(220, 14, 4),
(221, 14, 4),
(222, 14, 4),
(223, 14, 4),
(224, 14, 4),
(225, 14, 4),
(226, 14, 4),
(227, 14, 4),
(228, 14, 4),
(229, 14, 4),
(230, 14, 1),
(231, 14, 1),
(232, 14, 1),
(233, 14, 1),
(234, 14, 1),
(235, 14, 1),
(236, 14, 1),
(237, 14, 1),
(238, 14, 1),
(239, 14, 1),
(240, 14, 1),
(241, 14, 1),
(242, 14, 1),
(243, 14, 1),
(244, 14, 1),
(245, 14, 1),
(246, 14, 1),
(247, 14, 1),
(248, 14, 1),
(249, 14, 1),
(250, 14, 1),
(251, 14, 1),
(252, 14, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'dolgok'),
(2, 'dolgok2');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `orders`
--

CREATE TABLE `orders` (
  `orderid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `orders`
--

INSERT INTO `orders` (`orderid`, `userid`, `name`, `city`, `address`, `state`) VALUES
(12, 1, '72742735832', '2156101', '6784328232487', 0),
(13, 1, '', '', '', 0),
(14, 1, '', '', '', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category` int(11) NOT NULL,
  `freedb` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '/images/default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `freedb`, `price`, `image`) VALUES
(1, 'lorem ipsum', 1, 1, 1599, '/images/default.jpg'),
(2, 'lorem2', 1, 1, 1499, '/images/default.jpg'),
(3, 'lorem ipsum', 1, 1, 849, '/images/default.jpg'),
(4, 'lorem2', 1, 1, 399, '/images/default.jpg'),
(5, 'lorem ipsum', 1, 1, 149, '/images/default.jpg'),
(6, 'lorem2', 1, 1, 239, '/images/default.jpg'),
(7, 'lorem ipsum', 1, 1, 499, '/images/default.jpg'),
(8, 'lorem2', 1, 1, 12999, '/images/default.jpg'),
(9, 'dolog2 dolog', 2, 1, 600, '/images/default.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'steamhunter', '6f8b2364f18a627b44f0e4d63fe5b5ea');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- A tábla indexei `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;
--
-- AUTO_INCREMENT a táblához `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT a táblához `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT a táblához `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
