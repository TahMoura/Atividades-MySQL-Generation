-- Criação do Banco de Dados
CREATE DATABASE rh_database;
USE rh_database;

-- Tabela de Colaboradores
CREATE TABLE colaboradores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(6, 2),
    data_contratacao DATE
);

-- Dados na Tabela
INSERT INTO colaboradores (nome, cargo, salario, data_contratacao) VALUES
    ('Talia Moura', 'Desenvolvedor', 2500.00, '2022-04-24'),
    ('Thiago Cavalcante', 'Analista de RH', 1800.00, '2022-11-21'),
    ('Patricia Moura', 'Gerente de Vendas', 2000.00, '2023-07-23'),
    ('Robert Marley', 'Analista Financeiro', 1900.00, '2022-02-06'),
    ('Joao Barreto', 'Designer', 2200.00, '2020-06-24');

-- Colaboradores com Salário Maior que 2000
SELECT * FROM colaboradores WHERE salario > 2000;

-- Colaboradores com Salário Menor que 2000
SELECT * FROM colaboradores WHERE salario < 2000;

-- Atualização de um Registro na Tabela (Aumento de Salário para João Barreto)
UPDATE colaboradores SET salario = 2800.00 WHERE nome = 'Joao Barreto';
