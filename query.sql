--1
SELECT Name, Financing, Id FROM Departments;

--2
SELECT 
   Id AS "Group Id",
  Name AS "Group Name",
  Rating AS "Group Rating"
FROM 
  "groups";
  
--3
SELECT 
  Surname,
  (Premium / Salary) * 100 AS "Percentage of Rate to Salary",
  (Premium / (Salary + Premium)) * 100 AS "Percentage of Rate to Total Salary"
FROM 
  Teachers;
  
--4
SELECT 
  'The dean of faculty ' || Name || ' is ' || Dean AS "Faculty Information"
FROM 
  Faculties;
  
--5 
SELECT Surname FROM Teachers
WHERE Salary > 1050;

--6 
SELECT Name FROM Departments
WHERE Financing < 11000 OR Financing > 25000;

--7
SELECT Name FROM Faculties
WHERE Name <> 'Faculty of Computer Science';

--8
SELECT Surname, Position FROM Teachers
WHERE isprofessor = B'0';

--9
SELECT Surname, Position, Salary, Premium FROM Teachers
WHERE (isassistant = B'1') AND (Premium BETWEEN 160 AND 550);

--10 
SELECT Surname, Salary FROM Teachers
WHERE isassistant = B'1';

--11
SELECT Surname, Position FROM Teachers
WHERE Employmentdate > '2000-01-01';

--12 
SELECT Name as "Name of Department" FROM Departments
WHERE Name < 'Software Development'
ORDER BY Name;

--13
SELECT Surname FROM TEACHERS
WHERE (Salary + Premium) < 1200;

--14
SELECT Name FROM Groups
WHERE Year = 5 AND (Rating BETWEEN 2 AND 4);

--15
SELECT Surname FROM Teachers
WHERE (isassistant = B'1') AND (Salary < 550) OR (Premium < 200);
