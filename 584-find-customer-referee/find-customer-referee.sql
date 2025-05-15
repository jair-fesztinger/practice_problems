-- Write your PostgreSQL query statement below

SELECT c.name
FROM Customer As c
WHERE referee_id <> 2 or referee_id IS NULL
