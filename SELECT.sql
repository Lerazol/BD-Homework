--2.1
SELECT name, duration 
FROM tracks 
WHERE duration = (SELECT MAX(duration) FROM tracks);

--2.2
SELECT name, duration 
FROM tracks 
WHERE duration >= 230
ORDER BY duration;

--2.3
SELECT name, year
FROM collections
WHERE year  between 2018 and 2020;

--2.4
SELECT name
FROM singers 
WHERE name NOT LIKE '% %'
  AND name NOT LIKE '%-%';
 
--2.5 

SELECT name FROM tracks 
WHERE name ILIKE 'my %'    -- начинается с my
   OR name ILIKE '% my %'  -- my в середине
   OR name ILIKE '% my'    -- заканчивается на my
   OR name ILIKE 'my';     -- равно my
 
--3.1 
SELECT 
    g.name AS жанр,
    COUNT(sg.singer_id) AS количество_исполнителей
FROM singers_genres sg JOIN genres g ON g.genre_id = sg.genre_id
GROUP BY  g.name;  
 
--3.2

SELECT COUNT(t.track_id) AS количество_треков 
FROM albums a -- /* Количество айди треков из таблицы треков */
JOIN tracks t ON a.album_id = t.album_id -- /* Делаем объединение от таблицы треков к альбомам */
WHERE a.year between 2019 and 2020;-- /* Где год альбома находится в требуемом промежутке */

--3.3
SELECT a.album_id , a.name,
AVG (t.duration) AS средняя_продолжительность
FROM tracks t JOIN albums a 
ON a.album_id = t.album_id 
GROUP BY  a.album_id, a.name;
 

--3.4


SELECT s.name -- /* Получаем имена исполнителей */
FROM singers s  --/* Из таблицы исполнителей */
WHERE s.name NOT IN ( -- /* Где имя исполнителя не входит в вложенную выборку */
    SELECT s.name -- /* Получаем имена исполнителей */
    FROM singers s -- /* Из таблицы исполнителей */
    JOIN singers_albums sa ON s.singer_id = sa.singer_id -- /* Объединяем с промежуточной таблицей */
    JOIN albums a ON sa.album_id = a.album_id -- /* Объединяем с таблицей альбомов */
    WHERE a.year = 2020 -- /* Где год альбома равен 2020 */
);

--3.5
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


