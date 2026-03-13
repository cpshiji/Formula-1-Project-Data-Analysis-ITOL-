/*14. Identify Peak Performance Seasons*/
SELECT * FROM formula_1_2025_complete.races;
SELECT * FROM formula_1_2025_complete.results;
SELECT * FROM formula_1_2025_complete.seasons;
SELECT * FROM formula_1_2025_complete.constructors;

WITH TotalSeasonPoints AS
(SELECT
      sum(results.points) as Total_points_per_constructor,
      results.constructorId,
      races.year
FROM races
JOIN results
ON races.raceId = results.raceId
GROUP BY races.year, results.constructorId),

MaxSeasonPoints AS
(SELECT
     max(Total_points_per_constructor) as Max_Season_Points,
     year
FROM TotalSeasonPoints
GROUP BY year )

SELECT
    MaxSeasonPoints.year,
    MaxSeasonPoints.Max_Season_Points as Max_Points
FROM MaxSeasonPoints 
ORDER BY Max_Points DESC
    ;
