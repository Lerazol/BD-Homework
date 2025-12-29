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


INSERT into tracks  (name, duration, album_id) VALUES
('Вавилон', (TRUNC(3.56) * 60) + ROUND((3.56 - TRUNC(3.56)) * 100),  4),
 ('Смутное время',(TRUNC(4.50) * 60) + ROUND((4.50 - TRUNC(4.50)) * 100), 4),
 ('Mentiras',(TRUNC(3.58) * 60) + ROUND((3.58 - TRUNC(3.58)) * 100), 1),
 ('Bipolar', (TRUNC(3.58) * 60) + ROUND((3.58 - TRUNC(3.58)) * 100), 1),
 ('Дорого',(TRUNC(2.38) * 60) + ROUND((2.38 - TRUNC(2.38)) * 100), 3),
 ('Яблоки ела',(TRUNC(3.17) * 60) + ROUND((3.17 - TRUNC(3.17)) * 100), 2),
 ('My corazon',(TRUNC(3.25) * 60) + ROUND((3.25 - TRUNC(3.25)) * 100), 1),
 ('Луна',(TRUNC(3.14) * 60) + ROUND((3.14 - TRUNC(3.14)) * 100), 6),
 ('Una Flor',(TRUNC(3.18) * 60) + ROUND((3.18 - TRUNC(3.18)) * 100), 5);

INSERT into tracks  (name, duration, album_id) VALUES
('myself',(TRUNC(3.45) * 60) + ROUND((3.45 - TRUNC(3.45)) * 100), 1),
('by myself',(TRUNC(3.55) * 60) + ROUND((3.55 - TRUNC(3.55)) * 100), 2),
('bemy self',(TRUNC(3.47) * 60) + ROUND((3.47 - TRUNC(3.47)) * 100), 3),
('myself by',(TRUNC(3.20) * 60) + ROUND((3.20 - TRUNC(3.20)) * 100), 4),
('by myself by',(TRUNC(3.46) * 60) + ROUND((3.46 - TRUNC(3.46)) * 100), 5),
('beemy',(TRUNC(3.35) * 60) + ROUND((3.35 - TRUNC(3.35)) * 100), 1),
('premyne',(TRUNC(3.56) * 60) + ROUND((3.56 - TRUNC(3.56)) * 100), 2);



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
   


   

   
   
