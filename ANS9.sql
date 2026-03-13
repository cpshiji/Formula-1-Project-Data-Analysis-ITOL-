/*9. List Races Held on Circuits in the UK*/
SELECT * FROM formula_1_2025_complete.circuits;
SELECT * FROM formula_1_2025_complete.races;

SELECT 
    name, circuitId 
FROM circuits
WHERE country = 'UK' /* circuitId 9, 31,38,58 */
;

/* Answer */
SELECT 
   distinct(races.name) as race_name
FROM races
JOIN circuits
ON circuits.circuitId = races.circuitId
WHERE circuits.country = 'UK' /* circuitId 9, 31,38,58 */
;
    