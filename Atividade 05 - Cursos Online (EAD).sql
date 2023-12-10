-- Criação do Banco de Dados
CREATE DATABASE IF NOT EXISTS db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

-- Criação da Tabela tb_categorias
CREATE TABLE IF NOT EXISTS tb_categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);

-- Inserção de Dados na Tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
    ('Programação', 'Curso de Desenvolvimento de Software'),
    ('Artes', 'Cursos relacionados a Artes Visuais'),
    ('Desenvolvimento Pessoal', 'Cursos de Desenvolvimento de Soft Skills'),
    ('Idiomas', 'Cursos de Idiomas e Líguistica'),
    ('Inteligência Artificial', 'Cursos sobre Inteligência Artificial');

-- Criação da Tabela tb_cursos
CREATE TABLE IF NOT EXISTS tb_cursos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(8, 2) NOT NULL,
    duracao INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

-- Inserção de Dados na Tabela tb_cursos
INSERT INTO tb_cursos (nome, preco, duracao, id_categoria) VALUES
    ('Curso de Desenvolvimento Java Full-Stack', 699.99, 20, 1),
    ('Curso de Desenho Realista', 500.00, 35, 2),
    ('Comunicação', 199.99, 48, 3),
    ('Inglês Avançado', 899.99, 81, 4),
    ('Chat GPT para Iniciantes', 399.99, 92, 5),
    ('Curso de Desenvolvimento Front-End', 1000.00, 38, 1),
    ('Curso de Teatro', 1500.00, 25, 2),
    ('Trabalho em Equipe', 200.00, 35, 3);

-- Cursos cujo valor seja maior que R$ 500,00
SELECT * FROM tb_cursos WHERE preco > 500.00;

-- Cursos cujo valor esteja no intervalo R$ 600,00 e R$ 1000,00
SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

-- Cursos que possuam a letra J no atributo nome
SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

-- INNER JOIN entre tb_cursos e tb_categorias
SELECT tb_cursos.*, tb_categorias.nome AS categoria_nome
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id;

-- INNER JOIN com filtro por categoria específica (Java)
SELECT tb_cursos.*, tb_categorias.nome AS categoria_nome
FROM tb_cursos
INNER JOIN tb_categorias ON tb_cursos.id_categoria = tb_categorias.id
WHERE tb_categorias.nome = 'Programação';
