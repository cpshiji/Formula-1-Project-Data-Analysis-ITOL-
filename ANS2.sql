/*2. Identify F1 Powerhouses – Constructors with 100+ Wins*/
SELECT * FROM formula_1_2025_complete.constructors;
SELECT * FROM formula_1_2025_complete.constructor_results;
SELECT * FROM formula_1_2025_complete.constructor_standings;
SELECT * FROM formula_1_2025_complete.results;
SELECT 
     constructorId, 
     SUM(wins) AS Total_Wins
FROM constructor_standings
GROUP BY constructorId
HAVING Total_Wins > 100
ORDER BY Total_Wins Desc
    ;
    
   /* My answer*/
SELECT 
    constructors.name as Name, 
    COUNT(results.position) AS Total_Wins
FROM results
JOIN constructors
ON results.constructorId = constructors.constructorId
WHERE results.position = 1
GROUP BY results.constructorId
HAVING Total_Wins > 100
ORDER BY Total_Wins Desc
;
/* My answer end*/

