
/*1. How many races were held in each decade*/
SELECT * FROM formula_1_2025_complete.races;
SELECT
    CONCAT(FLOOR(Year/10)*10, 's') AS Decade,
    COUNT(raceID) AS No_Of_Races
    FROM races
    GROUP BY Decade
    ORDER BY Decade
    ;
    
SELECT * FROM formula_1_2025_complete.races;
SELECT
    CASE WHEN year BETWEEN 1950 and 1959 THEN '1950s'
     WHEN year BETWEEN 1960 and 1969 THEN '1960s'
     WHEN year BETWEEN 1970 and 1979 THEN '1970s'
     WHEN year BETWEEN 1980 and 1989 THEN '1980s'
     WHEN year BETWEEN 1990 and 1999 THEN '1990s'
     WHEN year BETWEEN 2000 and 2009 THEN '2000s'
     WHEN year BETWEEN 2010 and 2019 THEN '2010s'
     WHEN year BETWEEN 2020 and 2029 THEN '2020s'
    END AS 'Decade',
    COUNT(raceID) AS No_Of_Races
    FROM races
    GROUP BY Decade
    ORDER BY Decade
    ;
    