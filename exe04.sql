CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);

CREATE TABLE tb_produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100),
    preco DECIMAL(6,2) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Aves', 'Carnes de frango e outras aves'),
('Bovinos', 'Carnes de boi'),
('Suínos', 'Carnes de porco'),
('Peixes', 'Produtos do mar'),
('Exóticos', 'Carnes diferenciadas');

INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES
('Frango', 'Corte de frango', 30.00, 1),
('Picanha', 'Carne nobre bovina', 120.00, 2),
('Costela', 'Costela bovina', 90.00, 2),
('Linguiça', 'Linguiça suína', 50.00, 3),
('Salmão', 'Filé de salmão', 140.00, 4),
('Tilápia', 'Filé de tilápia', 60.00, 4),
('Javali', 'Carne exótica', 200.00, 5),
('Coração de Frango', 'Espetinho de coração', 45.00, 1);

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.nome AS Produto, tb_categorias.nome AS Categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

SELECT tb_produtos.nome AS Produto, tb_categorias.nome AS Categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_categorias.nome = 'Aves';