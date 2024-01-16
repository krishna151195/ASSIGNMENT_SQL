-- Assessment 1: 

create database company;

use company;

CREATE TABLE WORKER_1
(
 WORKER_ID INT PRIMARY KEY,
 FIRST_NAME VARCHAR(35),
 LAST_NAME VARCHAR(35),
 SALARY INT,
 JOINING_DATE DATETIME ,
 DEPARTMENT VARCHAR(35)
);

SELECT * FROM WORKER_1;

-- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
-- Arrange FIRST_NAME IN ASCENDING ORDER

SELECT FIRST_NAME FROM WORKER_1 ORDER BY FIRST_NAME ASC;

-- ARRANGE DEPARTMENT IN DESCENDING

SELECT DEPARTMENT FROM WORKER_1 ORDER BY DEPARTMENT DESC;

-- 2.Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table. 
-- FIND THE FIRST NAME WHOES "VIPUL" AND "SATISH"

SELECT * FROM WORKER_1 WHERE FIRST_NAME= "Vipul" OR FIRST_NAME= "Satish";


-- 3. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets.
-- WHOSE FIRST_NAME ENDS WITH "H"

SELECT * FROM WORKER_1 WHERE FIRST_NAME LIKE "%H";

--  4. Write an SQL query to print details of the Workers whose SALARY lies between 1. 
-- WHOSE SALARY BETWEEN 75000 TO 200000

SELECT * FROM WORKER_1 WHERE SALARY BETWEEN 75000 AND 200000;

--  5. Write an SQL query to fetch duplicate records having matching data in some fields of a table. 
--  FETCH DUPLICATE RECORD IN TABLE

SELECT COUNT(WORKER_ID),DEPARTMENT
FROM WORKER_1
GROUP BY DEPARTMENT
HAVING COUNT(WORKER_ID)> 1;

-- 6. Write an SQL query to show the top 6 records of a table.  
-- TOP 6 RECORD SHOW ME

 SELECT * FROM WORKER_1 LIMIT 6;
 
 -- 7. Write an SQL query to fetch the departments that have less than five people in them. 
 -- LESS THAN FIVE PEOPLE IN DEPARTMENT
 
 SELECT * from worker_1 limit 5;
 
 --  8. Write an SQL query to show all departments along with the number of people in there.  
 -- SHOW ALL DEPARTMENT OF PEOPLE
SELECT * FROM WORKER_1;

-- 9. Write an SQL query to print the name of employees having the highest salary in each department.
-- THE HIGHEST SALARY IN DEPARTMENT

SELECT MAX(SALARY) AS MAXIMUM FROM WORKER_1;

-- Assessment 2: 
/*Question 2: Open school database, then select student table and use following SQL statements. 
TYPE THE STATEMENT, PRESS ENTER AND NOTE THE OUTPUT */

CREATE DATABASE SCHOOLL;
USE SCHOOLL;
CREATE TABLE STUDENT 
(
 STD_ID INT PRIMARY KEY,
 STD_NAME VARCHAR(45),
 SEX ENUM("MALE","FEMALE"),
 PERCENTAGE INT,
 CLASS INT,
 SEC VARCHAR(10),
 STREAM VARCHAR(20),
 DOB DATE 
);

SELECT * FROM STUDENT;

-- 1 To display all the records form STUDENT table. 
-- ALL RECORD SHOW FROM STUDENT

 SELECT * FROM student ; 

-- 2. To display any name and date of birth from the table STUDENT. 
-- ONLY  SHOW STUDENT NAME AND DATE OF BIRTH.
 
 SELECT STD_NAME, DOB FROM student;
 
 -- 3. To display all students record where percentage is greater of equal to 80 FROM student table. 
 -- SHOW STUDENT RECORD WHOSE ACHIEVE 80% AND MORE THAN 80%.
 
 SELECT * FROM student WHERE percentage >= 80;
 
 -- 4.To display student name, stream and percentage where percentage of student is more than 80 
 -- SHOW STUDENT RECORD WHOSE ACHIEVE 80% AND MORE THAN
 
 SELECT STD_NAME, STREAM, PERCENTAGE FROM STUDENT WHERE percentage > 80; 
 
 -- 5. To display all records of science students whose percentage is more than 75 form student table. 
 -- DISPLAY ALL RECORD OF SCIENCE STREAM EHOSE PERCENTAGE MORE THAN 75
 
 SELECT * FROM student WHERE stream = "Science" AND percentage > 75; 