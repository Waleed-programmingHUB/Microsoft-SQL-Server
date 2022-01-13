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


/* T-SQL */
-- BETWEEN , AND keyword or NOT BETWEEN ,AND keyword

-- Example 1
-- printing a data which we defined to print Employees EmployeeID start 6 to 8 showing the record 
--SELECT EmployeeID AS ID ,TitleOfCourtesy+ FirstName + ' ' + LastName AS 'Name of Employee' ,Title AS 'Current Position' FROM Employees WHERE EmployeeID BETWEEN 6 AND 8

---- Example 2
---- printing a data which we defined to print Employees EmployeeID start 6 to 8 not showing  in this record 
--SELECT * FROM Employees WHERE EmployeeID NOT BETWEEN 6 AND 8 -- it will print all the record expect to 6 to 8 

---- Example 3
---- Sequence the record -> ORDER BY _typeData
---- printing a Product price
--SELECT ProductID AS ID ,ProductName ,UnitPrice AS PRICE FROM [dbo].[Products] WHERE UnitPrice BETWEEN 15 AND 18 ORDER BY UnitPrice

---- Example with Text
---- find all the items whose products name starts letter :BETWEEN C AND D
--SELECT ProductID , ProductName FROM Products WHERE ProductName BETWEEN 'C' AND 'D' ORDER BY ProductID

---- Example with Dates
---- find all the orders which are ordered between 15 days of July 1996
--SELECT * FROM Orders WHERE OrderDate BETWEEN '07-01-1996' AND '07-15-1996'

---- SQL Functions
---- There are 2 types of SQL Functions
---- 1. Aggreigate Function -> GROUP BY
---- 2. Scalar Function
---- Aggreigate Function MOST COMMONLY USED
---- COUNT ,AVG ,SUM ,MAX ,MIN 

---- Example 1 COUNT() the total number of Employees in London
--SELECT COUNT(*) AS 'Number of Employee in London City' FROM Employees WHERE City = 'London' -- Equal to London
---- Example 2
--SELECT COUNT(*) AS 'Number of Employee which is not in the London City' FROM Employees WHERE City <> 'London' -- Not Equal to London

---- Example 1 AVG() find the Average of Products
--SELECT AVG(UnitPrice) AS 'Average Price' FROM Products
---- Example 2
--SELECT * FROM Products WHERE UnitPrice < (SELECT AVG(UnitPrice) FROM Products) ORDER BY ProductID
---- Example 3 total number of price below whose price is below average price of all products 
--SELECT COUNT(*) AS 'Number Of Products' FROM Products WHERE UnitPrice < (SELECT AVG(UnitPrice) FROM Products)  

---- Example 1 MIN() find the cheapest product offered by company
--SELECT MIN(UnitPrice) AS 'minimum unit price of product' FROM Products  

---- CONVERT Function in SQL Server
---- Syntax
--SELECT  EmployeeID AS ID, TitleOfCourtesy + firstName + ' ' + LastName AS 'Name of Person' ,
--CONVERT(VARCHAR,BirthDate ,101) AS BirthDate,
--HireDate
--FROM Employees

--/* Creating a NEW DATABASE for STUDENTS */
--CREATE DATABASE TestDB2Join2
--Go

--Use TestDB2Join2
--Go

--CREATE TABLE [dbo].[Students]
--(
--	[StudentId] [int] NOT NULL,
--	[FullName] [nvarchar](50) NULL,
--	[Email] [nvarchar](50) NULL,
--	[Mobile] [nvarchar](50) NULL,
--	[DateOfBirth] [datetime] NULL,
--	[Notes] [nvarchar](max) NULL,
--)
--Go

--CREATE TABLE [dbo].[StudentsAddresses]
--(
--	[AddressId] [int] NOT NULL,
--	[StudentId] [int] NULL,
--	[Address1] [nvarchar](50) NULL,
--	[City] [nvarchar](50) NULL,
--	[Country] [nvarchar](50) NULL,
--	[PostCode] [nvarchar](50) NULL,
--)
--Go

---- Data 
--INSERT [dbo].[Students] ([StudentId], [FullName], [Email], [Mobile], [DateOfBirth], [Notes]) VALUES (1, N'John Smith', N'j.smith@gmail.com', N'0762589632', CAST(N'2001-11-20T00:00:00.000' AS DateTime), N'x')
--GO
--INSERT [dbo].[Students] ([StudentId], [FullName], [Email], [Mobile], [DateOfBirth], [Notes]) VALUES (2, N'Adam Wilson', N'adam.w@abc.com', N'0778523698', CAST(N'1999-12-21T00:00:00.000' AS DateTime), N'x')
--GO
--INSERT [dbo].[Students] ([StudentId], [FullName], [Email], [Mobile], [DateOfBirth], [Notes]) VALUES (3, N'James Taylor', N'james.taylor@abc.com', N'0748523698', CAST(N'1996-11-02T00:00:00.000' AS DateTime), N'x')
--GO
--INSERT [dbo].[Students] ([StudentId], [FullName], [Email], [Mobile], [DateOfBirth], [Notes]) VALUES (4, N'Tony Griag', N'Tony.g@abc.com', N'0745896325', CAST(N'1995-11-02T00:00:00.000' AS DateTime), N'x')
--GO
--INSERT [dbo].[StudentsAddresses] ([AddressId], [StudentId], [Address1], [City], [Country], [PostCode]) VALUES (1, 1, N'123 ABC Road', N'London', N'United Kingdom', N'SW32 2AL')
--GO
--INSERT [dbo].[StudentsAddresses] ([AddressId], [StudentId], [Address1], [City], [Country], [PostCode]) VALUES (2, 2, N'34A Jones Street', N'Leeds', N'United Kingdom', N'LE34 3BA')
--GO
--INSERT [dbo].[StudentsAddresses] ([AddressId], [StudentId], [Address1], [City], [Country], [PostCode]) VALUES (3, 3, N'45 Taylor Road', N'Aylesburry', N'United Kingdom', N'HE3 3AL')
--GO
--INSERT [dbo].[StudentsAddresses] ([AddressId], [StudentId], [Address1], [City], [Country], [PostCode]) VALUES (4, 5, N'23 XYZ Street', N'Glassgow', N'United Kingdom', N'GL2 3MN')
--GO


/* SQL Join ,RIGHT JOIN , LEFT JOIN ,FULL JOIN */

SELECT * FROM [dbo].[Students]
SELECT * FROM [dbo].[StudentsAddresses]

-- INNER JOIN
-- Example
/* INER JOIN */
SELECT * FROM Students AS Student1_Table
INNER JOIN StudentsAddresses AS Student2Location_table ON Student1_Table.StudentId = Student2Location_table.StudentId  

/* Left JOIN */
SELECT * FROM Students LEFT JOIN StudentsAddresses ON Students.StudentId = StudentsAddresses.StudentId

/* Right JOIN */
SELECT * FROM Students RIGHT JOIN StudentsAddresses ON Students.StudentId = StudentsAddresses.StudentId

/* FULL Join */
SELECT * FROM Students FULL JOIN StudentsAddresses ON Students.StudentId = StudentsAddresses.StudentId

/* Switch Case SQL */

