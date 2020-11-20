----------- SELF JOIN
SELECT * FROM employee e, department d;
SELECT * FROM employee e1, employee e2;-- 14*14=196개행

SELECT * FROM employee WHERE eno = 7369;
SELECT * FROM employee WHERE eno = 7902;

SELECT e1.eno, e1.ename, e1.manager, e2.eno, e2.ename
FROM employee e1, employee e2
WHERE e1.manager = e2.eno;

SELECT employees.ename "사원이름", manager.ename "직속상관이름"
FROM employee employees, employee manager
WHERE employees.manager = manager.eno;

SELECT employees.ename || '의 직속 상관은 ' || manager.ename-- 이렇게 프린트 되네!
FROM employee employees JOIN employee manager
ON employees.manager = manager.eno;