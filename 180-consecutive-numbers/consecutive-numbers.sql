-- Write your PostgreSQL query statement below
SELECT  DISTINCT num as ConsecutiveNums
FROM (
    SELECT 
    num,
    lag(num, 1) OVER (ORDER BY id) AS first_check,
    lag(num, 2) OVER (ORDER BY id) AS second_check
    FROM Logs
) AS filtered_table
WHERE num = first_check AND num = second_check;