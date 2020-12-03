-- LIKE + %_(wildcard)
SELECT * FROM employee WHERE ename LIKE 'W%';-- W로 시작하는
SELECT * FROM employee WHERE ename LIKE '%D';-- D로 끝나는
SELECT * FROM employee WHERE ename LIKE '%D%';-- %는 0개 이상 , D 포함하는
SELECT * FROM employee WHERE ename LIKE '_A__';-- underbar는 1글자
SELECT * FROM employee WHERE ename LIKE '_A%_';
SELECT * FROM employee WHERE ename NOT LIKE '%A%';


-- NULL
SELECT * FROM employee WHERE commission = NULL;-- NULL은 비교 연산 X
SELECT * FROM employee WHERE commission IS NULL;
SELECT * FROM employee WHERE commission IS NOT NULL;


-- ORDER BY
SELECT * FROM employee ORDER BY ename;
SELECT * FROM employee WHERE salary > 2000 ORDER BY eno ASC;
SELECT * FROM employee WHERE salary > 2000 ORDER BY eno DESC;
SELECT dno, ename FROM employee WHERE salary > 2000 ORDER BY dno DESC, ename;
