/* 4. Identify Drivers with Over 200 Career Points */
SELECT * FROM formula_1_2025_complete.driver_standings;
SELECT 
     driverId, 
     SUM(points) AS Total_points
FROM driver_standings
GROUP BY driverId
HAVING Total_points > 200
ORDER BY driverId
    ;
    
  /* Correct Answer */  
SELECT * FROM formula_1_2025_complete.results;
SELECT 
     driverId, 
     SUM(points) AS Total_points
FROM results
GROUP BY driverId
HAVING Total_points > 200
ORDER BY driverId
    ;