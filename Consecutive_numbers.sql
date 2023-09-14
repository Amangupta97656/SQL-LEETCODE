# Write your MySQL query statement below
WITH cte AS (
    SELECT
        num,
        LAG(num) OVER (ORDER BY id) AS prev_num,
        LEAD(num) OVER (ORDER BY id) AS next_num
    FROM Logs
)

SELECT num AS ConsecutiveNums
FROM cte
WHERE num = prev_num AND num = next_num
GROUP BY num;