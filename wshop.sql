-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2017. Jan 19. 13:29
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
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT;
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
