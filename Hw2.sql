CREATE TABLE IF NOT EXISTS Album (
	id SERIAL primary KEY,
	name VARCHAR(80) NOT NULL,
	year date NOT null check (year > 01.1900)
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL primary key,
	name VARCHAR(80) not null,
	year date NOT null check (year > 01.1900)
	);

CREATE TABLE IF NOT EXISTS Track (
	id SERIAL primary KEY,
	name VARCHAR(80) NOT NULL,
	length INTEGER NOT NULL,
	album_id INTEGER NOT NULL references Album(id)
);

CREATE TABLE IF NOT EXISTS Artist (
	id SERIAL primary key,
	name VARCHAR(80) UNIQUE not null
);

CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL primary key,
	name VARCHAR(80) not null
);

CREATE TABLE IF NOT EXISTS Artist_Genre (
	genre_id integer references Genre(id),
	artist_id integer references Artist(id),
	constraint ag primary key (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS Album_Artist (
	album_id integer references Album(id),
	artist_id integer references Artist(id),
	constraint aa primary key (artist_id, album_id)
);

CREATE TABLE IF NOT EXISTS Track_Collection (
	track_id integer references Track(id),
	collection_id integer references Collection(id),
	constraint tc primary key (track_id, collection_id)
);