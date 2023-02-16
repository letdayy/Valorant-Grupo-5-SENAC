-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 09-Fev-2023 às 13:59
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `valorant`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `personagens`
--

CREATE TABLE `personagens` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(300) NOT NULL,
  `realName` varchar(300) NOT NULL,
  `country` varchar(300) NOT NULL,
  `class` varchar(300) DEFAULT NULL,
  `winRate` decimal(11,2) DEFAULT NULL
);

--
-- Extraindo dados da tabela `personagens`
--

INSERT INTO `personagens` (`id`, `name`, `realName`, `country`, `class`, `winRate`) VALUES
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
-- Estrutura da tabela `mapas`
--

CREATE TABLE `mapas` (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `mapa` varchar(50) NOT NULL,
  `local` varchar(50) NOT NULL,
  `curiosidade` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--
-- Extraindo dados da tabela `mapas`
--

INSERT INTO `mapas` (`id`, `mapa`, `local`, `curiosidade`) VALUES
(1, 'Pearl', 'Portugal, Lisboa (Terra Ômega)', 'Este é o primeiro mapa de VALORANT na Terra Ômega (a outra realidade do nosso planeta, Alpha). Aqui, os atacantes da nossa Terra avançam em direção à Terra inimiga, mas descobrem que, lá, os agentes são idolatrados como heróis. É um mapa relativamente simples, com dois bombsites e sem elementos dinâmicos, como teletransportes ou ganchos.'),
(2, 'Fracture', 'Santa Fé, Novo México, Estados Unidos', 'Um local de pesquisas altamente confidencial, que foi partido ao meio por um experimento mal sucedido com Radianita — um elemento que concede poderes especiais a quem tiver contato com ele. É o mapa mais diferenciado do jogo, sendo o primeiro a colocar os defensores no centro, enquanto os atacantes ficam com as duas extremidades através de uma tirolesa.'),
(3, 'Breeze', 'Triângulo das Bermudas, Oceano Atlântico', 'Breeze é o mapa tropical de VALORANT. Sua principal característica é possuir bombsites (onde as spikes são plantadas) extremamente largos e amplos, e muitos corredores apertados. Por isso, a presença de agentes que possuam smokes (fumaças) e bangs (flashes de luz que cegam os inimigos) é muito bem-vinda, principalmente agentes controladores.'),
(4, 'Icebox', 'Ilha Bennett, Rússia', 'Icebox é um mapa marcado pela sua verticalidade, ou seja, os jogadores precisam ficar atentos não apenas à sua linha de visão, mas também à cima. Segundo a história do jogo, o local é \"uma área de escavação secreta da Kingdom retomada pela força do Ártico\".'),
(5, 'Bind', 'Rabat, Marrocos', 'Bind é muito dividido entre esquerda e direita; praticamente não tem meio. Por ter poucas possibilidades de entrada no bombsite, o mapa pode dar uma leve vantagem aos defensores. Agentes do tipo sentinela funcionam bem aqui, pois podem defender bem um único ponto sozinhos. Um difererencial são os portais de teletransporte, que levam os jogadores rapidamente do ponto A ao ponto B; no entanto, eles emitem um som, e seus inimigos podem ficar à espreita.'),
(6, 'Haven', 'Timbu, Butão', 'Haven é o único mapa de VALORANT com três bombsites: A, B e C. Apesar disso, é um mapa pequeno, estreito e com longos corredores — perfeitos para atiradores de Operator —, permitindo que os jogadores se locomovam rapidamente entre um ponto e outro. Quem dominar o bombsite B tem uma forte vantagem na partida.'),
(7, 'Split', 'Tóquio, Japão', 'Outro mapa com corredores estreitos, Split pode precisar de agentes sentinelas, como Sage e Cypher: a primeira pode \"paredar\" o meio, e o segundo consegue vigiar e posicionar armadilhas no B. Personagens com smokes e bangs também são úteis. Há uma certa verticalidade nos bombsites (não tanto quanto a Icebox, note-se), o que dá uma leve vantagem aos defensores.'),
(8, 'Ascent', 'Veneza, Itália', 'Ascent tem um meio enorme e dominá-lo pode ser crucial para a vitória. Nos bombsites, também há portas interativas, que podem ser fechadas (e destruídas). Aqui, vale utilizar agentes que tenham smokes ou bangs para bloquear a visão adversária, e também personagens que identifiquem a localização inimiga.'),
(9, 'The Range', 'Veneza, Itália', 'Mapa de treinamento de VALORANT. É possível testar as habilidades, experimentar armas, plantar e desarmar spikes e mais. O local também abriga o escritório de Brimstone, que possui algumas curiosidades sobre os agentes e a lore do jogo.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `skins`
--

CREATE TABLE `skins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) NOT NULL,
  `edition` varchar(45) NOT NULL,
  `collection` varchar(45) NOT NULL,
  `weapon` varchar(45) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `skins`
--

INSERT INTO `skins` (`id`, `name`, `edition`, `collection`, `weapon`, `price`) VALUES
(1, 'Luxe Ghost', 'Select', 'Luxe', 'Ghost', 875),
(2, 'Luxe Spectre', 'Select', 'Luxe', 'Spectre', 875),
(3, 'Luxe Judge', 'Select', 'Luxe', 'Judge', 875),
(4, 'Luxe Vandal', 'Select', 'Luxe', 'Vandal', 875),
(5, 'Luxe Operator', 'Select', 'Luxe', 'Operator', 875),
(6, 'Luxe Knife', 'Select', 'Luxe', 'Knife', 1750),
(7, 'Aristocrat Sheriff', 'Deluxe', 'Aristocrat', 'Sheriff', 1275),
(8, 'Aristocrat Stinger', 'Deluxe', 'Aristocrat', 'Stinger', 1275),
(9, 'Aristocrat Bulldog', 'Deluxe', 'Aristocrat', 'Bulldog', 1275),
(10, 'Aristocrat Vandal', 'Deluxe', 'Aristocrat', 'Vandal', 1275),
(11, 'Aristocrat Ares', 'Deluxe', 'Aristocrat', 'Ares', 1275),
(12, 'Snowfall Classic', 'Deluxe', 'Snowfall', 'Classic', 1275),
(13, 'Celestial Frenzy', 'Premium', 'Celestial', 'Frenzy', 1775),
(14, 'Celestial Judge', 'Premium', 'Celestial', 'Judge', 1775),
(15, 'Celestial Phantom', 'Premium', 'Celestial', 'Phantom', 1775),
(16, 'Celestial Ares', 'Premium', 'Celestial', 'Ares', 1775),
(17, 'Celestial Fan', 'Premium', 'Celestial', 'Knife Fan', 3550),
(18, 'Origin Operator', 'Premium', 'Origin', 'Operator', 1775),
(19, 'Ruination Ghost', 'Exclusive', 'Ruination', 'Ghost', 2175),
(20, 'Ruination Spectre', 'Exclusive', 'Ruination', 'Spectre', 2175),
(21, 'Ruination Guardian', 'Exclusive', 'Ruination', 'Guardian', 2175),
(22, 'Ruination Phantom', 'Exclusive', 'Ruination', 'Phantom', 2175),
(23, 'SPECTRUM Bulldog', 'Exclusive', 'Spectrum', 'Bulldog', 2675),
(24, 'SPECTRUM Guardian', 'Exclusive', 'Spectrum', 'Guardian', 2675),
(25, 'Elderflame Frenzy', 'Ultra', 'Elderflame', 'Frenzy', 2475),
(26, 'Elderflame Judge', 'Ultra', 'Elderflame', 'Judge', 2475),
(27, 'Elderflame Vandal', 'Ultra', 'Elderflame', 'Vandal', 2475),
(28, 'Elderflame Operator', 'Ultra', 'Elderflame', 'Operator', 2475),
(29, 'Elderflame Dagger', 'Ultra', 'Elderflame', 'Knife Dagger', 4950),
(30, 'Protocol 781-A Sheriff', 'Ultra', 'Protocol 781-A', 'Sheriff', 2475);



--

--




CREATE TABLE armas (
  `id` int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `name` varchar(50),
  `type` varchar(50)
)

INSERT INTO `armas` (`id`, `Name`, `Type`) VALUES
(1, 'classic', 'pistola'),
(2, 'bucky', 'escopeta'),
(3, 'stinger','submetralhadora'),
(4, 'guardian','rifles'); 
--
-- Indexes for dumped tables
--
  
--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `personagens`
--


--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `personagens`
--

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



