-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Fev-2023 às 13:59
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `valorant`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `characters`
--

CREATE TABLE `characters` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `real name` varchar(300) NOT NULL,
  `country` varchar(300) NOT NULL,
  `class` varchar(300) DEFAULT NULL,
  `win rate` decimal(11,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `characters`
--

INSERT INTO `characters` (`id`, `name`, `real name`, `country`, `class`, `win rate`) VALUES
(1, 'Astra', 'Efia Danso', 'Gana', 'Controlador', '50.80'),
(2, 'Breach', 'Erik Torsten', 'Suécia', 'Iniciador', NULL),
(3, 'Brimstone', 'Liam Byrne', 'Estados Unidos', 'Controlador', '52.40'),
(4, 'Chamber', 'Vincent Fabron', 'França', 'Sentinela', '50.20'),
(6, 'Cypher', 'Amir El Amari\r\n', 'Marrocos', 'Controlador', NULL),
(7, 'Fade', 'Hazal Eyletmez', 'Turquia', 'Iniciador', '50.80'),
(8, 'Jett', 'Sunwoo Han', 'Coreia do Sul', 'Duelista', NULL),
(9, 'KAY/O', 'Desconhecido', 'Desconhecido', 'Iniciador', NULL),
(10, 'Killjoy', 'Klara Böhringer', 'Alemanha', 'Sentinela', '50.20'),
(11, 'Neon', 'Tala Valdez', 'Filipinas', 'Duelista', NULL),
(12, 'Omen', 'Desconhecido', 'Desconhecido', 'Controlador', NULL),
(13, 'Phoenix', 'Jamie Adeyemi', 'Reino Unido', 'Duelista', '51.60'),
(14, 'Raze', 'Tayane Alves', 'Brasil', 'Duelista', '51.10');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `characters`
--
ALTER TABLE `characters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
