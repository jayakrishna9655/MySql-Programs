nameuse  mydb

create database todo;
show todo

use mysql
create table Todo
alter table person
add column department varchar (20)

show databases;
CREATE TABLE spbd (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    RollNumber INT
);

show tables

DESC person;
	select * from mydb

explain select * from person 

INSERT INTO person (id, name, age, department)  
VALUES (4, 'David', 27, 'Finance');

update person
set department ='Software' 
where id = 2

update person
set department = "sales"
where id =3
ALTER Table todo_db AUTO_INCREMENT=8
delete from todo_db where id = 12

use todo

select * from todo_db

create database Ecommerce;

use Ecommerce

select * from Ecommerce

select * from contact_entite

SHOW TABLES;

DELETE FROM ecommerce WHERE id IN (23, 25);


delete from ecommerce where id = 1
delete from ecommerce where id = 21
delete from ecommerce where id = 3
delete from ecommerce where id = 4
delete from ecommerce where id = 5
delete from ecommerce where id = 6
delete from ecommerce where id = 7
delete from ecommerce where id = 8
delete from ecommerce where id = 9
delete from ecommerce where id = 10
delete from ecommerce where id = 11
delete from ecommerce where id = 12
delete from ecommerce where id = 13
delete from ecommerce where id = 14
delete from ecommerce where id = 15
delete from ecommerce where id = 16
delete from ecommerce where id = 17
delete from ecommerce where id = 18
delete from ecommerce where id = 19
delete from ecommerce where id = 20
ALTER Table ecommerce AUTO_INCREMENT=15
ALTER Table ecommerce AUTO_INCREMENT=16
ALTER Table ecommerce AUTO_INCREMENT=17
ALTER Table ecommerce AUTO_INCREMENT=18
ALTER Table ecommerce AUTO_INCREMENT=19
ALTER Table ecommerce AUTO_INCREMENT=22
ALTER Table ecommerce AUTO_INCREMENT=10
ALTER Table ecommerce AUTO_INCREMENT=11
ALTER Table ecommerce AUTO_INCREMENT=12
ALTER Table ecommerce AUTO_INCREMENT=13
ALTER Table ecommerce AUTO_INCREMENT=14

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL
);
select * from users

















use world
select * from city
select LifeExpectancy , count(*) from country group by LifeExpectancy having count(*)>1


-- Joins

SELECT city.ID, city.Name AS CityName, city.Population, 
       country.Name AS CountryName, country.Code 
FROM city 
left join country ON city.CountryCode = country.Code;
union
SELECT city.ID, city.Name AS CityName, city.Population, 
       country.Name AS CountryName, country.Code 
FROM city 
right join country ON city.CountryCode = country.Code;










create database extension;
DROP DATABASE extention;

use extension

select * from leads

show tables;



create database programs;
use programs
CREATE TABLE employee_details (
    id INT PRIMARY KEY,
    mobile_no VARCHAR(15),
    dependent VARCHAR(50),
    salary DECIMAL(10,2)
);
INSERT INTO employee_details (id, mobile_no, dependent, salary) VALUES
(1, '9876543210', 'Java Developer', 25000),
(2, '9123456780', 'Python Developer', 30000),
(3, '9988776655', 'Full Stack Developer', 45000),
(4, '9090909090', 'Frontend Developer', 22000),
(5, '9012345678', 'Backend Developer', 28000),
(6, '9501236789', 'DevOps Engineer', 32000),
(7, '9876012345', 'Data Analyst', 55000),
(8, '9600456789', 'Tester', 27000),
(9, '9700123456', 'Automation Test Engineer', 34000),
(10, '9800234567', 'Cloud Engineer', 31000),
(11, '9654321789', 'Network Engineer', 48000),
(12, '9756432189', 'System Administrator', 26000),
(13, '9854673210', 'AI Engineer', 36000),
(14, '9956784321', 'ML Engineer', 29000),
(15, '9877895432', 'Software Engineer', 24000),
(16, '9123987654', 'Database Administrator', 41000),
(17, '9234567810', 'Cybersecurity Analyst', 52000),
(18, '9345678921', 'UI/UX Designer', 33000),
(19, '9456789032', 'Web Developer', 28000),
(20, '9567890143', 'Technical Support Engineer', 39000);

select * from employee_details
select * from employee_details where id=1
where salary > (select max(salary) from employee_details);
select * from employee_details where salary > (select avg(salary)  from employee_details)
select * from employee_details where dependent like 'f%'
select sum(salary) from employee_details

select * from employee_details where having sum(salary)>10000 ;
SELECT SUM(salary) FROM employee_details HAVING SUM(salary) = 10000;


Create table person(
person INT primary key,
lastName varchar(200),
firstName varchar(200)
);
create table address(
addressID INT primary key,
personID int,
city varchar(200),
state varchar(200)
);
insert into person(person,lastName,firstName) value (1,'krishns','jai')
insert into address(addressID,personID,city,state) value(1,'chennai','tamilNadu');
update address set personID=1 where addressID=1
select * from address
SELECT 
    Person.firstName,
    Person.lastName,
    Address.city,
    Address.state
FROM person
right JOIN Address
ON Person.person = Address.personId;

create database warehouse_db;
use warehouse_db


create database springEcomDatas;

questionuse springEcomDatas

INSERT INTO product 
(name, description, brand, price, category, release_date, available, quantity)
VALUES
('iPhone 15', 'Latest Apple smartphone', 'Apple', 999.99, 'Electronics', '2025-01-10', true, 50),
('Galaxy S24', 'Samsung flagship phone', 'Samsung', 899.99, 'Electronics', '2025-02-15', true, 40),
('Nike Air Max', 'Running shoes', 'Nike', 120.00, 'Footwear', '2024-11-20', true, 100),
('Wooden Table', 'Dining table', 'IKEA', 250.75, 'Furniture', '2023-08-05', false, 10);

select * from product;


create database SpringSecurityUserDatas;
use SpringSecurityUserDatas;

select * from Users;


create database microQuestiondb 
use microQuestiondb
select * from question
INSERT INTO question 
(question_title, option1, option2, option3, option4, right_answer, difficultylevel, category)
VALUES 
('What is Java?', 'Programming Language', 'Database', 'Operating System', 'Browser', 'Programming Language', 'Easy', 'Programming'),

('Which keyword is used to inherit a class in Java?', 'this', 'super', 'extends', 'implements', 'extends', 'Medium', 'Programming');