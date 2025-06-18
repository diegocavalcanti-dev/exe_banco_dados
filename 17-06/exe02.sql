# Atividade 2

CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

# 1- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

SELECT * FROM tb_categorias;

# 2- Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT,
    produto VARCHAR(255) NOT NULL,
    ingredientes VARCHAR(255),
    tamanho VARCHAR(50),
    valor DECIMAL(6,2),
    categoria_id BIGINT,
    PRIMARY KEY (id),
    -- 3- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM tb_pizzas;

# 4- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias (nome, descricao) VALUES
('Tradicional', 'Sabores clássicos e mais vendidos'),
('Especiais', 'Ingredientes selecionados e combinações únicas'),
('Doce', 'Pizzas com sabores doces'),
('Vegetariana', 'Sem carne, rica em vegetais'),
('Premium', 'Ingredientes nobres e receitas exclusivas');

SELECT * FROM tb_categorias;

# 5. Inserir 8 registros na tabela tb_pizzas
INSERT INTO tb_pizzas (produto, ingredientes, tamanho, valor, categoria_id) VALUES
('Calabresa', 'Calabresa, cebola, queijo, orégano', 'Grande', 55.00, 1),
('Portuguesa', 'Presunto, ovo, cebola, azeitona, queijo', 'Grande', 60.00, 1),
('Brigadeiro', 'Chocolate, granulado, leite condensado', 'Média', 48.00, 3),
('4 Queijos', 'Mussarela, gorgonzola, parmesão, catupiry', 'Grande', 70.00, 2),
('Marguerita', 'Mussarela, tomate, manjericão', 'Média', 42.00, 4),
('Romeu e Julieta', 'Queijo e goiabada', 'Média', 50.00, 3),
('Trufada', 'Chocolate meio amargo, morango, chantilly', 'Grande', 65.00, 3),
('Picanha', 'Picanha, cebola caramelizada, catupiry', 'Grande', 85.00, 5);

SELECT * FROM tb_pizzas;

# 6- Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
SELECT * FROM tb_pizzas WHERE valor > 45.00;

# 7- Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

# 8- Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
SELECT * FROM tb_pizzas WHERE produto LIKE '%m%';

# 9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
SELECT tb_pizzas.id, tb_pizzas.produto,    
	tb_pizzas.ingredientes, tb_pizzas.tamanho,    
    tb_pizzas.valor, tb_categorias.nome, tb_categorias.descricao
	FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

# 10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
SELECT tb_pizzas.id, tb_pizzas.produto,    
	tb_pizzas.ingredientes, tb_pizzas.tamanho,    
    tb_pizzas.valor, tb_categorias.nome, tb_categorias.descricao
	FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id
	WHERE tb_categorias.nome = 'Doce';
