SELECT * FROM books;

SELECT author, count(*), avg(price) FROM books GROUP BY author

SELECT author, avg(price)
FROM books
GROUP BY
    author
HAVING
    avg(price) > 20

    