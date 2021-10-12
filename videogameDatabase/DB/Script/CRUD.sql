USE videogame
GO

--CRUD Rating

--Create Rating
CREATE PROCEDURE CreateRating
    (@rating NVARCHAR(50))
AS
    INSERT INTO Rating
    VALUES(@rating)
GO

--Read Ratings
CREATE PROCEDURE ReadRatings
AS
    SELECT * FROM Rating
GO

--Update Rating
CREATE PROCEDURE UpdateRating
    (@ratingId INT, @rating NVARCHAR(50))
AS
    UPDATE Rating
    SET esrbRating = @rating
    WHERE ratingId = @ratingId
GO

--Delete Rating
CREATE PROCEDURE DeleteRating
    (@ratingId INT)
AS
    DELETE FROM Rating
    WHERE ratingId = @ratingId
GO

--CRUD Videogame

--Create Videogame
CREATE PROCEDURE CreateVideogame
    (
        @ratingId INT,
        @title NVARCHAR(100),
        @price INT,
        @releaseDate DATE
    )
AS
    INSERT INTO Videogame
    VALUES
        (
            @ratingId,
            @title,
            @price,
            @releaseDate
        )
GO

--Read Videogames
CREATE PROCEDURE ReadVideogames
AS
    SELECT * FROM Videogame
GO
--Update Videogame
CREATE PROCEDURE UpdateVideogame
    (
        @videogameId INT,
        @ratingId INT,
        @title NVARCHAR(100),
        @price INT,
        @releaseDate DATE
    )
AS
    UPDATE Videogame
    SET
		ratingId = @ratingId,
		title = @title,
		price = @price,
		releaseDate = @releaseDate
    WHERE videogameId = @videogameId
GO

--Delete Videogame
CREATE PROCEDURE DeleteVideogame
    (@videogameId INT)
AS
    DELETE FROM Videogame
    WHERE videogameId = @videogameId
GO

--CRUD Developer

--Create Developer
CREATE PROCEDURE CreateDeveloper
    (@developer NVARCHAR(100))
AS
    INSERT INTO Developer
    VALUES(@developer)
GO

--Read Developers
CREATE PROCEDURE ReadDevelopers
AS
    SELECT * FROM Developer
GO

--Update Developer
CREATE PROCEDURE UpdateDeveloper
    (@developerId INT, @developer NVARCHAR(100))
AS
    UPDATE Developer
    SET [name] = @developer
    WHERE developerId = @developerId
GO

--Delete Developer
CREATE PROCEDURE DeleteDeveloper
    (@developerId INT)
AS
    DELETE FROM Developer
    WHERE developerId = @developerId
GO

--CRUD Genre

--Create Genre
CREATE PROCEDURE CreateGenre
    (@genre NVARCHAR(50))
AS
    INSERT INTO Genre
    VALUES(@genre)
GO

--Read Genres
CREATE PROCEDURE ReadGenres
AS
    SELECT * FROM Genre
GO

--Update Genre
CREATE PROCEDURE UpdateGenre
    (@genreId INT, @genre NVARCHAR(50))
AS
    UPDATE Genre
    SET [name] = @genre
    WHERE genreId = @genreId
GO

--Delete Genre
CREATE PROCEDURE DeleteGenre
    (@genreId INT)
AS
    DELETE FROM Genre
    WHERE genreId = @genreId
GO

--CRUD  Language

--Create Language
CREATE PROCEDURE CreateLanguage
    (@language NVARCHAR(50))
AS
    INSERT INTO [Language]
    VALUES(@language)
GO

--Read Languages
CREATE PROCEDURE ReadLanguages
AS
    SELECT * FROM [Language]
GO

--Update Language
CREATE PROCEDURE UpdateLanguage
    (@languageId INT, @language NVARCHAR(50))
AS
    UPDATE [Language]
    SET [language] = @language
    WHERE languageId = @languageId
GO

--Delete Language
CREATE PROCEDURE DeleteLanguage
    (@languageId INT)
AS
    DELETE FROM [Language]
    WHERE languageId = @languageId
GO

--CRUD Platform

--Create Platform
CREATE PROCEDURE CreatePlatform
    (@platform NVARCHAR(50))
AS
    INSERT INTO [platform]
    VALUES(@platform)
GO

