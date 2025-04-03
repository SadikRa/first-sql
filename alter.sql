-- Active: 1742403835853@@127.0.0.1@5432@ph@public

SELECT * FROM person2;

ALTER TABLE person2
ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

INSERT INTO person2 VALUES ( 5, 'test', 24, 'sadik@gmail.com' )

ALTER TABLE person2 DROP COLUMN email

ALTER TABLE person2 RENAME COLUMN age to user_age

ALTER TABLE person2 ALTER COLUMN user_name TYPE VARCHAR(50);

ALTER Table person2 ALTER COLUMN user_age set NOT NULL

ALTER Table person2 ALTER COLUMN user_age DROP NOT NULL

ALTER TABLE person2
ADD constraint unique_person2_user_age UNIQUE (user_age);

ALTER TABLE person2 DROP constraint unique_person2_user_age

TRUNCATE TABLE person3

SELECT * FROM books

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) CHECK (price >= 0),
    stock INT CHECK (stock >= 0),
    published_year INT
);

INSERT INTO
    books (
        title,
        author,
        price,
        stock,
        published_year
    )
VALUES (
        'The Pragmatic Programmer',
        'Andrew Hunt',
        40.00,
        10,
        1999
    ),
    (
        'Clean Code',
        'Robert C. Martin',
        35.00,
        5,
        2008
    ),
    (
        'You Don''t Know JS',
        'Kyle Simpson',
        30.00,
        8,
        2014
    ),
    (
        'Refactoring',
        'Martin Fowler',
        50.00,
        3,
        1999
    ),
    (
        'Database Design Principles',
        'Jane Smith',
        20.00,
        0,
        2018
    );

SELECT * FROM books ORDER BY price DESC

SELECT * FROM books ORDER BY price ASC

SELECT * FROM books WHERE published_year = 2018;

SELECT *
FROM books
WHERE
    published_year = 1999
    AND author = 'Andrew Hunt';

SELECT *
FROM books
WHERE
    published_year = 2018
    OR author = 'Andrew Hunt';

SELECT * FROM books WHERE price <> 20

SELECT upper(title), * FROM books

SELECT avg(price) FROM books;

SELECT NULL FROM books

-- hello sadik

SELECT * FROM books 
    WHERE price IS NULL

-- SELECT * FROM books WHERE published_year = 2018 or published_year = 1999

SELECT * FROM books WHERE published_year IN(2018, 1999);

SELECT * FROM books  WHERE price BETWEEN 15  and 35 ;


SELECT * FROM books 
    WHERE title LIKE '%e'

SELECT * FROM books 
    WHERE title ILIKE '%E'

SELECT * FROM books 
    WHERE price IN (20, 30, 35) 


   SELECT * FROM books LIMIT 2 OFFSET 2 * 0;
   SELECT * FROM books LIMIT 2 OFFSET 2 * 1;
   SELECT * FROM books LIMIT 2 OFFSET 2 * 2;



DELETE FROM books 
    WHERE title = 'Clean Code'


SELECT * FROM books

update books 
    SET price = 39.0
    WHERE id = 1