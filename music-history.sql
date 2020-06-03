﻿--SELECT
--    Id,
--    Title,
--    ReleaseDate
 
--FROM Song;

--SELECT Id, ArtistName
--From Artist;

--SELECT
--   song.Id,
--   song.Title,
--   song.ReleaseDate,
--   song.GenreId,
--   song.ArtistId
--FROM Song song
--JOIN Artist ON song.ArtistId = artist.Id;

--SELECT album.Id, Title, GenreId, genre.Label, artist.ArtistName
--FROM Album album
--JOIN Genre genre ON album.GenreId = genre.Id
--JOIN Artist artist ON album.ArtistId = artist.Id;

--1)
--SELECT 
--	Id,
--	Label
--FROM Genre;

--2)
--SELECT 
--	Id,
--	ArtistName,
--	YearEstablished
--FROM Artist 
--ORDER BY ArtistName;

--3)
--SELECT
--	song.Id,
--	song.Title,
--	song.SongLength,
--	song.ReleaseDate,
--	song.GenreId,
--	song.AlbumId,
--	a.ArtistName
--FROM SONG song
--JOIN Artist a on song.ArtistId = a.id;


--4 TROLLLLL)
--SELECT 
--	a.Id,
--	a.Artistname,
--	a.YearEstablished
--FROM Artist a


--5)
--SELECT
--	a.Id,
--	a.ArtistName,
--	a.YearEstablished,
--	g.Id,
--	g.Label,
--	album.ArtistId
--FROM Artist a
--JOIN Album album ON a.Id = album.ArtistId
--JOIN Genre g ON g.id = album.GenreId
--WHERE album.GenreId = 4 OR album.GenreId = 2;


--6)
--SELECT 
--	album.Id,
--	album.Title,
--	album.Label
--FROM Album album
--LEFT JOIN Song song ON song.AlbumId = album.Id WHERE song.AlbumId IS NULL;
	

--	7)
--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Billie Eilish', 2016);


--8)
--INSERT INTO ALBUM (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Billie Eilish Record', 2017, 2198, 'Her Label', 28, 4);

--9)
--INSERT INTO SONG (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Good Guys', 61, '12/25/2017', 4, 28, 23);
--INSERT INTO SONG (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Bad Guys', 61, '12/25/2017', 4, 28, 23);


--10)
--Select
--	song.Title,
--	album.Title,
--	artist.ArtistName
--From Song song
--JOIN Artist artist ON artist.Id = song.ArtistId
--JOIN Album album ON album.Id = song.AlbumId
--WHERE artist.ArtistName = 'Billie Eilish';

--11)
--Select
--	album.Title AS 'Album', --defining the column?
--	Count(song.Id) AS 'Number of Songs'  --defining the column?
--From Album album
--LEFT JOIN Song song ON album.Id = song.AlbumId
--GROUP BY (album.Title);

--12)
--Select 
--	artist.ArtistName,
--	Count(song.Id) AS 'Number of Songs'
--	FROM Artist artist
--	LEFT JOIN Song song ON song.ArtistId = artist.Id
--	GROUP BY (artist.ArtistName);

--Write a SELECT statement to display how many songs exist for each genre. 
--You'll need to use the COUNT() function and the GROUP BY keyword sequence.

--13)
--Select
--	genre.Label,
--	Count(song.Id) AS 'Number of Songs'
--	FROM Genre genre 
--	LEFT JOIN Song song ON song.GenreId = genre.Id
--	GROUP BY (genre.Label);

--Write a SELECT query that lists the Artists that have put out records on more than one record label. 
--Hint: When using GROUP BY instead of using a WHERE clause, use the HAVING keyword


--14)
--Select 
--	artist.ArtistName,
--	COUNT(DISTINCT album.Label) AS 'Number Of Labels'
--From Album album
--Left Join Artist artist ON  artist.id = album.ArtistId
--GROUP BY artist.ArtistName
--HAVING COUNT(DISTINCT album.Label) > 1;
	

--15)	

--SELECT
--album.Title,
--album.AlbumLength
--FROM Album album
--WHERE album.AlbumLength =
--	(
--	SELECT MAX(AlbumLength) FROM album
--	);


--Using MAX() function, write a select statement to find the song with the longest duration. 
--The result should display the song title and the duration.


16)

SELECT

song.Title,
song.SongLength
From Song song
WHERE song.SongLength = 
	(
	SELECT MAX(SongLength) FROM song
	);



17)	
SELECT

	album.Title AS 'Album Title',
	song.Title AS 'Song Title',
	song.SongLength
	From Album album
	LEFT JOIN Song song ON song.AlbumId = album.id
	WHERE song.SongLength = 
	(
	SELECT MAX(SongLength) FROM song
	);