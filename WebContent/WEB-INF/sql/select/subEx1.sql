--------------- 단일 행 서브 쿼리
-- 매니저 이름
SELECT manager FROM employee
WHERE eno = 7499;-- 7698

SELECT ename FROM employee
WHERE eno = 7698;-- blake

SELECT ename FROM employee
WHERE eno = (SELECT manager
             FROM employee
             WHERE eno = 7499);
             
-- scott과 같은 부서인 사원
SELECT ename, dno
FROM employee
WHERE dno = (SELECT dno
             FROM employee
             WHERE ename = 'SCOTT');
        
-- 급여가 최소인 사원 정보
SELECT ename, job, salary
FROM employee
WHERE salary = (SELECT MIN(salary)
                FROM employee);
        
SELECT dno, MIN(salary)
FROM employee
GROUP BY dno
HAVING MIN(salary) > (SELECT MIN(salary)
                      FROM employee
                      WHERE dno = 30);


-- 다중 행 서브 쿼리는 다중 행 비교 연산자만 사용해야 함 : error
SELECT ename FROM employee
WHERE salary > (SELECT salary
                FROM employee);

--------------- 다중 행 서브 쿼리
SELECT * FROM employee;
----- 다중 행 비교 연산자 연습 : IN, ANY, SOME, ALL, EXISTS
--IN
SELECT eno, ename
FROM employee
WHERE eno IN (7839, 7499);

SELECT ename, dno
FROM employee
WHERE dno IN (SELECT dno
             FROM department
             WHERE dno <= 20);

-- 이렇게 하면 제대로 된 결과값 안 나올 수 있음 : 최저 salary랑 같은 salary를 가진 사원이 다른 부서에 존재한다면
SELECT eno, ename, dno, salary
FROM employee
WHERE salary IN (SELECT MIN(salary)
                    FROM employee
                    GROUP BY dno);
                    
-- 기준에 min(salary) 뿐만 아니라 dno도 추가해야 함
SELECT eno, ename, dno, salary
FROM employee
WHERE (dno, salary) IN (SELECT dno, MIN(salary)
                    FROM employee
                    GROUP BY dno);

-- ANY = SOME, IN과 달리 비교 연산자 사용
SELECT eno, ename
FROM employee
WHERE eno > ANY(7839, 7499);-- OR의 의미: IN과 의미가 같다

SELECT eno, ename
FROM employee
WHERE eno > SOME (7839, 7499);

SELECT eno, ename, job, salary
FROM employee
WHERE salary < ANY (SELECT salary
                FROM employee
                WHERE job = 'SALESMAN')
AND job <> 'SALESMAN';

-- ALL
SELECT eno, ename
FROM employee
WHERE eno >= ALL (7839, 7499);-- AND의 의미

-- 1250보다 salary가 적은 사원
SELECT eno, ename, job, salary
FROM employee
WHERE salary < ALL (SELECT salary
                   FROM employee
                   WHERE job = 'SALESMAN')
AND job <> 'SALESMAN';

SELECT MIN(salary)
FROM employee
WHERE job = 'SALESMAN';

-- EXISTS
SELECT eno, ename
FROM employee
WHERE EXISTS(SELECT manager FROM employee WHERE manager is null);-- 행의 존재 여부 확인
SELECT manager FROM employee WHERE manager is null;

SELECT eno, ename
FROM employee
WHERE NOT EXISTS(SELECT manager FROM employee WHERE manager is null);
SELECT manager FROM employee WHERE manager is null;

-- 반환행이 존재하면 true
SELECT ename, salary
FROM employee
WHERE EXISTS (SELECT * FROM employee WHERE salary = 1250);

-- 반환행이 없어야 true
SELECT ename, salary
FROM employee
WHERE NOT EXISTS (SELECT * FROM employee WHERE salary = 1250);