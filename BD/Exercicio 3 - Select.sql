select * from cursos;

select * from cursos
where nome = 'PHP';

select * from cursos
where nome like 'p%'
order by idcurso;

select * from cursos
where nome like '%A';

select * from cursos
where descricao like '%a%';

select * from cursos
where nome not like '%a%';

update cursos set nome = 'PáOO'
where idcurso = 9;

select * from cursos
where nome like 'PH%P_';

select * from gafanhotos
where nome like '%silva';

select distinct carga from cursos
order by carga;

select distinct nacionalidade from gafanhotos
order by nacionalidade;

select * from cursos
where carga > 40;

select count(*) from cursos
where carga > 40;

select * from cursos order by carga;

select max(carga) from cursos;

select * from cursos where ano = 2016;

select max(totaulas) from cursos where ano = 2016;

select nome, min(totaulas) from cursos where ano = '2016';

select sum(totaulas) from cursos where ano = '2016';

select avg(totaulas) from cursos where ano = 2016;

select * from gafanhotos where sexo = 'F';
select * from gafanhotos where nascimento between '2000-01-01' and '2015-12-31';
select * from gafanhotos where sexo = 'M' and profissao = 'Programador';
select * from gafanhotos where sexo = 'F' and nome like 'J%';
select nome, nacionalidade from gafanhotos where sexo = 'M' and nome like '%silva%' and nacionalidade != 'Brasil' and peso < 100;
select max(altura) from gafanhotos where sexo ='M' and nacionalidade = 'Brasil';
select avg(peso) from gafanhotos;
select min(peso) from gafanhotos where sexo = 'F' and nacionalidade != 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';
select count(*) from gafanhotos where sexo = 'F' and altura > '1.90';


