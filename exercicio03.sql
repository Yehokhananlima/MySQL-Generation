/* Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.*/

-- criando DB db_escola
create database db_escola;

use db_escola;

create table tb_estudantes(
-- criando primary key
id bigint auto_increment,
nome 	varchar(255),
idade 	int,
genero 	varchar(255),
curso 	varchar(255),
classe 	int, 
nota 	int,
-- definindo primary key
primary key(id)
);

insert into tb_estudantes(nome, idade, genero, curso, classe, nota) values ("Yoha", 19, "Homem", "Desenvolvedor Fullstack jr.", 28, 10);
insert into tb_estudantes(nome, idade, genero, curso, classe, nota) values ("Fernandim ", 24, "Homem", "Desenvolvedor Java Fullstack Jr.", 28, 10);
insert into tb_estudantes(nome, idade, genero, curso, classe, nota) values ("Dimanine", 47, "Homem", "Desenvolvedora Java Fullstack Jr.", 28, 10);
insert into tb_estudantes(nome, idade, genero, curso, classe, nota) values ("Wendel", 17,"Homem", "Desenvolvedor Java Fullstack Jr.", 28, 4);
insert into tb_estudantes(nome, idade, genero, curso, classe, nota) values ("Domitila", 62, "Mulher", "Desenvolvedora Java Fullstack Jr.", 28, 4);
insert into tb_estudantes(nome, idade, genero, curso, classe, nota) values ("Felicia", 22, "Não binario", "Desenvolvedore Java Fullstack Jr.", 28, 3);
insert into tb_estudantes(nome, idade, genero, curso, classe, nota) values ("Oxa", 40, "Não binario", "Desenvolvedore Java Fullstack Jr.", 28, 9);
insert into tb_estudantes(nome, idade, genero, curso, classe, nota) values ("Alex", 29, "Não binario", "Desenvolvedore Java Fullstack Jr.", 28, 9);

-- Seleção de notas maiores a 7
select * from tb_estudantes where nota > 7;

-- Seleção de notas Menores a 7
select * from tb_estudantes where nota < 7;

-- Atualizando as nota com update 
update tb_estudantes set nota = 5 where id = 8;

select * from tb_estudantes;