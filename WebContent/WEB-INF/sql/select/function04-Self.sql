-- 01
SELECT SUBSTR(hiredate, 1, 2) ³âµµ, 
       SUBSTR(hiredate, 4, 2) ´Þ 
FROM employee;

-- 02
SELECT * 
FROM employee 
WHERE SUBSTR(hiredate, 4, 2) = '04'; 

-- 03
SELECT *
FROM employee
WHERE MOD(eno, 2) = 0;

-- 04
SELECT TO_CHAR(hiredate, 'YY/MON/DD DY') 
FROM employee;

-- 05
SELECT TRUNC(sysdate - TO_DATE('2020-01-01', 'YYYY-MM-DD'))
FROM dual;

-- 06
SELECT eno, ename, NVL(manager, 0) AS MANAGER
FROM employee;

-- 07
SELECT eno, ename, job, salary,
    DECODE(job, 'ANALYST', 200,
                'SALESMAN', 180,
                'MANAGER', 150,
                'CLERK', 100,
                0) + salary AS update_salary
FROM employee;
