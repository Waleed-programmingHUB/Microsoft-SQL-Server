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