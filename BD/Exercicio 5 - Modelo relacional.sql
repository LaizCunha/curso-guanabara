desc gafanhotos;

alter table gafanhotos
add cursopreferido int;

alter table gafanhotos
add foreign key (cursopreferido)
references cursos(idcurso);

select * from gafanhotos;

update gafanhotos 
set cursopreferido = '6' 
where id = '1';

delete from cursos
where idcursos = '6';

delete from cursos
where idcursos = '28';

select g.nome, c.nome, c.ano 
from gafanhotos as g inner join cursos as c
on c.idcurso = g.cursopreferido
order by g.nome;

select g.nome, c.nome, c.ano
from gafanhotos as g left outer join cursos as c
on c.idcurso = g.cursopreferido;

select g.nome, c.nome, c.ano
from gafanhotos as g right outer join cursos as c
on c.idcurso = g.cursopreferido;







