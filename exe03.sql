# 1- Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
CREATE DATABASE db_escola;
USE db_escola;

# 2- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    idade INT,
    turma VARCHAR(50),
    nota_final DECIMAL(4,2),
    resultado VARCHAR(50),
    PRIMARY KEY (id)
);

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes (nome, idade, turma, nota_final, resultado)
VALUES 
('Ana Carolina', 15, '1A', 8.5, 'Aprovado'),
('Bruno Silva', 16, '1A', 6.0, 'Em Recuperação'),
('Camila Rocha', 14, '1B', 9.2, 'Aprovado'),
('Daniel Santos', 15, '1B', 5.8, 'Reprovado'),
('Eduarda Almeida', 16, '1C', 7.1, 'Aprovado'),
('Felipe Costa', 15, '1C', 4.5, 'Reprovado'),
('Gabriela Souza', 14, '1A', 7.9, 'Aprovado'),
('Henrique Oliveira', 16, '1B', 6.5, 'Em Recuperação');

SELECT * FROM tb_estudantes;

# 3- Insira nesta tabela no mínimo 8 dados (registros).
INSERT INTO tb_produtos (nome, marca, cor, tamanho, preco, estoque)
VALUES 
('Tênis Air Max 90', 'Nike', 'Branco/Vermelho', 42, 899.99, 100),
('Tênis Ultraboost', 'Adidas', 'Preto', 41, 1199.90, 800),
('Tênis Olympikus Corre1', 'Olympikus', 'Azul', 43, 399.00, 1500),
('Tênis Vans Old Skool', 'Vans', 'Preto/Branco', 40, 479.90, 120),
('Tênis Asics Gel-Nimbus', 'Asics', 'Cinza', 42, 749.99, 700),
('Tênis Fila Racer', 'Fila', 'Branco', 39, 299.99, 200),
('Tênis Mizuno Wave Prophecy', 'Mizuno', 'Preto/Dourado', 44, 999.90, 500),
('Tênis Converse All Star', 'Converse', 'Branco', 38, 199.90, 300);

SELECT * FROM tb_estudantes;

# 4- Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
SELECT * FROM tb_estudantes WHERE nota_final > 7.0;

# 5- Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
SELECT * FROM tb_estudantes WHERE nota_final < 7.0;

# 5- Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_estudantes SET nota_final = 10 WHERE id = 8;

SELECT * FROM tb_estudantes;


