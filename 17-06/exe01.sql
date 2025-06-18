# Atividade 1

CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

# 1- Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online.
CREATE TABLE tb_classes (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
	PRIMARY KEY (id)
);

SELECT * FROM tb_classes;

# 2- Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online.
CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT,
    poder_defesa INT,
    nivel INT,
    classe_id BIGINT,
    PRIMARY KEY (id),
    -- # 3- Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);
SELECT * FROM tb_personagens;

-- 4 - Insira 5 registros na tabela tb_classes.
INSERT INTO tb_classes (nome, descricao) VALUES
('Hoplita', 'Unidade de infantaria pesada com forte defesa'),
('Espadachim', 'Unidade leve com bom custo-benefício para defesa'),
('Atirador de Precisão', 'Unidade de ataque à distância com alto dano'),
('Balonista', 'Unidade de cerco aérea com grande poder ofensivo'),
('Cozinheiro', 'Unidade de suporte que restaura resistência das tropas');

SELECT * FROM tb_classes;

#- 5- Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id) VALUES
('Ares', 2400, 2600, 12, 1),
('Hércules', 2200, 2300, 11, 1),
('Hermes', 1800, 1700, 9, 2),
('Perseu', 1900, 1600, 8, 2),
('Apolo', 2700, 1200, 12, 3),
('Artemis', 2600, 1100, 11, 3),
('Hefesto', 3300, 900, 13, 4),
('Asclépio', 500, 1000, 7, 5);

SELECT * FROM tb_personagens;

# 6- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

# 7- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

# 8- Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

# 9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
SELECT tb_personagens.id, tb_personagens.nome, 
	tb_personagens.poder_ataque, tb_personagens.poder_defesa, 
    tb_personagens.nivel, tb_classes.nome, tb_classes.descricao
	FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;
    
# 10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
SELECT tb_personagens.id, tb_personagens.nome,
    tb_personagens.poder_ataque, tb_personagens.poder_defesa,
    tb_personagens.nivel, tb_classes.nome, tb_classes.descricao
	FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
	WHERE tb_classes.nome = 'Atirador de Precisão';












