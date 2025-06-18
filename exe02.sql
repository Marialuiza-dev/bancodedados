-- Apagar o banco de dados se já existir
DROP DATABASE IF EXISTS ecommerce;

-- Criar o banco de dados
CREATE DATABASE ecommerce;
USE ecommerce;

-- Criar a tabela produtos
CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao VARCHAR(255),
    preco DECIMAL(10,2),
    estoque INT,
    categoria VARCHAR(50)
);

-- Inserir os produtos
INSERT INTO produtos (nome, descricao, preco, estoque, categoria) VALUES
('Notebook', 'Notebook com 16GB RAM', 3500.00, 10, 'Informática'),
('Mouse', 'Mouse sem fio', 120.00, 50, 'Periféricos'),
('Teclado', 'Teclado mecânico', 600.00, 30, 'Periféricos'),
('Monitor', 'Monitor 24 polegadas', 900.00, 20, 'Informática'),
('Cadeira Gamer', 'Cadeira confortável', 1500.00, 5, 'Móveis'),
('Pen Drive', 'Pen Drive 64GB', 80.00, 100, 'Armazenamento'),
('HD Externo', '1TB de armazenamento', 400.00, 15, 'Armazenamento'),
('Smartphone', 'Smartphone 128GB', 2500.00, 8, 'Celulares');

-- Selecionar produtos com preço acima de 500
SELECT * FROM produtos WHERE preco > 500;

-- Selecionar produtos com preço abaixo de 500
SELECT * FROM produtos WHERE preco < 500;

-- Atualizar o preço do Teclado para 550.00
SELECT id, nome FROM produtos WHERE nome = 'Teclado';

-- Consultar novamente o Teclado para conferir a atualização
SELECT * FROM produtos WHERE nome = 'Teclado';