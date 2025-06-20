CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

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
('Hidráulica', 'Materiais para encanamento'),
('Elétrica', 'Materiais elétricos'),
('Pisos', 'Revestimentos'),
('Tintas', 'Produtos para pintura'),
('Ferramentas', 'Ferramentas em geral');

INSERT INTO tb_produtos (nome, descricao, preco, id_categoria) VALUES
('Canos PVC', 'Tubo de água', 30.00, 1),
('Fio Elétrico', 'Fio 10mm', 80.00, 2),
('Porcelanato', 'Revestimento de piso', 150.00, 3),
('Tinta Acrílica', '18 litros', 120.00, 4),
('Parafusadeira', 'Ferramenta elétrica', 300.00, 5),
('Interruptor', 'Interruptor simples', 25.00, 2),
('Massa Corrida', 'Para acabamento de parede', 70.00, 4),
('Chave de Fenda', 'Ferramenta manual', 40.00, 5);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT tb_produtos.nome AS Produto, tb_categorias.nome AS Categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

SELECT tb_produtos.nome AS Produto, tb_categorias.nome AS Categoria
FROM tb_produtos
INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id
WHERE tb_categorias.nome = 'Hidráulica';