# ATIVIDADE 6

CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

#1- Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);
SELECT * FROM tb_categorias;

#2- Crie a tabela tb_cursos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    carga_horaria INT,
    plataforma VARCHAR(100),
    valor DECIMAL(8,2),
    categoria_id BIGINT,
    PRIMARY KEY (id),
    
    #3- Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_cursos.
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);
SELECT * FROM tb_cursos;

#4- Insira 5 registros na tabela tb_categorias.
INSERT INTO tb_categorias (nome, descricao) VALUES
('Programação', 'Cursos de linguagens de programação'),
('Design', 'Cursos voltados à área de design gráfico e UI/UX'),
('Marketing', 'Cursos de marketing digital e vendas'),
('Negócios', 'Gestão, liderança e empreendedorismo'),
('Tecnologia', 'Assuntos diversos em tecnologia e inovação');
SELECT * FROM tb_categorias;

#5- Insira 8 registros na tabela tb_cursos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
INSERT INTO tb_cursos (nome, carga_horaria, plataforma, valor, categoria_id) VALUES
('Java Completo', 40, 'Udemy', 650.00, 1),
('HTML e CSS', 20, 'Alura', 300.00, 1),
('Design para Iniciantes', 30, 'Coursera', 700.00, 2),
('UX Avançado', 35, 'Alura', 820.00, 2),
('Funil de Vendas', 25, 'Hotmart', 590.00, 3),
('Marketing no Instagram', 15, 'Eduzz', 520.00, 3),
('Gestão Estratégica', 50, 'Udemy', 950.00, 4),
('Inteligência Artificial', 60, 'Rocketseat', 1200.00, 5);
SELECT * FROM tb_cursos;

#6- Faça um SELECT que retorne todes os cursos cujo valor seja maior do que R$ 500,00.
SELECT * FROM tb_cursos WHERE valor > 500.00;

#7- Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo R$ 600,00 e R$ 1000,00.
SELECT * FROM tb_cursos WHERE valor BETWEEN 600.00 AND 1000.00;

#8- Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que possuam a letra J no atributo nome.
SELECT * FROM tb_cursos WHERE nome LIKE '%j%' OR nome LIKE '%J%';

#9- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.
SELECT tb_cursos.id, tb_cursos.nome,
    tb_cursos.carga_horaria, tb_cursos.plataforma,
    tb_cursos.valor, tb_categorias.nome, tb_categorias.descricao
	FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id;

#10- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os cursos que pertencem a categoria Java).
SELECT tb_cursos.id, tb_cursos.nome,
    tb_cursos.carga_horaria, tb_cursos.plataforma,
    tb_cursos.valor, tb_categorias.nome, tb_categorias.descricao
	FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id = tb_categorias.id
	WHERE tb_categorias.nome = 'Programação';