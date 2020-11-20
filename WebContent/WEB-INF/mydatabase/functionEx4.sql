-- date to char
SELECT TO_CHAR(sysdate) FROM dual;
SELECT TO_CHAR(sysdate, 'DD-MM-YYYY') FROM dual;
SELECT TO_CHAR(sysdate, 'MON') FROM dual;-- 월을 숫자로
SELECT TO_CHAR(sysdate, 'DAY') FROM dual;
SELECT TO_CHAR(sysdate, 'D') FROM dual;-- 요일
SELECT TO_CHAR(sysdate, 'DD') FROM dual;-- 일
SELECT TO_CHAR(sysdate, 'DY') FROM dual;-- 일

SELECT TO_CHAR(sysdate, 'HH') FROM dual;-- 시간 보려면 문자로! TO_CHAR()
SELECT TO_CHAR(sysdate, 'HH24') FROM dual;-- 24시간 기준
SELECT TO_CHAR(sysdate, 'MI') FROM dual;
SELECT TO_CHAR(sysdate, 'SS') FROM dual;
SELECT TO_CHAR(sysdate, 'HH:MI:SS') FROM dual;

SELECT TO_CHAR(sysdate, 'YYYY-MM-DD HH:MI:SS') FROM dual;

SELECT ename, hiredate,
       TO_CHAR(hiredate, 'YY-MM'),
       TO_CHAR(hiredate, 'YYYY/MM/DD DAY')
FROM employee;

SELECT TO_CHAR(sysdate, 'YYYY/MM/DD, HH24:MI:SS AM') FROM dual;


-- number to char
SELECT TO_CHAR(56789) FROM dual;
SELECT TO_CHAR(56789, '999,999') FROM dual;
SELECT TO_CHAR(56789, '999,999,999') FROM dual;
SELECT TO_CHAR(56789, '999,999,999,999') FROM dual;
SELECT TO_CHAR(56789, '000,000,000') FROM dual;
SELECT TO_CHAR(56789, 'L999,999,999') FROM dual;

SELECT ename, TO_CHAR(salary, 'L999,999') FROM employee;
SELECT TO_CHAR(23.456, 'L9') FROM dual;-- 자리수 모자라면 #######
SELECT TO_CHAR(23.456, 'L999.9') FROM dual;-- 반올림한 소수 자리


-- char to date
SELECT TO_DATE('2020-11-13', 'YYYY-MM-DD') FROM dual;
SELECT TO_DATE('2020/11/13', 'YYYY-MM-DD') FROM dual;-- 결과는 다 20/11/13인디? : 아마도 저장된 형식
SELECT TO_DATE('2020-11-13 01:31:20', 'YYYY-MM-DD HH:MI:SS AM') FROM dual;
SELECT TO_CHAR(
    TO_DATE('2020-11-13 01:31:20', 'YYYY-MM-DD HH:MI:SS AM'), 
    'YYYY-MM-DD HH:MI:SS PM') 
FROM dual;

SELECT ename, hiredate 
FROM employee 
WHERE hiredate = TO_DATE(19810220, 'YYYYMMDD');


-- char to number
SELECT TO_NUMBER('200000') FROM dual;
SELECT TO_NUMBER('200,000', '999,999') FROM dual;-- 1st param에 컴마 넣으면 형식 지정해줘야 함

SELECT TO_NUMBER('100,000', '999,999') 
       - TO_NUMBER('50,000', '999999') -- 컴마 나오게 하고 싶으면 TO_CHAR()로
FROM dual;
