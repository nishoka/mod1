=============================================================================================
create database Training
Use Training 
create table Desig_master(
Design_Code numeric(3) Primary Key,
Design_Name Varchar(30) unique);



insert into desig_master values(101,'HOD');
insert into desig_master values(102,'Professor');
insert into desig_master values(103,'Reader');
insert into desig_master values(104,'Sr. Lecturer');
insert into desig_master values(105,'Lecturer');
insert into desig_master values(106,'Director');



Create Table Department_master(
Dept_code numeric(2) Primary Key,
Dept_Name varchar(30) unique);


select * from Department_master

insert into department_master values(10,'Computer Science');
insert into department_master values(20,'Electricals');
insert into department_master values(30,'Electronics');
insert into department_master values(40,'Mechanics');
insert into department_master values(50,'Robotics');


Create Table Student_master(
Stud_Code numeric(6) primary key,
Stud_Name varchar(30) not null,
Dept_Code numeric(2) references Department_master(Dept_code),
Stud_Dob datetime,
Address varchar(30));

select * from Student_master
insert into Student_master values(1001,'Amit',10,'11-Jan-80','chennai');
insert into Student_master values(1002,'Ravi',10,'1-Nov-81','New Delhi');
insert into Student_master values(1003,'Ajay',20,'13-Jan-82',null);
insert into Student_master values(1004,'Raj',30,'14-Jan-79','Mumbai');
insert into Student_master values(1005,'Arvind',40,'15-Jan-83','Bangalore');
insert into Student_master values(1006,'Rahul',50,'16-Jan-81','Delhi');
insert into Student_master values(1007,'Mehul',20,'17-Jan-82',	null);
insert into Student_master values(1008,'Dev',10,'11-Mar-81',	null);
insert into Student_master values(1009,'Vijay',30,'19-Jan-80',	null);
insert into Student_master values(1010,'Rajat',40,'20-Jan-80','Bangalore');
insert into Student_master values(1011,'Sunder',50,'21-Jan-80',	null);
insert into Student_master values(1012,'Rajesh', 30,'22-Jan-80',null);
insert into Student_master values(1013,'Anil',	20,'23-Jan-80',	'Chennai');
insert into Student_master values(1014,'Sunil',	10,'15-Feb-85',	null);
insert into Student_master values(1015,'Kapil',	40,'18-Mar-81',	null);
insert into Student_master values(1016,'Ashok',	40,'26-Nov-80',	null);
insert into Student_master values(1017,'Ramesh',30,'27-Dec-80',	null);
insert into Student_master values(1018,'Amit Raj',50,'28-Sep-80','New Delhi');
insert into Student_master values(1019,'Ravi Raj',50,'29-May-81','New Delhi');
insert into Student_master values(1020,'Amrit',	10,'11-Nov-80',	null);
insert into Student_master values(1021,'Sumit',	20,'1-Jan-80','Chennai');




Create table Student_Marks(
Stud_Code numeric(6) references student_master(Stud_code),
Stud_Year int  not null,
Subject1 numeric(3),
Subject2 numeric(3),
Subject3 numeric(3));

select * from Student_Marks

insert into Student_marks values(1001,	2007,	55,	45,78);
insert into Student_marks values(1002,	2007,	66,	74,88);
insert into Student_marks values(1003,	2007,	87,	54,65);
insert into Student_marks values(1004,	2007,	65,	64,90);
insert into Student_marks values(1005,	2007,	78,	88,65);
insert into Student_marks values(1006,	2007,	65,	86,54);
insert into Student_marks values(1007,	2007,	67,	79,49);
insert into Student_marks values(1008,	2007,	72,	55,55);
insert into Student_marks values(1009,	2007,	71,	59,58);
insert into Student_marks values(1010,	2007,	68,	44,92);
insert into Student_marks values(1011,	2007,	89,	96,78);
insert into Student_marks values(1012,	2007,	78,	56,55);
insert into Student_marks values(1013,	2007,	75,	58,65);
insert into Student_marks values(1014,	2007,	73,	74,65);
insert into Student_marks values(1015,	2007,	66,	45,74);
insert into Student_marks values(1016,	2007,	68,	78,74);
insert into Student_marks values(1017,	2007,	69,	44,52);
insert into Student_marks values(1018,	2007,	null,78,56);
insert into Student_marks values(1019,	2007,	78,	58,74);
insert into Student_marks values(1020,	2007,	45,	null,65);
insert into Student_marks values(1021,	2007,	null,79,78);


