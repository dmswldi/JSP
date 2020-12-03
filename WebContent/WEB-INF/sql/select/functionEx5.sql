SELECT * FROM employee;
SELECT ename, salary, commission, salary + NVL(commission, 0) AS sum FROM employee;

SELECT ename, salary, commission, 
       NVL(commission, 0), 
       salary*12 + NVL(commission, 0) ¿¬ºÀ 
FROM employee
ORDER BY job;

SELECT ename, salary, commission,
       NVL2(commission, salary*12 + commission, salary*12) ¿¬ºÀ
FROM employee
ORDER BY job;

SELECT NULLIF('A', 'A'), NULLIF('A', 'B')
FROM dual;

SELECT COALESCE ('a', 'b', null, 'c') FROM dual;
SELECT COALESCE (null, 'b', null, 'c') FROM dual;
SELECT COALESCE (null, null, 'd', 'c') FROM dual;

SELECT ename, salary, commission,
       COALESCE(commission, salary, 0)
FROM employee
ORDER BY job;


SELECT ename, dno, DECODE(dno, 10, 'ACC', 20, 'RES', 'DEF')
FROM employee;

SELECT ename, dno,
       DECODE(dno, 10, 'ACCOUNTING',
                   20, 'RESEARCH',
                   30, 'SALES',
                   40, 'OPERATIONS',
                   'DEFAULT') AS DNAME
FROM employee
ORDER BY dno;

SELECT ename, salary, CASE WHEN salary >= 3000 THEN 'HIGH'
                           WHEN salary >= 0 THEN 'LOW'
                           ELSE '0'
                      END
FROM employee;

SELECT ename, dno,
    CASE WHEN dno = 10 THEN 'ACCOUNTING'
         WHEN dno = 20 THEN 'RESEARCH'
         WHEN dno = 30 THEN 'SALES'
         ELSE 'DEFAULT'
    END AS DNAME
FROM employee
ORDER BY dno;