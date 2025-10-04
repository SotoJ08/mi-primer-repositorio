
# DML Con filtros

-- 1️⃣ Clientes de Brasil
-- Qué hace: Muestra todos los clientes cuyo país es Brasil.
-- Qué devuelve: Nombre, apellido y correo (en minúsculas), ordenados por apellido.
SELECT first_name, last_name, LOWER(email) AS email
FROM customer
WHERE country = 'Brazil'
ORDER BY last_name ASC;

-- 2️⃣ Álbumes de un artista específico (AC/DC)
-- Qué hace: Busca los álbumes pertenecientes al artista AC/DC.
-- Qué devuelve: El título de todos los álbumes de AC/DC.
SELECT al.title
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id
WHERE ar.name = 'AC/DC';

-- 3️⃣ Canciones que contengan “love” (ignorando mayúsculas)
-- Qué hace: Busca canciones cuyo nombre contiene la palabra “love”, sin importar mayúsculas/minúsculas.
-- Qué devuelve: ID de la canción, nombre en mayúsculas y el ID del álbum.
SELECT track_id, UPPER(name) AS name, album_id
FROM track
WHERE name ILIKE '%love%';

-- 4️⃣ Facturas mayores a 10 dólares
-- Qué hace: Filtra todas las facturas con un total mayor a 10 dólares.
-- Qué devuelve: ID, fecha, país de facturación y monto total, ordenado de mayor a menor.
SELECT invoice_id, invoice_date, billing_country, total
FROM invoice
WHERE total > 10.00
ORDER BY total DESC;

-- 5️⃣ Los 5 clientes más recientes
-- Qué hace: Muestra los 5 clientes más recientes según su ID (el más alto = más nuevo).
-- Qué devuelve: ID, nombre, apellido y país de los 5 clientes más nuevos.
SELECT customer_id, first_name, last_name, country
FROM customer
ORDER BY customer_id DESC
LIMIT 5;

-- 6️⃣ Canciones de más de 5 minutos
-- Qué hace: Convierte la duración de milisegundos a minutos y filtra las canciones mayores a 5 minutos.
-- Qué devuelve: ID, nombre y duración en minutos de las canciones de más de 5 minutos.
SELECT track_id, name, (milliseconds / 60000.0) AS duration_minutes
FROM track
WHERE milliseconds > 300000;

-- 7️⃣ Cantidad de clientes por país
-- Qué hace: Agrupa los clientes por país y cuenta cuántos hay en cada uno.
-- Qué devuelve: El país y la cantidad total de clientes, ordenado de mayor a menor.
SELECT country, COUNT(*) AS total_customers
FROM customer
GROUP BY country
ORDER BY total_customers DESC;

-- 8️⃣ Empleados con título específico
-- Qué hace: Busca los empleados cuyo título sea “Sales Support Agent”.
-- Qué devuelve: ID, nombre, apellido, título y fecha de contratación de esos empleados.
SELECT employee_id, first_name, last_name, title, hire_date
FROM employee
WHERE title = 'Sales Support Agent';

-- 9️⃣ Top 10 canciones más largas
-- Qué hace: Ordena las canciones por duración y muestra las 10 más largas.
-- Qué devuelve: ID, nombre y duración en minutos de las 10 canciones más largas.
SELECT track_id, name, (milliseconds / 60000.0) AS duration_minutes
FROM track
ORDER BY milliseconds DESC
LIMIT 10;

-- 🔟 Clientes cuyo apellido empiece con “S”
-- Qué hace: Busca clientes cuyo apellido comienza con la letra S.
-- Qué devuelve: ID, nombre, apellido y país de esos clientes.
SELECT customer_id, first_name, last_name, country
FROM customer
WHERE last_name LIKE 'S%';


