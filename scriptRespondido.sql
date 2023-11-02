--1 - Buscar o nome e ano dos filmes
SELECT 
	Nome,
	ano
FROM 
	Filmes
GO
-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT
	*
FROM
	Filmes
ORDER BY 
	Ano
GO
-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE 
	Nome = 'De volta para o futuro'
GO
-- 4 - Buscar os filmes lançados em 1997
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE 
	Ano = 1997
GO
-- 5 - Buscar os filmes lançados APÓS o ano 2000
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE 
	Ano >= 2000
GO
--6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
WHERE 
	Duracao < 150 AND Duracao > 100
GO
--7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT
	Ano,
	COUNT(Ano) AS 'Quantidade'
FROM
	Filmes

GROUP BY 
	Ano,
	Ano
ORDER BY
	Quantidade DESC
GO
--8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT
	*
FROM 
	Atores
WHERE 
	Genero = 'M'
GO
--9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
	*
FROM 
	Atores
WHERE 
	Genero = 'F'
ORDER BY
	PrimeiroNome
GO
--10 - Buscar o nome do filme e o gênero
SELECT F.Nome AS NomeDoFilme, G.Genero
FROM Filmes AS F
INNER JOIN FilmesGenero AS FG ON F.Id = FG.IdFilme
INNER JOIN Generos AS G ON FG.IdGenero = G.Id;
GO
--11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT f.Nome AS NomeDoFilme, g.Genero AS Genero
FROM Filmes AS f
INNER JOIN FilmesGenero AS fg ON f.Id = fg.IdFilme
INNER JOIN Generos AS g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';
GO
--12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT F.Nome AS NomeDoFilme, A.PrimeiroNome, A.UltimoNome, EF.Papel
FROM Filmes AS F
INNER JOIN ElencoFilme AS EF ON F.Id = EF.IdFilme
INNER JOIN Atores AS A ON EF.IdAtor = A.Id;
GO
