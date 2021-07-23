CREATE DATABASE db_pizzaria_legal;
use db_pizzaria_legal;

CREATE TABLE tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null, 
ativo boolean not null,
primary key (id)
);

INSERT INTO tb_categoria (descricao, ativo) values ("Pizza Doce", true);
INSERT INTO tb_categoria(descricao, ativo) values ("Pizza Salgada", true);
INSERT INTO tb_categoria(descricao, ativo) values ("Esfiha Doce", true);
INSERT INTO tb_categoria(descricao, ativo) values ("Esfiha Salgada", true);
INSERT INTO tb_categoria(descricao, ativo) values ("Calzone", true);

CREATE TABLE tb_pizza (
id bigint auto_increment,
sabor varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtpedido date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_pizza (sabor, preco, qtproduto, dtpedido, categoria_id) values ("Calabresa", 47.90, 1,  '2021-07-21', 2);
INSERT INTO tb_pizza (sabor, preco, qtproduto, dtpedido, categoria_id) values ("Nutella", 70.00, 1,  '2021-07-20', 1);
INSERT INTO tb_pizza (sabor, preco, qtproduto, dtpedido, categoria_id) values ("Presunto Parma", 28.90, 3, '2021-07-16', 5);
INSERT INTO tb_pizza (sabor, preco, qtproduto, dtpedido, categoria_id) values ("Queijo Fresco", 3.20, 15, '2021-07-16', 4);
INSERT INTO tb_pizza (sabor, preco, qtproduto, dtpedido, categoria_id) values ("Carne", 2.50, 20, '2021-07-10', 4);
INSERT INTO tb_pizza (sabor, preco, qtproduto, dtpedido, categoria_id) values ("M&M'S", 4.00, 5, '2021-07-21', 3);
INSERT INTO tb_pizza (sabor, preco, qtproduto, dtpedido, categoria_id) values ("Portuguesa", 51.99, 1, '2021-07-20', 2);
INSERT INTO tb_pizza (sabor, preco, qtproduto, dtpedido, categoria_id) values ("Prestígio", 65.00, 1, '2021-07-10', 1);

SELECT * FROM tb_pizza where preco > 45;

SELECT * FROM tb_pizza where preco between 29 and 60;

SELECT * FROM tb_pizza where sabor like "C%";

SELECT tb_pizza.sabor, tb_pizza.preco, tb_categoria.descricao 
FROM tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

SELECT tb_pizza.sabor, tb_pizza.preco, tb_categoria.descricao 
FROM tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id and tb_categoria.descricao = "Pizza Doce";