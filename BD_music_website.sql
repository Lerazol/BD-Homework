CREATE table if not exists singers(
    singer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);


CREATE TABLE if not exists genres (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE if not exists singers_genres (
    singer_id INT NOT NULL,
    genre_id INT NOT NULL,
    FOREIGN key (singer_id) references singers(singer_id),
    FOREIGN key (genre_id) references genres(genre_id),
    PRIMARY key (singer_id, genre_id)
);

CREATE table if not exists albums(
    album_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT null,
    year INTEGER NOT NULL CHECK (year >= 1900 AND year <= 2100)
);



CREATE TABLE if not exists singers_albums (
    singer_id INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN key (singer_id) references singers(singer_id),
    FOREIGN key (album_id) references genres(album_id),
    PRIMARY key (singer_id, album_id)
);

CREATE TABLE if not exists tracks (
    track_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT null,
    duration INTEGER NOT NULL CHECK (duration > 0 AND duration <= 86400),
    album_id INT NOT NULL,
    FOREIGN key (album_id) references albums (album_id)
    );

CREATE TABLE if not exists collections (
    collection_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    year INTEGER NOT NULL
);

CREATE TABLE if not exists collection_tracks (
    collection_id INT NOT NULL,
    track_id INT NOT NULL,
    FOREIGN key (collection_id) REFERENCES collections (collection_id),
    FOREIGN key (track_id) REFERENCES tracks(track_id),
    PRIMARY key (collection_id, track_id)
);
    
    