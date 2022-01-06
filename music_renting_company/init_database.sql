DROP TABLE IF EXISTS album CASCADE;

DROP TABLE IF EXISTS artist CASCADE;

DROP TABLE IF EXISTS customer CASCADE;

DROP TABLE IF EXISTS rent CASCADE;

DROP TABLE IF EXISTS music CASCADE;

DROP TABLE IF EXISTS music_album CASCADE;

DROP TABLE IF EXISTS stock CASCADE;

/*==============================================================*/
/* Table : album                                                */
/*==============================================================*/
CREATE TABLE album (
id            SERIAL        PRIMARY KEY,
name          VARCHAR(64)   NOT NULL UNIQUE
);

/*==============================================================*/
/* Table : artist                                               */
/*==============================================================*/
CREATE TABLE artist (
id            SERIAL        PRIMARY KEY,
name          VARCHAR(64)   NOT NULL UNIQUE,
birth_date    DATE          NOT NULL
);

/*==============================================================*/
/* Table : customer                                             */
/*==============================================================*/
CREATE TABLE customer (
id            SERIAL        PRIMARY KEY,
mail          VARCHAR(64)   NOT NULL UNIQUE,
name          VARCHAR(64)   NOT NULL
);

/*==============================================================*/
/* Table : stock                                                */
/*==============================================================*/
CREATE TABLE stock (
id            SERIAL        PRIMARY KEY,
alb_id        INT4          NOT NULL UNIQUE REFERENCES album ON DELETE CASCADE,
stock         INT
);

/*==============================================================*/
/* Table : rent                                                 */
/*==============================================================*/
CREATE TABLE rent (
id            SERIAL        PRIMARY KEY,
stock_id      INT4          NOT NULL REFERENCES stock ON DELETE CASCADE,
prs_id        INT4          NOT NULL REFERENCES customer ON DELETE CASCADE,
begin_date    DATE          NOT NULL,
end_date      DATE          DEFAULT NULL,

CHECK (begin_date < end_date)
);

/*==============================================================*/
/* Table : music                                                */
/*==============================================================*/
CREATE TABLE music (
id            SERIAL        PRIMARY KEY,
title         VARCHAR(128)  NOT NULL,
art_id        INT4          NOT NULL REFERENCES artist ON DELETE CASCADE,
duration      INT           NOT NULL CHECK (duration >= 0),

UNIQUE (title, art_id)
);

/*==============================================================*/
/* Table : music_album                                          */
/*==============================================================*/
CREATE TABLE music_album (
id            SERIAL        PRIMARY KEY,
music_id      INT4          NOT NULL REFERENCES music ON DELETE CASCADE,
alb_id        INT4          NOT NULL REFERENCES album ON DELETE CASCADE,
track         INT           NOT NULL CHECK (track > 0),

UNIQUE (alb_id, track),
UNIQUE (alb_id, music_id)
);
