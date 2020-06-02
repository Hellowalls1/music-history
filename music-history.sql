--SELECT
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

--15)
--SELECT album.Title, album.AlbumLength
--FROM Album album
--WHERE album.AlbumLength = {
--	SELECT MAX(AlbumLength) FROM album
--	};

--8)
--INSERT INTO ALBUM (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('Billie Eilish Record', 2017, 2198, 'Her Label', 28, 4);

INSERT INTO SONG (