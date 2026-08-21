-- Platform: Leetcode
-- Difficulty: Easy
-- Problem: https://leetcode.com/problems/market-analysis-i/description/

-- Solution:
WITH yearly_orders AS
(
SELECT
    u.user_id,
    COUNT(o.order_id) AS total_orders
FROM orders AS o
LEFT JOIN users AS u
ON o.buyer_id = u.user_id
WHERE DATE_PART('YEAR', o.order_date) = 2019
GROUP BY u.user_id
)
SELECT
    u.user_id AS buyer_id,
    u.join_date,
    COALESCE(o.total_orders, 0) AS orders_in_2019
FROM users AS u
LEFT JOIN yearly_orders AS o
ON u.user_id = o.user_id
