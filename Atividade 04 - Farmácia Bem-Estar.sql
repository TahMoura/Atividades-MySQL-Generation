-- Criação do Banco de Dados
CREATE DATABASE IF NOT EXISTS db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

-- Criação da Tabela tb_categorias
CREATE TABLE IF NOT EXISTS tb_categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);

-- Inserção de Dados na Tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES
    ('Medicamentos', 'Produtos para tratamentos'),
    ('Higiene', 'Produtos para higiene pessoal'),
    ('Cosméticos', 'Produtos de beleza'),
    ('Cuidados Pessoais', 'Produtos para cuidados pessoais'),
    ('Vitaminas e Suplementos', 'Suplementos e vitaminas nutricionais');

-- Criação da Tabela tb_produtos
CREATE TABLE IF NOT EXISTS tb_produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(8, 2) NOT NULL,
    estoque INT NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

-- Inserção de Dados na Tabela tb_produtos
INSERT INTO tb_produtos (nome, preco, estoque, id_categoria) VALUES
    ('Dexcloferinamina 100ml', 12.50, 100, 1),
    ('Sabonete Líquido Corporal', 11.90, 50, 2),
    ('Protetor Solar Facial', 72.99, 20, 3),
    ('Shampoo', 22.00, 30, 2),
    ('Vitamina C', 45.00, 40, 5),
    ('Escova de Cabelo', 20.00, 15, 4),
    ('Hidratante Corporal', 70.00, 60, 3),
    ('Hidratante LAbial', 15.50, 25, 3);

-- Produtos cujo valor seja maior que R$ 50,00
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- Produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- Produtos que possuam a letra C no atributo nome
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- INNER JOIN entre tb_produtos e tb_categorias
SELECT tb_produtos.*, tb_categorias.nome AS categoria_nome
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

-- INNER JOIN com filtro por categoria específica (Cosméticos)
SELECT tb_produtos.*, tb_categorias.nome AS categoria_nome
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_categorias.nome = 'Cosméticos';
