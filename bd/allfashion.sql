-- MySQL dump 10.13  Distrib 5.7.22, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: allfashion
-- ------------------------------------------------------
-- Server version	5.7.22-0ubuntu18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cartoes_pagamento`
--

DROP TABLE IF EXISTS `cartoes_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cartoes_pagamento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(45) DEFAULT NULL,
  `nome_titular` varchar(45) DEFAULT NULL,
  `mes_validade` char(2) DEFAULT NULL,
  `ano_validade` char(4) DEFAULT NULL,
  `codigo_seguranca` varchar(45) DEFAULT NULL,
  `Usuarios_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cartoes_pagamento_Usuarios1_idx` (`Usuarios_id`),
  CONSTRAINT `fk_cartoes_pagamento_Usuarios1` FOREIGN KEY (`Usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cartoes_pagamento`
--

LOCK TABLES `cartoes_pagamento` WRITE;
/*!40000 ALTER TABLE `cartoes_pagamento` DISABLE KEYS */;
INSERT INTO `cartoes_pagamento` VALUES (1,'4119.1859.5845.6111','DOUGLAS FRANKLIN','09','2019','fa14d4fe2f19414de3ebd9f63d5c0169',3),(2,'1325.6548.9871.9685','DOUGLAS','02','2018','061412e4a03c02f9902576ec55ebbe77',3),(3,'2342.3423.4234.2342','23423423','02','2019','289dff07669d7a23de0ef88d2f7129e7',4);
/*!40000 ALTER TABLE `cartoes_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT 'S',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Blusas e Camisas','S'),(2,'Calças','S'),(3,'Saias','S'),(4,'Vestidos','S');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidades`
--

DROP TABLE IF EXISTS `cidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `Estados_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Cidades_Estados_idx` (`Estados_id`),
  CONSTRAINT `fk_Cidades_Estados` FOREIGN KEY (`Estados_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidades`
--

LOCK TABLES `cidades` WRITE;
/*!40000 ALTER TABLE `cidades` DISABLE KEYS */;
INSERT INTO `cidades` VALUES (1,'Erechim',1);
/*!40000 ALTER TABLE `cidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cores`
--

DROP TABLE IF EXISTS `cores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT 'S',
  `cor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cores`
--

LOCK TABLES `cores` WRITE;
/*!40000 ALTER TABLE `cores` DISABLE KEYS */;
INSERT INTO `cores` VALUES (1,'Preto','S','preto'),(2,'Rosa','S','rosa'),(3,'Verde','S','verde'),(4,'Azul','S','azul'),(6,'Branco','S','branco');
/*!40000 ALTER TABLE `cores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enderecos`
--

DROP TABLE IF EXISTS `enderecos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enderecos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rua` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `Cidades_id` int(11) NOT NULL,
  `Usuarios_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Enderecos_Cidades1_idx` (`Cidades_id`),
  KEY `fk_Enderecos_Usuarios1_idx` (`Usuarios_id`),
  CONSTRAINT `fk_Enderecos_Cidades1` FOREIGN KEY (`Cidades_id`) REFERENCES `cidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Enderecos_Usuarios1` FOREIGN KEY (`Usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enderecos`
--

LOCK TABLES `enderecos` WRITE;
/*!40000 ALTER TABLE `enderecos` DISABLE KEYS */;
INSERT INTO `enderecos` VALUES (1,'Rua HipÃ³lito JosÃ© da Costa','58','CASA','99709264','FÃ¡tima',1,3),(2,'Linha Progresso','58','CASA','99665000','Centro',1,3),(3,'afasdfasd','1111','234234','23423-423','23423423',1,4);
/*!40000 ALTER TABLE `enderecos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'Rio Grande do Sul','RS');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faturas`
--

DROP TABLE IF EXISTS `faturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `valor` decimal(12,2) DEFAULT NULL,
  `parcela` int(11) DEFAULT NULL,
  `Status_id` int(11) NOT NULL,
  `Pedidos_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Faturas_Status1_idx` (`Status_id`),
  KEY `fk_Faturas_Pedidos1_idx` (`Pedidos_id`),
  CONSTRAINT `fk_Faturas_Pedidos1` FOREIGN KEY (`Pedidos_id`) REFERENCES `pedidos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Faturas_Status1` FOREIGN KEY (`Status_id`) REFERENCES `status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faturas`
--

LOCK TABLES `faturas` WRITE;
/*!40000 ALTER TABLE `faturas` DISABLE KEYS */;
INSERT INTO `faturas` VALUES (7,41.31,1,1,1),(8,41.31,2,1,1),(9,41.31,3,1,1),(10,41.31,4,1,1),(11,41.31,5,1,1),(12,41.31,6,1,1),(13,57.20,1,1,2),(14,57.20,2,1,2),(15,57.20,3,1,2),(16,57.20,4,1,2),(22,135.39,1,1,3),(23,135.39,2,1,3),(24,135.39,3,1,3),(25,135.39,4,1,3);
/*!40000 ALTER TABLE `faturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagens`
--

DROP TABLE IF EXISTS `imagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagens` (
  ` id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `caminho` varchar(100) DEFAULT NULL,
  `Produtos_id` int(11) NOT NULL,
  `principal` char(1) DEFAULT 'S',
  PRIMARY KEY (` id`),
  KEY `fk_Imagens_Produtos1_idx` (`Produtos_id`),
  CONSTRAINT `fk_Imagens_Produtos1` FOREIGN KEY (`Produtos_id`) REFERENCES `produtos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagens`
--

LOCK TABLES `imagens` WRITE;
/*!40000 ALTER TABLE `imagens` DISABLE KEYS */;
INSERT INTO `imagens` VALUES (30,'saia (1).png','img/produtos/',14,'S'),(31,'saia(4).png','img/produtos/',15,'S'),(32,'saia-preta (1).png','img/produtos/',16,'S'),(33,'saia-preta (2).png','img/produtos/',17,'S'),(34,'saia-preta (3).png','img/produtos/',18,'S'),(35,'saia-preta (4).png','img/produtos/',18,'N'),(36,'vestido-preto (1).png','img/produtos/',19,'S'),(37,'vestido-preto (2).png','img/produtos/',20,'S'),(38,'vestido-preto (3).png','img/produtos/',21,'S'),(39,'vestido-preto (4).png','img/produtos/',22,'S'),(40,'vestido-verde.png','img/produtos/',23,'S'),(41,'vestido-branco (1).png','img/produtos/',26,'S'),(42,'vestido-branco (2).png','img/produtos/',27,'S'),(43,'manga-curta -preta (1).png','img/produtos/',56,'S'),(44,'manga-curta -preta (2).png','img/produtos/',57,'S'),(45,'manga-curta -branca (1).png','img/produtos/',58,'S'),(46,'manga-curta -branca (2).png','img/produtos/',59,'S'),(47,'manga-curta -branca (3).png','img/produtos/',60,'S'),(48,'manga-curta -branca (4).png','img/produtos/',61,'S'),(49,'manga-curta -rosa (1).png','img/produtos/',51,'S'),(50,'manga-curta -rosa (2).png','img/produtos/',52,'S'),(51,'manga-curta -rosa (3).png','img/produtos/',53,'S'),(52,'manga-curta -rosa (4).png','img/produtos/',54,'S'),(53,'manga-curta -rosa (5).png','img/produtos/',55,'S'),(54,'manga-curta -verde (2).png','img/produtos/',48,'S'),(55,'manga-curta -verde (3).png','img/produtos/',49,'S'),(56,'manga-curta -verde (4).png','img/produtos/',50,'S'),(57,'manga-longa (3).png','img/produtos/',43,'S'),(58,'manga-longa -branco (1).png','img/produtos/',37,'S'),(59,'manga-longa- preto (3).png','img/produtos/',39,'S'),(60,'manga-longa- preto (2).png','img/produtos/',39,'N'),(61,'manga-longa -azul (1).png','img/produtos/',40,'S'),(62,'manga-longa -azul (2).png','img/produtos/',41,'S'),(63,'manga-longa -azul (3).png','img/produtos/',42,'S'),(64,'vestido-azul (1).png','img/produtos/',24,'S'),(65,'vestido-azul (2).png','img/produtos/',25,'S'),(66,'manga-longa- preto (4).png','img/produtos/',36,'S'),(74,'manga-longa -rosa (1).png','img/produtos/',28,'S'),(75,'manga-longa -rosa (2).png','img/produtos/',29,'S'),(76,'manga-longa -rosa (3).png','img/produtos/',30,'S'),(77,'manga-longa -rosa (4).png','img/produtos/',31,'S'),(78,'manga-longa -rosa (5).png','img/produtos/',32,'S'),(79,'manga-longa -rosa (6).png','img/produtos/',33,'S'),(80,'manga-longa-rosa.png','img/produtos/',38,'S'),(81,'manga-curta -verde (1).png','img/produtos/',47,'S'),(82,'manga-longa -branco.jpg','img/produtos/',35,'S'),(83,'manga-longa -verde.png','img/produtos/',34,'S'),(84,'manga-curta-azul (1).png','img/produtos/',44,'S'),(85,'calca (2).png','img/produtos/',62,'S'),(86,'calca-preta (1).png','img/produtos/',63,'S'),(87,'calca-preta (2).png','img/produtos/',64,'S'),(88,'calca-preta (5).png','img/produtos/',65,'S'),(89,'calca-preta (4).png','img/produtos/',66,'S'),(90,'calca-azul (1).png','img/produtos/',67,'S'),(91,'calca-azul (2).png','img/produtos/',68,'S'),(92,'calca-preta (3).png','img/produtos/',69,'S'),(93,'Calca5.1.jpg','img/produtos/',70,'S'),(94,'Calca5.2.jpg','img/produtos/',70,'N'),(95,'Calca5.3.jpg','img/produtos/',70,'N'),(96,'Calca4.1.jpg','img/produtos/',71,'N'),(97,'Calca4.3.jpg','img/produtos/',71,'S'),(98,'Calca4.png','img/produtos/',71,'N');
/*!40000 ALTER TABLE `imagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itempedido`
--

DROP TABLE IF EXISTS `itempedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itempedido` (
  `Pedidos_id` int(11) NOT NULL,
  `Produtos_id` int(11) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `quantidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pedidos_id`,`Produtos_id`),
  KEY `fk_Pedidos_has_Produtos_Produtos1_idx` (`Produtos_id`),
  KEY `fk_Pedidos_has_Produtos_Pedidos1_idx` (`Pedidos_id`),
  CONSTRAINT `fk_Pedidos_has_Produtos_Pedidos1` FOREIGN KEY (`Pedidos_id`) REFERENCES `pedidos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedidos_has_Produtos_Produtos1` FOREIGN KEY (`Produtos_id`) REFERENCES `produtos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itempedido`
--

LOCK TABLES `itempedido` WRITE;
/*!40000 ALTER TABLE `itempedido` DISABLE KEYS */;
INSERT INTO `itempedido` VALUES (1,16,NULL,1),(1,18,NULL,1),(1,29,NULL,1),(2,23,NULL,1),(2,69,NULL,1),(3,16,NULL,2),(3,28,NULL,1),(3,35,NULL,1);
/*!40000 ALTER TABLE `itempedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `Usuarios_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Login_Usuarios1_idx` (`Usuarios_id`),
  CONSTRAINT `fk_Login_Usuarios1` FOREIGN KEY (`Usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcas`
--

DROP TABLE IF EXISTS `marcas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marcas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT 'S',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcas`
--

LOCK TABLES `marcas` WRITE;
/*!40000 ALTER TABLE `marcas` DISABLE KEYS */;
INSERT INTO `marcas` VALUES (1,'Armani','S'),(2,'Balmain','S'),(3,'Herrore','S'),(4,'Lewis','S'),(5,'Cut','S'),(6,'Long','S');
/*!40000 ALTER TABLE `marcas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_ini` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `validade` varchar(45) DEFAULT NULL,
  `valorTotal` decimal(12,2) DEFAULT NULL,
  `Usuarios_id` int(11) NOT NULL,
  `Status_id` int(11) NOT NULL,
  `cartoes_pagamento_id` int(11) DEFAULT NULL,
  `enderecos_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Pedidos_Usuarios1_idx` (`Usuarios_id`),
  KEY `fk_Pedidos_Status1_idx` (`Status_id`),
  KEY `cartoes_pagamento_id` (`cartoes_pagamento_id`),
  KEY `enderecos_id` (`enderecos_id`),
  CONSTRAINT `fk_Pedidos_Status1` FOREIGN KEY (`Status_id`) REFERENCES `status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedidos_Usuarios1` FOREIGN KEY (`Usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`cartoes_pagamento_id`) REFERENCES `cartoes_pagamento` (`id`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`enderecos_id`) REFERENCES `enderecos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'2018-06-28',NULL,NULL,247.88,3,1,1,1),(2,'2018-06-28',NULL,NULL,228.80,3,1,2,2),(3,'2018-06-30',NULL,NULL,541.56,4,1,3,3);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` text,
  `tamanho` char(1) DEFAULT NULL,
  `tipo_tamanho` int(11) NOT NULL DEFAULT '1',
  `preco` decimal(12,2) DEFAULT NULL,
  `Marcas_id` int(11) NOT NULL,
  `Categorias_id` int(11) NOT NULL,
  `Cores_id` int(11) NOT NULL,
  `SubCategorias_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Produtos_Marcas1_idx` (`Marcas_id`),
  KEY `fk_Produtos_Categorias1_idx` (`Categorias_id`),
  KEY `fk_Produtos_Cores1_idx` (`Cores_id`),
  KEY `fk_Produtos_SubCategorias1_idx` (`SubCategorias_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (14,'Saia Couriço Short','Saia Couriço Short em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,85.90,5,3,1,0),(15,'Saia Couriço Short','Saia Couriço Short em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,85.90,5,3,1,0),(16,'Saia Cut','Saia Cut em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,101.90,5,3,1,0),(17,'Saia Couriço','Saia Couriço em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,109.90,5,3,1,0),(18,'Saia Longa','Saia Longa em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,80.00,6,3,1,0),(19,'Vestido Curto Florido','Vestido Curto Florido em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,65.98,1,10,1,0),(20,'Vestido Curto Couriço','Vestido Curto Couriço em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,112.90,1,10,1,0),(21,'Vestido Curto Social','Vestido Curto Social em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,145.99,1,10,1,0),(22,'Vestido Longo Social','Vestido Longo Social em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,189.90,1,10,1,0),(23,'Vestido Curto Social','Vestido Curto Social em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,98.90,2,10,3,0),(24,'Vestido Longo Social','Vestido Longo Social em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,135.78,2,10,4,0),(25,'Vestido Longo','Vestido Longo em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','G',1,115.49,2,10,4,0),(26,'Vestido Longo Social','Vestido Longo Social em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','G',1,225.49,2,10,6,0),(27,'Vestido Curto Party','Vestido Curto Party em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,125.49,2,10,6,0),(28,'Blazer Pink','Blazer Pink em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,147.78,4,1,2,2),(29,'Camisa Xadrez AllFashion','Camisa Xadrez AllFashion em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,65.98,4,1,2,2),(30,'Blazer AllFashion','Blazer AllFashion em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,68.00,4,1,2,2),(31,'Blazer Rosa Bebe','Blazer Rosa Bebe em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,74.00,4,1,2,2),(32,'Camisa Manga Longa Rosa Bebe','Camisa Manga Longa Rosa Bebe em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,59.90,4,1,2,2),(33,'Casaco','Casaco em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,150.00,4,1,2,2),(34,'Blazer Gardigann','Blazer Gardigann em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,71.00,4,1,3,2),(35,'Casaco de Lã Batida Xanron','Casaco de Lã Batida Xanron em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,189.98,4,1,1,2),(36,'Casaco','Casaco em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,159.98,3,1,1,2),(37,'Chochê delicado','Chochê delicado em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,159.98,3,1,5,2),(38,'Blusinha AllFashion','Blusinha AllFashion em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,65.90,3,1,5,2),(39,'Casaco de La Batida AllFashion ','Casaco de La Batida AllFashion  em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,65.90,3,1,5,2),(40,'Blazer Cheguei','Blazer Cheguei em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,115.90,2,1,5,2),(41,'Blazer AllFashion','Blazer AllFashion em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,70.90,2,1,5,2),(42,'Blazer Jeans','Blazer Jeans em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,125.90,4,1,5,2),(43,'Blusinha de Bolinha Forbi','Blusinha de Bolinha Forbi em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,98.00,4,1,1,2),(44,'Academia','Academia em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,59.90,1,1,4,1),(47,'Camisa de Algodão','Camisa de Algodão em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,54.90,1,1,4,1),(48,'Casual','Casual em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,62.98,1,1,3,1),(49,'Academia','Academia em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,59.90,1,1,3,1),(50,'Camisa de Seda','Camisa de Seda em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,62.90,1,1,3,1),(51,'Sem Alça Casual','Sem Alça Casual em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,120.00,4,1,2,1),(52,'AllFashion','AllFashion em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,89.00,4,1,2,1),(53,'Camisa Social AllFashion','Camisa Social AllFashion em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,62.90,4,1,2,1),(54,'Camisa de Seda','Camisa de Seda em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,78.90,4,1,2,1),(55,'Florida','Florida em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,62.90,4,1,2,1),(56,'Sem Alça Davis','Sem Alça Davis em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,89.90,4,1,1,2),(57,'AllFashion Franjinha','AllFashion Franjinha em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,89.90,3,1,1,2),(58,'Furgan White','Furgan White em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,75.90,5,1,6,2),(59,'Sem Alça AllFashion','Sem Alça AllFashion em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,99.90,5,1,6,2),(60,'Manga Curta','Manga Curta em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','M',1,59.90,5,1,6,2),(61,'Laço Rodado','Laço Rodado em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,89.90,5,1,6,2),(62,'Flare Dorbo','Flare Dorbo em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',2,129.90,4,2,1,5),(63,'Flare Andé','Flare Andé em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,129.90,4,2,1,5),(64,'Flare Furgan','Flare Furgan em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,129.90,4,2,1,5),(65,'Calça Flare Jeans','Calça Flare Jeans em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',2,115.90,4,2,1,5),(66,'Calça Cintura Alta','Calça Cintura Alta em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',1,99.98,4,2,1,11),(67,'Calça Franjinha Jeans','Calça Franjinha Jeans em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',2,118.97,4,2,4,11),(68,'Calça Bolso Faca','Calça Bolso Faca em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',2,99.98,4,2,4,11),(69,'Calça Legging Couriço','Calça Legging Couriço em fio angorá fake com gola V e mangas levemente bufantes. É a melhor opção para se usar no verão.','P',2,129.90,6,2,1,6),(70,'Calça Jeans','Calça Jeans de ótimo tecido e de cano curto e alta durabilidade','P',1,129.98,1,2,4,NULL),(71,'Calça Cano Curto','Calça Cano Curto allfashion de alta durabilidade','P',1,159.99,1,2,4,NULL);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT 'S',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'Aguardando Pagamento','S');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategorias`
--

DROP TABLE IF EXISTS `subcategorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT 'S',
  `Categorias_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_SubCategorias_Categorias1_idx` (`Categorias_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategorias`
--

LOCK TABLES `subcategorias` WRITE;
/*!40000 ALTER TABLE `subcategorias` DISABLE KEYS */;
INSERT INTO `subcategorias` VALUES (1,'Manga Curta','S',1),(2,'Manga Longa','S',1),(5,'Flare','S',2),(6,'Legging ','S',2),(10,'Vestido','S',4),(11,'Coladinha','S',2);
/*!40000 ALTER TABLE `subcategorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `senha` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (2,'Cassiane Nodari1','cassiane@agro1.inf.br','1234567890',NULL,NULL,'','698dc19d48'),(3,'Douglas Franklin','douglasfkln@outlook.com','1234567890',NULL,NULL,'','fe9fdc98b44b2a634fa8d0c20fca82a4'),(4,'Cass','cassiane.nodari@hotmail.com','123.123.131-23',NULL,NULL,NULL,'c4ca4238a0b923820dcc509a6f75849b');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-01  0:17:07
