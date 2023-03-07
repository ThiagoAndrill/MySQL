CREATE DATABASE db_servico_RH;

USE db_servico_RH;

CREATE TABLE tb_atributos(
	id bigint auto_increment,
		nome varchar(255) not null,
		idade int,
		sexo varchar(255),
		cargo varchar(255),
		salario decimal not null,
    PRIMARY KEY(id)
);

INSERT INTO tb_atributos(nome, idade, sexo, cargo, salario)
values ("Joas", 23, "Masculino", "DEV Pleno", 7500);
INSERT INTO tb_atributos(nome, idade, sexo, cargo, salario)
values ("Beatriz", 28, "Feminino", "DEV Senior", 22000);
INSERT INTO tb_atributos(nome, idade, sexo, cargo, salario)
values ("Thaina", 28, "Feminino", "DEV Pleno", 8500);
INSERT INTO tb_atributos(nome, idade, sexo, cargo, salario)
values ("Thiago", 31, "Masculino", "DEV Junior", 3000);
INSERT INTO tb_atributos(nome, idade, sexo, cargo, salario)
values ("Catiane", 26, "Feminino", "Supervisora de Projeto", 15000);

SELECT * FROM tb_atributos WHERE salario > 2000;

SELECT * FROM tb_atributos WHERE salario < 2000;

UPDATE tb_atributos SET salario = 1500 WHERE id = 4;