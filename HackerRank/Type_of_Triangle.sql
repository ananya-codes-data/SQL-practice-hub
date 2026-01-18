-- Platform: HackerRank
-- Difficulty: Easy
-- Problem:https://www.hackerrank.com/challenges/what-type-of-triangle/problem?isFullScreen=true

-- Solution:
SELECT
    CASE
        WHEN 
            (A + B) <= C
            OR
            (B + C) <= A
            OR
            (A + C) <= B
        THEN 'Not A Triangle'
        WHEN
            A = B
            AND B = C
        THEN 'Equilateral'
        WHEN 
            A = B
            OR B = C
            OR A = C
        THEN 'Isosceles'
        ELSE 'Scalene'
    END triangle_type
FROM triangles;