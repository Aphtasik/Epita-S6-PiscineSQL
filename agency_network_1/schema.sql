DROP TABLE IF EXISTS agency CASCADE;
DROP TABLE IF EXISTS employee CASCADE;
DROP TABLE IF EXISTS customer CASCADE;
DROP TABLE IF EXISTS destination CASCADE;
DROP TABLE IF EXISTS booking CASCADE;
DROP TABLE IF EXISTS hotel CASCADE;

-- This schema does not respond to every good practice in terms of
-- relationships modeling. It is only intended for educational purposes,
-- as notions like joins have not yet been seen.

CREATE TABLE agency (
    code                    INT           NOT NULL,
    country                 VARCHAR(32)   NOT NULL,
    city                    VARCHAR(32)   NOT NULL,
    name                    VARCHAR(32)   NOT NULL,
    website                 VARCHAR(32),
    ratings                 FLOAT         NOT NULL  DEFAULT 1.0,

    PRIMARY KEY (code)
);

CREATE TABLE employee (
    id                      SERIAL        NOT NULL,
    name                    VARCHAR(32)   NOT NULL, -- first name
    surname                 VARCHAR(32)   NOT NULL, -- last name
    email                   VARCHAR(32)   NOT NULL,
    agency_code             INT           NOT NULL,

    PRIMARY KEY (id),
    FOREIGN KEY (agency_code) REFERENCES agency(code)
);

CREATE TABLE hotel (
    id                      SERIAL        NOT NULL,
    name                    VARCHAR(64)   NOT NULL,
    address                 VARCHAR(128)  NOT NULL, -- location
    rooms                   INT           NOT NULL  DEFAULT 0,

    PRIMARY KEY (id)
);

CREATE TABLE destination (
    acronym                 VARCHAR(4)    NOT NULL, -- four characters
    hotel_id                INT           NOT NULL,
    country                 VARCHAR(32)   NOT NULL,
    city                    VARCHAR(32)   NOT NULL,

    PRIMARY KEY (acronym),
    FOREIGN KEY (hotel_id) REFERENCES hotel(id)
);

CREATE TABLE customer (
    name                    VARCHAR(32)   NOT NULL, -- first name
    surname                 VARCHAR(32)   NOT NULL, -- last name
    email                   VARCHAR(32)   NOT NULL,
    top_destination         VARCHAR(4)    NOT NULL, -- destination of preference

    PRIMARY KEY (surname),
    FOREIGN KEY (top_destination) REFERENCES destination(acronym)
);

CREATE TABLE booking (
    id                      SERIAL        NOT NULL,
    start_date              DATE          NOT NULL,
    end_date                DATE          NOT NULL,
    destination_acronym     VARCHAR(4)    NOT NULL,
    customer_surname        VARCHAR(32)   NOT NULL,
    travelers               INT           NOT NULL  DEFAULT 1,
    reservation_time        TIMESTAMP     NOT NULL,
    employee_id             INT           NOT NULL,

    PRIMARY KEY (id),
    FOREIGN KEY (employee_id) REFERENCES employee(id),
    FOREIGN KEY (customer_surname) REFERENCES customer(surname),
    FOREIGN KEY (destination_acronym) REFERENCES destination(acronym)
);
