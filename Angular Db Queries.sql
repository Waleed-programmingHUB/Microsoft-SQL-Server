
/* create table */
/*
create table [dbo].[Employee](
	EmployeeId int identity(1,1),
	EmployeeName varchar(255),
	Department varchar(180),
	DateOfJoin date ,
	PhotoProfileName varchar(500)
)
*/
/*
insert into [dbo].[Employee] values ('Waleed Ali Sarwar','IT','2021-4-21','profile1img.png')
*/
create table [dbo].[Department](
	EmployeeId int identity(1,1),
	Department varchar(180),
)