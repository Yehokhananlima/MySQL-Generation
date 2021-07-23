	-- Criando DB do game
	CREATE DATABASE db_game_War;
	USE db_game_War;

	CREATE TABLE tb_classe(
	-- criando primary key
	id_classe INT AUTO_INCREMENT,
    nome_classe VARCHAR(255),
    tipo_habilidade VARCHAR(255),
    -- Definindo primary key
    PRIMARY KEY(id_classe)
	);

	CREATE TABLE tb_personagem(
	id_personagem INT AUTO_INCREMENT,
	nome VARCHAR(255),
    cor_cabelo VARCHAR(255),
    fk_classe INT,
    PRIMARY KEY(id_personagem),
    FOREIGN KEY (fk_classe) REFERENCES tb_classe(id_classe)
	);

	CREATE TABLE tb_dano(
	id_dano INT AUTO_INCREMENT,
    dano_fisico INT,
    dano_magico INT,
    defesa INT,
    fk_classe INT,
    PRIMARY KEY (id_dano),
    FOREIGN KEY (fk_classe) REFERENCES tb_classe(id_classe)
	);