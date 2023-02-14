-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Fev-2023 às 22:31
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.3.33

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
-- Estrutura da tabela `mapas`
--

CREATE TABLE `mapas` (
  `id` int(2) NOT NULL,
  `mapa` varchar(50) NOT NULL,
  `local` varchar(50) NOT NULL,
  `curiosidade` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `mapas`
--
ALTER TABLE `mapas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `mapas`
--
ALTER TABLE `mapas`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
