INSERT INTO tb_classe (nome_classe, tipo_habilidade)
VALUES
('Bruxo','Varinha'),
('Elfo','Geometria sagrada'),
('Lobisomem','Super força'),
('Felino','Fofura');

INSERT INTO tb_dano (dano_fisico, dano_magico, defesa, fk_classe)
VALUES
(100,500,1000,1),
(300,100,1000,2),
(100,100,5000,3),
(30,600,30,4);

INSERT INTO tb_personagem (nome, cor_cabelo)
VALUES
('Hermione granger','Castanho'),
('Dobby','Careca'),
('Jean','Nankin');

INSERT INTO tb_personagem (nome, cor_cabelo, fk_classe)
VALUES
('Jennie','Vermelho', 1),
('luxa','Amarelo', 2),
('Skarlet','Preto', 1);

SELECT tb_personagem.nome, tb_classe.nome_classe, tb_dano.dano_fisico, tb_dano.dano_magico, tb_dano.defesa
FROM tb_personagem 
INNER JOIN tb_classe 
ON tb_classe.id_classe = tb_personagem.fk_classe
-- Fazendo a intersecção através do Join
INNER JOIN tb_dano 
ON tb_dano.fk_classe = tb_classe.id_classe;


SELECT tb_personagem.nome, tb_classe.nome_classe
FROM tb_personagem
-- Trazendo as informaçoes a esqueda da tabela
LEFT JOIN tb_classe ON tb_classe.id_classe = tb_personagem.fk_classe;

SELECT * FROM tb_personagem
-- Trazendo as informaçoes da tabela, alem da intersecção o restante
LEFT JOIN tb_classe ON tb_classe.id_classe = tb_personagem.fk_classe
UNION
SELECT * FROM tb_personagem
RIGHT JOIN tb_classe ON tb_classe.id_classe = tb_personagem.fk_classe;