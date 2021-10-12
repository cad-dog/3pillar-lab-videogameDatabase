USE videogame
GO

INSERT INTO Rating
    (esrbRating)
VALUES
    ('M'),      --1
    ('E'),      --2
    ('T')      --3

INSERT INTO Videogame
    (
        ratingId,
        title,
        price,
        releaseDate
    )
VALUES
    (
        1,
        'Battlefield 2042',
        1399,
        '2021-11-19'
    ),
    (
        2,
        'Super Smash Bros. Ultimate',
        1349,
        '2018-12-07'
    ),
    (
        3,
        'Spider-Man: Miles Morales',
        1099,
        '2020-11-12'
    ),
    (
        3,
        'New World',
        499.99,
        '2021-09-28'
    ),
    (
        2,
        'Nickelodeon All-Star Brawl',
        363.99,
        '2021-10-4'
    ),
    (
        2,
        'FIFA 22',
        1399,
        '2021-09-30'
    ),
    (
        2,
        'Subnautica',
        139.99,
        '2018-01-23'
    ),
    (
        1,
        'The Outer Worlds',
        494.67,
        '2020-10-23'
    ),
    (
        1,
        'Death Stranding',
        458.50,
        '2020-07-14'
    ),
    (
        3,
        'Death''s Door',
        232,
        '2021-07-20'
    )

INSERT INTO Developer
    ([name])
VALUES
    ('DICE'),                           --1
    ('Bandai Namco Studios'),           --2
    ('Sora Ltd.'),                      --3
    ('Insomniac Games'),                --4
    ('Amazon Games'),                   --5
    ('Ludosity'),                       --6
    ('Fair Play Labs'),                 --7
    ('EA Canada'),                      --8
    ('U.W.E.'),   --10
    ('Obsidian Entertainment'),         --11
    ('KOJIMA PRODUCTIONS'),             --12
    ('Kojima'),                         --13
    ('Acid Nerve')

INSERT INTO VideogameDeveloper
    (videogameId, developerId)
VALUES
    (1, 1),
    (2, 2),
    (2, 3),
    (3, 4),
    (4, 5),
    (5, 6),
    (5, 7),
    (6, 8),
    (7, 9),
    (8, 10),
    (9, 11),
    (9, 12),
    (10, 13)

INSERT INTO [Language]
    ([language])
VALUES
    ('English'),                    --1
    ('French'),                     --2
    ('Italian'),                    --3
    ('German'),                     --4
    ('Spanish - Spain'),            --5
    ('Arabic'),                     --6
    ('Japanese'),                   --7
    ('Korean'),                     --8
    ('Polish'),                     --9
    ('Portuguese - Brazil'),        --10
    ('Russian'),                    --11
    ('Simplified Chinese'),         --12
    ('Spanish - Latin America'),    --13
    ('Traditional Chinese'),         --14
    ('Deutsch'),                    --15
    ('Czech'),                      --16
    ('Danish'),                     --17
    ('Norwegian'),                  --18
    ('Swedish'),                    --19
    ('Turkish')                     --20

INSERT INTO VideogameLanguage
    (videogameId, languageId)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (1, 4),
    (1, 5),
    (1, 6),
    (1, 7),
    (1, 8),
    (1, 9),
    (1, 10),
    (1, 11),
    (1, 12),
    (1, 13),
    (1, 14),
    (2, 1),
    (2, 15),
    (3, 1),
    (3, 2),
    (3, 10),
    (3, 13),
    (4, 1),
    (4, 2),
    (4, 3),
    (4, 4),
    (4, 5),
    (4, 9),
    (4, 10),
    (4, 13),
    (5, 1),
    (5, 2),
    (5, 3),
    (5, 4),
    (5, 13),
    (5, 15),
    (6, 1),
    (6, 2),
    (6, 3),
    (6, 4),
    (6, 5),
    (6, 6),
    (6, 7),
    (6, 8),
    (6, 9),
    (6, 10),
    (6, 11),
    (6, 12),
    (6, 13),
    (6, 14),
    (6, 15),
    (6, 16),
    (6, 17),
    (6, 18),
    (6, 19),
    (6, 20),
    (7, 1),
    (7, 2),
    (7, 3),
    (7, 4),
    (7, 5),
    (7, 6),
    (7, 7),
    (7, 8),
    (7, 9),
    (7, 10),
    (7, 11),
    (7, 12),
    (7, 13),
    (7, 14),
    (7, 15),
    (7, 16),
    (7, 17),
    (7, 18),
    (7, 19),
    (7, 20),
    (8, 1),
    (8, 2),
    (8, 3),
    (8, 4),
    (8, 5),
    (8, 7),
    (8, 8),
    (8, 9),
    (8, 10),
    (8, 11),
    (8, 12),
    (9, 1),
    (9, 2),
    (9, 3),
    (9, 4),
    (9, 5),
    (9, 6),
    (9, 7),
    (9, 8),
    (9, 9),
    (9, 10),
    (9, 11),
    (9, 12),
    (9, 13),
    (9, 14),
    (9, 15),
    (9, 16),
    (9, 17),
    (9, 18),
    (9, 19),
    (9, 20),
    (10, 1),
    (10, 2),
    (10, 4),
    (10, 5),
    (10, 7),
    (10, 8),
    (10, 10),
    (10, 11),
    (10, 12),
    (10, 14)



INSERT INTO Genre
    ([name])
VALUES
    ('Action'),                 --1
    ('Adventure'),              --2
    ('Casual'),                 --3
    ('Platforms'),              --4
    ('Fighting'),               --5
    ('Massively Multiplayer'),  --6
    ('MMORPG'),                 --7
    ('Open World'),             --8
    ('Simulation'),             --9
    ('Sports'),                 --10
    ('Indie'),                  --11
    ('RPG')                     --12

INSERT INTO VideogameGenre
    (videogameId, genreId)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (2, 4),
    (2, 5),
    (3, 1),
    (4, 6),
    (4, 7),
    (4, 8),
    (5, 4),
    (5, 5),
    (6, 9),
    (6, 10),
    (7, 2),
    (7, 11),
    (8, 12),
    (9, 1),
    (9, 2),
    (10, 1),
    (10, 2),
    (10, 11),
    (10, 12)

INSERT INTO Platform
    ([name])
VALUES
    ('PC'),                 --1
    ('PlayStation 5'),      --2
    ('Xbox Series X/S'),    --3
    ('PlayStation 4'),      --4
    ('Xbox One'),           --5
    ('Nintendo Switch')     --6

INSERT INTO VideogamePlatform
    (videogameId, platformId)
VALUES
    (1, 1),
    (1, 2),
    (1, 3),
    (1, 4),
    (1, 5),
    (2, 6),
    (3, 2),
    (3, 4),
    (4, 1),
    (5, 1),
    (5, 2),
    (5, 3),
    (5, 4),
    (5, 5),
    (5, 6),
    (6, 1),
    (6, 2),
    (6, 3),
    (6, 4),
    (6, 5),
    (6, 6),
    (7, 1),
    (7, 2),
    (7, 3),
    (7, 4),
    (7, 5),
    (7, 6),
    (8, 1),
    (8, 4),
    (8, 5),
    (8, 6),
    (9, 1),
    (9, 2),
    (9, 4),
    (10, 1),
    (10, 3),
    (10, 5)