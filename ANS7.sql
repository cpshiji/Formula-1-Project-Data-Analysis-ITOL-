/*7. Categorize Constructors by Region Based on Nationality*/
SELECT * FROM formula_1_2025_complete.constructor_results;
SELECT * FROM formula_1_2025_complete.constructor_standings;
SELECT * FROM formula_1_2025_complete.constructors;

SELECT
   nationality, count(nationality)
FROM constructors
GROUP BY nationality; 

/* Answer */
SELECT
   constructorID, name,
CASE 
    WHEN nationality IN ('American', 'Australian', 'Brazilian', 'Canadian', 'Hong Kong', 'Indian', 
    'Japanese', 'Malaysian', 'Mexican', 'New Zealander', 'Rhodesian', 'Russian', 'South African')  THEN 'Non-European'
    ELSE 'European'
END AS Region
FROM constructors;

/* End of Answer */

/* All countries
American
Australian
Austrian
Belgian
Brazilian
British
Canadian
Dutch
East German
French
German
Hong Kong
Indian
Irish
Italian
Japanese
Malaysian
Mexican
New Zealander
Rhodesian
Russian
South African
Spanish
Swiss
 */  