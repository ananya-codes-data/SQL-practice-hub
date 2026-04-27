-- Platform: Leetcode
-- Difficulty: Easy
-- Problem: https://leetcode.com/problems/product-sales-analysis-i/description/
-- Concepts: Basic Joins

-- Solution:
SELECT
    p.product_name,
    s.year,
    s.price
FROM sales AS s
LEFT JOIN product AS p
ON s.product_id = p.product_id;