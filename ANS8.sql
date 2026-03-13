/*8. Identify Drivers Who Never Raced for Ferrari*/
SELECT * FROM formula_1_2025_complete.drivers;
SELECT * FROM formula_1_2025_complete.constructors;
SELECT * FROM formula_1_2025_complete.results;

/* Answer complete*/
 SELECT
    distinct(drivers.forename),
    drivers.surname
FROM constructors
JOIN results
ON constructors.constructorId=results.constructorId
JOIN drivers
ON results.driverId = drivers.driverId
WHERE results.constructorId <> 6 /* 6 is the ConstructorId of Ferrari */
ORDER BY drivers.surname
;

/* Answer complete 2*/
 SELECT
       distinct (CONCAT(drivers.forename, " ", drivers.surname)) as Full_name
FROM constructors
JOIN results
ON constructors.constructorId=results.constructorId
JOIN drivers
ON results.driverId = drivers.driverId
WHERE results.constructorId <> 6 /* 6 is the ConstructorId of Ferrari */
;
