CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    habilidade_especial VARCHAR(100) NOT NULL
);

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    nivel INT NOT NULL,
    id_classe INT,
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (nome, habilidade_especial) VALUES
('Guerreiro', 'Ataque Pesado'),
('Arqueiro', 'Tiro Preciso'),
('Mago', 'Bola de Fogo'),
('Ladino', 'Ataque Rápido'),
('Paladino', 'Cura Divina');

INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, id_classe) VALUES
('Thor', 3000, 1500, 10, 1),
('Legolas', 2200, 1200, 8, 2),
('Gandalf', 2800, 800, 12, 3),
('Shadow', 1800, 900, 7, 4),
('Arthur', 2500, 2000, 9, 1),
('Robin', 2100, 1000, 6, 2),
('Merlin', 2600, 1100, 11, 3),
('Luna', 2300, 1300, 8, 5);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT tb_personagens.nome, tb_personagens.poder_ataque, tb_classes.nome AS classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id;

SELECT tb_personagens.nome, tb_personagens.poder_ataque, tb_classes.nome AS classe
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.id_classe = tb_classes.id
WHERE tb_classes.nome = 'Arqueiro';
