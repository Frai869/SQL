--Исправлено множественное добавление:
INSERT INTO album(name, year) values
	('White album', '2018-02-14'),
	('Best album', '2019-07-01'),
	('Platinum album', '2020-08-01'),
	('New album', '2021-01-01'),
	('Dead album', '2016-10-31');

INSERT INTO artist(name) values
	('AC/BC'),
	('Netologica'),
	('Dipped In Purple'),
	('Think Floyd'),
	('Iron Maken');

INSERT INTO collection(name, year) values
	('Ultra ballads', '2022-01-01'),
	('Crazy hits', '2021-03-08'),
	('The best songs', '2020-03-08'),
	('Gold collection', '2023-01-01'),
	('Newest tracks', '2024-02-14');

INSERT INTO genre(name) values
	('Hard Rock'),
	('Punk Rock'),
	('Pop Rock'),
	('Post Rock');

-- Добавлены имена треков для выборки по слову "my":
INSERT INTO track(name, length, album_id) values
	('my own', '00:03:00', 1),
	('own my', '00:03:20', 2),
	('my', '00:03:44', 3),
	('oh my god', '00:02:59', 4),
	('myself', '00:03:05', 5),
	('by myself', '00:05:21', 1),
	('bemy self', '00:03:33', 2),
	('myself by', '00:03:59', 3),
	('by myself by', '00:06:55', 4),
	('beemy', '00:05:15', 5),
	('premyne', '00:02:41', 1),
	('The Message', '00:03:03', 2),
	('Yesterday', '00:04:09', 3),
	('Crazy', '00:05:39', 4),
	('My Girl', '00:03:14', 5),
	('Hot Stuff', '00:03:20', 1),
	('Crazy in Love', '00:02:54', 2),
	('Stand by Me', '00:04:44', 3),
	('Rock and Roll Music', '00:05:40', 4),
	('Your Song', '00:06:30', 1),
	('Purple Rain', '00:01:50', 2),
	('Earth Angel', '00:04:10', 3),
	('Rave On', '00:02:11', 4),
	('Bring the Noise', '00:03:00', 1),
	('Fast Car', '00:05:23', 2),
	('Dream On', '00:03:29', 3),
	('Green Onions', '00:06:05', 1),
	('Desolation Row', '00:05:41', 2),
	('Peggy Sue', '00:04:52', 3),
	('Maybe', '00:02:36', 1),
	('Lean on Me', '00:04:47', 2),
	('In My Room', '00:03:45', 1),
	('Boom Boom', '00:04:49', 2),
	('Only the Lonely', '00:02:25', 1),
	('Everyday', '00:02:55', 1);

INSERT INTO track_collection(track_id, collection_id) values
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 1),
	(7, 2),
	(8, 3),
	(9, 4),
	(10, 5),
	(11, 1),
	(12, 2),
	(13, 3),
	(14, 4),
	(15, 5),
	(16, 1),
	(17, 2),
	(18, 3),
	(19, 4),
	(20, 5),
	(21, 1),
	(22, 2),
	(23, 3),
	(24, 4),
	(25, 5),
	(26, 1),
	(27, 2),
	(28, 3),
	(29, 4),
	(30, 5),
	(31, 1),
	(1, 2),
	(2, 3),
	(3, 4),
	(4, 5);

INSERT INTO artist_genre(genre_id, artist_id) values
	(1, 5),
	(2, 4),
	(3, 3),
	(4, 2),
	(3, 1);

INSERT INTO album_artist(album_id, artist_id) values
	(1, 5),
	(2, 4),
	(3, 3),
	(4, 2),
	(5, 1);
