-- Platform: SQLBolt
-- Problem: https://sqlbolt.com/lesson/creating_tables
-- Concepts: CREATE

-- Solution:

-- 1.
CREATE TABLE IF NOT EXISTS database (
    name VARCHAR(100) NOT NULL,
    version FLOAT DEFAULT NULL,
    download_count INT DEFAULT NULL
);
