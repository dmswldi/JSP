Select * from city;

show databases;
-- schema(개요, 윤곽) == database
create schema `mydbms`;
use `mydbms`;
use mydbms;-- 데이터 베이스 선택
CREATE TABLE `mydbms`.`DEPARTMENT` (`dno` INT NOT NULL, `dname` CHAR, `LOC` CHAR);
DESC DEPARTMENT;
DESC employee;
show tables;
ALTER TABLE `mydbms`.`department` CHANGE COLUMN `dname` `dname` CHAR(10);
ALTER TABLE `mydbms`.`department` CHANGE COLUMN `loc` `loc` CHAR(10);

DROP TABLE newtable1;
DROP DATABASE mydbms2;

ALTER SCHEMA mydbms default character set utf8;


SELECT * FROM employee;
SELECT * FROM department;

desc department;
desc employee;

Insert into DEPARTMENT (DNO,DNAME,LOC) values (10,'ACCOUNTING','NEW YORK');
Insert into DEPARTMENT (DNO,DNAME,LOC) values (20,'RESEARCH','DALLAS');
Insert into DEPARTMENT (DNO,DNAME,LOC) values (30,'SALES','CHICAGO');
Insert into DEPARTMENT (DNO,DNAME,LOC) values (40,'OPERATIONS','BOSTON');
commit;-- 반영되라!

Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7369,'SMITH','CLERK',7902,date_format('80/12/17','%y/%m/%d'),800,null,20);
SET SQL_SAFE_UPDATES = 0;
DELETE FROM employee WHERE eno = 7369;
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7499,'ALLEN','SALESMAN',7698,date_format('81/02/20','%y/%m/%d'),1600,300,30);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7521,'WARD','SALESMAN',7698,date_format('81/02/22','%y/%m/%d'),1250,500,30);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7566,'JONES','MANAGER',7839,date_format('81/04/02','%y/%m/%d'),2975,null,20);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7654,'MARTIN','SALESMAN',7698,date_format('81/09/28','%y/%m/%d'),1250,1400,30);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7698,'BLAKE','MANAGER',7839,date_format('81/05/01','%y/%m/%d'),2850,null,30);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7782,'CLARK','MANAGER',7839,date_format('81/06/09','%y/%m/%d'),2450,null,10);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7788,'SCOTT','ANALYST',7566,date_format('87/07/13','%y/%m/%d'),3000,null,20);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7839,'KING','PRESIDENT',null,date_format('81/11/17','%y/%m/%d'),5000,null,10);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7844,'TURNER','SALESMAN',7698,date_format('81/09/08','%y/%m/%d'),1500,0,30);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7876,'ADAMS','CLERK',7788,date_format('87/07/13','%y/%m/%d'),1100,null,20);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7900,'JAMES','CLERK',7698,date_format('81/12/03','%y/%m/%d'),950,null,30);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7902,'FORD','ANALYST',7566,date_format('81/12/03','%y/%m/%d'),3000,null,20);
Insert into EMPLOYEE (ENO,ENAME,JOB,MANAGER,HIREDATE,SALARY,COMMISSION,DNO) values (7934,'MILLER','CLERK',7782,date_format('82/01/23','%y/%m/%d'),1300,null,10);
commit;
desc employee;
ALTER TABLE `mydbms`.`employee` DROP PRIMARY KEY;
ALTER TABLE `mydbms`.`employee` ADD PRIMARY KEY(`eno`);
ALTER TABLE `department` ADD PRIMARY KEY(`dno`);
SELECT * FROM employee;