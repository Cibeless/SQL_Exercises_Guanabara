-- join on / as / outer/ inner 

select nome, cursopreferido from gafanhotos;

-- Como as tabelas cursos e gafanhotos estao ligadas por uma chabe estrangeira
-- ao fazer a seleção acima o curso perferido vai aparecer com o numero do id curso mas nao o nome
-- se deseja mostrar o nome deve fazer o seguinte abaixo: JUNÇÕES

select nome, cursopreferido from gafanhotos;

-- Join + on -> para dar sentido
-- trabalhando com junções: 
select nome, cursopreferido from gafanhotos;
select nome, ano from cursos;
-- juntando as duas seleções acima:
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano 
from gafanhotos inner join cursos -- relacionamento de cada curso
on cursos.idcurso = gafanhotos.cursopreferido -- relacionamento previsot
order by gafanhotos.nome;

-- apelidos de coluna = as
select g.nome, g.cursopreferido, c.nome, c.ano 
from gafanhotos as g inner join cursos as c -- as como apelido
on c.idcurso = g.cursopreferido --
order by g.nome;

-- left outer join/ left join = da preferencia a esquerda
select g.nome, g.cursopreferido, c.nome, c.ano 
from gafanhotos as g left outer join cursos as c  
on c.idcurso = g.cursopreferido; --


-- right outer join/ left join = da preferencia a direita
select g.nome, c.nome, c.ano 
from gafanhotos as g right outer join cursos as c  
on c.idcurso = g.cursopreferido;