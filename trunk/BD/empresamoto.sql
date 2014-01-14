-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Máquina: 127.0.0.1
-- Data de Criação: 14-Jan-2014 às 18:27
-- Versão do servidor: 5.5.34
-- versão do PHP: 5.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `empresamoto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendente`
--

CREATE TABLE IF NOT EXISTS `atendente` (
  `codat` bigint(20) NOT NULL AUTO_INCREMENT,
  `nomeat` varchar(100) NOT NULL,
  `statusat` tinyint(1) NOT NULL,
  PRIMARY KEY (`codat`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Extraindo dados da tabela `atendente`
--

INSERT INTO `atendente` (`codat`, `nomeat`, `statusat`) VALUES
(1, 'Douglas', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairro`
--

CREATE TABLE IF NOT EXISTS `bairro` (
  `codbairro` bigint(20) NOT NULL AUTO_INCREMENT,
  `nomebairro` varchar(100) NOT NULL,
  `codreg` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`codbairro`),
  KEY `codreg` (`codreg`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `bairro`
--

INSERT INTO `bairro` (`codbairro`, `nomebairro`, `codreg`) VALUES
(1, 'Ponte da Saudade', 1),
(2, 'Mury', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `codcli` bigint(20) NOT NULL AUTO_INCREMENT,
  `nomecli` varchar(100) NOT NULL,
  `telcli` int(11) DEFAULT NULL,
  `CPF` bigint(20) NOT NULL,
  `statuscli` tinyint(1) NOT NULL,
  PRIMARY KEY (`codcli`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`codcli`, `nomecli`, `telcli`, `CPF`, `statuscli`) VALUES
(1, 'Carlos', 255555, 0, 0),
(2, 'Pedro', 266666, 0, 0),
(3, 'Ana', 299999, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `moto`
--

CREATE TABLE IF NOT EXISTS `moto` (
  `codmoto` bigint(20) NOT NULL AUTO_INCREMENT,
  `placa` varchar(100) NOT NULL,
  `cor` varchar(100) NOT NULL,
  `statusmoto` tinyint(1) NOT NULL,
  PRIMARY KEY (`codmoto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `moto`
--

INSERT INTO `moto` (`codmoto`, `placa`, `cor`, `statusmoto`) VALUES
(1, 'XYZ-555', 'azul', 1),
(2, 'HFJ-666', 'verde', 1),
(3, 'KLO-777', 'vermelho', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `motoboy`
--

CREATE TABLE IF NOT EXISTS `motoboy` (
  `codboy` bigint(20) NOT NULL AUTO_INCREMENT,
  `nomeboy` varchar(100) NOT NULL,
  `statusboy` tinyint(1) NOT NULL,
  PRIMARY KEY (`codboy`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `motoboy`
--

INSERT INTO `motoboy` (`codboy`, `nomeboy`, `statusboy`) VALUES
(1, 'Cirusito', 1),
(2, 'Doritos', 1),
(3, 'Luiz', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ordemserv`
--

CREATE TABLE IF NOT EXISTS `ordemserv` (
  `numord` bigint(20) NOT NULL AUTO_INCREMENT,
  `dataemissao` text NOT NULL,
  `datalimite` date DEFAULT NULL,
  `descr` text,
  `total` float NOT NULL,
  `statusos` tinyint(1) NOT NULL,
  `codat` bigint(20) DEFAULT NULL,
  `codreg` bigint(20) DEFAULT NULL,
  `codcli` bigint(20) DEFAULT NULL,
  `codtipo` bigint(20) DEFAULT NULL,
  `numsai` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`numord`),
  KEY `codat` (`codat`,`codreg`,`codcli`,`codtipo`,`numsai`),
  KEY `codtipo` (`codtipo`),
  KEY `numsai` (`numsai`),
  KEY `codreg` (`codreg`),
  KEY `codcli` (`codcli`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Extraindo dados da tabela `ordemserv`
--

INSERT INTO `ordemserv` (`numord`, `dataemissao`, `datalimite`, `descr`, `total`, `statusos`, `codat`, `codreg`, `codcli`, `codtipo`, `numsai`) VALUES
(16, '04-Jan-2014', NULL, 'Entrega de mercadoria', 35.5, 0, 1, 1, 3, 1, NULL),
(17, '04-Jan-2014', NULL, 'Entrega de mercadoria', 35.5, 0, 1, 1, 2, 1, NULL),
(18, '04-Jan-2014', NULL, 'Pagamento de conta', 41, 0, 1, 1, 2, 2, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `posse`
--

CREATE TABLE IF NOT EXISTS `posse` (
  `codmoto` bigint(20) DEFAULT NULL,
  `codboy` bigint(20) DEFAULT NULL,
  `datainicio` date NOT NULL,
  `datatermino` date DEFAULT NULL,
  UNIQUE KEY `codmoto` (`codmoto`,`codboy`),
  KEY `codboy` (`codboy`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `posse`
--

INSERT INTO `posse` (`codmoto`, `codboy`, `datainicio`, `datatermino`) VALUES
(1, 1, '2014-01-04', NULL),
(3, 3, '2014-01-06', NULL),
(2, 2, '2014-01-08', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `regiao`
--

CREATE TABLE IF NOT EXISTS `regiao` (
  `codreg` bigint(20) NOT NULL AUTO_INCREMENT,
  `nomereg` varchar(100) NOT NULL,
  `taxareg` float NOT NULL,
  PRIMARY KEY (`codreg`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `regiao`
--

INSERT INTO `regiao` (`codreg`, `nomereg`, `taxareg`) VALUES
(1, 'sul', 15.5),
(2, 'suldeste', 15),
(3, 'centro', 10),
(4, 'norte', 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `saida`
--

CREATE TABLE IF NOT EXISTS `saida` (
  `numsai` bigint(20) NOT NULL AUTO_INCREMENT,
  `datasai` date NOT NULL,
  `horasai` time NOT NULL,
  `horavolta` time DEFAULT NULL,
  `codboy` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`numsai`),
  KEY `codboy` (`codboy`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Extraindo dados da tabela `saida`
--

INSERT INTO `saida` (`numsai`, `datasai`, `horasai`, `horavolta`, `codboy`) VALUES
(1, '2014-01-01', '00:00:00', NULL, 1),
(2, '2014-01-01', '02:10:14', NULL, 2),
(3, '2014-01-01', '02:18:00', NULL, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tiposerv`
--

CREATE TABLE IF NOT EXISTS `tiposerv` (
  `codtipo` bigint(20) NOT NULL AUTO_INCREMENT,
  `nometipo` varchar(100) NOT NULL,
  `taxa` float NOT NULL,
  PRIMARY KEY (`codtipo`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Extraindo dados da tabela `tiposerv`
--

INSERT INTO `tiposerv` (`codtipo`, `nometipo`, `taxa`) VALUES
(1, 'entrega', 20),
(2, 'pagamento', 25.5);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `bairro`
--
ALTER TABLE `bairro`
  ADD CONSTRAINT `bairro_ibfk_1` FOREIGN KEY (`codreg`) REFERENCES `regiao` (`codreg`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `ordemserv`
--
ALTER TABLE `ordemserv`
  ADD CONSTRAINT `ordemserv_ibfk_1` FOREIGN KEY (`codat`) REFERENCES `atendente` (`codat`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ordemserv_ibfk_2` FOREIGN KEY (`codtipo`) REFERENCES `tiposerv` (`codtipo`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ordemserv_ibfk_3` FOREIGN KEY (`numsai`) REFERENCES `saida` (`numsai`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ordemserv_ibfk_4` FOREIGN KEY (`codreg`) REFERENCES `regiao` (`codreg`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ordemserv_ibfk_5` FOREIGN KEY (`codcli`) REFERENCES `cliente` (`codcli`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `posse`
--
ALTER TABLE `posse`
  ADD CONSTRAINT `posse_ibfk_1` FOREIGN KEY (`codmoto`) REFERENCES `moto` (`codmoto`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posse_ibfk_2` FOREIGN KEY (`codboy`) REFERENCES `motoboy` (`codboy`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Limitadores para a tabela `saida`
--
ALTER TABLE `saida`
  ADD CONSTRAINT `saida_ibfk_1` FOREIGN KEY (`codboy`) REFERENCES `motoboy` (`codboy`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
