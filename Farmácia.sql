create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
categoria varchar (255) not null,
subcategoria varchar (255) not null,
estoque int,
primary key (id)
);

insert into tb_categoria (categoria, subcategoria, estoque) values ("Medicamento", "anti-inflamatório", 8);
insert into tb_categoria (categoria, subcategoria, estoque) values ("Vitaminas", "estimulante de apetite", 3);
insert into tb_categoria (categoria, subcategoria, estoque) values ("Beleza", "cuidados com a pele", 5);
insert into tb_categoria (categoria, subcategoria, estoque) values ("Cabelo", "shampoo", 12);
insert into tb_categoria (categoria, subcategoria, estoque) values ("Higiene pessoal", "escova de dente", 6);



select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
descrição varchar (255) not null,
quantidade varchar (255) not null,
preço decimal (6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, descrição, quantidade, preço, categoria_id) values ("Shampoo anti caspa clear men", "Ideal para o combate contra a caspa", "400ml", 24.90, 4); 
insert into tb_produto (nome, descrição, quantidade, preço, categoria_id) values ("Cobavital", "Indicado para o aumento de massa corpórea para pacientes sem apetite ou em períodos de convalescença", "30 comprimidos", 32.84, 2);
insert into tb_produto (nome, descrição, quantidade, preço, categoria_id) values ("Escova Dental Colgate Extra Clean", "Possui limpador de língua suave que ajuda a remover as bactérias que causam mau hálito. ", "3 unidades", 14.25, 5);
insert into tb_produto (nome, descrição, quantidade, preço, categoria_id) values ("Acheflan", "Indicado no tratamento local de processos inflamatórios, tais como tendinites e dores musculares", "60g creme", 63.19, 1);
insert into tb_produto (nome, descrição, quantidade, preço, categoria_id) values ("Gel Nivea Hidratante Facial", "Indicado para peles oleosas, Gel Nivea promove uma hidratação eficaz por 24h, sem deixar brilho", "100ml", 29.49, 3);
insert into tb_produto (nome, descrição, quantidade, preço, categoria_id) values ("Kit Shampoo + Condicionador Elseve Reparação Total 5", "A linha Elseve Reparação Total 5+ faz uma reparação total dos 5 sinais de danos para um efeito de plástica capilar", "1 unidade", 16.69, 4);
insert into tb_produto (nome, descrição, quantidade, preço, categoria_id) values ("Gel Esfoliante Facial Nuxe Aquabella", "O Gel Esfoliante Facial Nuxe Aquabella ajuda a limpar profundamente o rosto", "150ml", 169.99, 3);
insert into tb_produto (nome, descrição, quantidade, preço, categoria_id) values ("Biotônico Fontoura Original", "Biotônico Fontoura é um suplemento de ferro utilizado para complementar a alimentação diária e estimular o apetite", "400ml Solução", 25.02, 2);

select * from tb_produto;

select nome, CONCAT ('R$', FORMAT (preço, 2, 'pt_br')) as preço from tb_produto;

select * from tb_produto where preço > 50;

select * from tb_produto where preço between 3 and 60;

select * from tb_produto where nome like "%b%";

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id
where tb_categoria.id = 4