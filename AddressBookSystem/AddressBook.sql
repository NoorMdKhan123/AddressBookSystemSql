--UC1-2
create table Address_Book_Service( 
FirstName Char(20),
LastName char (20),
ShortAddress varchar(200),
city varchar (30),
states varchar (30),
zip int,
PhoneNo int,
emailID varchar (100),
);
insert into Address_Book_Service values ('Raghav','Wandre','YogiDham','Kalyan','Maharashtra',421301,1000888250,'raghavnw@gmail.com')
insert into Address_Book_Service values ('Gunjan','Wandre','YD','Kalyan','Maharashtra',420001,1095188250,'gnw@hotmail.com')
insert into Address_Book_Service values ('Yash','Khedwan','JJ','Mumbai','Maharashtra',400001,1042818250,'yk@gmail.com')
insert into Address_Book_Service values ('Pratham','Khedwan','Noorbagh','Mumbai','Maharashtra',400004,1450038250,'pk@gmail.com')
insert into Address_Book_Service values ('Sanket','Patil','anupam','Kalyan','Maharashtra',421001,1000884620,'sp@hotmail.com')
insert into Address_Book_Service values ('Shubham','Patil','tajj','Ambivali','Maharashtra',424601,1000846250,'ShubP@gmail.com')
insert into Address_Book_Service values ('Diga','Molya','anupam nagar','Mumbai','Maharashtra',421731,1000887150,'dm@email.com')
insert into Address_Book_Service values ('Rohan','Moolya','kalalbagh','Manglore','Karnataka',442301,1004928250,'rm@email.com')
insert into Address_Book_Service values ('Sushil','Bhagat','PremBagh','Kalyan','Maharashtra',471301,1003488250,'db@gmail.com')
insert into Address_Book_Service values ('Pranav','Shetty','Thange Wadi','Manglore','Karnataka',434301,1091688250,'ps@email.com')

select * from Address_Book_Service

--UC3
insert into Address_Book_Service values ('Raghav','Patil','Anupam Nagar','Kalyan','Maharashtra',421301,1770888250,'rnw@gmail.com')
select * from Address_Book_Service

--UC4
update Address_Book_Service set city='Mumbai' where FirstName= 'Raghav' and LastName= 'patil'
select * from Address_Book_Service

--UC5
delete from Address_Book_Service where FirstName= 'Raghav' and LastName= 'Wandre'
select * from Address_Book_Service

--UC6
select * from Address_Book_Service where city='Mumbai';

--UC7
select COUNT(ShortAddress) from Address_Book_Service where city= 'Mumbai' and states = 'Maharashtra'

--UC8
select * from Address_Book_Service order by FirstName asc

--UC9
alter table Address_Book_Service Add Type_Of_Relation char(10);
update Address_Book_Service set Type_Of_Relation= 'Family' where FirstName= 'Raghav'
update Address_Book_Service set Type_Of_Relation= 'Family' where FirstName= 'Gunjan'
update Address_Book_Service set Type_Of_Relation= 'Family' where FirstName= 'Yash'
update Address_Book_Service set Type_Of_Relation= 'Family' where FirstName= 'Pratham'
update Address_Book_Service set Type_Of_Relation= 'Friends' where FirstName= 'Sushil'
update Address_Book_Service set Type_Of_Relation= 'Friends' where FirstName= 'Sanket'
update Address_Book_Service set Type_Of_Relation= 'Friends' where FirstName= 'Pranav'
update Address_Book_Service set Type_Of_Relation= 'Friends' where FirstName= 'Diga'
update Address_Book_Service set Type_Of_Relation= 'Friends' where FirstName= 'Rohan'
update Address_Book_Service set Type_Of_Relation= 'Friends' where FirstName= 'Shubham'
select * from Address_Book_Service

--UC10
select COUNT(Type_Of_Relation)Family from Address_Book_Service where Type_Of_Relation='Family'
select COUNT(Type_Of_Relation)Friends from Address_Book_Service where Type_Of_Relation='Friends'
select * from Address_Book_Service

--UC11
update Address_Book_Service set Type_Of_Relation= 'Friend and Family'  where FirstName= 'Sushil' and LastName = 'Bhagat'
select * from Address_Book_Service
