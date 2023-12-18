-- chave estrageira (primary key) and JOIN

use cadastro;
desc gafanhotos;

-- lembrado que add pode ter colun ou nao
-- o cursopreferido deve ser do mesmo tipo da chave primeria de cursos que é do tipo int
-- APOS INT não tiver nda ira para o final da tabela

alter table gafanhotos
add column cursopreferido int;

desc gafanhotos; -- agora aparece na tabela gafanhoto agor temos que colocar como chave estrangeria
-- add chave estrangeria
alter table gafanhotos
add foreign key(cursopreferido)
references cursos (idcurso);

desc gafanhotos;
select * from gafanhotos;

select * from cursos;

update gafanhotos set cursopreferido = '6' where id =1;

-- dar update para mais de um aluno de modo automatico
-- tem cursos de 1 a 30 e vo add o curso de cada um manualmente na tabela GRid result

select * from gafanhotos;
-- tentar apagar o curso de mysql delete 

Delete from cursos
where idcurso = '6'; -- apagar o curso de mysql com delete da um erro

select * from cursos;
delete from cursos
where idcurso = 9; -- delete curso 9
select * from cursos;

delete from cursos
where idcurso = 28;
select * from cursos;
-- não se consegue deletar um campo que esta relacionado -> INTEGRIDADE REFERENCIAL
