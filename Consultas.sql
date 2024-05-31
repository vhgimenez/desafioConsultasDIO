1 - SELECT Nome, Ano
FROM dbo.Filmes;

2 - SELECT Nome, Ano
FROM dbo.Filmes
ORDER BY Ano ASC;

3 - SELECT Nome, Ano, Duracao
FROM dbo.Filmes
WHERE Nome = 'De Volta para o Futuro';

4 - SELECT Nome, Ano, Duracao
FROM dbo.Filmes
WHERE Ano = 1997;

5 - SELECT Nome, Ano, Duracao
FROM dbo.Filmes
WHERE Ano > 2000;

6 - SELECT Nome, Ano, Duracao
FROM dbo.Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC;

7 - SELECT Ano, COUNT(*) AS QuantidadeFilmes
FROM dbo.Filmes
GROUP BY Ano
ORDER BY QuantidadeFilmes DESC;

8 - SELECT PrimeiroNome, UltimoNome
FROM dbo.Atores
WHERE Genero = 'M';

9 - SELECT PrimeiroNome, UltimoNome
FROM dbo.Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome;

10 - SELECT Filmes.Nome AS NomeDoFilme, Generos.Nome AS Genero
FROM dbo.Filmes
JOIN dbo.Generos ON Filmes.GeneroID = Generos.ID;

11 - SELECT Filmes.Nome AS NomeDoFilme, Generos.Genero AS Genero
FROM dbo.Filmes
JOIN dbo.FilmesGenero ON Filmes.ID = FilmesGenero.IdFilme
JOIN dbo.Generos ON FilmesGenero.IdGenero = Generos.ID
WHERE Generos.Genero = 'Mistério';

12 - SELECT Filmes.Nome AS NomeDoFilme, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM dbo.Filmes
JOIN dbo.ElencoFilme ON Filmes.ID = ElencoFilme.IdFilme
JOIN dbo.Atores ON ElencoFilme.IdAtor = Atores.ID;