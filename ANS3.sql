/*3. Identify Packed F1 Seasons – Years with Over 20 Races*/
SELECT * FROM formula_1_2025_complete.races;
SELECT 
     year, 
     COUNT(raceId) AS race_count
FROM races
GROUP BY year
HAVING race_count > 20
ORDER BY race_count 
    ;