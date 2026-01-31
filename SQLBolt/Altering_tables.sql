-- Platform: SQLBolt
-- Problem: https://sqlbolt.com/lesson/altering_tables
-- Concepts: ALTER

-- Solution:

-- 1.
ALTER TABLE movies
ADD column aspect_ratio FLOAT DEFAULT NULL;

-- 2.
ALTER TABLE Movies
  ADD COLUMN Language TEXT DEFAULT "English";
