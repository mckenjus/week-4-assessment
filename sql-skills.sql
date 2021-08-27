
INSERT INTO artist (name)
VALUES('Benn Cole');

INSERT INTO artist (name)
VALUES ('Kendrick Lamar'), ('Childish Gambino');

SELECT * FROM artist ORDER BY name ASC LIMIT 5;

SELECT * FROM employee;

SELECT first_name, last_name
FROM employee
WHERE city LIKE 'Calg%';

SELECT * FROM employee WHERE reports_to = 2;

SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge';

SELECT COUNT (*)
FROM invoice
WHERE billing_country = 'USA';

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT *
FROM invoice
WHERE total > 5;

SELECT COUNT (*)
FROM invoice
WHERE total < 5;

SELECT SUM (total) FROM invoice;

SELECT * 
FROM invoice
WHERE invoice_id IN(
  SELECT invoice_id FROM invoice_line WHERE unit_price > 0.99
);

SELECT c.first_name, c.last_name, i.invoice_date, i.total
FROM invoice i
JOIN customer c
ON i.customer_id = c.customer_id;

SELECT c.first_name AS cfirstname, c.last_name AS Clastname, e.first_name AS efirstname, e.last_name AS eLastName
FROM customer c
JOIN employee e
ON c.support_rep_id = e.employee_id;

SELECT al.title, ar.name
FROM album al
JOIN artist ar
ON al.artist_id = ar.artist_id;

SELECT * FROM artist ORDER BY name DESC LIMIT 10;

SELECT * FROM artist WHERE name LIKE 'Black%';

SELECT * FROM artist WHERE name LIKe '%Black%'

SELECT * FROM employee;

SELECT MAX(birth_date) FROM employee;

SELECT MIN (birth_date) FROM employee;

SELECT *
FROM invoice
WHERE billing_state IN ('TX', 'CA', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT pt.track_id, p.name
FROM playlist_track pt
JOIN playlist p
ON pt.playlist_id = p.playlist_id WHERE name = 'Music';

select t.name AS track, pt.playlist_track_id
FROM track t
JOIN playlist_track pt
ON t.track_id = pt.track_id WHERE playlist_track_id = 5;


SELECT t.name AS track, p.name AS playlist FROM track t
JOIN playlist_track pt
ON pt.track_id = t.track_id
JOIN playlist p
ON p.playlist_id = pt.playlist_id;

SELECT t.name AS track, a.title AS album FROM album a
JOIN track t
ON t.album_id = a.album_id
JOIN genre g
ON g.genre_id = t.genre_id WHERE g.name = 'Alternative & Punk'
