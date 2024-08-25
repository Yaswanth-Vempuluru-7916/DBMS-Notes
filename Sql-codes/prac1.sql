create database if not exists college ;
use college;

create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(20)
);

insert into student values
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanuel",12,"F","Delhi"),
(106,"farah",82,"B","Pune");
INSERT INTO student VALUES
(107,"geeta",88,"B","Bangalore"),
(108,"harish",74,"C","Hyderabad"),
(109,"isha",92,"A","Mumbai"),
(110,"jatin",55,"D","Chennai"),
(111,"kavya",61,"D","Pune"),
(112,"laxmi",79,"C","Delhi"),
(113,"manoj",94,"A","Hyderabad"),
(114,"neha",89,"B","Chennai"),
(115,"omkar",76,"C","Bangalore"),
(116,"priya",81,"B","Mumbai"),
(117,"qasim",47,"E","Pune"),
(118,"ravi",84,"B","Delhi"),
(119,"sara",93,"A","Mumbai"),
(120,"tanvi",87,"B","Hyderabad"),
(121,"uday",68,"C","Bangalore"),
(122,"vaishali",73,"C","Chennai"),
(123,"wilson",60,"D","Pune"),
(124,"xena",71,"C","Mumbai"),
(125,"yash",65,"D","Hyderabad"),
(126,"zeeshan",90,"A","Delhi");
INSERT INTO student VALUES
(127,"Aldor",100,"A","Eldoria"),
(128,"Branwen",100,"A","Mysthaven"),
(129,"Caelum",100,"A","Silverwind"),
(130,"Druwyn",100,"A","Starluna");

select rollno,name,marks from student;
select * from student;

select city from student;
select distinct city from student;

select * 
from student 
where marks>80;

select * 
from student 
where marks > 80 and city="Mumbai";

select * 
from student 
where marks+7 < 100 ;

select * 
from student 
where marks > 90 or city="Mumbai";

select * 
from student 
where marks between 80 and 90;

select * 
from student 
where city in ("Delhi","Pune" , "Chennai","Amaravathi");

select rollno,name,marks
from student 
where city not in ("3 Capitals","Amaravathi","Delhi")
order by marks desc
limit 10;

select min(marks) from student;
select avg(marks) from student;
select count(marks) from student;


select city ,name, avg(rollno)
from student
where marks>=80
group by city,name
order by name desc;


select city ,name, avg(rollno)
from student
group by city,name
order by name desc;

select city, avg(marks)
from student
group by city
order by avg(marks) desc , city desc;

select grade,count(rollno)
from student
group by grade
order by grade asc;


select city, count(rollno) 
from student
group by city
having avg(marks)>90
limit 2;


select city,count(grade)
from student
where grade='A'
group by city;


select city,count(city)
from student
where grade='A'
group by city
having max(marks)>91
order by count(city) desc;



set sql_safe_updates=0;

update student
set grade="O"
where grade = "A";

update student
set marks=82
where rollno=105;



update student
set grade="X"
where marks BETWEEN 80 and 90;

update student
set grade="B"
where marks BETWEEN 80 and 90;

select * from student;

update student
set marks = marks+1
where marks <100;

update student
set marks=12
where rollno=105;

delete from student 
where marks <=35;


CREATE TABLE payment (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    mode VARCHAR(50),
    city VARCHAR(100)
);
INSERT INTO payment (customer_id, customer_name, mode, city) VALUES
(101, "Olivia Barrett", "Netbanking", "Portland"),
(102, "Ethan Sinclair", "Credit Card", "Miami"),
(103, "Maya Hemandez", "Credit Card", "Seattle"),
(104, "Liam Donovan", "Netbanking", "Denver"),
(105, "Sophia Nguyen", "Credit Card", "New Orleans"),
(106, "Caleb Foster", "Debit Card", "Minneapolis"),
(107, "Ava Patel", "Debit Card", "Phoenix"),
(108, "Lucas Carter", "Netbanking", "Boston"),
(109, "Isabella Martinez", "Netbanking", "Nashville"),
(110, "Jackson Brooks", "Credit Card", "Boston");
select * from payment;

select mode , count(customer_id)
from payment 
group by mode
order by count(customer_id);