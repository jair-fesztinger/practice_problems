-- Write your PostgreSQL query statement below
WITH weather_with_lag AS ( 
    SELECT id,
        recordDate, 
        temperature, 
        LAG(temperature, 1) OVER(ORDER BY recordDate) AS yesterday_temp,
        LAG(recordDate, 1) OVER(ORDER BY recordDate) AS yesterday_date
    FROM Weather
)

SELECT id
FROM weather_with_lag
WHERE 
    temperature > yesterday_temp 
    AND recordDate = yesterday_date + INTERVAL '1 day';