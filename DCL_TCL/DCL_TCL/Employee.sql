create table Employee (EmployeeId int primary key, 
						FirestName varchar(50), 
						lastName varchar(50),
						Age int, 
						Department varchar(50));


 insert into Employee values  (1,'Ram', 'kumar', 22, 'sales'),
							 (2,'Arun','kumar',23,'Marketing'),
							 (3,'Ashok', 'kumar', 21, 'sales'),
							 (4,'Radha', 'Ravi', 24, 'sales'),
							 (5,'Ram','Prasanth',21,'sales');
	

Begin TRANSACTION
insert into Employee values (6,'Ganesh', 'Venkat', 24, 'sales'),
							 (7,'Krithic','Vasan',21,'sales');
SAVE TRANSACTION FirstInsert;

RollBack;

commit;

ROLLBACK TRANSACTION FirstInsert;

Begin TRANSACTION
UPDATE Employee
SET Department = 'Project Maneger'
WHERE EmployeeID = 1;
SAVE TRANSACTION SecondInsert;

select * from Employee

Begin TRANSACTION theridInsert
truncate table employee;

ROLLBACK TRANSACTION theridInsert;

--DCL
create login samp with password = '123';

use[kumaresan]
create user User_D for login samp;

GRANT SELECT,insert ON [dbo].[Employee] TO User_D;

Revoke insert on [dbo].[Employee] TO User_D;