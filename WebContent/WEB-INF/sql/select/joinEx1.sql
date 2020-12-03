----------- EQUI JOIN
-- 14����, 8����
SELECT * FROM employee;
-- 4����, 3����
SELECT * FROM department;

-- 56����(��), 11����(��): �� ���� �࿡ ��ġ
SELECT * FROM employee, department;

-- �ߺ� column�� dno�� ��Ȯ��
SELECT eno, ename, employee.dno edno, department.dno ddno, dname 
FROM employee, department
WHERE eno = 7369;

SELECT eno, ename, employee.dno edno, dname 
FROM employee, department 
WHERE eno = 7369 AND employee.dno = department.dno;


-- EQUI JOIN (where ���� Į�� =)
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


-- NATURAL JOIN (�˾Ƽ� join, join column�� table alias X)
SELECT e.eno, e.ename, d.dname, dno-- here
FROM employee e NATURAL JOIN department d
WHERE E.ENO = 7788;


-- JOIN ~ USING (���� Į���� ������ ������ ��ġ���� ���� ���, table alias X)
SELECT eno, ename, dname, dno
FROM employee e join department d
USING(dno)-- �̰ɷ� ���ڿ� ���ڵ� ���� �� �ִ� �ǰ�???
WHERE eno = 7788;


-- JOIN ~ ON
SELECT eno, ename, dname, e.dno
FROM employee e join department d
ON e.dno = d.dno
WHERE eno = 7788;
