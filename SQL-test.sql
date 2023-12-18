-- select exercícios parte 12

use cadastro;
select * from cursos;
select * from cursos where carga > 40;
select count(*) from cursos where carga > 40; -- 6

select count(carga) from cursos order by carga; -- carga count = 30

select max(totaulas) from cursos where ano = '2016'; -- maximo 35 POO

select min(totaulas) from cursos where ano = '2016'; -- 15

select nome, min(totaulas) from cursos where ano = '2016'; -- 15 sql

select sum(totaulas) from cursos; -- 583 total de aulas

select * from cursos where ano = 2016;

select avg(totaulas) from cursos; -- 19.433

select avg (totaulas) from cursos where ano = 2016; -- 23.7500

-- Exercico 1 - lista com o nome das alunas (F) em curso7

select * from gafanhotos where sexo = 'F';

-- Exercico 2 - lista de todos os aulos que naceram entre 01/jan/2000 e 31 dez de 2015
select * from gafanhotos where nascimento between  '2000-01-01' and '2015-12-31';

-- Exercicio 3 - lista com o nome de todos os homens que trabalham como programadores
select * from gafanhotos where sexo = 'M' and profissao = 'programador';

-- Exercico 4 -  lista com dadados de todas as mulheres que nasceram no brasil e que tem seu nome iniciado com J
select * from gafanhotos where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'J%';

-- Exercico 5 - nome e nacionalidade de todos os homens que tem silva no nome , nasceram no brasil e pesam menos de 100kg
select nome, nacionalidade from gafanhotos 
where sexo = 'M' and nacionalidade != 'Brasil' and nome like '%silva%' and peso < '100';

-- Exercico 6 - maior altura entre os gafanhotos homens que moram no brasil
 select max(altura) from gafanhotos where sexo = 'M' and nacionalidade = 'Brasil';
 
 -- Exercico 7 - Media de peso dos gafanhotos cadastrados
  select avg(peso) from gafanhotos;
  
  -- Exercico 8 - Menor pessoa entre as mulheres que nasceram eno brasil entre 01 de jan 1990 e  31 de dez de 2000
  select min(peso) from gafanhotos where sexo = 'F' and nacionalidade = 'Brasil' and nascimento between  '2000-01-01' and '2015-12-31';
  
  -- Exercico 9 -Sexo F com mais de 1.90 de altura
  select * from gafanhotos where sexo = 'F' and altura > '1.90';


