/*UC1*/
create database AddressBookService;

use AddressBookService;

/*UC2*/
create table AddressBookTable(id int identity (1,1) primary key, FirstName varchar(20), LastName varchar(20), Address varchar(50), City varchar(20), State varchar(20), Zip varchar(6), Phone varchar(16), Email varchar(40));
exec sp_help AddressBookTable;

/*UC3*/
insert into AddressBookTable(FirstName,LastName,Address,City,State,Zip,Phone,Email) values
('Naveen', 'Veera', 'Main Road', 'Vijayawada', 'Andhra Pradesh', '500004', '8287520906', 'naveen@bridgelabz.com'),
('Lokesh', 'Sai', 'Main Road', 'Vijayawada', 'Andhra Pradesh', '500004', '9569265976', 'lokesh000gmail.com'),
('Johnson', 'Putla', 'Masjid Street', 'Guntur', 'Andhra Pradesh', '500041', '7985702876', 'john@gmail.com'),
('Rambabu', 'Netheti', 'Road No 34', 'Warangal', 'Telangana', '500478', '8374837584', 'rambabu@gmail.com'),
('Durga', 'Bhavani', 'Durga Temple Road', 'Medak', 'Telangana', '500493', '9924936885', 'durga@gmail.com'),
('Satya', 'Narayana', 'Bus Stand Road', 'Nellore', 'Andhra Pradesh', '500311', '6084375820', 'satya@gmail.com');

/*UC4*/
update AddressBookTable set City='Tirupathi' where FirstName='Johnson';
update AddressBookTable set Zip='500378' where LastName='Bhavani';
select * from AddressBookTable;

/*UC5*/
delete from AddressBookTable where FirstName='Rambabu';

/*UC6*/
select FirstName,LastName from AddressBookTable where City='Vijayawada' or State='Andhra Pradesh';

/*UC7*/
select count(City) as CityCount, count(State) as StateCount from AddressBookTable;

/*UC8*/
select * from AddressBookTable where City='Vijayawada' order by FirstName;

/*UC9*/
alter table AddressBookTable add NameType varchar(30);

update AddressBookTable set NameType='Family' where FirstName='Naveen' or FirstName='Lokesh';
update AddressBookTable set NameType='Friends' where FirstName='Johnson' or FirstName='Satya';
update AddressBookTable set NameType='Profession' where FirstName='Durga';

/*UC10*/
select NameType,count(*) as TypeCount from AddressBookTable group by NameType;