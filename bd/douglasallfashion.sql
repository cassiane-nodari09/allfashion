-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 03-Jun-2018 às 02:27
-- Versão do servidor: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `allfashion`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `descricao`, `ativo`) VALUES
(1, 'Blusas e Camisas', 'S'),
(2, 'Calças', 'S'),
(3, 'Saias', 'S'),
(4, 'Vestidos', 'S'),
(5, 'Bolsas', 'S'),
(6, 'Acessórios', 'S');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidades`
--

CREATE TABLE `cidades` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `Estados_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cores`
--

CREATE TABLE `cores` (
  `id` int(11) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT 'S',
  `cor` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cores`
--

INSERT INTO `cores` (`id`, `descricao`, `ativo`, `cor`) VALUES
(1, 'Preto', 'S', 'preto'),
(2, 'Rosa', 'S', 'rosa'),
(3, 'Verde', 'S', 'verde'),
(4, 'Azul', 'S', 'azul'),
(6, 'Branco', 'S', 'branco');

-- --------------------------------------------------------

--
-- Estrutura da tabela `enderecos`
--

CREATE TABLE `enderecos` (
  `id` int(11) NOT NULL,
  `rua` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `Cidades_id` int(11) NOT NULL,
  `Usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `estados`
--

CREATE TABLE `estados` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `faturas`
--

CREATE TABLE `faturas` (
  `id` int(11) NOT NULL,
  `valor` decimal(12,2) DEFAULT NULL,
  `parcela` int(11) DEFAULT NULL,
  `Status_id` int(11) NOT NULL,
  `Pedidos_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens`
--

CREATE TABLE `imagens` (
  ` id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `caminho` varchar(100) DEFAULT NULL,
  `Produtos_id` int(11) NOT NULL,
  `principal` char(1) DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `imagens`
--

INSERT INTO `imagens` (` id`, `nome`, `caminho`, `Produtos_id`, `principal`) VALUES
(1, 'foto1-rosa.png', 'img/produtos/', 1, 'S'),
(2, 'foto2-rosa.png', 'img/produtos/', 4, 'S'),
(3, 'foto1-rosa.png', 'img/produtos/', 4, 'N'),
(4, 'foto2-rosa.png', 'img/produtos/', 4, 'N'),
(5, 'foto2-rosa.png', 'img/produtos/', 4, 'N'),
(6, 'foto2-rosa.png', 'img/produtos/', 4, 'N'),
(7, 'foto2-rosa.png', 'img/produtos/', 4, 'N'),
(8, 'foto2-rosa.png', 'img/produtos/', 4, 'N'),
(17, 'foto3-rosa.png', 'img/produtos/', 8, 'S'),
(18, 'foto2-azul.png', 'img/produtos/', 9, 'N'),
(19, 'vestido.png', 'img/produtos/', 3, 'S'),
(22, 'vestido1.png', 'img/produtos/', 2, 'S'),
(23, 'destaque-home-3.png', 'img/produtos/', 5, 'S'),
(24, 'foto1-branco.png', 'img/produtos/', 10, 'S'),
(25, 'saiaCutt.png', 'img/produtos/', 12, 'S'),
(26, 'saiaCutt1.png', 'img/produtos/', 12, 'N'),
(27, 'saiaCutt2.png', 'img/produtos/', 12, 'N'),
(28, 'saiaCut11.png', 'img/produtos/', 11, 'S'),
(29, 'saiaCut12.png', 'img/produtos/', 11, 'N');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itempedido`
--

CREATE TABLE `itempedido` (
  `Pedidos_id` int(11) NOT NULL,
  `Produtos_id` int(11) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `quatidade` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `Usuarios_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `marcas`
--

CREATE TABLE `marcas` (
  `id` int(11) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `marcas`
--

INSERT INTO `marcas` (`id`, `descricao`, `ativo`) VALUES
(1, 'Armani', 'S'),
(2, 'Balmain', 'S'),
(3, 'Herrore', 'S'),
(4, 'Lewis', 'S'),
(5, 'Cut', 'S'),
(6, 'Long', 'S');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `data_ini` date DEFAULT NULL,
  `data_fim` date DEFAULT NULL,
  `validade` varchar(45) DEFAULT NULL,
  `valorTotal` decimal(12,2) DEFAULT NULL,
  `Usuarios_id` int(11) NOT NULL,
  `Status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `descricao` text,
  `tamanho` char(1) DEFAULT NULL,
  `preco` decimal(12,2) DEFAULT NULL,
  `Marcas_id` int(11) NOT NULL,
  `Categorias_id` int(11) NOT NULL,
  `Cores_id` int(11) NOT NULL,
  `SubCategorias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `tamanho`, `preco`, `Marcas_id`, `Categorias_id`, `Cores_id`, `SubCategorias_id`) VALUES
(1, 'Cardigan Swetter', 'Rosa 1', 'M', '129.00', 1, 1, 2, 1),
(2, 'Vestido', 'Vestido social', 'U', '159.00', 2, 4, 1, 10),
(3, 'Vestido', 'Vestido social', 'U', '159.98', 2, 4, 1, 10),
(4, 'Fuzz Cardigan', 'Rosa 2', 'M', '108.00', 2, 1, 2, 1),
(5, 'Cardigan Wagner', 'Novo modelo sem alça', 'U', '150.00', 3, 1, 2, 1),
(8, 'Pink Talissa', 'Rosa 3', 'M', '122.00', 4, 1, 5, 1),
(9, 'Swetter', 'Azul 2', 'M', '109.98', 2, 1, 5, 1),
(10, 'Lagaxi Toom', 'Lagaxi Toom combinação perfeita', 'U', '100.00', 3, 1, 6, 1),
(11, 'Saia Dambó', 'Saia Dambó Cut ', 'M', '120.90', 5, 3, 1, 0),
(12, 'Saia Mon', 'Saia Mon Cut ', 'M', '119.90', 5, 3, 4, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT 'S'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `descricao` varchar(45) DEFAULT NULL,
  `ativo` char(1) DEFAULT 'S',
  `Categorias_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `descricao`, `ativo`, `Categorias_id`) VALUES
(1, 'Manga Curta', 'S', 1),
(2, 'Manga Longa', 'S', 1),
(5, 'Flare', 'S', 2),
(6, 'Legging ', 'S', 2),
(7, 'Anel', 'S', 6),
(8, 'Colar', 'S', 6),
(9, 'Relógio', 'S', 6),
(10, 'Vestido', 'S', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cpf` varchar(45) DEFAULT NULL,
  `sexo` char(1) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `login` varchar(255) NOT NULL,
  `senha` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `cpf`, `sexo`, `telefone`, `login`, `senha`) VALUES
(1, 'Cassiane', 'cassi.nodari@hotmail.com', '04258702005', 'F', 54, 'cassinodari', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Cidades_Estados_idx` (`Estados_id`);

--
-- Indexes for table `cores`
--
ALTER TABLE `cores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enderecos`
--
ALTER TABLE `enderecos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Enderecos_Cidades1_idx` (`Cidades_id`),
  ADD KEY `fk_Enderecos_Usuarios1_idx` (`Usuarios_id`);

--
-- Indexes for table `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faturas`
--
ALTER TABLE `faturas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Faturas_Status1_idx` (`Status_id`),
  ADD KEY `fk_Faturas_Pedidos1_idx` (`Pedidos_id`);

--
-- Indexes for table `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (` id`),
  ADD KEY `fk_Imagens_Produtos1_idx` (`Produtos_id`);

--
-- Indexes for table `itempedido`
--
ALTER TABLE `itempedido`
  ADD PRIMARY KEY (`Pedidos_id`,`Produtos_id`),
  ADD KEY `fk_Pedidos_has_Produtos_Produtos1_idx` (`Produtos_id`),
  ADD KEY `fk_Pedidos_has_Produtos_Pedidos1_idx` (`Pedidos_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Login_Usuarios1_idx` (`Usuarios_id`);

--
-- Indexes for table `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Pedidos_Usuarios1_idx` (`Usuarios_id`),
  ADD KEY `fk_Pedidos_Status1_idx` (`Status_id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Produtos_Marcas1_idx` (`Marcas_id`),
  ADD KEY `fk_Produtos_Categorias1_idx` (`Categorias_id`),
  ADD KEY `fk_Produtos_Cores1_idx` (`Cores_id`),
  ADD KEY `fk_Produtos_SubCategorias1_idx` (`SubCategorias_id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_SubCategorias_Categorias1_idx` (`Categorias_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cores`
--
ALTER TABLE `cores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `enderecos`
--
ALTER TABLE `enderecos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `estados`
--
ALTER TABLE `estados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faturas`
--
ALTER TABLE `faturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imagens`
--
ALTER TABLE `imagens`
  MODIFY ` id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cidades`
--
ALTER TABLE `cidades`
  ADD CONSTRAINT `fk_Cidades_Estados` FOREIGN KEY (`Estados_id`) REFERENCES `estados` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `enderecos`
--
ALTER TABLE `enderecos`
  ADD CONSTRAINT `fk_Enderecos_Cidades1` FOREIGN KEY (`Cidades_id`) REFERENCES `cidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Enderecos_Usuarios1` FOREIGN KEY (`Usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `faturas`
--
ALTER TABLE `faturas`
  ADD CONSTRAINT `fk_Faturas_Pedidos1` FOREIGN KEY (`Pedidos_id`) REFERENCES `pedidos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Faturas_Status1` FOREIGN KEY (`Status_id`) REFERENCES `status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `imagens`
--
ALTER TABLE `imagens`
  ADD CONSTRAINT `fk_Imagens_Produtos1` FOREIGN KEY (`Produtos_id`) REFERENCES `produtos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `itempedido`
--
ALTER TABLE `itempedido`
  ADD CONSTRAINT `fk_Pedidos_has_Produtos_Pedidos1` FOREIGN KEY (`Pedidos_id`) REFERENCES `pedidos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pedidos_has_Produtos_Produtos1` FOREIGN KEY (`Produtos_id`) REFERENCES `produtos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `fk_Login_Usuarios1` FOREIGN KEY (`Usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_Pedidos_Status1` FOREIGN KEY (`Status_id`) REFERENCES `status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Pedidos_Usuarios1` FOREIGN KEY (`Usuarios_id`) REFERENCES `usuarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