Create Table Staff_Master(
Staff_Code numeric(8) primary key,
Staff_Name varchar(30) not null,
Des_Code numeric(3) references desig_Master(Design_Code),
Dept_Code numeric(2) references department_master(dept_code),
Staff_dob datetime,
Hiredate  datetime,
Mgr_code numeric(8),
Salary numeric(10,2),
Address varchar(20));


insert into Staff_master values(100003,'Mohan',102,10,'23-Mar-80','19-Jan-02',100006,12000,'chennai');
insert into Staff_master values(100004,'Anil',102,20,'22-Apr-77','11-Mar-01',100006,12000,'chennai');
insert into Staff_master values(100005,'John',106,10,'22-May-76','21-Jan-01',100007,32000,'chennai');
insert into Staff_master values(100006,'Allen',103,10,'22-Jan-80','23-Apr-01',100005,42000,'chennai');
insert into Staff_master values(100007,'Smith',103,20,'19-Jul-73','12-Mar-02',100005,62000,'chennai');
insert into Staff_master values(100008,'Ravi raj',102,10,'17-Jun-80','11-Jan-03',100006,12000,'chennai');
insert into Staff_master values(100009,'Rahul',102,10,'16-Jan-78','11-Dec-03',100006,22000,'chennai');
insert into Staff_master values(100010,'Ram',103,10,'17-Jan-79','17-Jan-02',100007,32000,'chennai');

select * from Staff_Master

Create Table Book_Master(
Book_code numeric(10) primary key,
Book_name varchar(30) not null,
pub_year int,
Author varchar(30) not null,
book_category  varchar(10) );


select * from Book_Master
insert into Book_Master values(10000001,'Let Us C++',2000,'Y.P Karnitkar','Comp Sc');

insert into Book_Master values(10000002,'Mastering VC++',2005,'P.J Allen','Comp Sc');

insert into Book_Master values(10000003,'JAVA Complet Reference',2004,'H. Schild','Comp Sc');

insert into Book_Master values(10000004,'J2EE Complet Reference',2000,'H. Schild','Comp Sc');

insert into Book_Master values(10000005,'Relational DBMS',2000,'B. C Desai','Comp Sc');

insert into Book_Master values(10000006,'Let Us C',2000,'Y.P Karnitkar','Comp Sc');

insert into Book_Master values(10000007,'Intoduction To Algorithams',2001,'Cormen','Comp Sc');

insert into Book_Master values(10000008,'Computer Networks',2000,'Millan','Tanenbaum');

insert into Book_Master values(10000009,'Introduction to O/S',2001,'Millan','Comp Sc');


Create Table Book_Transaction(
Book_code numeric(10) references Book_master(Book_code),
Stud_code numeric(6) references student_master(stud_code),
Staff_code numeric(8) references staff_master(staff_code),
Issue_date  datetime not null,
Exp_Return_date  datetime not null,
Actual_Return_date  datetime);

select * from Book_Transaction
insert into book_transaction values (10000001,1012,NULL, '2009-07-02', '2009-07-09',NULL)

insert into book_transaction values (10000002,1010,NULL, '2009-07-01', '2009-07-08',NULL)

insert into book_transaction values (10000005,1009,NULL, '2009-06-30', '2009-07-06',NULL)

insert into book_transaction values (10000006,1012,NULL, '2009-06-13', '2009-06-20',NULL)

insert into book_transaction values (10000004,NULL,100001,'2009-07-02','2009-07-09',NULL)


insert into book_transaction values (10000003,NULL,100004,'2009-05-14','2009-05-21',NULL)


insert into book_transaction values (10000007,NULL,100005,'2009-05-21','2009-05-28',NULL)



insert into book_transaction values (10000008,NULL,100006,'2009-05-21','2009-05-28','2009-05-28')

insert into book_transaction values (10000009,1008,NULL, '2009-06-30', '2009-07-06','2009-07-09')

==============================================================================================

-- 1.3 Creating table customer
create table customer(
	customerid int Unique NOT NULL,
	customerName varchar(20) not null,
	address1 varchar(30),
	address2 varchar(30),
	contactNumber varchar(12) not null,
	Postalcode varchar(10) 
)


--Creating table employee
create table employees(
	employeeid int not null primary key,
	name nvarchar(255) null
)

