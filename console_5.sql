select * from album
where artist_id = 5;

select * from track
where album_id = (select genre_id from genre where name = 'Rock');

select * from artist
where name  = 'AC/DC';

SELECT name
FROM track
WHERE name ILIKE '%OF%';

select * from track LIMIT 8;




