create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
departamentos varchar (255) not null,
categoria varchar (255) not null,
subcategoria varchar (255) not null,
primary key (id)
);

insert into tb_categoria (departamentos, categoria, subcategoria) values ("Tintas e acessórios", "Tinta", "Tintas para parede");
insert into tb_categoria (departamentos, categoria, subcategoria) values ("Janelas e portas", "Janelas", "Basculante");
insert into tb_categoria (departamentos, categoria, subcategoria) values ("Ferramentas", "Elétricas", "Furadeiras");
insert into tb_categoria (departamentos, categoria, subcategoria) values ("Material Hidráulico", "Chuveiros e duchas", "Chuveiros");
insert into tb_categoria (departamentos, categoria, subcategoria) values ("Metais e acessórios", "Torneiras", "Cozinha");



select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
descrição varchar (255) not null,
estoque varchar (255) not null,
preço decimal (6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, descrição, estoque, preço, categoria_id) values ("Vitrô Basculante com Vidro em Alumínio Master 60x40cm Brilhante - Brimak", "Indicada para utilização em banheiros, cozinhas, armazéns, indústrias etc.", "Disponível", 159.99, 2); 
insert into tb_produto (nome, descrição, estoque, preço, categoria_id) values ("Chuveiro Elétrico Relax 5500w 220v Branco - Lorenzetti", "O Chuveiro Elétrico Relax da Lorenzetti tem potência de 5500W e tensão de 220v na cor Branca.", "Disponível", 97.99, 4); 
insert into tb_produto (nome, descrição, estoque, preço, categoria_id) values ("Tinta Acrílica Fosco Coralar Branco 18 Litros - Coral", "Desenvolvida para garantir maior qualidade de aplicação e custo-benefício.", "Indisponível", 164.99, 1); 
insert into tb_produto (nome, descrição, estoque, preço, categoria_id) values ("Furadeira de Impacto 550w 220v Gsb 550 Azul - Bosch", "Capacidade de perfuração ajustado ao dia a dia do usuário com potência adequada para aplicações profissionais.", "Disponível", 412.99, 3); 
insert into tb_produto (nome, descrição, estoque, preço, categoria_id) values ("Torneira para Cozinha de Parede Bica Móvel Cromada - Forusi", "Produto fabricado em ABS de qualidade com acabamento cromado, garantindo assim uma máxima durabilidade e resistência.", "Indiponível", 54.49, 5); 
insert into tb_produto (nome, descrição, estoque, preço, categoria_id) values ("Látex Acrílico Branco 3,6 Litros - Suvinil", "Para ambientes externos e internos. Antimofo. Alta resistência.", "Disponível", 51.99, 1); 
insert into tb_produto (nome, descrição, estoque, preço, categoria_id) values ("Furadeira de Impacto 570w 110v Preta - Skil", "Tem potência ideal e necessaria para a realização dos seus trabalhos. Perfurações em concreto, alvenaria, madeira e metal com e sem impacto.", "Disponível", 179.99, 3); 
insert into tb_produto (nome, descrição, estoque, preço, categoria_id) values ("Chuveiro Eletrônico Smart 7500w 220 Branco - Hydra", "Conta com jato inclinado, controle de temperatura de acesso fácil pela haste e não conta com fiação aparente.", "Indiponível", 149.99, 4); 

select * from tb_produto;

select nome, CONCAT ('R$', FORMAT (preço, 2, 'pt_br')) as preço from tb_produto;

select * from tb_produto where preço > 50;

select * from tb_produto where preço between 3 and 60;

select * from tb_produto where nome like "%c%";

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id
where tb_categoria.id = 4