--Creating table contractors
create table contractors(
	contractorid int not null primary key,
	name nvarchar(255) null
)

----Creating table TestResthrow
CREATE TABLE TestRethrow
(
ID INT PRIMARY KEY
)

--1.3.1 Create a user defined data type called Region, which would store a character string 1.of size 15
CREATE TYPE Region from varchar(15) not null;

--1.3.2 Create a Default which would store the value ‘NA’ (North America’)
CREATE DEFAULT region_constant AS 'NA'

--1.3.3 Bind the default to the Alias Data Type of Q1 
sp_bindefault region_constant, 'Q1'

--1.3.4 Modify the table Customers to add the a column called Customer_Region which would be of data type:
alter table customer add customer_region region

--1.3.5 Add the column to the Customer Table.
alter table customer add gender char(1)

--1.3.6 Using alter table statement add a constraint to the Gender column such that it would not accept any other values except ‘M’,’F’ and ‘T”.
alter table customer add constraint gender check(gender in ('M','F','T'))

--1.3.7 Create the Table Orders with the following Columns:
create table orders(
	orderid int NOT NULL IDENTITY(1000,1),
	customerID int NOT NULL,
	OrderDate DateTime,
	Order_State Char(1) check (Order_state in ('P','C'))
)

--1.3.8 Add referential integrity constraint for Orders & Customer tables through Customerld with the name fk_CustOrders.
ALTER TABLE Orders ADD FOREIGN KEY (customerId) REFERENCES customer(customerId)

--1.3.9.1.1 Copy and paste the following code segment in query editor.
CREATE SEQUENCE IdSequence AS INT START WITH 10000 INCREMENT BY 1

--1.3.9.1.2 In Object Explorer, go to Databases | Training | Programmability | Sequences, right-click and select Refresh.
--Click on the plus sign at the left of Sequences, and you should see the IdSequence sequence


--1.3.9.2.1 Copy and paste the following code segment in query editor.
INSERT INTO Employees (EmployeeId, Name) VALUES (NEXT VALUE FOR IdSequence, 'Shashank'); 
INSERT INTO Contractors (ContractorId, Name) VALUES (NEXT VALUE FOR IdSequence, 'Aditya'); 
SELECT * FROM Employees; 
SELECT * FROM Contractors;

--1.3.9.2.2 You should be able to see now the result of the execution

--1.4.1 List out Student_Code, Student_Name and Department_Code of every Student
use Training
select stud_code,stud_name,dept_code from Student_master

--1.4.2 Do the same for all the staff’s
select staff_code,staff_name,dept_code from Staff_Master

--1.4.3 Retrieve the details (Name, Salary and dept code) of the employees who are working in department 20, 30 and 40.
select staff_name,salary,dept_code from Staff_Master where Dept_Code in (20,30,40)

--1.4.4 Display Student_Code, Subjects and Total_Marks for every student. Total_Marks will calculate as Subject1 + Subject2 + Subject3 from Student_Marks. The records should be displayed in the descending order of Total Score
select stud_code,subject1,subject2,subject3,(subject1+Subject2+Subject3) as Total_Marks from Student_Marks order by Total_Marks desc

--1.4.5 List out all the books which starts with ‘An’, along with price
select book_name from Book_Master where book_name like 'An%'

--1.4.6 List out all the student codes in which students have joined this year
select stud_code from Student_Marks where Stud_Year = datename(year,GETDATE()) 

--1.4.7 Display name and date of birth of students where date of birth must be displayed in the format similar to “January, 12 1981” for those who were born on Saturday or Sunday.
select stud_name,(DATENAME(MONTH,stud_dob)+', '+DATENAME(day,stud_dob)+' '+DATENAME(year,stud_dob)) as date_of_birth from Student_master where datename(weekday,stud_dob) = 'Sunday' or datename(weekday,stud_dob) = 'Saturday'

---1.4.8.List out a report like this StaffCode StaffName Dept Code Date of Joining No of years in the Company----------

select Staff_Code as StaffCode, Staff_Name as StaffName, Dept_Code as DeptCode,Datediff(year,Hiredate,SYSDATETIME()) as Noofyearsincompany from Staff_master

---1.4.9.List out all staffs who have joined before Jan 2000---------

select Staff_Name from Staff_Master where Datename(year,Hiredate)<2000

---1.4.10.Write a query which will display Student_Name, Departmnet_Code and DOB of all students who born between January 1, 1981 and March 31, 1983.------

