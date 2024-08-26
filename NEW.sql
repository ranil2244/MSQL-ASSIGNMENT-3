CREATE DATABASE MANAGER;

USE MANAGER;

CREATE TABLE Managers (Manager_Id INT PRIMARY KEY,First_name VARCHAR(50),Last_Name VARCHAR(50),DOB DATE,Age INT CHECK (Age >= 18),
Last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,Gender CHAR(1),Department VARCHAR(50) NOT NULL,
Salary DECIMAL(10, 2) NOT NULL);
INSERT INTO Managers (Manager_Id, First_name, Last_Name, DOB, Age, Gender, Department, Salary)
VALUES

#1. Insert 10 rows.
(1, 'Akshay','Sharma', '1982-03-15', 44, 'M', 'Sales', 20000.00),
(2, 'Dhileep','Kumar', '1985-05-22', 39, 'F', 'Marketing', 23000.00),
(3, 'Sanjay','Sing', '1976-12-20', 45, 'F', 'IT', 35000.00),
(4, 'Shaji','Kilas', '1996-04-30', 34, 'M', 'Finance', 39000.00),
(5, 'Aoop','Menon', '1972-12-05', 41, 'M', 'IT', 24000.00),
(6, 'Aaliya','Mohan', '1997-09-19', 37, 'M', 'HR', 35000.00),
(7, 'Vidhu','Predhabhan', '1982-04-28', 32, 'F', 'Marketing', 26000.00),
(8, 'Sruthi','Menon', '1986-06-17', 44, 'M', 'Sales', 31000.00),
(9, 'Prethew','Raj', '1974-10-02', 39, 'F', 'Finance', 38000.00),
(10, 'Navya','Nair', '1991-01-24', 43, 'M', 'IT', 23000.00);

SELECT * FROM Managers;

#2 Write a query that retrieves the name and date of birth of the manager with Manager_Id 1?
select first_name , last_name, dob from managers where manager_id =1;

#3 Write a query to display the annual income of all managers?
select first_name ,salary*12 as Salary_per_annum from managers;

#4 Write a query to display records of all managers except ‘Aaliya’?
select * from Managers WHERE first_name <> 'Aaliya';

#5 Write a query to display details of managers whose department is IT and earns more than 25000 per month?
select first_name from managers where department='IT' and salary>25000;

#6 Write a query to display details of managers whose salary is between 10000 and 35000?
select * from managers where salary  between 10000 and 35000;






