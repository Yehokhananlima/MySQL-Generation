use db_bancodeteste;

INSERT INTO `db_bancodeteste`.`tb_funcionarios` (`Nome`, `CPF`, `Idade`, `Salario`, `Cargo`) VALUES ('Yoha', '13245689432', '19', '5.000', 'Dev fullstack junior');
INSERT INTO `db_bancodeteste`.`tb_funcionarios` (`Nome`, `CPF`, `Idade`, `Salario`, `Cargo`) VALUES ('leticia', '87654321973', '26', '8.000', 'Dev fullstack junior');
INSERT INTO `db_bancodeteste`.`tb_funcionarios` (`Nome`, `CPF`, `Idade`, `Salario`, `Cargo`) VALUES ('joao', '12345627983', '25', '8.000', 'Dev fullstack junior');
INSERT INTO `db_bancodeteste`.`tb_funcionarios` (`Nome`, `CPF`, `Idade`, `Salario`, `Cargo`) VALUES ('tii', '5463892643', '23', '9.000', 'Dev fullstack junior');


SELECT * FROM db_bancodeteste.tb_funcionarios where salario > 2.000;
SELECT * FROM db_bancodeteste.tb_funcionarios where salario < 2.000;

UPDATE `db_bancodeteste`.`tb_funcionarios` SET `Cargo` = 'Dev fullstack senior' WHERE (`id` = '3');