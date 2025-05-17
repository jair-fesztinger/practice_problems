-- Write your PostgreSQL query statement below
WITH lagged AS (
    SELECT 
    num,
    lag(num, 1) OVER (ORDER BY id) AS first_check,
    lag(num, 2) OVER (ORDER BY id) AS second_check
    FROM Logs
)

SELECT  DISTINCT num as ConsecutiveNums
FROM lagged
WHERE num = first_check AND num = second_check;