use school_db;
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city; 
SELECT city, COUNT(*) AS total_students
FROM students
GROUP BY city
HAVING COUNT(*) > 1;
SELECT city, AVG(age) AS avg_age
FROM students
GROUP BY city
HAVING AVG(age) > 20;
