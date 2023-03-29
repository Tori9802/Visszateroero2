-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Már 29. 22:48
-- Kiszolgáló verziója: 10.4.21-MariaDB
-- PHP verzió: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `galeria`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `admin`
--

CREATE TABLE `admin` (
  `azon` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `jelszo` varchar(250) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `admin`
--

INSERT INTO `admin` (`azon`, `jelszo`) VALUES
('Viki', '983bec5df47f33a14305a0e6b1cedd80');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hirek`
--

CREATE TABLE `hirek` (
  `id` int(11) NOT NULL,
  `neve` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `leiras` text COLLATE utf8_hungarian_ci NOT NULL,
  `aktualis` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `hirek`
--

INSERT INTO `hirek` (`id`, `neve`, `leiras`, `aktualis`) VALUES
(3, 'Üdvözlet!', 'Üdvözöljük a Vizsgabizottság tagjait!', 1),
(4, 'Versenyen voltam', '', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kategoria`
--

CREATE TABLE `kategoria` (
  `id` int(11) NOT NULL,
  `neve` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `leiras` text COLLATE utf8_hungarian_ci NOT NULL,
  `aktualis` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kategoria`
--

INSERT INTO `kategoria` (`id`, `neve`, `leiras`, `aktualis`) VALUES
(1, 'Versenyek - Golden Arm', 'Golden Arm Svédország Szkander Világkupa 2022', 1),
(2, 'Versenyek - Alföldi Betyár', 'V. Alföldi Betyár Bicepsz verseny', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kepek`
--

CREATE TABLE `kepek` (
  `id` int(11) NOT NULL,
  `neve` varchar(250) COLLATE utf8_hungarian_ci NOT NULL,
  `kategoria_id` int(11) NOT NULL,
  `sorszam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kepek`
--

INSERT INTO `kepek` (`id`, `neve`, `kategoria_id`, `sorszam`) VALUES
(1, 'IMG-20220418-WA0003.jpg', 1, 1),
(2, 'IMG-20220418-WA0002.jpg', 1, 2),
(3, 'IMG-20220418-WA0001.jpg', 2, 1),
(4, 'IMG-20220418-WA0000.jpg', 2, 2),
(5, 'IMG-20220802-WA0000.jpg', 1, 3),
(6, 'IMG-20220802-WA0004.jpg', 1, 4),
(7, 'IMG-20220418-WA0000.jpg', 1, 5),
(8, 'IMG-20220815-WA0007.jpg', 2, 3);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `hirek`
--
ALTER TABLE `hirek`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `kepek`
--
ALTER TABLE `kepek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `hirek`
--
ALTER TABLE `hirek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `kepek`
--
ALTER TABLE `kepek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
