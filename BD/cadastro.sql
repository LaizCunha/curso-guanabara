create database cadastro;

use cadastro;

create table pessoas (
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M', 'F'),
peso decimal(5,2),
altura decimal(3,2),
nacionalidade varchar(20) default 'Brasil',
primary key (id)
);

insert into pessoas (nome, nascimento, 
sexo, peso, altura, nacionalidade) values
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil');

insert into pessoas (nome, nascimento, 
sexo, peso, altura, nacionalidade) values
('Maria', '1999-12-30', 'F', '55.2', '1.65', 'Portugal');

insert into pessoas (id, nome, nascimento, 
sexo, peso, altura, nacionalidade) values
(default, 'Creuza', '1920-12-30', 'F', '50.2', '1.65', default);

insert into pessoas values
(default, 'Adalgza', '1930-11-2', 'F', '63.2', '1.75', 'Irlanda');

insert into pessoas values
(default, 'Ana', '1975-12-22', 'F', '52.3', '1.45', 'EUA'),
(default, 'Pedro', '2000-07-15', 'M', '52.3', '1.45', 'Brasil'),
(default, 'Maria', '1999-05-30', 'F', '75.9', '1.70', 'Portugal');

insert into pessoas values
(default, 'Claudio', '1975-4-22', 'M', '99.0', '2.15', 'Brasil'),
(default, 'Pedro', '1999-12-3', 'M', '87', '2', default),
(default, 'Janaina', '1987-11-12', 'F', '75.4', '1.66', 'EUA');

select * from pessoas;
describe pessoas;

alter table pessoas
add column profissao varchar(10);

alter table pessoas
drop column profissao;

alter table pessoas
add column profissao varchar(10) after nome;

alter table pessoas
modify profissao varchar(20) not null default '';

alter table pessoas
change column profissao prof varchar(20) not null default '';

alter table pessoas
add codigo int first;

alter table pessoas
rename to gafanhotos;

desc gafanhotos;

create table if not exists gafanhotos (teste int);

create table if not exists cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
);

desc cursos;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key (idcurso);

create table if not exists teste(
id int,
nome varchar(10),
nascimento date
);

insert into teste value
('1', 'Pedro', '2000-12-12'),
('2', 'MAria', '1990-03-03'),
('3', 'Maricota', '1930-10-10');

select * from teste;

drop table if exists alunos;

drop table if exists teste;

select * from gafanhotos;

insert into cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos', 'Lógica de Programação', '20', '15', '2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '40', '20', '2010'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

select * from cursos;
select * from gafanhotos;

update cursos
set nome = 'HTML5'
where idcurso = '1';

update cursos
set nome = 'PHP', ano = '2015'
where idcurso = '4';

update cursos
set nome = 'Java', carga = '40', ano = '2015'
where idcurso = '5'
limit 1;

update cursos
set ano = '2050', carga = '800'
where ano = '2018';

update cursos
set ano = '2018', carga = '0'
where ano = '2050'
limit 1;

delete from cursos
where idcurso = '8';

delete from cursos
where ano = '2018'
limit 3;

truncate cursos;

select * from cursos;
select * from gafanhotos;
desc gafanhotos;
desc cursos;

use exemplo;
select * from amigos;










