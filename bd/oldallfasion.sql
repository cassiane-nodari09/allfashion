/*
SQLyog Ultimate v9.63 
MySQL - 5.5.5-10.1.21-MariaDB : Database - allfashion
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`allfashion` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `allfashion`;

/*Table structure for table `categorias` */

DROP TABLE IF EXISTS `categorias`;

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT 'S',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `categorias` */

LOCK TABLES `categorias` WRITE;

insert  into `categorias`(`id`,`descricao`,`ativo`) values (1,'Blusas e Camisas','S'),(2,'Calças','S'),(3,'Saias','S'),(4,'Vestidos','S'),(5,'Bolsas','S'),(6,'Acessórios','S');

UNLOCK TABLES;

/*Table structure for table `cidades` */

DROP TABLE IF EXISTS `cidades`;

CREATE TABLE `cidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `Estados_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Cidades_Estados_idx` (`Estados_id`),
  CONSTRAINT `fk_Cidades_Estados` FOREIGN KEY (`Estados_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cidades` */

LOCK TABLES `cidades` WRITE;

UNLOCK TABLES;

/*Table structure for table `cores` */

DROP TABLE IF EXISTS `cores`;

CREATE TABLE `cores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT 'S',
  `cor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `cores` */

LOCK TABLES `cores` WRITE;

insert  into `cores`(`id`,`descricao`,`ativo`,`cor`) values (1,'Preto','S','preto'),(2,'Rosa','S','rosa'),(3,'Verde','S','verde'),(4,'Azul','S','azul'),(6,'Branco','S','branco');

UNLOCK TABLES;

/*Table structure for table `enderecos` */

DROP TABLE IF EXISTS `enderecos`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `enderecos` */

LOCK TABLES `enderecos` WRITE;

UNLOCK TABLES;

/*Table structure for table `estados` */

DROP TABLE IF EXISTS `estados`;

CREATE TABLE `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `estados` */

LOCK TABLES `estados` WRITE;

UNLOCK TABLES;

/*Table structure for table `faturas` */

DROP TABLE IF EXISTS `faturas`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `faturas` */

LOCK TABLES `faturas` WRITE;

UNLOCK TABLES;

/*Table structure for table `imagens` */

DROP TABLE IF EXISTS `imagens`;

