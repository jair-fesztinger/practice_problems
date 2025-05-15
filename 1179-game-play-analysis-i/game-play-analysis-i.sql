-- Write your PostgreSQL query statement below
WITH CTE AS (
    SELECT min(event_date) AS first_login,
    player_id
    FROM Activity 
    GROUP BY player_id
)

SELECT DISTINCT player_id, first_login 
FROM CTE
