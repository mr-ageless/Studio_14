CREATE TABLE movies (
   movie_id INTEGER PRIMARY KEY AUTO_INCREMENT,
   title VARCHAR(120),
   year_released INTEGER,
   director_id INTEGER,
   FOREIGN KEY (director_id) REFERENCES directors(director_id)
);

SELECT title FROM movies;

SELECT title, year_released FROM movies
ORDER BY year_released DESC;

SELECT * FROM directors
ORDER BY country ASC;

SELECT * FROM directors
ORDER BY country, last_name asc;

INSERT INTO directors 
VALUES (director_id, Rob, Reiner, USA);

SELECT last_name, director_id
FROM directors
WHERE last_name="Reiner";

INSERT INTO movies
VALUES (movie_id, "The Princess Bride", 1987, "Rob Reiner");

SELECT title, year_released, last_name FROM movies
INNER JOIN directors ON movies.director_id = directors.director_id;

SELECT title, year_released, last_name, first_name FROM movies
INNER JOIN directors ON movies.director_id = directors.director_id
ORDER BY last_name ASC;

SELECT first_name, last_name
FROM directors
WHERE director_id=(SELECT director_id FROM movies WHERE title="the Incredibles");

SELECT last_name, country
FROM directors
INNER JOIN movies ON directors.director_id WHERE title="ROMA";

DELETE FROM movies WHERE movie_id=7;

DELETE FROM directors WHERE director_id=7;