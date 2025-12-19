CREATE TABLE IF NOT EXISTS singers(
    singer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS genres (
    genre_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS albums(
    album_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    year INTEGER NOT NULL CHECK (year >= 1900 AND year <= 2100)
);

CREATE TABLE IF NOT EXISTS collections (
    collection_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS tracks (
    track_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    duration INTEGER NOT NULL CHECK (duration > 0 AND duration <= 86400),
    album_id INTEGER NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albums (album_id)
    );

   CREATE TABLE IF NOT EXISTS singers_genres (
    singer_id INTEGER NOT NULL,
    genre_id INTEGER NOT NULL,
    FOREIGN KEY (singer_id) REFERENCES singers(singer_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id),
    PRIMARY KEY (singer_id, genre_id)
);


CREATE TABLE IF NOT EXISTS singers_albums (
    singer_id INTEGER NOT NULL,
    album_id INTEGER NOT NULL,
    FOREIGN KEY (singer_id) REFERENCES singers(singer_id),
    FOREIGN KEY (album_id) REFERENCES albums(album_id),
    PRIMARY KEY (singer_id, album_id)
);

CREATE TABLE IF NOT EXISTS collection_tracks (
    collection_id INTEGER NOT NULL,
    track_id INTEGER NOT NULL,
    FOREIGN KEY (collection_id) REFERENCES collections(collection_id),
    FOREIGN KEY (track_id) REFERENCES tracks(track_id),
    PRIMARY KEY (collection_id, track_id)
);
    
Изменения

ALTER TABLE tracks ALTER COLUMN duration TYPE DECIMAL(4,2);




