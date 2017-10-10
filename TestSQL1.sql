create database Test1

use Test1

create table Emp
(
	EmpID varchar(10) Primary key,
	EmpName varchar(25),
	Emp_Address varchar(25),
	Emp_DOJ date,
	Emp_Designation varchar(10),
	Emp_Level int
)

create table Leave_Details
(
	EmpID varchar(10) references Emp(EmpId),
	Leave_days int,
	Reason varchar(20),
	Leave_Type varchar(2),
	Leave_Available int,
	Leave_Availed int,
	Leave_Balanace int
)

insert into Emp values(626262,'Gauri Bhinde','Mumbai','1/06/2013','SSE',3)
insert into Emp values(626263,'Swathi','Mysore','2/07/2013','SE',4)
insert into Emp values(626264,'Soumya','Pune','5/06/2014','TeamLeader',2)
insert into Emp values(626265,'Chinmay','Bangalore','3/06/2014','TeamLeader',2)
insert into Emp values(626266,'Padmashree','Chennai','1/06/2015','SSE',3)
select * from Emp

insert into Leave_Details values(626262,2,'Personal','CL',4,2,2)
insert into Leave_Details values(626263,2,'Emergency','HL',5,3,2)
insert into Leave_Details values(626264,2,'Personal','CL',4,2,2)
insert into Leave_Details values(626265,2,'Emergency','HL',5,3,2)
insert into Leave_Details values(626266,2,'Personal','CL',4,2,2)
select * from Leave_Details

--Q2.1
select count(*) as CL from Leave_Details l,Emp e where l.EmpID=e.EmpID and e.Emp_Designation='SSE' and l.Leave_Type='CL'


--Q2.2
select l.Leave_Available,l.Leave_Availed,l.Leave_Balanace from Leave_Details l join Emp e on l.EmpID=e.EmpID and e.Emp_Address='Mumbai'


--Q2.3
select sum(Leave_Balanace) as Leave_Balanace from Leave_Details l, Emp e where l.EmpID=e.EmpID and (e.Emp_Address='Pune' or e.Emp_Designation='TeamLeader')


--Q2.5
create view Leave_Det_view as select l.EmpID,l.Leave_days,l.Reason,l.Leave_Type,l.Leave_Available,l.Leave_Availed,l.Leave_Balanace
from Leave_Details l join Emp e on l.EmpID=e.EmpID and e.Emp_DOJ between '1/01/2014' and '1/06/2015'