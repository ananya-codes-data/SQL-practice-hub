-- Platform: DataLemur
-- Difficulty: Easy
-- Problem: https://datalemur.com/questions/sql-page-with-no-likes

-- Solution:
SELECT
  p1.page_id
FROM pages AS p1
LEFT JOIN page_likes AS p2
ON p1.page_id = p2.page_id
GROUP BY p1.page_id
HAVING COUNT(p2.liked_date) = 0
ORDER BY p1.page_id ASC;