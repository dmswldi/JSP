----------- EQUI JOIN
-- 14개행, 8개열
SELECT * FROM employee;
-- 4개행, 3개열
SELECT * FROM department;

-- 56개행(곱), 11개열(합): 각 행을 행에 매치
SELECT * FROM employee, department;

-- 중복 column인 dno를 명확히
SELECT eno, ename, employee.dno edno, department.dno ddno, dname 
FROM employee, department
WHERE eno = 7369;

SELECT eno, ename, employee.dno edno, dname 
FROM employee, department 
WHERE eno = 7369 AND employee.dno = department.dno;


-- EQUI JOIN (where 공통 칼럼 =)
SELECT *
FROM employee, department
WHERE employee.dno = department.dno;

SELECT eno, ename, dname
FROM employee, department
WHERE employee.dno = department.dno
AND eno = 7788;

SELECT eno, ename, dname, employee.dno
FROM employee, department
WHERE employee.dno = department.dno
AND eno = 7788;

-- alias
SELECT e.eno, e.ename, d.dname, e.dno
FROM employee e, department d
WHERE e.dno = d.dno
AND e.eno = 7788;


-- NATURAL JOIN (알아서 join, join column에 table alias X)
SELECT e.eno, e.ename, d.dname, dno-- here
FROM employee e NATURAL JOIN department d
WHERE E.ENO = 7788;


-- JOIN ~ USING (공통 칼럼의 데이터 유형이 일치하지 않을 경우, table alias X)
SELECT eno, ename, dname, dno
FROM employee e join department d
USING(dno)-- 이걸로 숫자와 문자도 비교할 수 있는 건가???
WHERE eno = 7788;


-- JOIN ~ ON
SELECT eno, ename, dname, e.dno
FROM employee e join department d
ON e.dno = d.dno
WHERE eno = 7788;
