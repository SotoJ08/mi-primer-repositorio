SELECT first_name, last_name, LOWER(email) AS email
FROM customer
WHERE country = 'Brazil'
ORDER BY last_name ASC;

SELECT al.title
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id
WHERE ar.name = 'AC/DC';

SELECT track_id, UPPER(name) AS name, album_id
FROM track
WHERE name ILIKE '%love%';

SELECT invoice_id, invoice_date, billing_country, total
FROM invoice
WHERE total > 10.00
ORDER BY total DESC;

SELECT customer_id, first_name, last_name, country
FROM customer
ORDER BY customer_id DESC
LIMIT 5;

SELECT track_id, name, (milliseconds / 60000.0) AS duration_minutes
FROM track
WHERE milliseconds > 300000;

SELECT country, COUNT(*) AS total_customers
FROM customer
GROUP BY country
ORDER BY total_customers DESC;

SELECT employee_id, first_name, last_name, title, hire_date
FROM employee
WHERE title = 'Sales Support Agent';

SELECT track_id, name, (milliseconds / 60000.0) AS duration_minutes
FROM track
ORDER BY milliseconds DESC
LIMIT 10;

SELECT customer_id, first_name, last_name, country
FROM customer
WHERE last_name LIKE 'S%';
