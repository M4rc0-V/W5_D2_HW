DROP TABLE IF EXISTS customer CASCADE;
CREATE TABLE CUSTOMER(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INTEGER
);

SELECT *
FROM customer;

DROP TABLE IF EXISTS concession CASCADE;
CREATE TABLE concession(
    concession_id SERIAL PRIMARY KEY,
    soda VARCHAR(50),
    popcorn VARCHAR(50),
    hotdog VARCHAR(50),
    candy VARCHAR(50)
);

SELECT *
FROM concession;

DROP TABLE IF EXISTS tickets CASCADE;
CREATE TABLE tickets(
    ticket_id SERIAL PRIMARY KEY,
    movie_id INTEGER,
    price NUMERIC(5,2)
);

SELECT *
FROM tickets;

DROP TABLE IF EXISTS movies CASCADE;
CREATE TABLE movies(
    movie_id SERIAL PRIMARY KEY,
    rating VARCHAR(50),
    title VARCHAR(50)
);

SELECT *
FROM movies;

DROP TABLE IF EXISTS purchase CASCADE;
CREATE TABLE purchase(
    purchase SERIAL PRIMARY KEY,
    customer_id INTEGER,
    ticket_id INTEGER,
    concession_id INTEGER,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id),
    FOREIGN KEY(concession_id) REFERENCES concession(concession_id)
);

SELECT *
FROM purchase;

INSERT INTO customer(
    first_name,
    last_name,
    age
) VALUES (
    'Connor',
    'Fuller',
    27
);

INSERT INTO customer(
    first_name,
    last_name,
    age
) VALUES (
    'Kevin',
    'Rodriguez',
    23
);

INSERT INTO customer(
    first_name,
    last_name,
    age
) VALUES (
    'Caleb',
    'Schimdt',
    19
);

INSERT INTO purchase(
    customer_id,
    tickets_id,
    concession_id
) VALUES (
    1,
    1,
    1
);

INSERT INTO purchase(
    customer_id,
    tickets_id,
    concession_id
) VALUES (
    2,
    2,
    2
);

INSERT INTO purchase(
    customer_id,
    tickets_id,
    concession_id
) VALUES (
    3,
    3,
    3
);

INSERT INTO tickets(
    movie_id,
    price
) VALUES (
    1,
    40.68
);

INSERT INTO tickets(
    movie_id,
    price
) VALUES (
    2,
    23.47
);

INSERT INTO tickets(
    movie_id,
    price
) VALUES (
    3,
    156.71
);

INSERT INTO concession(
    soda,
    popcorn,
    hotdog,
    candy
) VALUES (
    'Coca Cola',
    'Large',
    'None',
    'M&Ms'
);

INSERT INTO concession(
    soda,
    popcorn,
    hotdog,
    candy
) VALUES (
    'Baja Blast',
    'Small',
    'Medium',
    'Sour Patch Kids'
);

INSERT INTO concession(
    soda,
    popcorn,
    hotdog,
    candy
) VALUES (
    'None',
    'None',
    '2 with extra ketchup',
    'Twix Bar'
);

INSERT INTO movies(
    rating,
    title
) VALUES (
    'PG-13',
    'Avatar: Way of the Water'
);

INSERT INTO movies(
    rating,
    title
) VALUES (
    'R',
    'Halloween'
);

INSERT INTO movies(
    rating,
    title
) VALUES (
    'PG',
    'Shrek 5'
);


























