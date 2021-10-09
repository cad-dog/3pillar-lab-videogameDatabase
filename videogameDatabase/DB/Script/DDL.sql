CREATE DATABASE videogame;
GO
USE videogame;

CREATE TABLE Rating
(
	ratingId INT IDENTITY(1,1),
	esrbRating NVARCHAR(50) NOT NULL,
	PRIMARY KEY(ratingId)
)

CREATE TABLE Videogame
(
	videogameId INT IDENTITY(1,1),
	ratingId INT,
	title NVARCHAR(100) NOT NULL,
	price FLOAT,
	releaseDate DATE,
	PRIMARY KEY(videogameId),
	FOREIGN KEY(ratingId) REFERENCES Rating(ratingId),
)

CREATE TABLE Developer
(
	developerId INT IDENTITY(1,1),
	[name] NVARCHAR(100) NOT NULL,
	PRIMARY KEY(developerId)
)

CREATE TABLE Genre
(
	genreId INT IDENTITY(1,1),
	[name] NVARCHAR(50) NOT NULL,
	PRIMARY KEY(genreId)
)

CREATE TABLE [Language]
(
	languageId INT IDENTITY(1,1),
	[language] NVARCHAR(50) NOT NULL,
	PRIMARY KEY(languageId)
)

CREATE TABLE [Platform]
(
	platformId INT IDENTITY(1,1),
	[name] NVARCHAR(50) NOT NULL,
	PRIMARY KEY(platformId)
)

CREATE TABLE VideogameDeveloper
(
    id INT IDENTITY(1,1),
    videogameId INT,
    developerId INT,
    PRIMARY KEY(id),
    FOREIGN KEY(videogameId) REFERENCES Videogame(videogameId),
    FOREIGN KEY(developerId) REFERENCES Developer(developerId),
)

CREATE TABLE VideogameGenre
(
	id INT IDENTITY(1,1),
	videogameId INT,
	genreId INT,
	PRIMARY KEY(id),
	FOREIGN KEY(videogameId) REFERENCES Videogame(videogameId),
	FOREIGN KEY(genreId) REFERENCES Genre(genreId),
)

CREATE TABLE VideogameLanguage
(
	id INT IDENTITY(1,1),
	videogameId INT,
	languageId INT,
	PRIMARY KEY(id),
	FOREIGN KEY(videogameId) REFERENCES Videogame(videogameId),
	FOREIGN KEY(languageId) REFERENCES [Language](languageId),
)

CREATE TABLE VideogamePlatform
(
	id INT IDENTITY(1,1),
	videogameId INT,
	platformId INT,
	PRIMARY KEY(id),
	FOREIGN KEY(videogameId) REFERENCES Videogame(videogameId),
	FOREIGN KEY(platformId) REFERENCES [Platform](platformId),
)