se Filmes;

select nome, ano from Filmes;

select nome, ano, Duracao from Filmes order by ano asc;

select  nome , ano, Duracao from Filmes where nome like '%de volta para o futuro%' ;

select nome, ano, Duracao from filmes where ano = 1997;

select nome, ano, Duracao from filmes where ano > 2000;

select nome, ano, Duracao from filmes where Duracao > 100 and Duracao < 150;

select Ano, Count(Id) as quantidade    from Filmes group by ano order by 2 desc;

select PrimeiroNome , UltimoNome, Genero from Atores where Genero like 'M';

select PrimeiroNome , UltimoNome, Genero from Atores where Genero like 'F' order by PrimeiroNome;

select f.nome , g.genero from filmes f inner join FilmesGenero fg on f.Id=fg.Id inner join Generos g on fg.Id=g.Id;

 select f.nome , g.genero from FilmesGenero fg 
  inner join Filmes f on fg.IdFilme=f.Id 
  inner join Generos g on fg.IdGenero =g.id  
  where g.Genero like 'Mistério';
  

select f.Nome as NomeFilme, a.PrimeiroNome , a.UltimoNome,ef.Papel  from ElencoFilme ef 
inner join Filmes f on f.id = ef.IdFilme
inner join Atores a on a.id = ef.IdAtor
