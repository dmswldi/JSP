SELECT * FROM employee WHERE ename = 'SMITH';
SELECT * FROM employee WHERE salary > 1000;
SELECT * FROM employee WHERE commission < 500;
--SELECT * FROM employee WHERE commission < '500'; 
SELECT * FROM employee WHERE ename <= 'T'; -- ���� ���� �Ʒ� �� ��
SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH'; -- ���� ���� �Ʒ� �� ��
SELECT * FROM employee WHERE ename ^= 'SMITH';
SELECT * FROM employee WHERE hiredate = '1981/02/20';
--SELECT * FROM employee WHERE hiredate = '81/02/20';

SELECT * FROM employee WHERE hiredate >= '1981/01/01' AND salary > 3000;
SELECT * FROM employee
WHERE Not(hiredate >= '1981/01/01' OR salary > 3000);
SELECT * FROM employee WHERE NOT salary = 3000;
SELECT * FROM employee WHERE salary != 3000;
SELECT * FROM employee WHERE salary <> 3000;
SELECT * FROM employee WHERE ename > 'C' AND salary > 2000 AND dno<> 30;


DESC dual; -- ���̺� ���� ����
DESC department;
SELECT * FROM department;
SELECT sysdate FROM department;
SELECT sysdate FROM dual; -- ����� �� �� ǥ���� ��!
SELECT * FROM dual;


SELECT * FROM employee WHERE salary >= 1600 AND salary <= 5000;
SELECT * FROM employee WHERE salary BETWEEN 1600 AND 5000;
SELECT * FROM employee WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';
SELECT * FROM employee WHERE salary < 3000 OR salary > 5000;
SELECT * FROM employee WHERE salary NOT BETWEEN 3000 AND 5000; -- ���� �� ����

SELECT * FROM employee WHERE dno = 10 OR dno = 20;
SELECT * FROM employee WHERE dno IN(10, 20); -- 10�̰ų� 20
SELECT * FROM employee WHERE dno NOT IN(10, 20);
SELECT * FROM employee WHERE dno NOT IN(20);
SELECT * FROM department;
SELECT * FROM employee;