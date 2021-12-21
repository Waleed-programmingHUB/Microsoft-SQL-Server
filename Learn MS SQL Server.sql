/*

	SQL Query 
	SQL Stands for Structure Query Language 

*/
-- CREATE DATABASE _DatabaseName

-- CREATE DATABASE _DATABASE -- Command is used to Create new database
-- Creating a Table in the Database


-- Without Constraint

--CREATE TABLE Students
--(
--	StudentId INT,
--	FirstName nvarchar(50),
--	LastName nvarchar(100),
--	Email nvarchar(50),
--	MobileNumber NVARCHAR(12),
--	Notes nvarchar(MAX),
--)

--USE StudentsManager

--GO
-- With Constraint
--CREATE TABLE Student_2
--(
--	StudentId INT NOT NULL,
--	FirstName nvarchar(50) NOT NULL,
--	LastName nvarchar(100) NULL,
--	Email nvarchar(50) NOT NULL,
--	MobileNumber NVARCHAR(12) NULL,
--	Notes nvarchar(MAX) NULL,
--)

-- Create table Record using Primary Key

--CREATE TABLE Student_3
--(
--	StudentId INT PRIMARY KEY ,
--	FirstName nvarchar(50) NOT NULL,
--	LastName nvarchar(100) NULL,
--	Email nvarchar(50) NOT NULL,
--	MobileNumber NVARCHAR(12) NULL,
--	Notes nvarchar(MAX) NULL,
--)

/* With Auto-Increament Key Identity */

--CREATE TABLE Student_5(
--	StudentId INT IDENTITY(1,3001) PRIMARY KEY NOT NULL,
--	StudentName nvarchar(50)
--)

/* Selecting the database from NorthWind Database */

/* print the table from the database */
-- SELECT * FROM Employees

/* Selecting a particular record in the table */
--SELECT EmployeeID ,TitleOfCourtesy,FirstName ,LastName ,City FROM Employees

/* Selecting a record in the table with change the Field title name */
-- SELECT EmployeeID AS ID , FirstName +' '+ LastName AS 'Name' FROM Employees

-- Label changing for readabilty 
-- SELECT EmployeeID AS ID , FirstName +' '+ LastName AS 'Name' , TitleOfCourtesy AS 'Mr/Mrs' ,Title AS 'RANK POSITION' FROM Employees

/* using a keyword WHERE */

--SELECT * FROM Employees WHERE EmployeeID = 5

--SELECT * FROM Employees WHERE TitleOfCourtesy = 'Mr.'

--SELECT * FROM Employees WHERE City = 'London'

/* SQL WildCards */

-- % module 
--SELECT * FROM Employees WHERE Title LIKE 'Sales%'

---- Example 1
--SELECT * FROM Employees WHERE Title LIKE '%Sales%'

---- Example 2 
--SELECT * FROM Employees WHERE FirstName LIKE 'Rob%'

---- _ underscore 
--SELECT * FROM Employees WHERE FirstName LIKE '_an%'

---- if [] and Or [^]

---- printing a record which letter name are starts with any english name
--SELECT * FROM Employees WHERE FirstName LIKE '[MNJ]%'

---- printing a record expect to this name are starts with any english name
--SELECT * FROM Employees WHERE FirstName LIKE '[^SLN]%'
