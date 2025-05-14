-- Write your PostgreSQL query statement below
SELECT e.name As Employee
FROM Employee As e
JOIN Employee AS m ON e.managerId = m.id
WHERE e.salary > m.salary