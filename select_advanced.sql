-- 1.    количество исполнителей в каждом жанре;
select g.name, COUNT(a.name) as artists from genres as g 
	join genresartists as ga on g.id = ga.genre_id 
	join artists as a on ga.artist_id = a.id
	group by g.name;
	
-- 2.    количество треков, вошедших в альбомы 2019-2020 годов;
select count(t.name) from albums as a 
	join tracks as t on a.id = t.albums_id
	where extract(year from a.date) = 2019 or extract(year from a.date) = 2020;
	
-- 3.    средняя продолжительность треков по каждому альбому;
select a.name, avg(t.length) from albums as a 
	join tracks as t on a.id = t.albums_id
	group by a.name;
	
-- 4.    все исполнители, которые не выпустили альбомы в 2020 году;
select a.name from artists as a
	where a.name not in (select ar.name from artists as ar 
		full join albumsartists as aa on ar.id = aa.artist_id
		full join albums as al on al.id = aa.album_id
		where extract(year from al.date) = 2020);
		
-- 5.    названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
select distinct c.name from collections as c 
	join trackscollections as tc on c.id = tc.collection_id
	join tracks as t on t.id = tc.track_id
	join albumsartists as aa on aa.album_id = t.albums_id  
	join artists as ar on ar.id = aa.artist_id
	where ar.name = 'Sting';

-- 6.    название альбомов, в которых присутствуют исполнители более 1 жанра;
select distinct al.name from albums as al 
	join albumsartists as aa on al.id = aa.album_id 
	join artists as ar on aa.artist_id = ar.id  
	join genresartists as ga on aa.artist_id = ga.artist_id
	where ga.artist_id in (select ga.artist_id from genresartists as ga group by ga.artist_id having count(ga.artist_id) > 1);
	

-- 7.    наименование треков, которые не входят в сборники;
select tr.name from tracks as tr 
	full join trackscollections as tc on tr.id = tc.track_id
	where tr.id isnull or tc.track_id isnull;

-- 8.    исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
select ar.name from artists as ar
	join albumsartists as aa on ar.id = aa.artist_id 
	join tracks as tr on tr.albums_id = aa.album_id 
	where tr.length = (select min(tr.length) from artists as ar
		join albumsartists as aa on ar.id = aa.artist_id 
		join tracks as tr on tr.albums_id = aa.album_id);

-- 9.    название альбомов, содержащих наименьшее количество треков.
select al.name from albums as al
	full join tracks as tr on al.id = tr.albums_id
--	where al.id in ()
;










