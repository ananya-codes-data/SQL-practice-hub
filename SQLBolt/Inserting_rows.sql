-- Platform: SQLBolt
-- Problem: https://sqlbolt.com/lesson/inserting_rows
-- Concepts: INSERT

-- Solution:

-- 1.
INSERT INTO movies (id, title, director, year, length_minutes)
VALUES (15,	'Toy Story 4', 'Dan Scanlon', 2001, 221);

-- 2.
INSERT INTO boxoffice 
(movie_id, rating, domestic_sales, international_sales)
VALUES (15, 8.7, 340000000, 270000000);
