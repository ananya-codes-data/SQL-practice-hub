-- Platform: DataLemur
-- Difficulty: Medium
-- Problem: https://datalemur.com/questions/top-fans-rank

-- Solution:
WITH master_table AS
(
  SELECT 
    g.day,
    g.song_id,
    s.name AS song_name,
    g.rank,
    a.artist_id,
    a.artist_name
  FROM global_song_rank AS g
  LEFT JOIN songs AS s
  ON g.song_id = s.song_id
  LEFT JOIN artists AS a
  ON s.artist_id = a.artist_id
  WHERE g.rank BETWEEN 1 AND 10
),
top_5_artists AS
(
SELECT
  artist_name,
  DENSE_RANK() OVER (ORDER BY COUNT(artist_name) DESC) AS artist_rank
FROM master_table
WHERE artist_id IS NOT NULL
GROUP BY artist_name
)
SELECT *
FROM final_table
WHERE artist_rank <= 5