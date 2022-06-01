-------------------UC1----------------------

Create Database AddressBookDatabase;

Use AddressBookDatabase;

-------------------UC2----------------------

Create Table AddressBookTable(
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


Insert into AddressBookTable Values ('Harshal','Patil','Warud','Dhule','Maharastra',425404,'9158719379','Harshu123@gmail.com'),
('Girish','Patil','Warud','Shirpur','Maharastra',425404,'9185717557','Girish123@gmail.com'),
('Rohit','Pawar','Amlner','Dhule','Maharastra',425735,'8275591324','Rohit20@gmail.com'),
('Harshali','Nashik','Nashik','','Maharastra',564738,'9158564832','Harshali01@gmail.com'),
('Nilesh','Deshmukh','Indore','Indore','MadhyaPradesh',679900,'8000446635','NileshD@gmail.com');

select * from AddressBookTable;

-------------------UC4----------------------

Update AddressBookTable Set City='Latur',State='Gujrat' where FirstName='Harshali';

-------------------UC5----------------------

Delete from AddressBookTable where FirstName='Nilesh';
