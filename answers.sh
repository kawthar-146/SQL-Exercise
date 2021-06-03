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