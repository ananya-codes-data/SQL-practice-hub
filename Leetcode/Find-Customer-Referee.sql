-- Platform: Leetcode
-- Difficulty: Easy
-- Problem: https://leetcode.com/problems/find-customer-referee/description/
-- Concepts: SELECT

-- Solution:
SELECT
    name
FROM customer
WHERE
    referee_id != 2
    OR
    referee_id IS NULL;