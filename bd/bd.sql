-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.21 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para testando_graficos_bd
CREATE DATABASE IF NOT EXISTS `testando_graficos_bd` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `testando_graficos_bd`;

-- Copiando estrutura para tabela testando_graficos_bd.compra
CREATE TABLE IF NOT EXISTS `compra` (
  `idCompra` int NOT NULL AUTO_INCREMENT,
  `cliente` varchar(50) DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCompra`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela testando_graficos_bd.compra: 7 rows
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` (`idCompra`, `cliente`, `quantidade`, `estado`) VALUES
	(1, 'jose carlos', 8, 'sp'),
	(2, 'ana livia ', 1, 'sp'),
	(3, 'amelia silva', 2, 'sp'),
	(4, 'thiago', 6, 'mg'),
	(5, 'carlos eduardo', 2, 'bh'),
	(6, 'paula', 5, 'sc'),
	(7, 'milton', 1, 'am');
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;

-- Copiando estrutura para tabela testando_graficos_bd.vendas
CREATE TABLE IF NOT EXISTS `vendas` (
  `idVendas` int NOT NULL AUTO_INCREMENT,
  `produto` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `preco` double NOT NULL,
  `quantidadeVendas` int NOT NULL,
  PRIMARY KEY (`idVendas`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela testando_graficos_bd.vendas: 4 rows
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` (`idVendas`, `produto`, `preco`, `quantidadeVendas`) VALUES
	(1, 'geladeira moderna branca', 2000, 15),
	(2, 'mesa familia ', 1200, 10),
	(3, 'sofa elegante', 1800, 20),
	(4, 'criado mudo', 1400, 20);
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;

-- Copiando estrutura para tabela testando_graficos_bd.vendas_por_ambiente
CREATE TABLE IF NOT EXISTS `vendas_por_ambiente` (
  `idAmbiente` int NOT NULL AUTO_INCREMENT,
  `ambiente` varchar(50) NOT NULL,
  `quantidadeVenda` int NOT NULL,
  PRIMARY KEY (`idAmbiente`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela testando_graficos_bd.vendas_por_ambiente: 5 rows
/*!40000 ALTER TABLE `vendas_por_ambiente` DISABLE KEYS */;
INSERT INTO `vendas_por_ambiente` (`idAmbiente`, `ambiente`, `quantidadeVenda`) VALUES
	(1, 'sala', 50),
	(2, 'banheiro', 20),
	(3, 'cozinha', 35),
	(4, 'quarto', 25),
	(5, 'escritorio', 10);
/*!40000 ALTER TABLE `vendas_por_ambiente` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
