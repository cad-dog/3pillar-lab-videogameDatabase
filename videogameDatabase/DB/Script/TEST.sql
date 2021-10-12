--Rating CRUD Testing
EXEC ReadRatings;
GO
EXEC CreateRating 'R'
GO
EXEC ReadRatings;
GO
EXEC UpdateRating 4, 'B'
GO
EXEC ReadRatings;
GO
EXEC DeleteRating 4
GO
EXEC ReadRatings;

--Videogame CRUD Testing
EXEC ReadVideogames
EXEC CreateVideogame 1, 'The Binding Of Isaac', 200, '2016-10-10'
EXEC ReadVideogames
EXEC UpdateVideogame 11, 2, 'The Binding Of Isaac: Afterbirth', 300, '2018-10-10'
EXEC ReadVideogames
EXEC DeleteVideogame 11
EXEC ReadVideogames

--Developer CRUD Testing
EXEC ReadDevelopers
EXEC CreateDeveloper 'TobyFox'
EXEC ReadDevelopers
EXEC UpdateDeveloper 14, 'Concerned Ape'
EXEC ReadDevelopers
EXEC DeleteDeveloper 14
EXEC ReadDevelopers

--Genre CRUD Testing
EXEC ReadGenres
EXEC CreateGenre 'Metroidvania'
EXEC ReadGenres
EXEC UpdateGenre 13, 'Roguelike'
EXEC ReadGenres
EXEC DeleteGenre 13
EXEC ReadGenres

--Language CRUD Testing
EXEC ReadLanguages
EXEC CreateLanguage 'Czech'
EXEC ReadLanguages
EXEC UpdateLanguage 21, 'Ukrainian'
EXEC ReadLanguages
EXEC DeleteLanguage 21
EXEC ReadLanguages

--Platform CRUD Testing
EXEC ReadPlatforms
EXEC CreatePlatform 'SNES'
EXEC ReadPlatforms
EXEC UpdatePlatform 7, 'Nintendo 64'
EXEC ReadPlatforms
EXEC DeletePlatform 7
EXEC ReadPlatforms

--VideogameDeveloper CRUD Testing
EXEC ReadVideogameDevelopers
EXEC CreateVideogameDeveloper 3, 2
EXEC ReadVideogameDevelopers
EXEC UpdateVideogameDeveloper 14, 2, 3
EXEC ReadVideogameDevelopers
EXEC DeleteVideogameDeveloper 14
EXEC ReadVideogameDevelopers

--VideogameGenre CRUD Testing
EXEC ReadVideogameGenres
EXEC CreateVideogameGenre 3, 2
EXEC ReadVideogameGenres
EXEC UpdateVideogameGenre 23, 2, 3
EXEC ReadVideogameGenres
EXEC DeleteVideogameGenre 23
EXEC ReadVideogameGenres

--VideogameLanguage CRUD Testing
EXEC ReadVideogameLanguages
EXEC CreateVideogameLanguage 3, 2
EXEC ReadVideogameLanguages
EXEC UpdateVideogameLanguage 116, 2, 3
EXEC ReadVideogameLanguages
EXEC DeleteVideogameLanguage 116
EXEC ReadVideogameLanguages

--VideogamePlatform CRUD Testing
EXEC ReadVideogamePlatforms
EXEC CreateVideogamePlatform 3, 2
EXEC ReadVideogamePlatforms
EXEC UpdateVideogamePlatform 38, 2, 3
EXEC ReadVideogamePlatforms
EXEC DeleteVideogamePlatform 38
EXEC ReadVideogamePlatforms