--Read Platforms
CREATE PROCEDURE ReadPlatforms
AS
    SELECT * FROM [Platform]
GO

--Update Platform
CREATE PROCEDURE UpdatePlatform
    (@platformId INT, @platform NVARCHAR(50))
AS
    UPDATE [Platform]
    SET [name] = @platform
    WHERE platformId = @platformId
GO

--Delete Platform
CREATE PROCEDURE DeletePlatform
    (@platformId INT)
AS
    DELETE FROM [platform]
    WHERE platformId = @platformId
GO

--CRUD VideogameDeveloper

--Create VideogameDeveloper
CREATE PROCEDURE CreateVideogameDeveloper
    (@videogameId INT, @developerId INT)
AS
    INSERT INTO VideogameDeveloper
        (videogameId, developerId)
    VALUES(@videogameId, @developerId)
GO

--Read VideogameDevelopers
CREATE PROCEDURE ReadVideogameDevelopers
AS
    SELECT * FROM VideogameDeveloper
GO

--Update VideogameDeveloper
CREATE PROCEDURE UpdateVideogameDeveloper
    (@id INT, @videogameId INT, @developerId INT)
AS
    UPDATE VideogameDeveloper
    SET
        videogameId = @videogameId,
        developerId = @developerId
    WHERE id = @id
GO

--Delete VideogameDeveloper
CREATE PROCEDURE DeleteVideogameDeveloper
    (@id INT)
AS
    DELETE FROM VideogameDeveloper
    WHERE id = @id
GO

--CRUD VideogameGenre

--Create VideogameGenre
CREATE PROCEDURE CreateVideogameGenre
    (@videogameId INT, @genreId INT)
AS
    INSERT INTO VideogameGenre
        (videogameId, genreId)
    VALUES(@videogameId, @genreId)
GO

--Read VideogameGenres
CREATE PROCEDURE ReadVideogameGenres
AS
    SELECT * FROM VideogameGenre
GO

--Update VideogameGenre
CREATE PROCEDURE UpdateVideogameGenre
    (@id INT, @videogameId INT, @genreId INT)
AS
    UPDATE VideogameGenre
    SET
        videogameId = @videogameId,
        genreId = @genreId
    WHERE id = @id
GO

--Delete VideogameGenre
CREATE PROCEDURE DeleteVideogameGenre
    (@id INT)
AS
    DELETE FROM VideogameGenre
    WHERE id = @id
GO

--CRUD VideogameLanguage

--Create VideogameLanguage
CREATE PROCEDURE CreateVideogameLanguage
    (@videogameId INT, @languageId INT)
AS
    INSERT INTO VideogameLanguage
        (videogameId, languageId)
    VALUES(@videogameId, @languageId)
GO

--Read VideogameLanguages
CREATE PROCEDURE ReadVideogameLanguages
AS
    SELECT * FROM VideogameLanguage
GO

--Update VideogameLanguage
CREATE PROCEDURE UpdateVideogameLanguage
    (@id INT, @videogameId INT, @languageId INT)
AS
    UPDATE VideogameLanguage
    SET
        videogameId = @videogameId,
        languageId = @languageId
    WHERE id = @id
GO

--Delete VideogameLanguage
CREATE PROCEDURE DeleteVideogameLanguage
    (@id INT)
AS
    DELETE FROM VideogameLanguage
    WHERE id = @id
GO

--CRUD VideogamePlatform

--Create VideogamePlatform
CREATE PROCEDURE CreateVideogamePlatform
    (@videogameId INT, @platformId INT)
AS
    INSERT INTO VideogamePlatform
        (videogameId, platformId)
    VALUES(@videogameId, @platformId)
GO

--Read VideogamePlatforms
CREATE PROCEDURE ReadVideogamePlatforms
AS
    SELECT * FROM VideogamePlatform
GO

--Update VideogamePlatform
CREATE PROCEDURE UpdateVideogamePlatform
    (@id INT, @videogameId INT, @platformId INT)
AS
    UPDATE VideogamePlatform
    SET
        videogameId = @videogameId,
        platformId = @platformId
    WHERE id = @id
GO

--Delete VideogamePlatform
CREATE PROCEDURE DeleteVideogamePlatform
    (@id INT)
AS
    DELETE FROM VideogamePlatform
    WHERE id = @id
GO