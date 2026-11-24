#QUESTION 1

CREATE DATABASE BoiGharDB;

USE BoiGharDB;

CREATE TABLE Publisher (
    pub_id INT PRIMARY KEY,
    pub_name VARCHAR(50),
    city VARCHAR(50),
    est_year INT
);

CREATE TABLE Book (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    price INT,
    stock INT,
    pub_id INT,
    FOREIGN KEY (pub_id)
    REFERENCES Publisher(pub_id)
);


#QUESTION 2


INSERT INTO Publisher
(pub_id, pub_name, city, est_year)
VALUES
(1, 'Alo Prokashoni', 'Dhaka', 2005),
(2, 'Nodi Books', 'Rajshahi', 2012),
(3, 'Sagor Press', 'Chittagong', 1998),
(4, 'Pahar Publications', 'Sylhet', NULL);

INSERT INTO Book
(book_id, title, author, price, stock, pub_id)
VALUES
(201, 'Database Basics', 'Rahim', 450, 20, 1),
(202, 'Learn SQL', 'Sadia', 380, 15, 1),
(203, 'Data Structures', 'Tanvir', 520, NULL, 2),
(204, 'Python for All', 'Sadia', 300, 30, 3),
(205, 'Network Guide', 'Mahin', NULL, 10, 4),
(206, 'Algorithm Design', 'Tanvir', 600, 5, 2),
(207, 'Web Development', 'Nusrat', 350, 25, 3),
(208, 'Operating System', 'Rahim', 480, 12, 4);

#QUESTION3

UPDATE Book
SET price = 400
WHERE title = 'Learn SQL';

#QUESTION 4

DELETE FROM Book
WHERE stock < 10;


#QUESTION5

ALTER TABLE Book
ADD language VARCHAR(20);

#QUESTION6

SELECT title, price
FROM Book
WHERE price > 400
ORDER BY price DESC;

#QUESTION7

SELECT title, author, price
FROM Book
WHERE title LIKE 'D%';

#QUESTION8


SELECT title, price
FROM Book
WHERE price BETWEEN 350 AND 480;

#QUESTION9

SELECT title, author, pub_id
FROM Book
WHERE pub_id IN (1, 3);

#QUESTION10

SELECT title, stock
FROM Book
WHERE stock IS NOT NULL
ORDER BY stock DESC
LIMIT 3;
