-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Máquina: 127.0.0.1
-- Data de Criação: 21-Jan-2014 às 20:44
-- Versão do servidor: 5.5.32
-- versão do PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de Dados: `empresamoto`
--
CREATE DATABASE IF NOT EXISTS `empresamoto` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `empresamoto`;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
