# ATIVIDADE 3

CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

#1- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

SELECT * FROM tb_categorias;

#2- Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    fabricante VARCHAR(100),
    valor DECIMAL(6,2),
    categoria_id BIGINT,
    PRIMARY KEY (id),
    #3- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
SELECT * FROM tb_produtos;

#4- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Remédios de uso geral e controlado'),
('Higiene', 'Produtos de higiene pessoal e limpeza'),
('Cosméticos', 'Produtos de beleza e cuidados com a pele'),
('Vitaminas', 'Suplementos vitamínicos e minerais'),
('Infantil', 'Produtos voltados para o público infantil');
SELECT * FROM tb_categorias;

#5- Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO tb_produtos (nome, descricao, fabricante, valor, categoria_id) VALUES
('Dipirona', 'Analgésico e antitérmico', 'Neo Química', 12.50, 1),
('Shampoo Anticaspa', 'Combate à caspa e oleosidade', 'Clear', 25.90, 2),
('Hidratante Facial', 'Para todos os tipos de pele', 'Nivea', 53.00, 3),
('Vitamina C', 'Fortalece o sistema imunológico', 'Sundown', 45.00, 4),
('Pomada para assaduras', 'Protege e trata assaduras', 'Bepantol', 27.00, 5),
('Protetor Solar FPS 50', 'Protege contra raios UVA/UVB', 'La Roche', 79.90, 3),
('Sabonete Líquido', 'Higiene corporal diária', 'Granado', 18.00, 2),
('Amoxicilina', 'Antibiótico de uso oral', 'EMS', 62.00, 1);
SELECT * FROM tb_produtos;

#6- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
SELECT * FROM tb_produtos WHERE valor > 50.00;

#7- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

#8- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
SELECT * FROM tb_produtos WHERE nome LIKE '%c%' OR nome LIKE '%C%';

#9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT tb_produtos.id, tb_produtos.nome,
    tb_produtos.descricao, tb_produtos.fabricante,
    tb_produtos.valor, tb_categorias.nome, tb_categorias.descricao
	FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

#10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).
SELECT tb_produtos.id, tb_produtos.nome,
    tb_produtos.descricao, tb_produtos.fabricante,
    tb_produtos.valor, tb_categorias.nome, tb_categorias.descricao
	FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id
    WHERE tb_categorias.nome = 'Cosméticos';