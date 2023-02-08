--Создание жанров
insert into Genres (name) VALUES ('Rock');
insert into Genres (name) VALUES ('Pop');
insert into Genres (name) VALUES ('Folk');
insert into Genres (name) VALUES ('Industrial');
insert into Genres (name) VALUES ('Calssic');
insert into Genres (name) VALUES ('Naftalin');

--Создание испонителей
insert into Artists (name) VALUES ('Rasmus');
insert into Artists (name) VALUES ('Jackson');
insert into Artists (name) VALUES ('linkin Park');
insert into Artists (name) VALUES ('Limp Bizkit');
insert into Artists (name) VALUES ('Aria');
insert into Artists (name) VALUES ('Amatory');
insert into Artists (name) VALUES ('Knyazz');
insert into Artists (name) VALUES ('Sting');
insert into Artists (name) VALUES ('Neverlove');
insert into Artists (name) VALUES ('LASCALA');

--Создание альбомов
insert into Albums (name, date) 
    VALUES ('Black', '2022-01-01');
insert into Albums (name, date) 
    VALUES ('White', '2023-01-01');
insert into Albums (name, date) 
    VALUES ('Red', '2022-01-01');
insert into Albums (name, date) 
    VALUES ('Greed', '2023-01-01');
insert into Albums (name, date) 
    VALUES ('Dogs', '2022-01-01');
insert into Albums (name, date) 
    VALUES ('Cats', '2023-01-01');
insert into Albums (name, date) 
    VALUES ('Beer', '2018-01-01');
insert into Albums (name, date) 
    VALUES ('Bear', '2018-01-01');
insert into Albums (name, date) 
    VALUES ('Strong', '2022-01-01');
insert into Albums (name, date) 
    VALUES ('Soft', '2023-01-01');

--Создание сборников
insert into collections (name, date)  
    VALUES ('Mirracle', '2018-12-25');
insert into collections (name, date)  
    VALUES ('Beauty and beauty', '2021-1-1');
insert into collections (name, date)  
    VALUES ('Not of Us', '2022-12-25');
insert into collections (name, date)  
    VALUES ('Table to talks', '2019-1-1');
insert into collections (name, date)  
    VALUES ('Down to the everest', '2007-12-25');
insert into collections (name, date)  
    VALUES ('Simple stones', '1999-1-1');
insert into collections (name, date)  
    VALUES ('My limits', '2008-12-25');
insert into collections (name, date)  
    VALUES ('Afterparty', '1998-1-1');

--Создание треков
insert into Tracks (name, length, date, Albums_Id) 
    VALUES ('Mother of Hollywood', 110, '2022-01-01', 1);
insert into Tracks (name, length, date, Albums_Id) 
    VALUES ('Welcome to Sothci', 120, '2022-02-01', 2);
insert into Tracks (name, length, date, Albums_Id) 
    VALUES ('No name park', 130, '2022-02-01', 1);
insert into Tracks (name, length, date, Albums_Id) 
    VALUES ('Die on the moon', 64, '2022-01-01', 1);
insert into Tracks (name, length, date, Albums_Id) 
    VALUES ('lie me now', 321, '2022-02-01', 2);
insert into Tracks (name, length, date, Albums_Id) 
    VALUES ('Greate Wall', 811, '2022-02-01', 1);
insert into Tracks (name, length, date, Albums_Id) 
    VALUES ('Summer song', 210, '2022-01-01', 1);
insert into Tracks (name, length, date, Albums_Id) 
    VALUES ('Need for duty free', 188, '2022-02-01', 2);
insert into Tracks (name, length, date, Albums_Id) 
    VALUES ('Generates', 200, '2022-02-01', 1);
insert into Tracks (name, length, date, Albums_Id) 
    VALUES ('My money not for honey', 201, '1992-02-01', 3);
insert into Tracks (name, length, date, Albums_Id) 
    VALUES ('Ты мой поросёнок', 202, '1992-02-05', 4);

--Создание связей
insert into GenresArtists VALUES (1, 2);
insert into GenresArtists VALUES (2, 1);
insert into GenresArtists VALUES (2, 2);

insert into AlbumsArtists VALUES (1, 1);
insert into AlbumsArtists VALUES (1, 2);
insert into AlbumsArtists VALUES (2, 2);

insert into trackscollections VALUES (1, 1);
insert into trackscollections VALUES (1, 2);
insert into trackscollections VALUES (2, 2);