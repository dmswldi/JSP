----------- OUTER
--SELECT employees.ename || '�� ���� ����� ' || manager.ename;
SELECT employees.ename, manager.ename manager
FROM employee employees JOIN employee manager
ON employees.manager = manager.eno(+);

-- INNER JOIN
SELECT e.ename, e.eno, e.manager, m.eno, m.ename
FROM employee e JOIN employee m
ON e.manager = m.eno;

-- LEFT OUTER JOIN : ���� ���� �� ����, + ���� 1��
SELECT e.ename, e.eno, e.manager, m.eno, m.ename-- ���� table manager�� null�� ����
FROM employee e LEFT OUTER JOIN employee m
ON e.manager = m.eno;

-- RIGHT OUTER JOIN + ���� 8��
SELECT e.ename, e.eno, e.manager, m.eno, m.ename
FROM employee e RIGHT OUTER JOIN employee m
ON e.manager = m.eno;

-- FULL OUTER JOIN + 9��
SELECT e.ename, e.eno, e.manager, m.eno, m.ename
FROM employee e FULL OUTER JOIN employee m
ON e.manager = m.eno;


SELECT employees.ename || '�� ���� ����� ' || manager.ename
FROM employee employees LEFT OUTER JOIN employee manager
ON employees.manager = manager.eno;