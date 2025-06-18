DROP DATABASE IF EXISTS escola;
CREATE DATABASE escola;
USE escola;

CREATE TABLE estudantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    curso VARCHAR(100),
    nota DECIMAL(3,1),
    data_matricula DATE
);

INSERT INTO estudantes (nome, idade, curso, nota, data_matricula) VALUES
('Lucas Ferreira', 19, 'Administração', 8.5, '2023-02-10'),
('Juliana Costa', 21, 'Engenharia', 6.8, '2022-09-15'),
('Marcos Silva', 18, 'Direito', 7.2, '2024-03-01'),
('Amanda Rocha', 22, 'Pedagogia', 5.9, '2023-01-20'),
('Carla Martins', 20, 'Engenharia', 9.1, '2022-08-05'),
('Thiago Nunes', 23, 'Medicina', 7.8, '2021-07-30'),
('Patrícia Souza', 19, 'Psicologia', 6.5, '2023-04-12'),
('Gabriel Lima', 20, 'TI', 8.0, '2022-11-25');

SELECT * FROM estudantes WHERE nota > 7.0;

SELECT * FROM estudantes WHERE nota < 7.0;

SELECT id, nome FROM estudantes WHERE nome = 'Juliana Costa';

UPDATE estudantes SET nota = 7.5 WHERE id = 2;

SELECT * FROM estudantes WHERE id = 2;