CREATE TABLE `imagens` (
  ` id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `caminho` varchar(100) DEFAULT NULL,
  `Produtos_id` int(11) NOT NULL,
  `principal` char(1) DEFAULT 'S',
  PRIMARY KEY (` id`),
  KEY `fk_Imagens_Produtos1_idx` (`Produtos_id`),
  CONSTRAINT `fk_Imagens_Produtos1` FOREIGN KEY (`Produtos_id`) REFERENCES `produtos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

/*Data for the table `imagens` */

LOCK TABLES `imagens` WRITE;

insert  into `imagens`(` id`,`nome`,`caminho`,`Produtos_id`,`principal`) values (1,'foto1-rosa.png','img/produtos/',1,'S'),(2,'foto2-rosa.png','img/produtos/',4,'S'),(3,'foto1-rosa.png','img/produtos/',4,'N'),(4,'foto2-rosa.png','img/produtos/',4,'N'),(5,'foto2-rosa.png','img/produtos/',4,'N'),(6,'foto2-rosa.png','img/produtos/',4,'N'),(7,'foto2-rosa.png','img/produtos/',4,'N'),(8,'foto2-rosa.png','img/produtos/',4,'N'),(17,'foto3-rosa.png','img/produtos/',8,'S'),(18,'foto2-azul.png','img/produtos/',9,'N'),(19,'vestido.png','img/produtos/',3,'S'),(22,'vestido1.png','img/produtos/',2,'S'),(23,'destaque-home-3.png','img/produtos/',5,'S'),(24,'foto1-branco.png','img/produtos/',10,'S'),(25,'saiaCutt.png','img/produtos/',12,'S'),(26,'saiaCutt1.png','img/produtos/',12,'N'),(27,'saiaCutt2.png','img/produtos/',12,'N'),(28,'saiaCut11.png','img/produtos/',11,'S'),(29,'saiaCut12.png','img/produtos/',11,'N');

UNLOCK TABLES;

/*Table structure for table `itempedido` */

DROP TABLE IF EXISTS `itempedido`;

CREATE TABLE `itempedido` (
  `Pedidos_id` int(11) NOT NULL,
  `Produtos_id` int(11) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `quatidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`Pedidos_id`,`Produtos_id`),
  KEY `fk_Pedidos_has_Produtos_Produtos1_idx` (`Produtos_id`),
  KEY `fk_Pedidos_has_Produtos_Pedidos1_idx` (`Pedidos_id`),
  CONSTRAINT `fk_Pedidos_has_Produtos_Pedidos1` FOREIGN KEY (`Pedidos_id`) REFERENCES `pedidos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedidos_has_Produtos_Produtos1` FOREIGN KEY (`Produtos_id`) REFERENCES `produtos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `itempedido` */

LOCK TABLES `itempedido` WRITE;

UNLOCK TABLES;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `Usuarios_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Login_Usuarios1_idx` (`Usuarios_id`),
  CONSTRAINT `fk_Login_Usuarios1` FOREIGN KEY (`Usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `login` */

LOCK TABLES `login` WRITE;

UNLOCK TABLES;

/*Table structure for table `marcas` */

DROP TABLE IF EXISTS `marcas`;

CREATE TABLE `marcas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT 'S',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `marcas` */

LOCK TABLES `marcas` WRITE;

insert  into `marcas`(`id`,`descricao`,`ativo`) values (1,'Armani','S'),(2,'Balmain','S'),(3,'Herrore','S'),(4,'Lewis','S'),(5,'Cut','S'),(6,'Long','S');

UNLOCK TABLES;

/*Table structure for table `pedidos` */

DROP TABLE IF EXISTS `pedidos`;

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_ini` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `validade` varchar(45) DEFAULT NULL,
  `valorTotal` decimal(12,2) DEFAULT NULL,
  `Usuarios_id` int(11) NOT NULL,
  `Status_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Pedidos_Usuarios1_idx` (`Usuarios_id`),
  KEY `fk_Pedidos_Status1_idx` (`Status_id`),
  CONSTRAINT `fk_Pedidos_Status1` FOREIGN KEY (`Status_id`) REFERENCES `status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pedidos_Usuarios1` FOREIGN KEY (`Usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pedidos` */

LOCK TABLES `pedidos` WRITE;

UNLOCK TABLES;

/*Table structure for table `produtos` */

DROP TABLE IF EXISTS `produtos`;

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` text,
  `tamanho` char(1) DEFAULT NULL,
  `preco` decimal(12,2) DEFAULT NULL,
  `Marcas_id` int(11) NOT NULL,
  `Categorias_id` int(11) NOT NULL,
  `Cores_id` int(11) NOT NULL,
  `SubCategorias_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Produtos_Marcas1_idx` (`Marcas_id`),
  KEY `fk_Produtos_Categorias1_idx` (`Categorias_id`),
  KEY `fk_Produtos_Cores1_idx` (`Cores_id`),
  KEY `fk_Produtos_SubCategorias1_idx` (`SubCategorias_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `produtos` */

LOCK TABLES `produtos` WRITE;

insert  into `produtos`(`id`,`nome`,`descricao`,`tamanho`,`preco`,`Marcas_id`,`Categorias_id`,`Cores_id`,`SubCategorias_id`) values (1,'Cardigan Swetter','Rosa 1','M','129.00',1,1,2,1),(2,'Vestido','Vestido social','U','159.00',2,4,1,10),(3,'Vestido','Vestido social','U','159.98',2,4,1,10),(4,'Fuzz Cardigan','Rosa 2','M','108.00',2,1,2,1),(5,'Cardigan Wagner','Novo modelo sem alça','U','150.00',3,1,2,1),(8,'Pink Talissa','Rosa 3','M','122.00',4,1,5,1),(9,'Swetter','Azul 2','M','109.98',2,1,5,1),(10,'Lagaxi Toom','Lagaxi Toom combinação perfeita','U','100.00',3,1,6,1),(11,'Saia Dambó','Saia Dambó Cut ','M','120.90',5,3,1,0),(12,'Saia Mon','Saia Mon Cut ','M','119.90',5,3,4,0);

UNLOCK TABLES;

/*Table structure for table `status` */

DROP TABLE IF EXISTS `status`;

CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT 'S',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `status` */

LOCK TABLES `status` WRITE;

UNLOCK TABLES;

/*Table structure for table `subcategorias` */

DROP TABLE IF EXISTS `subcategorias`;

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT 'S',
  `Categorias_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_SubCategorias_Categorias1_idx` (`Categorias_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `subcategorias` */

LOCK TABLES `subcategorias` WRITE;

insert  into `subcategorias`(`id`,`descricao`,`ativo`,`Categorias_id`) values (1,'Manga Curta','S',1),(2,'Manga Longa','S',1),(5,'Flare','S',2),(6,'Legging ','S',2),(7,'Anel','S',6),(8,'Colar','S',6),(9,'Relógio','S',6),(10,'Vestido','S',4);

UNLOCK TABLES;

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `login` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `usuarios` */

LOCK TABLES `usuarios` WRITE;

insert  into `usuarios`(`id`,`nome`,`email`,`cpf`,`sexo`,`telefone`,`login`,`senha`) values (1,'Cassiane','cassi.nodari@hotmail.com','04258702005','F',54,'cassinodari','1'),(4,'Douglas Franklin','douglasfkln@outlook.com','022.301.560-12',NULL,NULL,'','fe9fdc98b44b2a634fa8d0c20fca82a4'),(5,'Douglas','douglasfkln@gmail.com','02230156012',NULL,NULL,'','fe9fdc98b44b2a634fa8d0c20fca82a4');

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
