-- consulta 1, retorna somente nome e ano
SELECT Nome, Ano FROM Filmes

-- consulta 2, retorna nome e ano ordenado por ordem crescente do ano
SELECT Nome, Ano FROM Filmes ORDER BY Ano

-- 3consulta 3, buscar pelo filme de volta para o futuro, trazendo o nome, ano e duracao
SELECT * FROM Filmes WHERE Nome='De Volta para o Futuro'

-- consulta 4, buscar os filmes lancados em 1997 
SELECT * FROM Filmes WHERE Ano = 1997

-- consulta 5, buscar os filmes lancados APOS o ano 2000
SELECT * FROM Filmes WHERE Ano > 2000

-- consulta 6, buscar of filmes com duracao maior que 100 e menor que 150, em ordem crescente 
SELECT * FROM Filmes WHERE 100 < Duracao AND Duracao < 150 ORDER BY Duracao

-- consulta 7 buscar a quantidade de filmes lancadas no ano, agrupando por ano e ordenando em ordem decrescente
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY MAX(Duracao) DESC;

-- consulta 8 buscar os atores do genero masculino, retornando PrimeiroNome e UltimoNome 
SELECT * FROM Atores WHERE Genero = 'M'

-- consulta 9 buscar os atores do genero feminino, retornando PrimeiroNome e UltimoNome 
SELECT * FROM Atores WHERE Genero = 'F'

-- consulta 10 buscar nome do filme e genero OK

SELECT Filmes.Nome AS NomeFilme, Generos.Genero AS Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON Generos.Id = FilmesGenero.IdGenero;

-- consulta 11 Buscar o nome do filme e o genero do tipo misterio 

SELECT Filmes.Nome AS NomeFilme, Generos.Genero AS Genero
FROM Filmes
JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Generos.Genero = 'Mist�rio';

-- consulta 12 Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

SELECT Filmes.Nome AS NomeFilme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes
JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
JOIN Atores ON Atores.Id = ElencoFilme.IdAtor;