--task 1
SELECT city, COUNT(branchNo) FROM branch
GROUP BY city;

--task 2
SELECT sex, COUNT(sex) AS 'Number', 
MAX(salary) AS 'MaxSalary',
MIN(salary) AS 'MinSalary' FROM staff
GROUP BY sex;

--task 3
SELECT position1, sex, COUNT(sex) FROM staff
GROUP BY position1, sex 
ORDER BY COUNT(sex) DESC;

--task 4
SELECT position1,
AVG(salary)/2 AS 'Half avg salary'
FROM staff
GROUP BY position1
ORDER BY position1 DESC;

--task 5
SELECT branchNo, COUNT(branchNo) AS 'Workers', SUM(salary) AS 'Sum of salaries' FROM staff
GROUP BY branchNo
HAVING COUNT(branchNo)>1;

--task 6
SELECT *, COUNT(city) AS 'Number of Property' FROM propertyforrent
WHERE type1 = 'flat'
HAVING COUNT(city)>2; 

--task 7
SELECT staffNo, fName, IName, DOB FROM staff
WHERE branchNo IN (SELECT branchNo FROM branch WHERE city = 'London')
GROUP BY fName, IName;

--task 8
SELECT fName, IName, position1, 
salary-(SELECT AVG(salary) FROM staff) AS 'diffSalary' 
FROM staff
WHERE salary >(SELECT AVG(salary) FROM staff);

--task 9
SELECT * FROM propertyforrent
WHERE staffNo IN (SELECT staffNo FROM staff WHERE city = 'Glasgow');

--task 10
SELECT * FROM propertyforrent
WHERE rent < (SELECT MIN(rent) FROM propertyforrent WHERE ownerNo = (SELECT ownerNo FROM privateOwner WHERE fname = 'Carol'));

--task 11
SELECT * FROM propertyforrent
WHERE rent > (SELECT MAX(rent) FROM propertyforrent WHERE ownerNo = (SELECT ownerNo FROM privateowner WHERE fname = 'Tony'));

--task 12
--daalgavar 1
SELECT * FROM propertyforrent
INNER JOIN client1 ON
rent >= maxRent
AND Typee = prefType;

--task 13
--daalgavar 2
SELECT client1.`fName`, branchNo, staffNo FROM Registration
INNER JOIN client1 ON
Registration.`clientNo` = client1.`clientNo` 
ORDER BY branchNo, client1.`fName`;

--task 14
--daalgavar 3
SELECT fname, position1, branch.`postcode` FROM staff
INNER JOIN branch ON
((SELECT branchNo FROM branch WHERE city = 'London') = staff.`branchNo`
OR (SELECT branchNo FROM branch WHERE city = 'Glasgow') = staff.`branchNo`)
ORDER BY DOB;

--task 15
--daalgavar 4
SELECT
    propertyforrent.*,
    viewing.comment1
FROM
    propertyforrent,
    viewing
WHERE
    viewing.comment1 != " " && propertyforrent.propertyNo = viewing.propertyNo;

--task 16
--daalgavar 5
SELECT fName,lName,position1 FROM staff
WHERE staffNo IN (
    SELECT staffNo FROM propertyforrent
    WHERE rooms = 3
    )
ORDER BY branchNo, position1;

--task 17
--daalgavar 6
UPDATE staff
SET sex = 'Female'
WHERE sex = 'F';

UPDATE staff
SET sex = 'Male'
WHERE sex = 'M';


SELECT * FROM `staff`  
ORDER BY `staff`.`dob` DESC
LIMIT 1;

--task 18
--daalgavar 7
SELECT * FROM staff ORDER BY RAND() LIMIT 1;

--task 19
--daalgavar 8
SELECT
    *,
    COUNT(
        CASE WHEN type1 = 'Flat' THEN 1 ELSE NULL END ) AS 'flat',
	COUNT(
    CASE WHEN type1 = 'House' THEN 1 ELSE NULL END ) AS 'house'
FROM
    propertyforrent
GROUP BY
    city;
    
--task 19 v2
--daalgavar 8 v2

SELECT *, 
COUNT(type1) as 'typecount'
FROM propertyforrent
GROUP BY propertyforrent.city,propertyforrent.type1;
    
--task 20
--daalgavar 9
SELECT client1.prefType, AVG(client1.maxRent) as max FROM client1
ORDER BY COUNT(prefType);

--task 21
--daalgavar 10
SELECT propertyNo FROM `viewing`  
GROUP by viewing.propertyNo
ORDER BY COUNT(viewing.propertyNo) DESC
LIMIT 2;

--task 22
--daalgavar 11
SELECT * FROM registration  
ORDER BY registration.datejoined DESC
LIMIT 2;
