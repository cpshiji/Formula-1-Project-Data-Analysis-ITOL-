/*5. Find Races Held at High-Altitude Circuits (Above 800 Meters)*/
SELECT * FROM formula_1_2025_complete.circuits;
SELECT * FROM formula_1_2025_complete.races;

/* My answer*/
SELECT 
    races.name as race_name, races.year
FROM circuits
JOIN races
ON circuits.circuitId = races.circuitId
where circuits.alt > 800
ORDER BY races.year
;
/* My answer end*/

