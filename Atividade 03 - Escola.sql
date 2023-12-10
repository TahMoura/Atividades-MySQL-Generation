-- Criação do Banco de Dados
CREATE DATABASE IF NOT EXISTS escola_database;
USE escola_database;

-- Criação da Tabela de Estudantes
CREATE TABLE IF NOT EXISTS estudantes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT,
    nota FLOAT,
    serie VARCHAR(20)
);

-- Inserção de Dados na Tabela
INSERT INTO estudantes (nome, idade, nota, serie) VALUES
    ('Talia Moura', 17, 8.5, '9° ano'),
    ('Thiago Cavalcante', 17, 8.0, '9º ano'),
    ('Rafael Macedo', 13, 6.2, '6º ano'),
    ('Leticia Barreto', 16, 4.8, '8º ano'),
    ('Paloma Miranda', 17, 5.9, '9º ano'),
    ('Patricia Moura', 15, 8.0, '9º ano'),
    ('Luna Cavalcante', 10, 10.0, '5º ano'),
    ('Pedro Rocha', 14, 9.7, '8º ano');

-- Estudantes com Nota Maior que 7.0
SELECT * FROM estudantes WHERE nota > 7.0;

-- Estudantes com Nota Menor que 7.0
SELECT * FROM estudantes WHERE nota < 7.0;

-- Atualização de um Registro na Tabela (umento da Nota de Patricia Moura)
UPDATE estudantes SET nota = 9.0 WHERE nome = 'Patricia Moura' AND id = 6;

