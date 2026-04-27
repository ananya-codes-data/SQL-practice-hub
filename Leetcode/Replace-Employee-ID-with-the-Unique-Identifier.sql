-- Platform: Leetcode
-- Difficulty: Easy
-- Problem: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/
-- Concepts: Basic Joins

-- Solution:
SELECT
    e1.unique_id,
    e.name
FROM employees AS e
LEFT JOIN employeeuni AS e1
ON e.id = e1.id
ORDER BY name;