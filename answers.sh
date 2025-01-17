A) Basic Queries 
1-SELECT Name FROM students;

2-SELECT * FROM students
WHERE Age>'30';

3-SELECT Name FROM students
WHERE Gender='F' AND Age='30';

4-SELECT Points FROM students
WHERE name='Alex';

6-SELECT Points FROM students
WHERE name='Basma';

7-UPDATE students
SET Points='310'
WHERE name='Basma';

8-UPDATE students
SET Points='180'
WHERE name='Alex';

B)Creating Table
1-CREATE TABLE "graduates" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	INTEGER,
	"Gender"	TEXT,
	"Points"	INTEGER,
	"Graduation"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);

2-INSERT INTO graduates (name,age,gender,points)
select name,age,gender,points from students
where students.name = "Layal"

3-UPDATE graduates
SET graduation="08/09/2018"
WHERE  name="Layal";

4-DELETE  FROM students
WHERE name="Layal";

C)Joins
1-SELECT companies.name , companies.date, employees.name
FROM companies
INNER JOIN employees ON companies.name=employees.Company

2-SELECT employees.name
  FROM companies
  INNER JOIN employees ON companies.name=employees.Company
  WHERE companies.Date <2000

3-SELECT  e.Company
FROM employees as e, companies as c
where e.Company = c.name AND Role="Graphic Designer";


D)Count & Filter
1-SELECT MAX(Points) AS highestnumber 
FROM students;

2-SELECT AVG(Points)
 FROM students;

3-SELECT COUNT(Points)
  FROM students 
  WHERE points='500';

4-SELECT Name 
  from students
  where Name LIKE '%s%';

5-SELECT Name FROM students GROUP BY Name ORDER BY COUNT(Points) DESC;

