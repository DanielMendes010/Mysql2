create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
nome varchar (255) not null,
skill varchar (255) not null,
hp int,
arma varchar (255) not null,
primary key (id)
);

insert into tb_classe (nome, skill, hp, arma) values ("Feiticeiro", "Bola de fogo", 8, "Cajado");
insert into tb_classe (nome, skill, hp, arma) values ("Arqueiro", "Chuva de flexas", 6, "Arco e flexa");
insert into tb_classe (nome, skill, hp, arma) values ("Bruxa", "Espada de prata", 10, "Caldeirão");
insert into tb_classe (nome, skill, hp, arma) values ("Cavaleiro", "Cavalo dragão", 20, "Excalibur");
insert into tb_classe (nome, skill, hp, arma) values ("Curandeiro", "Ressurreição", 3, "Gaze");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar (255) not null,
nivel int,
ataque int,
defesa int,
classe_id bigint,
primary key (id),
foreign key (classe_id) references tb_classe (id)
);

insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Mokona", 100, 300, 100, 5); 
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Arrow", 100, 3000, 1000, 2);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Scarllet", 100, 2000, 2000, 3);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Arthur", 10, 1000, 1500, 4);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Constantine", 1000, 1300, 1100, 1);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Zantanna", 500, 2300, 3000, 1);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Gavião Arqueiro", 300, 1300, 100, 2);
insert into tb_personagem (nome, nivel, ataque, defesa, classe_id) values ("Shining Knight", 150, 2000, 900, 4);

select * from tb_personagem;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where defesa between 1000 and 2000;

select * from tb_personagem where nome like "%c%";

select * from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id;

select * from tb_personagem inner join tb_classe on tb_personagem.classe_id = tb_classe.id
where tb_classe.id = 2

