-- difference between using DISTINCT and GROUP BY with HAVING.

-- Exercicio 01 - Gerando agrupamento
select carga from cursos
group by carga;

-- Exercicio 02 - Funcao de agregacao - agrupamento - count conta quantos registros foram garupaados
select carga, count(nome) from cursos
group by carga;

-- Exercicio 03 - total de aulas e numero de cursos
select totaulas, count(*) from cursos
group by totaulas
order by totaulas;

select * from cursos where totaulas = 30; -- com trinta aulas tenhou 6 cursos

-- agrupando usando where (selecionar todos os cursos que tem total de aulas maior que 20)
select * from cursos where totaulas >20;

-- Exercicio 04 - mostrar carga agrupadas e total de aulas para cursos que tem total de aulas igual a 30
select carga, totaulas from cursos where totaulas = 30
group by carga;



select * from cursos where totaulas 


-- Exercicio 05 - Quantos nomes de cursos tem essa carga, com aulas igual 30, agrupado por carga
select carga, count(nome) from cursos where totaulas = 30
group by carga; -- cursos de 40 (2) e cursos de carga 60 (4)

select * from cursos where totaulas = 30;

-- Exercicio 06 - selecionar quem vc pode agrupar --> Having
-- mostrar os agrupados com count nome > 3
select carga, count(nome) from cursos
group by carga
having count(nome) > 3

-- Exercicio 07 - contar os numeros de cursos por ano atrupado do maior para o menor
select ano, count(*) from cursos
group by ano
order by count(*) desc;

-- Exercicio 08 - agrupados com o contador acima de 5 - contar os numeros de cursos por ano atrupado do maior para o menor
select ano, count(*) from cursos
group by ano
having count(ano) >= 5 -- ano count acima de cinco (deve ser mesmo campo do group by)
order by count(*);

-- Exercicio 09 - seleciona ano contando de cursos onde o total de aulas maio r que trinta, e ano maior que 2013, agrupado por ano, ordenado decrescente
select ano, count(*) from cursos
where totaulas > 30
group by ano
having ano > 2013
order by count(*) desc;

-- Exercicio 010 - select avg from cursos - media de aulas dos curos
select avg(carga) from cursos;

-- Exercicio 011 -
select carga, count(*) from cursos
where ano > 2015
group by carga;

-- Exercicio 012 - selecionar todoss os curos que tenha ano aciam de 2015, agrupados por carga mas mostrar quem tem carga acima de 36.6
-- selecionei filtrei agrupei
select avg(carga) from cursos;

-- resolvendo
select carga, count(*) from cursos
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);



