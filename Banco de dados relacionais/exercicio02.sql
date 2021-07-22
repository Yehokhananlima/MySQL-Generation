/* Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização. */


-- Criando banco de dados DB
CREATE DATABASE db_papelaria;

USE db_papelaria;

CREATE TABLE tb_papelaria(
-- Criando primary key
id bigint auto_increment,
nome	varchar(255)	not null,
seccao	varchar(255) 	not null,
preco 	float         	not null,
-- Definindo quem é a Primary key
PRIMARY KEY (id)
);

INSERT INTO tb_papelaria (nome, seccao, preco)VALUES('Sketchbook','arte',78);
INSERT INTO tb_papelaria (nome, seccao, preco)VALUES('Aquarela','arte',230);
INSERT INTO tb_papelaria (nome, seccao, preco)VALUES('Cavalete','arte',300);
INSERT INTO tb_papelaria (nome, seccao, preco)VALUES('Teclado gamer','eletronicos',1900);
INSERT INTO tb_papelaria (nome, seccao, preco)VALUES('Pincel chanfrado','arte',56);
INSERT INTO tb_papelaria (nome, seccao, preco)VALUES('Suporte para ipad','eletronicos',600);
INSERT INTO tb_papelaria (nome, seccao, preco)VALUES('Pen brush ','arte',22);
INSERT INTO tb_papelaria (nome, seccao, preco)VALUES('Posca','arte',30);

SELECT * FROM tb_papelaria;

-- Itens com valor maior a 500
SELECT * FROM tb_papelaria where preco > 500;

-- Itens com valor menor a 500
SELECT * FROM tb_papelaria where preco < 500;

-- Realizando Update de um item em promoção
UPDATE tb_papelaria set preco = 200 where id = 2 ;






