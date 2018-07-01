insert into produtos (nome, descricao, tamanho, tipo_tamanho, preco, Marcas_id, Categorias_id, Cores_id, SubCategorias_id)
values
('Calça Jeans', 'Calça Jeans de ótimo tecido e de cano curto e alta durabilidade', 'P', 1, 129.98, 1, 2, 4, NULL),
('Calça Cano Curto', 'Calça Cano Curto allfashion de alta durabilidade', 'P', 1, 159.99, 1, 2, 4, NULL);



INSERT INTO `imagens`(`nome`, `caminho`, `Produtos_id`, `principal`)
VALUES
('Calca4.1.jpg','img/produtos/',71,'N'),
('Calca4.3.jpg','img/produtos/',71,'S'),
('Calca4.png','img/produtos/',71,'N');
