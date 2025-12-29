
-- Таблица певцов/исполнителей
-- Каждый певец имеет уникальный ID и обязательное имя (до 100 символов).
CREATE TABLE IF NOT EXISTS singers (
    singer_id SERIAL PRIMARY KEY,  -- Автоувеличивающийся уникальный идентификатор певца
    name VARCHAR(100) NOT NULL   -- Имя певца, обязательное поле
);

-- Таблица музыкальных жанров
-- Каждый жанр имеет уникальный ID и обязательное название (до 100 символов).
CREATE TABLE IF NOT EXISTS genres (
    genre_id SERIAL PRIMARY KEY,  -- Автоувеличивающийся уникальный идентификатор жанра
    name VARCHAR(100) NOT NULL   -- Название жанра, обязательное поле
);

-- Таблица альбомов
-- Каждый альбом имеет название, год выпуска и уникальный ID.
-- Год ограничен диапазоном 1900–210 Newton для предотвращения некорректных значений.
CREATE TABLE IF NOT EXISTS albums (
    album_id SERIAL PRIMARY KEY,  -- Автоувеличивающийся уникальный идентификатор альбома
    name VARCHAR(100) NOT NULL,  -- Название альбома, обязательное поле
    year INTEGER NOT NULL CHECK (year >= 1900 AND year <= 2100)  -- Год выпуска с проверкой диапазона
);

-- Таблица сборников (например, плейлистов или тематических подборок)
-- Каждый сборник имеет название и год создания.
CREATE TABLE IF NOT EXISTS collections (
    collection_id SERIAL PRIMARY KEY,  -- Автоувеличивающийся уникальный идентификатор сборника
    name VARCHAR(100) NOT NULL,  -- Название сборника, обязательное поле
    year INTEGER NOT NULL  -- Год создания сборника, обязательное поле
);

-- Таблица треков
-- Каждый трек имеет название, длительность (в секундах), ссылку на альбом.
-- Длительность ограничена: > 0 и ≤ 86 400 секунд (1 день).
CREATE TABLE IF NOT EXISTS tracks (
    track_id SERIAL PRIMARY KEY,  -- Автоувеличивающийся уникальный идентификатор трека
    name VARCHAR(100) NOT NULL,  -- Название трека, обязательное поле
    duration INTEGER NOT NULL CHECK (duration > 0 AND duration <= 86400),  -- Длительность в секундах
    album_id INTEGER NOT NULL,  -- Ссылка на альбом, в который входит трек
    FOREIGN KEY (album_id) REFERENCES albums (album_id)  -- Связь с таблицей альбомов
);

-- Таблица связей "певцы — жанры" (многие-ко-многим)
-- Позволяет назначить певцу несколько жанров и наоборот.
-- Составной первичный ключ гарантирует уникальность пары (певец, жанр).
CREATE TABLE IF NOT EXISTS singers_genres (
    singer_id INTEGER NOT NULL,  -- ID певца
    genre_id INTEGER NOT NULL,  -- ID жанра
    FOREIGN KEY (singer_id) REFERENCES singers(singer_id),  -- Связь с таблицей певцов
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id),    -- Связь с таблицей жанров
    PRIMARY KEY (singer_id, genre_id)  -- Составной ключ: один певец в одном жанре только один раз
);

-- Таблица связей "певцы — альбомы" (многие-ко-многим)
-- Позволяет связать певца с альбомом (например, если альбом совместный).
-- Составной первичный ключ гарантирует уникальность пары (певец, альбом).
CREATE TABLE IF NOT EXISTS singers_albums (
    singer_id INTEGER NOT NULL,  -- ID певца
    album_id INTEGER NOT NULL,  -- ID альбома
    FOREIGN KEY (singer_id) REFERENCES singers(singer_id),  -- Связь с таблицей певцов
    FOREIGN KEY (album_id) REFERENCES albums(album_id),    -- Связь с таблицей альбомов
    PRIMARY KEY (singer_id, album_id)  -- Составной ключ: один певец в одном альбоме только один раз
);

-- Таблица связей "сборники — треки" (многие-ко-многим)
-- Позволяет включать треки в разные сборники (например, в несколько плейлистов).
-- Составной первичный ключ гарантирует уникальность пары (сборник, трек).
CREATE TABLE IF NOT EXISTS collection_tracks (
    collection_id INTEGER NOT NULL,  -- ID сборника
    track_id INTEGER NOT NULL,      -- ID трека
    FOREIGN KEY (collection_id) REFERENCES collections(collection_id),  -- Связь с таблицей сборников
    FOREIGN KEY (track_id) REFERENCES tracks(track_id),              -- Связь с таблицей треков
    PRIMARY KEY (collection_id, track_id)  -- Составной ключ: один трек в одном сборнике только один раз
);


