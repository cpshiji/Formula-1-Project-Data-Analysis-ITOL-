/*6. Categorize Driver Performance Tiers Based on Career Points*/
SELECT * FROM formula_1_2025_complete.results;
SELECT 
     driverId, 
     SUM(points) AS Total_points,
CASE 
    WHEN SUM(points) < 250 THEN 'Average'
    WHEN SUM(points) BETWEEN 250 AND 1500 THEN 'Good'
    ELSE 'Elite'
END AS performance_category
FROM results
GROUP BY driverId
ORDER BY driverId
    ;