-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Jun-2018 às 08:36
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
(30, 'saia (1).png', 'img/produtos', 14, 'S'),
(31, 'saia(4).png', 'img/produtos', 15, 'S'),
(32, 'saia-preta (1).png', 'img/produtos', 16, 'S'),
(33, 'saia-preta (2).png', 'img/produtos', 17, 'S'),
(34, 'saia-preta (3).png', 'img/produtos', 18, 'S'),
(35, 'saia-preta (4).png', 'img/produtos', 18, 'N'),
(36, 'vestido-preto (1).png', 'img/produtos', 19, 'S'),
(37, 'vestido-preto (2).png', 'img/produtos', 20, 'S'),
(38, 'vestido-preto (3).png', 'img/produtos', 21, 'S'),
(39, 'vestido-preto (4).png', 'img/produtos', 22, 'S'),
(40, 'vestido-verde.png', 'img/produtos', 23, 'S'),
(41, 'vestido-branco (1).png', 'img/produtos', 26, 'S'),
(42, 'vestido-branco (2).png', 'img/produtos', 27, 'S');

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
(14, 'Saia12', 'Saia Couriço Short', 'M', '85.90', 5, 3, 1, 0),
(15, 'Saia', 'Saia Couriço Short', 'M', '85.90', 5, 3, 1, 0),
(16, 'Saia', 'Saia Cut', 'M', '101.90', 5, 3, 1, 0),
(17, 'Saia', 'Saia Couriço', 'M', '109.90', 5, 3, 1, 0),
(18, 'Saia', 'Saia Longa', 'M', '80.00', 6, 3, 1, 0),
(19, 'Vestido', 'Vestido Curto Florido', 'M', '65.98', 1, 10, 1, 0),
(20, 'Vestido', 'Vestido Curto Couriço', 'M', '112.90', 1, 10, 1, 0),
(21, 'Vestido', 'Vestido Curto Social', 'M', '145.99', 1, 10, 1, 0),
(22, 'Vestido', 'Vestido Longo Social', 'M', '189.90', 1, 10, 1, 0),
(23, 'Vestido', 'Vestido Curto Social', 'M', '98.90', 2, 10, 3, 0),
(24, 'Vestido', 'Vestido Longo Social', 'M', '135.78', 2, 10, 4, 0),
(25, 'Vestido', 'Vestido Longo', 'G', '115.49', 2, 10, 4, 0),
(26, 'Vestido', 'Vestido Longo Social', 'G', '225.49', 2, 10, 6, 0),
(27, 'Vestido', 'Vestido Curto Party', 'P', '125.49', 2, 10, 6, 0),
(28, 'Manga longa', 'Blazer Pink', 'P', '147.78', 4, 1, 2, 2),
(29, 'Manga longa', 'Camisa Xadrez AllFashion', 'P', '65.98', 4, 1, 2, 2),
(30, 'Manga longa', 'Blazer AllFashion', 'P', '68.00', 4, 1, 2, 2),
(31, 'Manga longa', 'Blazer Rosa Bebe', 'P', '74.00', 4, 1, 2, 2),
(32, 'Manga longa', 'Camisa Manga Longa Rosa Bebe', 'P', '59.90', 4, 1, 2, 2),
(33, 'Manga longa', 'Casaco', 'M', '150.00', 4, 1, 2, 2),
(34, 'Manga longa', 'Blazer Gardigann', 'M', '71.00', 4, 1, 3, 2),
(35, 'Manga longa', 'Casaco de Lã Batida Xanron', 'M', '189.98', 4, 1, 1, 2),
(36, 'Manga longa', 'Casaco', 'M', '159.98', 3, 1, 1, 2),
(37, 'Manga longa', 'Chochê delicado', 'M', '159.98', 3, 1, 5, 2),
(38, 'Manga longa', 'Blusinha AllFashion', 'M', '65.90', 3, 1, 5, 2),
(39, 'Manga longa', 'Casaco de La Batida AllFashion ', 'M', '65.90', 3, 1, 5, 2),
(40, 'Manga longa', 'Blazer Cheguei', 'M', '115.90', 2, 1, 5, 2),
(41, 'Manga longa', 'Blazer AllFashion', 'P', '70.90', 2, 1, 5, 2),
(42, 'Manga longa', 'Blazer Jeans', 'M', '125.90', 4, 1, 5, 2),
(43, 'Manga longa', 'Blusinha de Bolinha Forbi', 'P', '98.00', 4, 1, 1, 2),
(44, 'Manga Curta', 'Academia', 'P', '59.90', 1, 1, 4, 1),
(45, 'Manga Curta', 'Academia', 'P', '75.00', 1, 1, 4, 1),
(46, 'Manga Curta', 'Academia', 'P', '62.90', 1, 1, 4, 1),
(47, 'Manga Curta', 'Camisa de Algodão', 'P', '54.90', 1, 1, 4, 1),
(48, 'Manga Curta', 'Casual', 'P', '62.98', 1, 1, 3, 1),
(49, 'Manga Curta', 'Academia', 'P', '59.90', 1, 1, 3, 1),
(50, 'Manga Curta', 'Camisa de Seda', 'P', '62.90', 1, 1, 3, 1),
(51, 'Manga Curta', 'Sem Alça Casual', 'M', '120.00', 4, 1, 2, 1),
(52, 'Manga Curta', 'AllFashion', 'P', '89.00', 4, 1, 2, 1),
(53, 'Manga Curta', 'Camisa Social AllFashion', 'P', '62.90', 4, 1, 2, 1),
(54, 'Manga Curta', 'Camisa de Seda', 'P', '78.90', 4, 1, 2, 1),
(55, 'Manga Curta', 'Florida', 'P', '62.90', 4, 1, 2, 1);

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
(1, 'Cassiane', 'cassi.nodari@hotmail.com', '04258702005', 'F', 54, 'cassinodari', '1'),
(2, 'Cassiane Nodari1', 'cassiane@agro1.inf.br', '1234567890', NULL, NULL, '', '698dc19d48');

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
  MODIFY ` id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
