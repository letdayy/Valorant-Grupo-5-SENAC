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
-- Estrutura da tabela `habilidades`
--

CREATE TABLE `habilidades` (
  `id` int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `Displacement` varchar(255) DEFAULT NULL,
  `Habilidade` varchar(255) DEFAULT NULL,
  `Agente` varchar(255) DEFAULT NULL,
  `Max_carregamento` varchar(255) DEFAULT NULL,
  `Custo` varchar(255) DEFAULT NULL,
  `Funcoes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `habilidades`
--

INSERT INTO `habilidades` (`id`, `Displacement`, `Habilidade`, `Agente`, `Max_carregamento`, `Custo`, `Funcoes`) VALUES
(2, 'Basic', 'Nova Pulse', '', '1', '', 'Concuss'),
(3, 'Signature', 'Nebula/Dissipate', '', '2', '', 'Smoke'),
(4, 'Ultimate', 'Aftershock', 'Breach', '1', '200', 'deterrent'),
(5, '', 'Flashpoint', '', '2', '250', 'flash'),
(6, '', 'Stim Beacon', 'Brimstone', '1', '200', 'empowerment'),
(7, '', 'Incendiary', '', '1', '250', 'molotov'),
(8, '', 'Trademark', 'Chamber', '1', '200', 'Autonomous'),
(9, '', 'Headhunter', '', '8', '150', 'weapon equip'),
(10, '', 'Trapwire', 'Cypher', '2', '200', 'deployable'),
(11, '', 'Cyber Cage', '', '2', '100', 'vision blocker'),
(12, '', 'Prowler', 'Fade', '2', '250', 'nearsight'),
(13, '', 'Seize', '', '1', '200', 'Tether'),
(14, '', 'Cascade', 'Harbor', '2', '150', 'Wall'),
(15, '', 'Cove', '', '1', '350', 'Smoke'),
(16, '', 'Cloudburst', 'Jett', '2', '200', 'smoke'),
(17, '', 'Updraft', '', '2', '150', 'Dash'),
(18, '', 'FRAG/ment', 'Kay/O', '1', '200', 'deterrent'),
(19, '', 'FLASH/drive', '', '2', '250', 'flash'),
(20, '', 'Nanoswarm', 'Killjoy', '2', '200', 'molotov'),
(21, '', 'Alarmbot', '', '1', '200', 'autonomous'),
(22, '', 'Fast Lane', 'Neon', '1', '300', 'wall'),
(23, '', 'Relay Bolt', '', '2', '200', 'concuss'),
(24, '', 'Shrouded Step', 'Omen', '2', '100', 'teleport'),
(25, '', 'Paranoia', '', '1', '250', 'nearsight'),
(26, '', 'Blaze', 'Phoenix', '1', '150', 'wall'),
(27, '', 'Curveball', '', '2', '250', 'flash'),
(28, '', 'Boom Bot', 'Raze', '1', '300', 'autonomous'),
(29, '', 'Blast Pack', '', '2', '200', 'dash'),
(30, '', 'Leer', 'Reyna', '2', '250', 'displacement'),
(31, '', 'Barrier Orb', 'Sage', '1', '400', 'nearsight'),
(32, '', 'Slow Orb', '', '2', '200', 'wall'),
(33, '', 'Regrowth', 'Skye', '1', '150', 'slow'),
(34, '', 'Trailblazer', '', '1', '300', 'heal'),
(35, '', 'Owl Drone', 'Sova', '1', '400', 'controlled'),
(36, '', 'Shock Bolt', '', '2', '150', 'deployable'),
(37, '', 'Snake Bite', 'Viper', '2', '200', 'deterrent'),
(38, '', 'Poison Cloud', '', '1', '200', 'smoke'),
(39, '', 'Fakeout', 'Yoru', '1', '100', 'decoy'),
(40, '', 'blindside', '', '2', '250', '');


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
