CREATE DATABASE COLLEGE_INFORM;
USE COLLEGE_INFORM;
create table COLLEGE_INFORM(id int not null,c_name varchar(20),c_cost int,c_STUDENTid int primary key,c_batchno int);
ALTER TABLE COLLEGE_INFORM add constraint name_uni unique(c_name);
ALTER TABLE COLLEGE_INFORM drop  primary key;
INSERT INTO COLLEGE_INFORM values(1,'MCE',100000,401,138);
INSERT INTO COLLEGE_INFORM values(2,'NAVIKS',200000,402,139);
INSERT INTO COLLEGE_INFORM values(3,'GOVTCOLLEGE',300000,403,140);
INSERT INTO COLLEGE_INFORM values(4,'MC',400000,404,141);
INSERT INTO COLLEGE_INFORM values(5,'REVA',500000,405,142);
ALTER TABLE COLLEGE_INFORM add constraint cost_check check(c_cost>10000);
ALTER TABLE COLLEGE_INFORM drop INDEX C_NAME;
desc COLLEGE_INFORM;
SELECT * FROM COLLEGE_INFORM;


CREATE DATABASE STUDENT_INFOR;
USE STUDENT_INFOR;
CREATE TABLE STUDENT_INFOR(id int not null,a_name varchar(50) unique,a_location varchar(50),a_COLLEGEFEE bigint,no_of_EXAMFEE int);
ALTER TABLE STUDENT_INFOR add constraint COLLEGEFEE_check check(a_COLLEGEFEE>100000);
ALTER TABLE STUDENT_INFOR drop constraint COLLEGEFEE_check;
INSERT INTO STUDENT_INFOR values(1,'Ashraya','8th mile',6500000,120);
INSERT INTO STUDENT_INFOR values(2,'RamaChandra','Nelamangala',7800000,250);
INSERT INTO STUDENT_INFOR values(3,'Vajra','Yeshwanthpura',7000000,200);
INSERT INTO STUDENT_INFOR values(4,'Gudu','Malleshwaram',1000000,300);
INSERT INTO STUDENT_INFOR values(5,'Swathi','RR nagara',16500000,400);
ALTER TABLE STUDENT_INFOR add constraint location_pk primary key(a_location);
alter table STUDENT_INFOR drop INDEX a_name;
DESC STUDENT_INFOR;



CREATE DATABASE CHOCOLATES_INFO;
USE CHOCOLATES_INFO;
create table chocolates_INFO(id int not null,c_name varchar(20),c_cost int,c_id int primary key,c_batchno int);
ALTER TABLE CHOCOLATES_INFO add constraint name_uni unique(c_name);
ALTER TABLE chocolates_INFO drop  primary key;
INSERT INTO chocolates_INFO values(1,'munch',10,1200,2379);
INSERT INTO chocolates_INFO values(2,'Dairymilk',5,1201,2439);
INSERT INTO chocolates_INFO values(3,'Kitkat',20,1202,2899);
INSERT INTO chocolates_INFO values(4,'Milkybar',15,1203,2455);
INSERT INTO chocolates_INFO values(5,'Perk',30,1204,2675);
ALTER TABLE chocolates_INFO add constraint cost_check check(c_cost>5);
ALTER TABLE chocolates_INFO drop INDEX NAME_UNI;
DESC CHOCOLATES_INFO;


CREATE DATABASE APARTMENT_INFOR;
USE APARTMENT_INFOR;
CREATE TABLE apartment_INFOR(id int not null,a_name varchar(50) unique,a_location varchar(50),a_prize bigint,no_of_flat int);
ALTER TABLE apartment_INFOR add constraint prize_check check(a_prize>100000);
ALTER TABLE apartment_INFOR drop constraint prize_check;
INSERT INTO apartment_INFOR values(1,'Ashraya','8th mile',6500000,120);
INSERT INTO apartment_INFOR values(2,'RamaChandra','Nelamangala',7800000,250);
INSERT INTO apartment_INFOR values(3,'Vajra','Yeshwanthpura',7000000,200);
INSERT INTO apartment_INFOR values(4,'Gudu','Malleshwaram',1000000,300);
INSERT INTO apartment_INFOR values(5,'Swathi','RR nagara',16500000,400);
ALTER TABLE apartment_INFOR add constraint location_pk primary key(a_location);
alter table apartment_INFOR drop INDEX a_name;
DESC APARTMENT_INFOR;