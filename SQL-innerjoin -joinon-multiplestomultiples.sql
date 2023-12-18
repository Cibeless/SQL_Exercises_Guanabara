-- A16 relacionamento de n para n - muitos para muitos
-- Sintaxe do select join -- assiste cardinalidade muitospara muitos
-- Muitos p/ Muitos = gera novos relacionamentos e chaves estrangeiras
-- a chave estrangeria deve ser o mesmo tipo da primaria
use cadastro; -- abrir

-- gafanhoto assiste curso é o nome da nova tabela que recebe as chaves estrangerias

create table gafanhoto_assiste_curso (
id int not null auto_increment,
data date, -- data é date
idgafanhoto int, -- Nome da chave estrangeria com o tipo- da onde vem  de gafanhoto
idcurso int, -- Nome da chave estrangeria com o tipo qu e é int - da onde vem de curso
primary key (id), -- chave primaria é o atributo de cima
foreign key (idgafanhoto) references gafanhotos (id), -- References é a tabela gafanhotos de cadastro e que tem dentro a coluna id. -->definido a  chave estrangeira 
foreign key (idcurso) references cursos(idcurso) -- O primeiro id curso é da chave estrangeira e o segundo é do curso nao é o mesmo -.definindo a chave estrangeira com Referencia table cursos e coluna idcurso
)default charset = utf8;

-- colcoar dados dentro da tabela criada com as chaves estrangeira
-- inserir registro
insert into gafanhoto_assiste_curso values
(default, '2014-03-01','1', '2');
select * from gafanhoto_assiste_curso;

-- no exemplo acima quando do select para ver a tabela aparece apenas numeros em idfafanhoto e id curso
-- como a tabela esta no meio aparece os numero
-- por isso é necessario usar o JOIN PARA JUNTAR UM JOIN NO OUTRO
-- JUNÇÕES - INNER JOIN

select * from gafanhotos as g -- apenlido do gafanhoto é g
join gafanhoto_assiste_curso as a -- join é que junta 
on g.id = a.idgafanhoto; -- é necessario on para juntar a chave primaria de gafanhoto id e a idgafanhoto da tabela a que é assite curso

-- dar uma filtrada e mostrar por g.id id.nome, idcurso
-- dados g.id é do gafanhoto e tambem g.nome é do gafanhoto já a. idgafanhoto é da tabela de assist
-- o inner joy deixa o id igual ao idgafanhoto veja:
-- join junta ie ´3 ituql id gafanhoto
-- filtrando para visualização
select g.id, g.nome, a.idgafanhoto, idcurso from gafanhotos as g -- apenlido do gafanhoto é g
join gafanhoto_assiste_curso as a -- join é que junta 
on g.id = a.idgafanhoto;

-- friltrando ainda mais

select g.nome, idcurso from gafanhotos as g -- apenlido do gafanhoto é g
join gafanhoto_assiste_curso as a -- join é que junta 
on g.id = a.idgafanhoto;

-- para puchar o nome do curso para a tabela
-- fazer um outro join 
-- id do curso se junto com id do curso-assite entao em on relaciona chave primaraia com estrangeira
-- logo, faz um join cursos com apelido de c
-- join junta
-- PUCHA DADOS DE TRES TABELAS CURSOS / GAFANHOTOS / GAFANHOT_ASSITE_CURSOS

select g.nome, c.nome, a.idcurso from gafanhotos g -- tem que colocar o c.nome para mostrar
join gafanhoto_assiste_curso a
on g.id = a.idgafanhoto
join cursos c -- mostrar o nome dos cursos
on c.idcurso = c.idcurso; -- relacionar chave primaria com estrangeira


