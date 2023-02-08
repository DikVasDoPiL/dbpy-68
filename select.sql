--1. название и год выхода альбомов, вышедших в 2018 году;
select distinct name, extract(year from date) as year
	from albums
		where extract(year from date) = 2018;

--2. название и продолжительность самого длительного трека;
select name, length 
	from tracks
		where length = (select max(length) from tracks);
	
--3. название треков, продолжительность которых не менее 3,5 минуты;
	
select name
	from tracks
		where length >= 3.5 * 60;
		
--4. названия сборников, вышедших в период с 2018 по 2020 год включительно;
	
select name
	from collections c 
		where extract(year from date) >= 2018 and extract(year from date) <= 2020;
		
--5. исполнители, чье имя состоит из 1 слова;
	
select name
	from artists 
		where strpos(name, ' ') < 1;
		
--6. название треков, которые содержат слово "мой"/"my"
	
select name
	from tracks
		where name ~* '(my|мой)';
		