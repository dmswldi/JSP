-- LIKE + %_(wildcard)
SELECT * FROM employee WHERE ename LIKE 'W%';-- W�� �����ϴ�
SELECT * FROM employee WHERE ename LIKE '%D';-- D�� ������
SELECT * FROM employee WHERE ename LIKE '%D%';-- %�� 0�� �̻� , D �����ϴ�
SELECT * FROM employee WHERE ename LIKE '_A__';-- underbar�� 1����
SELECT * FROM employee WHERE ename LIKE '_A%_';
SELECT * FROM employee WHERE ename NOT LIKE '%A%';


-- NULL
SELECT * FROM employee WHERE commission = NULL;-- NULL�� �� ���� X
SELECT * FROM employee WHERE commission IS NULL;
SELECT * FROM employee WHERE commission IS NOT NULL;


-- ORDER BY
SELECT * FROM employee ORDER BY ename;
SELECT * FROM employee WHERE salary > 2000 ORDER BY eno ASC;
SELECT * FROM employee WHERE salary > 2000 ORDER BY eno DESC;
SELECT dno, ename FROM employee WHERE salary > 2000 ORDER BY dno DESC, ename;
