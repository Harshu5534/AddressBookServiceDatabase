Create Database AddressBookDatabase;

Use AddressBookDatabase;

Create Table AddressBookTable(
Id int Primary Key Identity (1,1),
FirstName VarChar (150),
LastName varchar(100),
Address varchar(200),
City varchar(20),
State varchar(50),
ZipCode int,
PhoneNumber int,
Email varchar(100)
);