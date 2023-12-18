-- SQL exercises solved group by and having alter
-- Guanabara course

-- Exercise 01:  Uma lista das profissoes dos gafanhotos e seus respectivos quatitativos
select * from gafanhotos;

select profissao, count(*) from gafanhotos
group by profissao;

-- Exercise 02: Quantos gafanhotos homens e quantos gafanhotos mulheres nasceram apos 01/janeiro de 2005
select * from gafanhotos;

select sexo, count('M' 'F')  from gafanhotos
where nascimento > 2005-01-01
group by sexo;

-- Exercicos 03: Lista com alunos que nasceram fora do brasil / Mostrando o pais de oritgem e o total de pessas nacinadas la
select * from gafanhotos;

select nacionalidade, count(*) from gafanhotos
where nacionalidade != 'Brasil'
group by  nacionalidade -- onde colocar o having?
Having count(*) > 3; -- having apos agrupar!

-- Exercicio 4: lista agrupada pela altura dos alunos, monstrando peso mais de 100kg, que estao acima da media da altura dos s cadastrados
select * from gafanhotos;

select avg(altura) from gafanhotos; -- media 1.664918

select altura, count(*) from gafanhotos
where peso > 100 -- mais de 100kg
group by altura 
having altura > (select avg(altura) from gafanhotos); -- meida da altura ja calculada 



