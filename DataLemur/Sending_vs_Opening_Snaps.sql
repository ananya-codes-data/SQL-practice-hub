-- Platform: DataLemur
-- Difficulty: Easy
-- Problem: https://datalemur.com/questions/time-spent-snaps

-- Solution:
WITH master_table AS
(
SELECT
  ab.age_bucket,
  a.activity_type,
  a.time_spent
FROM activities AS a
LEFT JOIN age_breakdown AS ab
ON a.user_id = ab.user_id
WHERE a.activity_type != 'chat'
),
time_spent AS
(
SELECT
  age_bucket,
  SUM(CASE WHEN activity_type = 'send' THEN time_spent ELSE 0 END) AS time_spent_sending,
  SUM(CASE WHEN activity_type = 'open' THEN time_spent ELSE 0 END) AS time_spent_opening
FROM master_table
GROUP BY age_bucket
)
SELECT
  age_bucket,
  ROUND(time_spent_sending * 100.0/ (time_spent_sending + time_spent_opening), 2) AS send_perc,
  ROUND(time_spent_opening * 100.0/ (time_spent_sending + time_spent_opening), 2) AS open_perc
FROM time_spent
