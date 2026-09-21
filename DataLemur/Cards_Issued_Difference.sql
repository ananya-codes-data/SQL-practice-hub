-- Platform: DataLemur
-- Difficulty: Easy
-- Problem: https://datalemur.com/questions/cards-issued-difference

-- Solution:
SELECT
  card_name,
  best_month_amount - worst_month_amount AS difference
FROM
(
SELECT
  card_name,
  MAX(issued_amount) AS best_month_amount,
  MIN(issued_amount) AS worst_month_amount
FROM monthly_cards_issued
GROUP BY card_name
) AS t
ORDER BY difference DESC;