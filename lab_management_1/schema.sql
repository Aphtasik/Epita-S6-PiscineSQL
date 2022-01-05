DROP TABLE IF EXISTS can CASCADE;
DROP TABLE IF EXISTS assistant CASCADE;
DROP TABLE IF EXISTS transaction CASCADE;

CREATE TABLE can (
    name      VARCHAR(32)   NOT NULL,
    stock     INT           NOT NULL DEFAULT 0,
    capacity  INT           NOT NULL DEFAULT 0,
    price     NUMERIC(3, 2) NOT NULL DEFAULT 0.70,

    PRIMARY KEY (name)
);

CREATE TABLE assistant (
    login       VARCHAR(64)  NOT NULL,
    firstname   VARCHAR(64) NOT NULL,
    lastname    VARCHAR(64) NOT NULL,
    pseudo      VARCHAR(64) NOT NULL,

    PRIMARY KEY (login)
);

CREATE TABLE transaction (
    id        SERIAL      NOT NULL,
    assistant VARCHAR(64)  NOT NULL,
    can       VARCHAR(32) NOT NULL,
    timestamp TIMESTAMP   NOT NULL,

    PRIMARY KEY (id),
    FOREIGN KEY (assistant) REFERENCES assistant(login),
    FOREIGN KEY (can) REFERENCES can(name)
);
