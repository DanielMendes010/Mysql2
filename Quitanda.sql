create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
categoria varchar (255) not null,
tipo varchar (255) not null,
corredor int not null,
primary key (id)
);

insert into tb_categoria (categoria, tipo, corredor) values ("Hortifrúti", "Legumes", 1);
insert into tb_categoria (categoria, tipo, corredor) values ("Açougue", "Aves", 4);
insert into tb_categoria (categoria, tipo, corredor) values ("Lácteos", "Queijos", 2);
insert into tb_categoria (categoria, tipo, corredor) values ("Bebidas", "Sucos", 5);
insert into tb_categoria (categoria, tipo, corredor) values ("Padaria", "Pães", 3);



select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
unidade_kg varchar (255) not null,
estoque boolean,
preço decimal (6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, unidade_kg, estoque, preço, categoria_id) values ("Abóbora paulista", "1 unidade 1kg", true, 6.95, 1); 
insert into tb_produto (nome, unidade_kg, estoque, preço, categoria_id) values ("Queijo Grego do Bosque", "200g", false, 56.00, 3); 
insert into tb_produto (nome, unidade_kg, estoque, preço, categoria_id) values ("Pão francês sem glúten", "130g", true, 10.06, 5); 
insert into tb_produto (nome, unidade_kg, estoque, preço, categoria_id) values ("Coxa e sobrecoxa de frango sem osso Sadia", "1kg", true, 20.95, 2); 
insert into tb_produto (nome, unidade_kg, estoque, preço, categoria_id) values ("Suco Del Valle Kapo Uva", "200ml", false, 2.25, 4); 
insert into tb_produto (nome, unidade_kg, estoque, preço, categoria_id) values ("Pão de Milho Pullman", "450g", true, 7.89, 5); 
insert into tb_produto (nome, unidade_kg, estoque, preço, categoria_id) values ("Pão de Alho Tradicional ZINHO", "300g", true, 11.99, 5); 
insert into tb_produto (nome, unidade_kg, estoque, preço, categoria_id) values ("Cenoura", "1 unidade 200g", false, 4.23, 1); 

select * from tb_produto;

select nome, CONCAT ('R$', FORMAT (preço, 2, 'pt_br')) as preço from tb_produto;

select * from tb_produto where preço > 50;

select * from tb_produto where preço between 3 and 60;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id
where tb_categoria.id = 5