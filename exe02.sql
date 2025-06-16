# 1- Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

# 2- Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    marca VARCHAR(100),
    cor VARCHAR(50),
    tamanho INT,
    preco DECIMAL(7,2) NOT NULL,
    estoque INT,
    PRIMARY KEY (id)
);

SELECT * FROM tb_produtos;

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

SELECT * FROM tb_produtos;

# 4- Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
SELECT * FROM tb_produtos WHERE preco > 500;

# 5- Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
SELECT * FROM tb_produtos WHERE preco < 500;

# 5- Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_produtos SET cor = "Cinza Chumbo" WHERE id = 5;

SELECT * FROM tb_produtos;


