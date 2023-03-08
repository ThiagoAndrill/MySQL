CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(

	id bigint auto_increment,
		nome varchar (255),
        equipamento varchar(255),
	PRIMARY KEY (id)
    
);

insert into tb_classes (nome, equipamento)
values ("Mago", "Cajado");
insert into tb_classes (nome, equipamento)
values ("Arqueiro", "Arco");
insert into tb_classes (nome, equipamento)
values ("Guerreiro", "Espada");
insert into tb_classes (nome, equipamento)
values ("Gatuno", "Adaga");
insert into tb_classes (nome, equipamento)
values ("Bardo", "Violão");

select * from tb_classes;

CREATE TABLE tb_personagens(

	id bigint auto_increment,
		nome varchar (255) not null,
        raça varchar (255) not nuLl,
        pda int, -- poder de ataque
        pdd int, -- poder de defesa
	PRIMARY KEY (id)

);

select * from tb_personagens;

insert into tb_personagens (nome, raça, pda, pdd, classe_id)
values ("Joas", "Humano", 2500, 1200, 1);
insert into tb_personagens (nome, raça, pda, pdd, classe_id)
values ("Thiago", "Elfo", 2400, 1000, 2);
insert into tb_personagens (nome, raça, pda, pdd, classe_id)
values ("Thaina", "Amazonas", 3000, 2000, 3);
insert into tb_personagens (nome, raça, pda, pdd, classe_id)
values ("Bea", "Humana", 1500, 1000, 4);
insert into tb_personagens (nome, raça, pda, pdd, classe_id)
values ("Jaina", "Anão", 2000, 1300, 5);
insert into tb_personagens (nome, raça, pda, pdd, classe_id)
values ("San", "Humano", 1200, 1000, 2);
insert into tb_personagens (nome, raça, pda, pdd, classe_id)
values ("Marco", "Gnomo", 1000, 1000, 4);
insert into tb_personagens (nome, raça, pda, pdd, classe_id)
values ("Julia", "Amazonas", 2400, 2800, 3);

ALTER TABLE tb_personagens add classe_id bigint;

ALTER TABLE tb_personagens add constraint fk_personagem_classe
foreign key (classe_id) references tb_classes (id);

select * from tb_personagens where pda > 2000;

select * from tb_personagens where pdd between 1000 and 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens
inner join tb_classes on tb_classes.id = tb_personagens.classe_id;

select * from tb_personagens
inner join tb_classes on tb_classes.id = tb_personagens.classe_id
where classe_id = 2;