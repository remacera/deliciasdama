-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10-Jul-2017 às 20:08
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 5.5.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deliciasdama`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ft`
--

CREATE TABLE `ft` (
  `idft` int(11) NOT NULL,
  `idpd` int(11) NOT NULL,
  `idmp` int(11) NOT NULL,
  `qtdemp` int(11) NOT NULL,
  `customp` decimal(10,2) NOT NULL,
  `custoft` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `ft`
--

INSERT INTO `ft` (`idft`, `idpd`, `idmp`, `qtdemp`, `customp`, `custoft`) VALUES
(1, 1, 1, 0, '0.00', '1.00'),
(2, 2, 1, 0, '0.00', '1.00'),
(3, 2, 2, 0, '0.00', '2.00'),
(4, 3, 1, 0, '0.00', '1.00'),
(5, 3, 2, 0, '0.00', '2.00'),
(6, 3, 3, 0, '0.00', '3.00'),
(7, 4, 1, 0, '0.00', '1.00'),
(8, 4, 2, 0, '0.00', '2.00'),
(9, 4, 3, 0, '0.00', '3.00'),
(10, 4, 4, 0, '0.00', '4.00'),
(11, 5, 5, 0, '0.00', '5.00'),
(12, 6, 5, 0, '0.00', '5.00'),
(13, 6, 6, 0, '0.00', '6.00'),
(14, 7, 5, 0, '0.00', '5.00'),
(15, 7, 6, 0, '0.00', '6.00'),
(16, 7, 7, 0, '0.00', '7.00'),
(17, 8, 5, 0, '0.00', '5.00'),
(18, 8, 6, 0, '0.00', '6.00'),
(19, 8, 7, 0, '0.00', '7.00'),
(20, 8, 8, 0, '0.00', '8.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mic`
--

CREATE TABLE `mic` (
  `idmic` int(11) NOT NULL,
  `idmv` int(11) NOT NULL,
  `idmp` int(11) NOT NULL,
  `valorunitmd` decimal(10,2) NOT NULL,
  `qtdemd` int(11) NOT NULL,
  `valortotalmd` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `mic`
--

INSERT INTO `mic` (`idmic`, `idmv`, `idmp`, `valorunitmd`, `qtdemd`, `valortotalmd`) VALUES
(1, 7, 1, '2.00', 1, '2.00'),
(2, 8, 2, '3.00', 1, '3.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `miv`
--

CREATE TABLE `miv` (
  `idmiv` int(11) NOT NULL,
  `idmv` int(11) NOT NULL,
  `idpd` int(11) NOT NULL,
  `valorunitpd` decimal(10,2) NOT NULL,
  `qtdepd` int(11) NOT NULL,
  `valortotalpd` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `miv`
--

INSERT INTO `miv` (`idmiv`, `idmv`, `idpd`, `valorunitpd`, `qtdepd`, `valortotalpd`) VALUES
(1, 1, 1, '1.00', 1, '1.00'),
(2, 2, 2, '2.00', 1, '2.00'),
(3, 3, 3, '3.00', 1, '3.00'),
(4, 4, 4, '4.00', 1, '4.00'),
(5, 5, 5, '5.00', 1, '5.00'),
(6, 6, 6, '6.00', 1, '6.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mp`
--

CREATE TABLE `mp` (
  `idmp` int(11) NOT NULL,
  `nomemp` varchar(30) COLLATE utf8_bin NOT NULL,
  `customp` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `mp`
--

INSERT INTO `mp` (`idmp`, `nomemp`, `customp`) VALUES
(1, 'mp1', '1.00'),
(2, 'mp2', '2.00'),
(3, 'mp3', '3.00'),
(4, 'mp4', '4.00'),
(5, 'mp5', '5.00'),
(6, 'mp6', '6.00'),
(7, 'mp7', '7.00'),
(8, 'mp8', '8.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mv`
--

CREATE TABLE `mv` (
  `idmv` int(11) NOT NULL,
  `tipomv` varchar(1) COLLATE utf8_bin NOT NULL,
  `idpemv` int(11) NOT NULL,
  `valorpd` decimal(10,2) NOT NULL,
  `descontomv` decimal(10,2) DEFAULT NULL,
  `valormv` decimal(10,2) NOT NULL,
  `observacoesmv` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `mv`
--

INSERT INTO `mv` (`idmv`, `tipomv`, `idpemv`, `valorpd`, `descontomv`, `valormv`, `observacoesmv`) VALUES
(1, 'V', 1, '1.00', '0.10', '0.90', 'observações 1'),
(2, 'V', 1, '2.00', '0.20', '1.80', 'observações 1'),
(3, 'V', 1, '3.00', '0.30', '2.70', 'observações 1'),
(4, 'V', 1, '4.00', '0.40', '3.60', 'observações 1'),
(5, 'V', 1, '5.00', '0.50', '4.50', 'observações 1'),
(6, 'V', 1, '1.00', '0.10', '0.90', 'observações 1'),
(7, 'C', 7, '2.00', '0.20', '1.80', 'observações 1'),
(8, 'C', 8, '2.00', '0.30', '2.70', 'observações 1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pd`
--

CREATE TABLE `pd` (
  `idpd` int(11) NOT NULL,
  `nomepd` varchar(30) COLLATE utf8_bin NOT NULL,
  `vendapd` decimal(10,2) DEFAULT NULL,
  `custopd` decimal(10,2) DEFAULT NULL,
  `estoquepd` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `pd`
--

INSERT INTO `pd` (`idpd`, `nomepd`, `vendapd`, `custopd`, `estoquepd`) VALUES
(1, 'prod1', '11.00', '1.00', 1),
(2, 'prod2', '22.00', '2.00', 2),
(3, 'prod3', '33.00', '3.00', 3),
(4, 'prod4', '44.00', '4.00', 4),
(5, 'prod5', '55.00', '5.00', 5),
(6, 'prod6', '66.00', '6.00', 6),
(7, 'prod7', '77.00', '7.00', 7),
(8, 'prod8', '88.00', '8.00', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pe`
--

CREATE TABLE `pe` (
  `idpe` int(11) NOT NULL,
  `tipope` varchar(1) COLLATE utf8_bin NOT NULL,
  `nomepe` varchar(30) COLLATE utf8_bin NOT NULL,
  `telefonepe` varchar(12) COLLATE utf8_bin NOT NULL,
  `enderecope` varchar(50) COLLATE utf8_bin NOT NULL,
  `bairrope` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `cidadepe` varchar(50) COLLATE utf8_bin NOT NULL,
  `facebookpe` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `pe`
--

INSERT INTO `pe` (`idpe`, `tipope`, `nomepe`, `telefonepe`, `enderecope`, `bairrope`, `cidadepe`, `facebookpe`) VALUES
(1, 'C', 'teste1', '44984363856', 'rua teste1', 'bairro1', 'Maringá', 'facebook1'),
(2, 'C', 'teste2', '44984363856', 'rua teste2', 'bairro2', 'Maringá', 'facebook2'),
(3, 'C', 'teste3', '44984363856', 'rua teste3', 'bairro3', 'Maringá', 'facebook3'),
(4, 'C', 'teste4', '44984363856', 'rua teste4', 'bairro4', 'Maringá', 'facebook4'),
(5, 'C', 'teste5', '44984363856', 'rua teste5', 'bairro5', 'Maringá', 'facebook5'),
(6, 'C', 'teste6', '44984363856', 'rua teste6', 'bairro6', 'Maringá', 'facebook6'),
(7, 'F', 'teste7', '44984363856', 'rua teste7', 'bairro7', 'Maringá', 'facebook7'),
(8, 'F', 'teste8', '44984363856', 'rua teste8', 'bairro8', 'Maringá', 'facebook8');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pr`
--

CREATE TABLE `pr` (
  `idpr` int(11) NOT NULL,
  `idpd` int(11) NOT NULL,
  `quantidadepd` int(11) NOT NULL,
  `datapr` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ft`
--
ALTER TABLE `ft`
  ADD PRIMARY KEY (`idft`);

--
-- Indexes for table `mic`
--
ALTER TABLE `mic`
  ADD PRIMARY KEY (`idmic`);

--
-- Indexes for table `miv`
--
ALTER TABLE `miv`
  ADD PRIMARY KEY (`idmiv`);

--
-- Indexes for table `mp`
--
ALTER TABLE `mp`
  ADD PRIMARY KEY (`idmp`);

--
-- Indexes for table `mv`
--
ALTER TABLE `mv`
  ADD PRIMARY KEY (`idmv`);

--
-- Indexes for table `pd`
--
ALTER TABLE `pd`
  ADD PRIMARY KEY (`idpd`);

--
-- Indexes for table `pe`
--
ALTER TABLE `pe`
  ADD PRIMARY KEY (`idpe`);

--
-- Indexes for table `pr`
--
ALTER TABLE `pr`
  ADD PRIMARY KEY (`idpr`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ft`
--
ALTER TABLE `ft`
  MODIFY `idft` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `mic`
--
ALTER TABLE `mic`
  MODIFY `idmic` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `miv`
--
ALTER TABLE `miv`
  MODIFY `idmiv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mp`
--
ALTER TABLE `mp`
  MODIFY `idmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `mv`
--
ALTER TABLE `mv`
  MODIFY `idmv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pd`
--
ALTER TABLE `pd`
  MODIFY `idpd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pe`
--
ALTER TABLE `pe`
  MODIFY `idpe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pr`
--
ALTER TABLE `pr`
  MODIFY `idpr` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
