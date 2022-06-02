-------------------UC1----------------------

Create Database AddressBookDatabase;

Use AddressBookDatabase;

-------------------UC2----------------------

Create Table AddressBookService(
Id int Primary Key Identity (1,1),
FirstName VarChar (150),
LastName varchar(100),
Address varchar(200),
City varchar(20),
State varchar(50),
ZipCode int,
PhoneNumber Varchar(10),
Email varchar(100)
);

-------------------UC3----------------------


Insert into AddressBookService Values ('Harshal','Patil','Warud','Dhule','Maharastra',425404,'9158719379','Harshu123@gmail.com'),
('Girish','Patil','Warud','Shirpur','Maharastra',425404,'9185717557','Girish123@gmail.com'),
('Rohit','Pawar','Amlner','Dhule','Maharastra',425735,'8275591324','Rohit20@gmail.com'),
('Harshali','Nashik','Nashik','','Maharastra',564738,'9158564832','Harshali01@gmail.com'),
('Nilesh','Deshmukh','Indore','Indore','MadhyaPradesh',679900,'8000446635','NileshD@gmail.com');

select * from AddressBookService;

-------------------UC4----------------------

Update AddressBookService Set City='Latur',State='Gujrat' where FirstName='Harshali';

-------------------UC5----------------------

Delete from AddressBookService where FirstName='Nilesh';

-------------------UC6----------------------

Select * from AddressBookService where City='Dhule' Order By FirstName;

Select * from AddressBookService where State='Maharastra' Order By FirstName;

Select * from AddressBookService where State='Gujrat' Order By FirstName;

-------------------UC7----------------------

select count(*) from AddressBookService where city='Dhule';

select count(*) from AddressBookService where State='Maharastra';

-------------------UC8----------------------

select FirstName,LastName ,City from AddressBookService Order By City ASC;

select FirstName,LastName ,City from AddressBookService Order By City DESC;

-------------------UC9----------------------

Alter  Table AddressBookService
Add FullName varchar(100),Type Varchar(100);

Select * from AddressBookService

update AddressBookService
set FullName='Girish Patil', Type='Friend' where FirstName='Girish';

-------------------UC10----------------------

select count (*) from AddressBookService where Type='Friend';

select PhoneNumber  from AddressBookService where Type='Friend';

------------------------UC11-----------------------------

Alter Table AddressBookService Drop Column TypeId;

Create Table AddressBookTable(
TypeId int Primary Key Identity (1,1),
Type varchar(200),
);

Insert into AddressBookTable Values('Family'),
('Friends'),
('Profession'),
('Others');  

create Table AddressBookMapping (
MappingId int Primary Key Identity (1,1),
TypeId int,
Id int 
);

alter table AddressBookMapping Add Foreign Key(Id) 
References AddressBookService(Id);

alter table AddressBookMapping Add Foreign Key(TypeId) 
References AddressBookType(TypeId);

insert into AddressBookMapping(Id,TypeId)values
(1,1),
(1,2);

select * from AddressBookService inner join 
AddressBookMapping on AddressBookService.Id=AddressBookMapping.Id
inner Join AddressBook on AddressBook.TypeId=AddressBookMapping.TypeId;


