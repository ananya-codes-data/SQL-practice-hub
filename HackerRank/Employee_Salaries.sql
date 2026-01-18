-- Platform: HackerRank
-- Difficulty: Easy
-- Problem:https://www.hackerrank.com/challenges/salary-of-employees/problem?isFullScreen=true

-- Solution:
SELECT
    name
FROM employee
WHERE
    salary > 2000
    AND
    months < 10
ORDER BY
    employee_id ASC;