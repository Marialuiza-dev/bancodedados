CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100)
);

CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    descricao VARCHAR(100),
    valor DECIMAL(6,2) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Tradicional', 'Sabores tradicionais'),
('Especial', 'Sabores exclusivos da casa'),
('Vegetariana', 'Sem carne, só vegetais'),
('Doce', 'Pizzas de sobremesa'),
('Premium', 'Ingredientes nobres');

INSERT INTO tb_pizzas (nome, descricao, valor, id_categoria) VALUES
('Mussarela', 'Queijo e molho', 40.00, 1),
('Calabresa', 'Calabresa com cebola', 45.00, 1),
('Quatro Queijos', 'Mistura de queijos', 55.00, 2),
('Vegetariana', 'Legumes grelhados', 50.00, 3),
('Brigadeiro', 'Chocolate com granulado', 60.00, 4),
('Romeu e Julieta', 'Goiabada e queijo', 48.00, 4),
('Frango com Catupiry', 'Frango desfiado e Catupiry', 52.00, 2),
('Portuguesa', 'Presunto, ovos e ervilha', 58.00, 1);

SELECT * FROM tb_pizzas WHERE valor > 45.00;
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT tb_pizzas.nome AS Pizza, tb_categorias.nome AS Categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id;

SELECT tb_pizzas.nome AS Pizza, tb_categorias.nome AS Categoria
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id
WHERE tb_categorias.nome = 'Doce';
