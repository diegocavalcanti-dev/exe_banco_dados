# 1- Crie um banco de dados para um serviço de RH de uma empresa
CREATE DATABASE db_empresa;
USE db_empresa;

# 2- Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
CREATE TABLE tb_funcionarios (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
	idade INT,
    cargo VARCHAR(255),
    setor VARCHAR(255),
    salario DECIMAL(6,2) NOT NULL,
    dataadmissao DATE,
    PRIMARY KEY (id)
);

SELECT * FROM tb_funcionarios;

# 3- Insira nesta tabela no mínimo 5 dados (registros).
INSERT INTO tb_funcionarios (nome, cargo, setor, salario, idade, dataadmissao)
VALUES 
('Diego Cavalcanti', 'Front-End Jr', 'TI', 3500.00, 30, '2025-02-15'),
('João Mendes', 'Auxiliar Administrativo', 'Administrativo', 1800.00, 35, '2022-08-01'),
('Lucas Ferreira', 'Back-End Jr', 'TI', 4200.00, 33, '2024-04-10'),
('Beatriz Lima', 'Auxiliar de Limpeza', 'Serviços Gerais', 1500.00, 42, '2020-10-05'),
('Marcos Silva', 'Gerente de Projetos', 'Projetos', 7500.00, 38, '2020-06-20');

SELECT * FROM tb_funcionarios;

# 4- Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
SELECT * FROM tb_funcionarios WHERE salario > 2000;

# 5 - Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
SELECT * FROM tb_funcionarios WHERE salario < 2000;

# 6- Ao término atualize um registro desta tabela através de uma query de atualização.
UPDATE tb_funcionarios SET salario = 3600.00 WHERE id = 1;

SELECT * FROM tb_funcionarios;


