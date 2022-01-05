DROP TABLE IF EXISTS books CASCADE;
DROP TABLE IF EXISTS authors CASCADE;

CREATE TABLE authors (
    name        VARCHAR(64) NOT NULL DEFAULT '', -- name of the author
    birth_date  DATE        NOT NULL,            -- birth date of the author
    death_date  DATE        DEFAULT NULL,        -- death date of the author (NULL if he is still alive)
    country     VARCHAR(64) NOT NULL DEFAULT '', -- birth place of the author

    PRIMARY KEY (name),
    CHECK (birth_date <= death_date)
);

CREATE TABLE books (
    title       VARCHAR(64) NOT NULL DEFAULT '', -- title of the book
    author      VARCHAR(64) NOT NULL DEFAULT '', -- author of the book
    genre       VARCHAR(64) NOT NULL DEFAULT '', -- genre of the book
    release     DATE        NOT NULL,            -- first release date

    FOREIGN KEY (author) REFERENCES authors(name),
    PRIMARY KEY (title, author)
);
