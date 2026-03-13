/*11. Find the Most Common Race Status*/
SELECT * FROM formula_1_2025_complete.results;
SELECT * FROM formula_1_2025_complete.status;

SELECT 
    status.status,
    count(results.statusId) as Status_Count
FROM results
JOIN status
ON results.statusId = status.statusId
GROUP BY status.statusId
ORDER BY Status_Count Desc
;