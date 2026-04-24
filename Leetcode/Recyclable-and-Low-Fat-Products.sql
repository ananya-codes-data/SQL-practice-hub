-- Platform: Leetcode
-- Difficulty: Easy
-- Problem: https://leetcode.com/problems/recyclable-and-low-fat-products/description/
-- Concepts: SELECT

-- Solution:
SELECT
    product_id
FROM products
WHERE
    low_fats = 'Y'
    AND
    recyclable = 'Y';