/*UC1*/
create database AddressBookService;

use AddressBookService;

/*UC2*/
create table AddressBookTable(id int identity (1,1) primary key, FirstName varchar(20), LastName varchar(20), Address varchar(50), City varchar(20), State varchar(20), Zip varchar(6), Phone varchar(16), Email varchar(40));
exec sp_help AddressBookTable;