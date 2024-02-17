-- Название и продолжительность самого длительного трека(+):
select name, length FROM track
where length = (select max(length) from track);

--Название треков, продолжительность которых не менее 3,5 минут(+):
select name, length FROM track
where length >= '00:03:30';

--Названия сборников, вышедших в период с 2018 по 2020 год включительно(+):
select name, year from collection
where year between '2018-01-01' and '2020-12-31';

--Исполнители, чьё имя состоит из одного слова(+):
select name from artist
where name not like '% %';

--Название треков, которые содержат слово «мой» или «my»(Исправлено+):
select name from track
where name ilike 'my %' or name ilike '% my' or name ilike '% my %' or name ilike 'my';

--Другой способ выборки "my"(Добавлено+):
select name from track
where string_to_array(name, ' ') && array['My', 'my'];

--Другой способ выборки "my"(Добавлено+):
select name from track
where name ~* '\mmy' and name ~* 'my\M'

--Количество исполнителей в каждом жанре(+):
SELECT name, COUNT(*) FROM genre
join artist_genre on genre.id = artist_genre.genre_id
group by genre.id

--Количество треков, вошедших в альбомы 2019–2020 годов(Исправлено+):
SELECT COUNT(*) from album
join track on album.id = track.album_id 
where album.year between '2019-01-01' and '2020-12-31';

--Средняя продолжительность треков по каждому альбому(+):
select album.name, avg(track.length) from album
left join track on album.id = track.album_id
group by album.name;

--Все исполнители, которые не выпустили альбомы в 2020 году(Исправлено+):
select artist.name from artist
where artist.name not in (
	select artist.name from artist
	join album_artist on artist.id = album_artist.artist_id
	join album on album_artist.album_id = album.id
	where album.year between '2020-01-01' and '2020-12-31'
);

--Названия сборников, в которых присутствует конкретный исполнитель AC/BC(+):
select distinct collection.name, artist.name from collection
join track_collection on collection.id = track_collection.collection_id
join track on track.id = track_collection.track_id
join album on track.album_id = album.id
join album_artist on album.id = album_artist.album_id
join artist on album_artist.artist_id = artist.id
where artist.name like 'AC/BC';