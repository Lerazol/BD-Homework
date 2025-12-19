INSERT INTO singers (name) VALUES ('Dani J');
INSERT INTO singers (name) VALUES ('Пропаганда');
INSERT INTO singers (name) VALUES ('Джиган');
INSERT INTO singers (name) VALUES ('Кипелов');

INSERT into genres  (name) VALUES ('Bachata');
INSERT into genres  (name) VALUES ('Pop');
INSERT into genres  (name) VALUES ('Rap');
INSERT into genres  (name) VALUES ('Hard-rock');

INSERT into albums  (name, year) VALUES ('Tu Juguete', 2014);
INSERT into albums  (name, year) VALUES ('Так и быть', 2013);
INSERT into albums  (name, year ) VALUES ('Дорого', 2025);
INSERT into albums  (name, year) VALUES ('Вавилон', 2004);
INSERT into albums  (name, year) VALUES ('Tentación', 2020);
INSERT into albums  (name, year) VALUES ('Край рая', 2019);


INSERT into tracks  (name, duration, album_id) VALUES ('Вавилон', 3.56 ,  4);
INSERT into tracks  (name, duration, album_id) VALUES ('Смутное время', 4.50, 4);
INSERT into tracks  (name, duration, album_id) VALUES ('Mentiras', 3.58, 1);
INSERT into tracks  (name, duration, album_id) VALUES ('Bipolar', 3.58, 1);
INSERT into tracks  (name, duration, album_id) VALUES ('Дорого', 2.38, 3);
INSERT into tracks  (name, duration, album_id) VALUES ('Яблоки ела', 3.17, 2);
INSERT into tracks  (name, duration, album_id) VALUES ('My corazon', 3.25, 1);
INSERT into tracks  (name, duration, album_id) VALUES ('Луна', 3.14, 6);
INSERT into tracks  (name, duration, album_id) VALUES ('Una Flor', 3.18, 5);



INSERT into collections  (name, year) VALUES ('Hits numder 1', 2021);
INSERT into collections  (name, year) VALUES ('Hits numder 2', 2022);
INSERT into collections  (name, year) VALUES ('Hits numder 3', 2023);
INSERT into collections  (name, year) VALUES ('Hits numder 4', 2024);
INSERT into collections  (name, year) VALUES ('Hits numder 5', 2019);




INSERT INTO singers_genres (singer_id, genre_id)
VALUES
    (4, 9), 
    (5, 10),  
    (6, 11), 
    (7, 12); 
   
INSERT INTO singers_albums (singer_id, album_id)
VALUES
    (4, 1),
    (4, 5),
    (5, 2),  
    (6, 3), 
    (6, 6),
    (7, 4); 
   
   
INSERT INTO collection_tracks (collection_id, track_id)
VALUES
    (1, 8), 
    (1, 9),  
    (1, 16), 
    (2, 10),
    (2, 11), 
    (3, 12),  
    (3, 13), 
    (4, 14),
    (4, 8), 
    (4, 15),  
    (5, 12), 
    (5, 16);
   