select Stud_name,Dept_code,Stud_dob from Student_master where Stud_Dob between '1-jan-81' and '31-mar-83'

---1.4.11.List out all student codes who did not appear in the exam subject2------

select Stud_Code from Student_Marks where Subject2 is null
===================================================================================================
--1.5
--1. Write a query which displays Staff Name, Department Code, Department Name, and Salary for all staff who earns more than 20000.
    select s.Staff_name, s.Dept_code,d.Dept_name from Staff_Master s,Department_master d where d.Dept_code=s.Dept_Code and s.Salary>20000
	
--2. Write a query to display Staff Name, Department Code, and Department Name for all staff who do not work in Department code 10
   select s.Staff_name, s.Dept_Code,d.Dept_name from Staff_Master s, Department_master d where d.Dept_Code=s.dept_code and s.Dept_Code<>10

--3. Print out a report like this 
    --Book Name No of times issued
	--Let us C 12
	--Linux Internals 9
   select b.Book_name as BOOKNAME ,count(v.Book_Code) as Nooftimesissued from Book_Master b, Book_Transaction v where b.Book_code=v.Book_code group by b.Book_name

--4. List out number of students joined each department last year. The report should be displayed like this
	--Physics 12
	--Chemistry 40
	select Stud_Code,Stud_Name,d.Dept_Code from Student_master s, department_Master d where s.Dept_code=d.Dept_Code and d.Dept_code IN (select a.Dept_Code from (select top  1 count(Stud_Code)as total,Dept_code from Student_Master group by Dept_code order by total desc)a)

--5. List out a report like this
--Staff Code Staff Name Manager Code Manager Name
	select sm.Staff_Name,sm.Staff_Code,sm.mgr_code,mgr.Staff_name as mgr from Staff_Master sm
	inner join Staff_Master mgr
	on sm.mgr_code=mgr.Staff_Code

--6.Display the Staff Name, Hire date and day of the week on which staff was hired.Label the column as DAY. Order the result by the day of the week starting with Monday.
  select s.staff_name , s.hiredate , datename(Weekday,s.hiredate) as Day from
  staff_master s order by Day

--7.Display Staff Code, Staff Name, and Department Name for those who have taken more than one book.
 select s.staff_code , s.staff_name, d.dept_name from department_master d , staff_master s,
 Book_transaction b where b.Staff_code=s.Staff_Code and d.dept_code = s.Dept_Code
 group by GROUPING sets (s.Staff_Code,s.Staff_Name, d.Dept_Name) having count(b.Staff_code)>1

--8.List out the names of all student code whose score in subject1 is equal to the highest score
 select s.Stud_Name from Student_Master s,student_marks m
 where s.Stud_Code = m.Stud_Code and m.Subject1 IN (select max(m.Subject1) from Student_Marks m)

--9. Modify the above query to display student names along with the codes. 
 select s.stud_name ,s.stud_code from Student_master s , Student_Marks m
 where s.stud_code= m.Stud_Code and m.Subject1 in 
 (select max(m.subject1) from Student_Marks m)

--10. Display the Student Code, Student Name, and Department Name for that department in which maximum number of student are studying.
  select s.stud_name ,s.stud_code , d.dept_name from Student_master s,
  Department_master d where d.Dept_code= s.Dept_Code and d.Dept_code in
  (select a.dept_code from (select top 1 count(s.Stud_Code) as total, Dept_code
  from Student_master s group by Dept_code order by total desc ) a)

--11. List out the names of all the books along with the author name, book code and category which have not been issued at all.
--Try solving this question using EXISTS.
  select b.book_name , b.author, b.book_code ,b.book_category from Book_master b,
  Book_Transaction t where exists (select t.issue_date from Book_Transaction t
  where t.issue_date is null and b.book_code = t.book_code)

--12. List out the code and names of all staff and students belonging to department 20. 
  select staff_code, staff_name from staff_master where dept_code =20
  union
  select stud_code, stud_name from Student_master where dept_code =20

--13. List out all the students who have not appeared for exams this year.
  select s.stud_name from Student_master s join student_marks m
  on s.stud_code =m .Stud_Code where m.stud_year = datepart(yy,getdate())

--14.List out all the student codes who have never taken books.
  select s.stud_code from student_master  s , Book_Transaction b
  where s.Stud_Code =  b.stud_code and b.Stud_code is null

