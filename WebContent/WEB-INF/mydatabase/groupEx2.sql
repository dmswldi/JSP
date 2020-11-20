-- GROUP BY하면 가능
SELECT job, MAX(salary) FROM employee GROUP BY job;-- job별로 max salary 구하기

SELECT dno as "부서 번호", TRUNC(AVG(salary)) AS "급여 평균"
FROM employee
GROUP BY dno
ORDER BY TRUNC(AVG(salary)) DESC;-- default 그룹핑 기준 오름차순

SELECT dno, job, COUNT(*), SUM(salary)
FROM employee
GROUP BY dno, job-- GROUP BY에서 명시한 칼럼명만 SELECT 가능!!!!!!!
ORDER BY dno, job;

-- where절에 그룹함수 사용 XXX
SELECT job, AVG(salary) FROM employee
WHERE AVG(salary) >= 3000
GROUP BY job;

SELECT job, AVG(salary) FROM employee
GROUP BY job
HAVING AVG(salary) >= 3000;

SELECT dno, MAX(salary)
FROM employee
GROUP BY dno
HAVING MAX(salary) >= 3000;

SELECT job, count(*), SUM(salary)-- sum에 대해서 오름차순 자동 정렬
FROM employee
WHERE job not like '%MANAGER%'
GROUP BY job
HAVING SUM(salary) >= 5000;

SELECT MAX(AVG(salary))
FROM employee
GROUP BY dno;

SELECT dno, AVG(salary)
FROM employee
GROUP BY dno;