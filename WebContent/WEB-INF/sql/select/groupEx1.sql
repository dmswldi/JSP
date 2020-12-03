SELECT commission, nvl(commission, 0) FROM employee;

SELECT SUM(salary) FROM employee;
SELECT ROUND(AVG(salary), 2) FROM employee;
SELECT MIN(salary) FROM employee;
SELECT MAX(salary) FROM employee;

SELECT COUNT(salary) FROM employee;

SELECT COUNT(*) FROM employee;-- 테이블에 데이터 몇 개? 확인

SELECT SUM(salary) AS "급여총액",
       TRUNC(AVG(salary),1) AS "급여평균",
       MAX(salary) AS "최대급여",
       MIN(salary) AS "최소급여"
FROM employee;

SELECT MAX(hiredate),-- 가장 최근
       MIN(hiredate)-- 가장 오래전
FROM employee;

SELECT COUNT(commission) FROM employee;
SELECT SUM(commission) FROM employee;
SELECT MAX(commission) FROM employee;
SELECT MIN(commission) FROM employee;

SELECT COUNT(job) "직업의 개수" FROM employee;
SELECT COUNT(DISTINCT job) AS "직업 종류의 개수" FROM employee;

SELECT ename, MAX(salary) FROM employee;--  어떤 놈인지 알고 싶어서 썼다 이건 안 된다는 거예요
SELECT * FROM employee;
SELECT hiredate, MAX(salary) FROM employee;
SELECT Max(hiredate), SUM(salary) FROM employee;
SELECT salary, MAX(salary) FROM employee;
SELECT MAX(ename), MIN(salary) FROM employee;

SELECT ename FROM employee-- 이렇게 서브쿼리 사용
WHERE salary =(SELECT MAX(salary) FROM employee);