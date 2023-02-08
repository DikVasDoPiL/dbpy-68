--Создание модели
create table if not exists Genres (
	id serial primary key,
	name varchar(60) not null
);

create table if not exists Artists (
	id serial primary key,
	name varchar(60) not null
);

create table if not exists Albums (
	id serial primary key,
	name varchar(60) not null
);

create table if not exists Collections (
	id serial primary key,
	name varchar(60) not null
);

create table if not exists Tracks (
	id serial primary key,
	name varchar(60) not null,
	length numeric(8, 3) not null,
	Albums_Id integer references Albums(id) not null
);

create table if not exists GenresArtists (
	id serial primary key,
	Artist_Id integer references Artists(id) not null,
	Genre_Id integer references Genres(id) not null,
	UNIQUE (Artist_Id, Genre_Id)
);

create table if not exists AlbumsArtists (
	id serial primary key,
	Artist_Id integer references Artists(id) not null,
	Album_Id integer references Albums(id) not null,
	UNIQUE (Artist_Id, Album_Id)
);

create table if not exists TracksCollections (
	id serial primary key,
	Track_Id integer references Tracks(id) not null,
	Collection_Id integer references Collections(id) not null,
	UNIQUE (Track_Id, Collection_Id)
);

-- Заполнение таблиц данными
insert into Genres VALUES (DEFAULT, 'Rock');
insert into Genres VALUES (DEFAULT, 'Pop');

insert into Artists VALUES (DEFAULT, 'Rasmus');
insert into Artists VALUES (DEFAULT, 'Jackson');

insert into Albums VALUES (DEFAULT, 'Black');
insert into Albums VALUES (DEFAULT, 'White');

insert into GenresArtists VALUES (DEFAULT, 1, 2);
insert into GenresArtists VALUES (DEFAULT, 2, 1);
insert into GenresArtists VALUES (DEFAULT, 2, 2);

insert into AlbumsArtists VALUES (DEFAULT, 1, 1);
insert into AlbumsArtists VALUES (DEFAULT, 1, 2);
insert into AlbumsArtists VALUES (DEFAULT, 2, 2);

insert into Tracks VALUES (DEFAULT, 'Mother of Hollywood', 110, 1);
insert into Tracks VALUES (DEFAULT, 'Welcome to Sothci', 180, 2);
insert into Tracks VALUES (DEFAULT, 'No name park', 120, 1);

insert into collections  VALUES (DEFAULT, 'Mirracle');
insert into collections  VALUES (DEFAULT, 'Beauty and beauty');

insert into trackscollections VALUES (DEFAULT, 1, 1);
insert into trackscollections VALUES (DEFAULT, 1, 2);
insert into trackscollections VALUES (DEFAULT, 2, 2);

-- удаление таблиц при необходимости
--drop table if exists GenresArtists; 
--drop table if exists TracksCollections;
--drop table if exists AlbumsArtists; 
--drop table if exists Genres;
--drop table if exists Artists; 
--drop table if exists Tracks;
--drop table if exists Albums; 
--drop table if exists Collections;