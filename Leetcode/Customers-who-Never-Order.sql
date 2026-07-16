-- Platform: Leetcode
-- Difficulty: Easy
-- Problem: https://leetcode.com/problems/customers-who-never-order/description/
-- Concepts: SELECT

-- Solution:
SELECT
    c.name AS customers
FROM customers AS c
LEFT JOIN orders AS o
ON c.id = o.customerid
WHERE o.id IS NULL;