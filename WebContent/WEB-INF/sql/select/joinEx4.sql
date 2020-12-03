----------- OUTER
--SELECT employees.ename || '의 직속 상관은 ' || manager.ename;
SELECT employees.ename, manager.ename manager
FROM employee employees JOIN employee manager
ON employees.manager = manager.eno(+);

-- INNER JOIN
SELECT e.ename, e.eno, e.manager, m.eno, m.ename
FROM employee e JOIN employee m
ON e.manager = m.eno;

-- LEFT OUTER JOIN : 왼쪽 남은 것 포함, + 빠진 1명
SELECT e.ename, e.eno, e.manager, m.eno, m.ename-- 왼쪽 table manager가 null을 가짐
FROM employee e LEFT OUTER JOIN employee m
ON e.manager = m.eno;

-- RIGHT OUTER JOIN + 빠진 8명
SELECT e.ename, e.eno, e.manager, m.eno, m.ename
FROM employee e RIGHT OUTER JOIN employee m
ON e.manager = m.eno;

-- FULL OUTER JOIN + 9명
SELECT e.ename, e.eno, e.manager, m.eno, m.ename
FROM employee e FULL OUTER JOIN employee m
ON e.manager = m.eno;


SELECT employees.ename || '의 직속 상관은 ' || manager.ename
FROM employee employees LEFT OUTER JOIN employee manager
ON employees.manager = manager.eno;