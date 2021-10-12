USE videogame
GO

--1. View: Devs involved in game development
CREATE VIEW InvolvedDevs AS
	SELECT v.title, d.[name]
		FROM Videogame v JOIN VideogameDeveloper vd
			ON v.videogameId = vd.videogameId
		JOIN Developer d
			ON d.developerId = vd.developerId

GO

--2. View: Available games for each console
CREATE VIEW ConsoleCatalog As
	SELECT p.[name], v.title
		FROM [Platform] p JOIN VideogamePlatform vp
			ON p.platformId = vp.platformId
		JOIN Videogame v
			ON v.videogameId = vp.videogameId

GO

--3. View: Videogames genres for each videogame
CREATE VIEW GameAndGenre AS
	SELECT v.title, g.[name]
			FROM Videogame v JOIN VideogameGenre vg
				ON v.videogameId = vg.videogameId
			JOIN Genre g
				ON g.genreId = vg.genreId
GO

--4. View: Supported languages for each videogame
CREATE VIEW SupportedLanguage AS
	SELECT v.title, l.[language]
			FROM Videogame v JOIN VideogameLanguage vl
				ON v.videogameId = vl.videogameId
			JOIN [Language] l
				ON l.languageId = vl.languageId
GO

--5. New realeases (games released in 2021)
SELECT releaseDate, title
	FROM Videogame v
		WHERE v.releaseDate > '2020-12-31'
GO

--6. Games With more than 1 dev involved in game development
SELECT title, numDevs
	FROM
	(
		SELECT COUNT(title) numDevs, title
			FROM InvolvedDevs
				GROUP BY title
	) t
		WHERE t.numDevs > 1;
GO

--7. Games with spanish language support
SELECT DISTINCT title
	FROM SupportedLanguage
		WHERE [language] LIKE '%Spanish%'
GO

--8. Platform with the biggest game catalog
SELECT TOP 1 [name], COUNT([name]) numGames
	FROM ConsoleCatalog
		GROUP BY [name]
			ORDER BY numGames DESC;
GO

--9. Average price for a videogame
SELECT AVG(price) avgPrice FROM Videogame
GO

--10. Games with more than 1 game genre
SELECT title, COUNT(title) numGenres
	FROM GameAndGenre
	GROUP BY title
		HAVING COUNT(title) > 1
GO

--11. Most frequent game rating
SELECT TOP 1 r.esrbRating
	FROM Videogame v JOIN Rating r
		ON v.ratingId = r.ratingId
			GROUP BY esrbRating
				ORDER BY COUNT(esrbRating) DESC
GO

--12. Cheapest game
SELECT TOP 1 title, price
	FROM Videogame
		ORDER BY price
GO

--13. Top 3 Most expensive games
SELECT TOP 3 title, price
	FROM Videogame
		ORDER BY price DESC
GO
--14. Oldest release
SELECT TOP 1 title, releaseDate
	FROM Videogame
		ORDER BY releaseDate
GO
--15. Newest release
SELECT TOP 1 title, releaseDate
	FROM Videogame
		ORDER BY releaseDate DESC