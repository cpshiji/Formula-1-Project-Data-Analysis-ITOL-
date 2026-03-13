/* 13. Identify Constructors' First Win Year */

SELECT * FROM formula_1_2025_complete.constructors;
SELECT * FROM formula_1_2025_complete.races;
SELECT * FROM formula_1_2025_complete.results;

SELECT
      races.raceId,
      races.year,
      results.constructorId,
      results.position
FROM races
JOIN results
ON races.raceId = results.raceId
WHERE results.position='1'
;

SELECT
      results.constructorId,
      min(races.year) as first_win_year
FROM races
JOIN results
ON races.raceId = results.raceId
WHERE results.position='1'
GROUP BY results.constructorId
;

/* Answer */
SELECT
      constructors.name,
      min(races.year) as first_win_year
FROM results
     JOIN races
     ON races.raceId = results.raceId
     Join constructors
     ON constructors.constructorId = results.constructorId
WHERE results.position='1'
GROUP BY results.constructorId
ORDER BY first_win_year
;