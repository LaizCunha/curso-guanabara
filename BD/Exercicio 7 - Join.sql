create table gafanhoto_assiste_curso (
	id int not null auto_increment,
	data date,
	idgafanhoto int,
	idcursos int,
	primary key (id),
	foreign key (idgafanhoto) references gafanhotos(id),
	foreign key (idcursos) references cursos(idcurso)
);

insert into gafanhoto_assiste_curso values
(default, '2014-03-01', 1, 2);

select  g.nome, c.nome from gafanhotos g
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c 
on a.idcursos = c.idcurso
order by g.nome;
