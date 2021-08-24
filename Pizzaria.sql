create database db_pizzaria_legal_online;

use db_pizzaria_legal_online;

create table tb_categoria(
id bigint auto_increment,
nome varchar (255) not null,
salgado boolean,
doce boolean,
primary key (id)
);

insert into tb_categoria (nome, salgado, doce) values ("Pizza", true, false);
insert into tb_categoria (nome, salgado, doce) values ("Bebida", false, true);
insert into tb_categoria (nome, salgado, doce) values ("Pizza", false, true);
insert into tb_categoria (nome, salgado, doce) values ("Sobremesa", false, true);
insert into tb_categoria (nome, salgado, doce) values ("Esfiha", true, false);



select * from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar (255) not null,
ingredientes varchar (255) not null,
acompanha varchar (255) not null,
preço decimal (6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (nome, ingredientes, acompanha, preço, categoria_id) values ("Calabresa", "Calabresa fatiada, cebola e azeitonas", "Refrigerante 2 litros", 46.00, 1); 
insert into tb_pizza (nome, ingredientes, acompanha, preço, categoria_id) values ("Frango I", "Frango desfiado, catupiry e azeitonas", "Refrigerante 2 litros", 46.00, 1); 
insert into tb_pizza (nome, ingredientes, acompanha, preço, categoria_id) values ("Milho c/ Catupiry", "Milho e catupiry", "Sem acompanhamento", 3.50, 5); 
insert into tb_pizza (nome, ingredientes, acompanha, preço, categoria_id) values ("Banana", "Banana, leite condesado, mussarela e canela", "Esfiha doce (ingrediente a moda da casa)", 50.00, 3); 
insert into tb_pizza (nome, ingredientes, acompanha, preço, categoria_id) values ("Bacon (c/ oferta promocional)", "Bacon, cebola, ovos mussarela", "c/ promoção, Batata frita, Refrigente 2 litros e Sobremesa", 25.99, 1); 
insert into tb_pizza (nome, ingredientes, acompanha, preço, categoria_id) values ("Guaraná Antarctica 600 ml", "Diet", "Sem acompanhamento", 3.50, 2); 
insert into tb_pizza (nome, ingredientes, acompanha, preço, categoria_id) values ("Bolo de chocolate e morango", "Calda chocolate e morango fatiado", "Sem acompanhamento", 7.00, 4); 
insert into tb_pizza (nome, ingredientes, acompanha, preço, categoria_id) values ("Doce de leite", "Doce de leite com coco ou farofa de amendoim", "Esfiha doce (ingrediente a moda da casa) e sobremesa", 60.00, 3); 

select * from tb_pizza;

select nome, CONCAT ('R$', FORMAT (preço, 2, 'pt_br')) as preço from tb_pizza;

select * from tb_pizza where preço > 45;

select * from tb_pizza where preço between 29 and 60;

select * from tb_pizza where nome like "%c%";

select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id;

select * from tb_pizza inner join tb_categoria on tb_pizza.categoria_id = tb_categoria.id
where tb_categoria.id = 3