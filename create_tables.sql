create table if not exists Genres (
	id serial primary key,
	name varchar(60) not null,
	unique (name)
);

create table if not exists Artists (
	id serial primary key,
	name varchar(60) not null,
	unique (name)
);

create table if not exists Albums (
	id serial primary key,
	name varchar(60) not null,
	date date not null check (date >= '1900-1-1' and date <= current_date)
);

create table if not exists Collections (
	id serial primary key,
	name varchar(60) not null,
	date date not null check (date >= '1900-1-1' and date <= current_date)
);

create table if not exists Tracks (
	id serial primary key,
	name varchar(60) not null,
	length integer not null,
	date date not null check (date >= '1900-1-1' and date <= current_date),
	Albums_Id integer references Albums(id) not null
);

create table if not exists GenresArtists (
	primary key(Artist_Id, Genre_Id),
	Artist_Id integer references Artists(id) not null,
	Genre_Id integer references Genres(id) not null
);

create table if not exists AlbumsArtists (
	primary key(Artist_Id, Album_Id),
	Artist_Id integer references Artists(id) not null,
	Album_Id integer references Albums(id) not null
);

create table if not exists TracksCollections (
	primary key(Track_Id, Collection_Id),
	Track_Id integer references Tracks(id) not null,
	Collection_Id integer references Collections(id) not null
);