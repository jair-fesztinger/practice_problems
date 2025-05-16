-- Write your PostgreSQL query statement below
SELECT s.name 
FROM SalesPerson as s
WHERE s.sales_id NOT IN (
    SELECT o.sales_id 
    FROM Orders as o
    WHERE com_id = (
        SELECT c.com_id 
        FROM Company as c
        WHERE c.name = 'RED'
    )
) 
;
