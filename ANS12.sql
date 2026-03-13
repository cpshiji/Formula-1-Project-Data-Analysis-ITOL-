/*12. Calculate Average Lap Times for Drivers Who Won at Least One Race*/
SELECT * FROM formula_1_2025_complete.driver_standings;
SELECT * FROM formula_1_2025_complete.drivers;
SELECT * FROM formula_1_2025_complete.lap_times;

SELECT
      driver_standings.driverId,
      sum(driver_standings.wins) as Total_wins
FROM driver_standings
WHERE driver_standings.wins >= 1
GROUP BY driver_standings.driverId
ORDER BY Total_wins Desc
;

SELECT
      driver_standings.driverId,
      sum(driver_standings.wins) as Total_wins
FROM driver_standings
JOIN lap_times
ON driver_standings.driverId = lap_times.driverId
WHERE driver_standings.wins >= 1
GROUP BY driver_standings.driverId
ORDER BY sum(driver_standings.wins) Desc
;

SELECT
      driver_standings.driverId,
      sum(driver_standings.wins) as Total_wins
FROM driver_standings
JOIN lap_times
ON driver_standings.driverId = lap_times.driverId
WHERE driver_standings.wins >= 1
GROUP BY driver_standings.driverId
ORDER BY sum(driver_standings.wins) Desc
;

GROUP BY driver_standings.driverId
ORDER BY driver_standings.wins Desc