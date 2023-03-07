create database db_escola;

use db_escola;

create table tb_atributos(
	
    id bigint auto_increment,
		nome varchar (255) not null,
		idade int,
		genero varchar (255),
		classe varchar (255),
		sala int, 
    primary key(id)

);

insert into tb_atributos (nome, idade, genero, classe, sala, nota)
values ("ENZO", 7, "MASCULINO", "2B", 3, 10);
insert into tb_atributos (nome, idade, genero, classe, sala, nota)
values ("SAN", 5, "MASCULINO", "1C", 3, 8.5);
insert into tb_atributos (nome, idade, genero, classe, sala, nota)
values ("LUCAS", 3, "MASCULINO", "7B", 2, 7.5);
insert into tb_atributos (nome, idade, genero, classe, sala, nota)
values ("JESSICA", 29, "FEMININO", "1A", 7, 5.9);
insert into tb_atributos (nome, idade, genero, classe, sala, nota)
values ("MARIANA", 18, "FEMININO", "3C", 9, 8.4);
insert into tb_atributos (nome, idade, genero, classe, sala, nota)
values ("THIAGO", 31, "MASCULINO", "1A", 7,  4.5);
insert into tb_atributos (nome, idade, genero, classe, sala, nota)
values ("JOAS", 23, "MASCULINO", "1A", 7, 9.4);
insert into tb_atributos (nome, idade, genero, classe, sala, nota)
values ("THAINA", 28, "FEMININO", "1A", 7, 7.8);

select * from tb_atributos where nota > 7;

select * from tb_atributos where nota < 7;

select * from tb_atributos;

delete from tb_atributos where id = 14;

update tb_atributos SET nota = 5 where id = 5;