-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 01 Mar 2023, 17:07
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `user_db`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `orders`
--

CREATE TABLE `orders` (
  `id` int(6) UNSIGNED NOT NULL,
  `pizza_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `orders`
--

INSERT INTO `orders` (`id`, `pizza_id`, `quantity`) VALUES
(41, 2, 1);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pizze`
--

CREATE TABLE `pizze` (
  `ID` int(11) NOT NULL,
  `Nazwa` varchar(255) DEFAULT NULL,
  `Skladniki` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `pizze`
--

INSERT INTO `pizze` (`ID`, `Nazwa`, `Skladniki`) VALUES
(1, 'Margherita', 'Sos pomidorowy, mozzarella, bazylia'),
(2, 'Pepperoni', 'Sos pomidorowy, mozzarella, pepperoni, cebula, papryka, pieczarki'),
(3, 'Hawajska', 'Sos pomidorowy, mozzarella, szynka, ananas, kukurydza, cebula, papryka'),
(4, 'Capricciosa', 'Sos pomidorowy, mozzarella, szynka, pieczarki, cebula, oliwki, bazylia');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_form`
--

CREATE TABLE `user_form` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(255) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `user_form`
--

INSERT INTO `user_form` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(7, 'Grzegorz', 'grzegorz.matusik@o2.pl', '759953d5f211121acc544b0ac72ee797', 'user'),
(8, 'witam', 'aga870@vp.pl', '759953d5f211121acc544b0ac72ee797', 'user'),
(9, 'GrzegorzMatusik', 'grzesiek.matusik1@o2.pl', '759953d5f211121acc544b0ac72ee797', 'user');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pizza_id` (`pizza_id`);

--
-- Indeksy dla tabeli `pizze`
--
ALTER TABLE `pizze`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `user_form`
--
ALTER TABLE `user_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT dla tabeli `user_form`
--
ALTER TABLE `user_form`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`pizza_id`) REFERENCES `pizze` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
