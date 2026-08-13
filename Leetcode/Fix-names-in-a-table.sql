-- Platform: Leetcode
-- Difficulty: Easy
-- Problem: https://leetcode.com/problems/fix-names-in-a-table/description/
-- Concepts: UPPER, LOWER, SUBSTRING

-- Solution:
SELECT
    user_id,
    UPPER(LEFT(name, 1)) || LOWER(SUBSTRING(name, 2, 40)) AS name
FROM users
ORDER BY
    user_id ASC