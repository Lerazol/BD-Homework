SELECT name, duration 
FROM tracks 
WHERE duration = (SELECT MAX(duration) FROM tracks);


SELECT name, duration 
FROM tracks 
WHERE duration >= 3.5
ORDER BY duration;

SELECT name, year
FROM collections
WHERE year  between 2018 and 2020;

SELECT name
FROM singers 
WHERE name NOT LIKE '% %'
  AND name NOT LIKE '%-%';
 
 
SELECT name
FROM tracks 
WHERE name ILIKE '%my%'
  OR name ILIKE '%мой%';
 
SELECT 
    g.name AS жанр,
    COUNT(sg.singer_id) AS количество_исполнителей
FROM singers_genres sg JOIN genres g ON g.genre_id = sg.genre_id
GROUP BY  g.name;  
 
SELECT 
    a.name, a.year,
    COUNT(t.track_id) AS количество_треков
FROM albums a JOIN tracks t 
ON a.album_id = t.album_id 
where a.year between 2019 and 2020
GROUP BY  a.album_id, a.name, a.year
order by a.year;




SELECT a.album_id , a.name,
AVG (t.duration) AS средняя_продолжительность
FROM tracks t JOIN albums a 
ON a.album_id = t.album_id 
GROUP BY  a.album_id, a.name;
 


SELECT s.name, a.year
FROM singers s JOIN singers_albums sa on s.singer_id = sa.singer_id
JOIN albums a ON sa.album_id = a.album_id
WHERE NOT (a.year = 2020)


select DISTINCT c.name, s.name
from collections c join collection_tracks ct 
on c.collection_id = ct.collection_id
join tracks t 
on ct.track_id = t.track_id
join singers_albums sa 
on t.album_id = sa.album_id
join singers s 
on sa.singer_id = s.singer_id
where s.name = 'Кипелов';



