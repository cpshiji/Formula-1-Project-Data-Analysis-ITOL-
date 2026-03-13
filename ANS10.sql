/*10. Calculate Average Points Per Race for Top Drivers*/
SELECT * FROM formula_1_20drivers25_complete.results;
SELECT * FROM formula_1_2025_complete.drivers;
    
    /* Answer */
SELECT 
    drivers.forename, 
    drivers.surname, 
    COUNT(results.raceId) AS No_of_races,
    ROUND(SUM(results.points)/COUNT(results.raceId), 2) AS Average_points_per_race
FROM drivers
JOIN results
ON drivers.driverId = results.driverId
GROUP BY drivers.driverId
ORDER BY Average_points_per_race Desc
;


