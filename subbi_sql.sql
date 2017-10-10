create database Module1

use module1
--Q1.) Creating tables for catergory,products
create table catergory(
CategoryID Integer primary key,
CategoryName varchar(30) not null,
NoOfProducts Integer)

drop table catergory;
select * from catergory;

insert into catergory values(1,'sandwiches',2),
							(2,'Choclate',3),
							(3,'Soft Drink',3),
							(4,'cake',2),
							(5,'Fruits',0),
							(6,'Chips',0)

create table Suppliers(
SupplierID Integer primary key,
Supplier_Name varchar(20) not null,
Country varchar(20),
CreditBalance Integer);

insert into Suppliers values(1,'Carazorake','INDIA',20000),
							(2,'Gamul','India',30000),
							(3,'pepca','USA',40000),
							(4,'cakebake','USA',100000),
							(5,'Cocaboka','Russia',20000),
							(6,'Micora','Australia',10000)

create table Products(
ProductID Integer primary key,
ProductName varchar(20) not null,
UnitPrice int,
categoryID Integer references catergory(categoryID),
SupplierID Integer references Suppliers(SupplierID))

insert into Products values(1,'club sandwithch',30,1,1),
							(2,'Amul choclate',15,2,2),
							(3,'Eclairs',17,2,3),
							(4,'chatney sandwith',30,1,1),
							(5,'cold coffee',40,3,2),
							(6,'Crunchy bytes',10,2,1),
							(7,'mawa coke',50,4,4),
							(8,'Orange Juice',20,3,5),
							(9,'Guava juice',25,3,3),
							(10,'walnut',60,4,1)



--=====================================================================================================
--Count And highest Price of Products in each Category

--joining Products table and Catergory table and using group by catergoryname and displaying count and highestprice
select c.categoryName,count(productid) as No_Of_Products,max(p.UnitPrice) as Highest_Price from Products as p
join catergory as c on c.categoryID = p.categoryID group by c.categoryName

--====================================================================================================
--Creating a view to display ProductID,productName,UnitPrice,SupplierID,SupplierName,Country 

create view supp_prod_vw as
--joing products table and suppliers table
select p.ProductID,p.ProductName,p.UnitPrice,s.SupplierID,s.Supplier_Name,s.Country from Products as p 
join Suppliers as s on p.SuppliersID = s.SupplierID

--Executed View
select * from supp_prod_vw
--=============================================================================================
-- 4.) Creating a stored procedure for updating product Name using Product Id.

alter proc sp_UpdateProductName
--Parameters to accept productID and ProductName 
@productID int,
@productName varchar(20)
as
begin
	--Checking the existance of productID
	if exists(select productID from Products where ProductID = @productID)
	begin
		--Updating prodcut name for that productId
		update Products set ProductName = @productName where ProductID = @productID  
	end
	else
	begin
		--printing Error message if productId is not fount
		print 'ProductID Not found..'  
	end
end
go

-- Executing Stored Procedure sp_UpdateProductName 
sp_UpdateProductName 5,'vocky cake'

--checking wrong ProductID 50 is not exsits in table products
sp_UpdateProductName 50,'hocky cake'















