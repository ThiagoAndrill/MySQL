create database db_ecommerce;

use db_ecommerce;

create table tb_atributos(

	id bigint auto_increment,
		nome varchar (255) not null,
        genero varchar (255) not null,
        plataforma varchar (255) not null,
        midia varchar (255) not null,
        valor decimal,
	primary key(id)
    
);

insert into tb_atributos(nome, genero, plataforma, midia, valor)
values ("GOW","AÇÃO","PS5","FÍSICA",350);
insert into tb_atributos(nome, genero, plataforma, midia, valor)
values ("HOGWARTS LEGACY","AÇÃO","PS5","FÍSICA",350);
insert into tb_atributos(nome, genero, plataforma, midia, valor)
values ("NBA 2K23","ESPORTES","PC","DIGITAL",300);
insert into tb_atributos(nome, genero, plataforma, midia, valor)
values ("HOLLOW KNIGHT","AÇÃO","NINTENDO SWITCH","DIGITAL",25);
insert into tb_atributos(nome, genero, plataforma, midia, valor)
values ("DRAGON BALL FIGHTERZ","LUTA","NINTENDO SWITCH","DIGITAL",40);
insert into tb_atributos(nome, genero, plataforma, midia, valor)
values ("NO MAN'S SKY","AVENTURA","PC","DIGITAL",200);
insert into tb_atributos(nome, genero, plataforma, midia, valor)
values ("POKEMON SCARLET","AVENTURA","NINTENDO SWITCH","AVENTURA",350);
insert into tb_atributos(nome, genero, plataforma, midia, valor)
values ("FINAL FANTASY IX","RPG","PC","DIGITAL",40);

select * from tb_atributos where valor > 500;

select * from tb_atributos where valor < 500;

select * from tb_atributos;

update tb_atributos SET valor = 600 where id = 2;