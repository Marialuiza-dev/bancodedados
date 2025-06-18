-- Criar o banco de dados (se já existir, comente a linha abaixo)
CREATE DATABASE rh_empresa;

-- Usar o banco de dados
USE rh_empresa;

-- Criar a tabela (se já existir, apague antes ou comente essa parte)
CREATE TABLE colaboradores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10,2),
    data_admissao DATE,
    departamento VARCHAR(50)
);

-- Inserir os registros
INSERT INTO colaboradores (nome, cargo, salario, data_admissao, departamento) VALUES
('Ana', 'Analista', 3000.00, '2022-01-10', 'Financeiro'),
('Carlos', 'Assistente', 1800.00, '2023-05-20', 'RH'),
('Mariana', 'Coordenadora', 4500.00, '2021-09-15', 'Vendas'),
('Pedro', 'Estagiário', 1200.00, '2024-02-01', 'TI'),
('João', 'Analista', 2500.00, '2022-11-30', 'TI');

-- Select de colaboradores com salário maior que 2000
SELECT * FROM colaboradores WHERE salario > 2000;

-- Select de colaboradores com salário menor que 2000
SELECT * FROM colaboradores WHERE salario < 2000;

-- Atualizar o salário de Carlos (usando o ID correto)
UPDATE colaboradores SET salario = 1900.00 WHERE id = 2;