--15. Add the following records to the Customers Table , created in our earlier exercises.
  alter table customer alter column customer_id varchar(20)
  insert into customer ( customer_id,customer_name,address1, address2, contactNumber , postalcode, regions)
  values( 'ALFKI','AlfredsFutterkiste','oberestr.5.7','berlin','germany',030-0074321, '12209','null','null'),
  ('ANATR', 'ana_trujillo_emparedados_y_helados','oberestr.5.7','berlin','germany',030-0074321, '12209','null','null')


--16.Replace the contact number of Customer id ANATR to (604) 3332345. 

 update customer set contactNumber = '(604)3332345' where customerId='ANATR'


--17.Update the Address and Region of Customer BOTTM to the following 
    --19/2 12th Block, Spring Fields
  update customer set address1 ='19/2 12th block, spring fields' and address2='ireland-UK' 
  and regions= 'EU' where customerName= 'BOTTM'


--18.Insert the following records in the Orders table. The Order id should be automatically generated.
  insert into orders(customerId , orderstate)
  values('AROUT',96/07/04, 'P'),
  ('ALFKI', 96/07/05,'C'),('BONAP',96/07/08,'P'),('ANTON',96/07/12,'P'),('BLAUS',96/07/15,'P'),
  ('HILAA',96/07/16,'P')

--19.Delete all the Customers whose Orders have been cleared. 
  DELETE FROM ORDERS WHERE ORDERSTATE='C'

--20. Remove all the records from the table using the truncate command. Rerun the script to populate the records once again.


