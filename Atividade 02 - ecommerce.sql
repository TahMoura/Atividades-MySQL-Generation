-- Criação do Banco de Dados
CREATE DATABASE IF NOT EXISTS ecommerce_database;
USE ecommerce_database;

-- Criação da Tabela de Produtos
CREATE TABLE IF NOT EXISTS produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao VARCHAR(255),
    preco DECIMAL(6, 2),
    estoque INT,
    categoria VARCHAR(50)
);

-- Inserção de Dados na Tabela
INSERT INTO produtos (nome, descricao, preco, estoque, categoria) VALUES
    ('Notebook Acer Aspire', 'Tela de 15 polegadas, Processador AMD Ryzen 5, 8GB de RAM 512GB de SSD', 4000.00, 30, 'Informática'),
    ('Notebook Lenovo Ideapad', 'Processador Intel i5, 12GB de RAM, SSD 512GB', 3500.00, 20, 'Informática'),
    ('Aparelho de Som LG XBoom', '3 Caixas de Som com LED, Áudio Hi-Fi', 2500.00, 15, 'Eletrônicos'),
    ('Monitor Gamer ', '24 polegadas, Full HD', 1000.00, 10, 'Informática'),
    ('Geladeira Electrolux', '2 Portas, Frost-Free', 2000.00, 20, 'Eletrodomésticos'),
    ('Hogwarts Legacy', 'Edição Deluxe, Mídia Física', 300.00, 100, 'Games'),
    ('Cafeteira Dolce Gusto', 'Café expresso, cappuccino, chás, chocolates e latte', 450.00, 10, 'Eletrodomésticos'),
    ('Caixa de Cápsulas Dolce Gusto', 'Caixa com 100 Cápsulas Sortidas', 200.00, 5, 'Alimentos e Bebidas');

-- Produtos com Valor Maior que 500
SELECT * FROM produtos WHERE preco > 500;

-- Produtos com Valor Menor que 500
SELECT * FROM produtos WHERE preco < 500;

-- Atualização de um Registro na Tabela (Redução do Preço da Cafeteira Dolce Gusto)
UPDATE produtos SET preco = 350.00 WHERE nome = 'Cafeteira Dolce Gusto' LIMIT 1;

