create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
área varchar (255) not null,
curso varchar (255) not null,
modalidade varchar (255) not null,
primary key (id)
);

insert into tb_categoria (área, curso, modalidade) values ("Programação", "Java", "Online");
insert into tb_categoria (área, curso, modalidade) values ("Idiomas", "Espanhol", "Online");
insert into tb_categoria (área, curso, modalidade) values ("Informática", "Pacote Office", "Presencial");
insert into tb_categoria (área, curso, modalidade) values ("Administração", "Gestão de produção", "Presencial");
insert into tb_categoria (área, curso, modalidade) values ("Recursos Humanos", "Gestão de pessoas", "Online");

select * from tb_categoria;

create table tb_curso(
id bigint auto_increment,
descrição varchar (255) not null,
carga_horária varchar (255) not null,
professor varchar (255) not null,
preço decimal (6,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_curso (descrição, carga_horária, professor, preço, categoria_id) values ("Curso introdutório de Java.", "40 horas", "Paulo Silveira", 249.90, 1); 
insert into tb_curso (descrição, carga_horária, professor, preço, categoria_id) values ("Curso iniciante e intermediário de Pacote Office", "50 horas", "Romilton Júnior", 140.50, 3); 
insert into tb_curso (descrição, carga_horária, professor, preço, categoria_id) values ("Curso básico de Gestão de Pessoas no dia a dia de trabalho", "25 horas", "Rodrigo Rennó", 60.00, 5); 
insert into tb_curso (descrição, carga_horária, professor, preço, categoria_id) values ("Curso básico de Espanhol", "50 horas", "Edgar Montillo", 200.00, 2); 
insert into tb_curso (descrição, carga_horária, professor, preço, categoria_id) values ("Curso básico de Gestão de Produção.", "30 horas", "Clóvis Alvarenga Netto", 149.90, 4); 
insert into tb_curso (descrição, carga_horária, professor, preço, categoria_id) values ("Curso complementar de Java e JavaScript.", "60 horas", "Paulo Silveira", 324.90, 1); 
insert into tb_curso (descrição, carga_horária, professor, preço, categoria_id) values ("Curso avançado de Espanhol.", "80 horas", "Edgar Montillo", 250.00, 2); 
insert into tb_curso (descrição, carga_horária, professor, preço, categoria_id) values ("Curso avançado de Pacote Office.", "70 horas", "Romilton Júnior", 250.00, 3); 

select * from tb_curso;

select descrição, CONCAT ('R$', FORMAT (preço, 2, 'pt_br')) as preço from tb_curso;

select * from tb_curso where preço > 50;

select * from tb_curso where preço between 3 and 60;

select * from tb_curso where descrição like "%j%";

select * from tb_curso inner join tb_categoria on tb_curso.categoria_id = tb_curso.id;

select * from tb_curso inner join tb_categoria on tb_curso.categoria_id = tb_categoria.id
where tb_categoria.id = 1