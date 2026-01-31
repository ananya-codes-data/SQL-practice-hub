-- Platform: SQLBolt
-- Problem: https://sqlbolt.com/lesson/updating_rows
-- Concepts: UPDATE

-- Solution:

-- 1.
UPDATE movies
SET
    director = "John Lasseter"
WHERE 
    title = "A Bug's Life";

-- 2.
UPDATE movies
SET
    year = 1999
WHERE
    title = "Toy Story 2";

-- 3.
UPDATE movies
SET
    title = "Toy Story 3",
    director = "Lee Unkrich"
WHERE
    title = "Toy Story 8";