--21.Change the order status to C, for all orders before `15th July 1.6.
  UPDATE ORDERS SET ORDERSET='C'WHERE ORDERDATE<96/07/15

--==================================================================================================

--1.7.4.Create a procedure that accepts the book code as parameter from the user. Display the details of the students/staff that have borrowed that book and has not returned the same. The following details should be displayed

 Alter procedure BookNotReturned
 @book_code int
 as
 begin
 select distinct sm.Stud_Code as StudentCode_or_StudentName,sm.Stud_Name as StaffCode_or_staffName,bt.Issue_date,dm.Dept_Name,bt.Exp_Return_date from Student_master as sm
 join Department_master as dm on sm.Dept_Code = dm.Dept_code
 join Book_Transaction as bt on sm.Stud_Code = bt.Stud_code where bt.Actual_Return_date is null and bt.Book_code = @book_code
 union all
 select distinct sm.Staff_Code,sm.Staff_Name,bt.Issue_date,dm.Dept_Name,bt.Exp_Return_date from Staff_Master as sm
 join Department_master as dm on sm.Dept_Code = dm.Dept_code
 join Book_Transaction as bt on sm.Staff_Code = bt.Staff_code where bt.Actual_Return_date is null and bt.Book_code = @book_code
 end
 go


--===================================================================================================================


--2.1 List the empno, name and Department No of the employees who have got experience of more than 18 years.
  select staff_code,staff_name,dept_code from Staff_Master where DATEDIFF(year, Hiredate,getdate()) > 18

--2.2 Display the name and salary of the staff. Salary should be represented as X. Each X represents a 1000 in salary. It is assumed that a staff’s salary to be multiples of 1000 , for example a salary of 5000 is represented as XXXXX
 select staff_name, salary,REPLICATE('X',salary/1000) from Staff_Master

 --2.3 List out all the book code and library member codes whose return is still pending
 select book_code,stud_code from Book_Transaction where actual_return_date is NULL

 --2.4 List all the staff’s whose birthday falls on the current month
 select staff_name from Staff_Master where datename(month,staff_dob) = datename(month,getdate())

 --2.5 How many books are stocked in the library?
 select count(Book_code) from Book_Master

 --2.6 How many books are there for topics Physics and Chemistry?
 select count(Book_code) from Book_Master where book_category = 'Physics' or book_category='Chemistry' 

 --2.7 How many members are expected to return their books today?
 select count(book_code) from Book_Transaction WHERE DATEPART(year, Exp_Return_date) = DATEPART(year, getdate()) AND DATEPART(month, Exp_Return_date) = DATEPART(month, getdate()) AND DATEPART(day, Exp_Return_date) = DATEPART(day, getdate())
 
 --2.8 Display the Highest, Lowest, Total & Average salary of all staff. Label the columns Maximum, Minimum, Total and Average respectively. Round the result to nearest whole number
 select round(max(salary),0) 'Maximum',round(min(salary),0) 'Minimum',round(sum(salary),0) 'Total',round(avg(salary),0) 'Average' from Staff_Master 

 --2.9 How many staffs are managers”?
 select count(distinct mgr_code) from Staff_Master

--2.10 List out year wise total students passed. The report should be as given below. A student is considered to be passed only when he scores 60 and above in all 3 subjects individually
select stud_year,count(Stud_Code) as No_of_students_passed from Student_Marks where Subject1>60 and Subject2>60 and subject3>60 group by Stud_Year

--2.11 List out all the departments which is having a headcount of more than 10

create view vw_headcount as 
select Dept_Code,count(dept_code) as count_dept from Student_master group by Dept_Code 
union
select Dept_Code,count(dept_code)  from Staff_Master group by dept_code

select Dept_Code,sum(count_dept) as Head_count  from vw_headcount group by Dept_Code having sum(count_dept) > 10

--2.12 List the total cost of library inventory ( sum of prices of all books )



=====================================================================================
--2.2 

--2.2.1 Write a query that displays Staff Name, Salary, and Grade of all staff. Grade depends on the following table.
 select staff_name,salary,'C' as Grade from Staff_Master where salary >= 10000 and salary <25000
 union
 select staff_name,salary,'B' as Grade from Staff_Master where salary >= 25000 and salary <50000
 union
 select staff_name,salary,'A' as Grade from Staff_Master where salary >= 50000

 --2.2.2 Generate a report which contains the following information. Staff Code, 
 --Staff Name, Designation, Department, Book Code, Book Name, Author, Fine
 --For the staff who have not return the book. Fine will be calculated as Rs. 5 per day.
 --Fine = 5 * (No. of days = Current Date – Expected return date), for others it should be displayed as –
 
 select sf.Staff_Name,ds.Design_Name,dm.Dept_Name,bm.Book_code,bm.Book_name,bm.Author,(DATEDIFF(day,bt.Exp_Return_date,GETDATE())*5) as Fine from Staff_Master as sf
 join Department_master as dm on dm.Dept_code = sf.Dept_Code
 join Desig_master as ds on ds.Design_Code = sf.Des_Code
 join Book_Transaction as bt on bt.Staff_code = sf.Staff_Code
 join Book_Master as bm on bm.Book_code = bt.Book_code 

--2.2.3 List out all the staffs who are reporting to the same manager to whom staff 100006 reports to.
select staff_name from staff_master where mgr_code = (select mgr_code from Staff_Master where staff_code =100006)

--2.2.4 List out all the students along with the department who reads the same books which the professors read

 select sm.Stud_Name,sm.Dept_Code from Student_master as sm 
 join Book_Transaction as bm on bm.Stud_code = sm.Stud_Code
 join Staff_Master as sf on bm.Staff_code = sf.Staff_Code 

 --2.2.5 List out all the authors who have written books on same category as written by Author David Gladstone
 select bm.Author from book_master as bm where bm.book_category = (select distinct bm.book_category from Book_Master as bm where bm.Author = 'David Gladstone')

 --2.2.6 Display the Student report Card for this year. The report Card should contain the following information.
 
 select sm.Stud_Code,sm.Stud_Name,(smm.Subject1+smm.Subject2+smm.Subject3) as TotalMarks,  
 CASE WHEN ((smm.Subject1+smm.Subject2+smm.Subject3)/3) > 80
     THEN 'E'
     WHEN ((smm.Subject1+smm.Subject2+smm.Subject3)/3) < 80 AND ((smm.Subject1+smm.Subject2+smm.Subject3)/3) > 70
     THEN 'A'
     WHEN ((smm.Subject1+smm.Subject2+smm.Subject3)/3) < 69 AND ((smm.Subject1+smm.Subject2+smm.Subject3)/3) > 60
     THEN 'B'
     ELSE 'F'
     END AS GRADE
 from Student_master as sm 
 join Department_master as dm on sm.Dept_Code = dm.Dept_code
 join Student_Marks as smm on sm.Stud_Code = smm.Stud_Code 
==================================================================================================================

--2.3

use AdventureWorks2012
select * from HumanResources.Employee

create view View_Employee as
select * from HumanResources.Employee where JobTitle Like 'Marketing%'

select OrganizationLevel,count(BusinessEntityID) as Count from View_Employee group by OrganizationLevel
