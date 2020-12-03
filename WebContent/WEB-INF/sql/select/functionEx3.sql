SELECT sysdate 오늘 FROM dual;
SELECT sysdate + 1 내일 FROM dual;
SELECT sysdate - 1 어제 FROM dual;


SELECT TO_DATE('2020-11-13', 'yyyy-mm-dd') + 24/24 FROM dual;

SELECT ename, hiredate, sysdate - hiredate 근무일수 FROM employee;-- 저 날 만큼 일 한 거야
SELECT ename, hiredate, sysdate - TO_DATE('2020/11/12', 'yyyy-mm-dd') FROM employee;
SELECT ename, hiredate, ROUND(sysdate - hiredate) FROM employee;

SELECT ROUND(sysdate, 'Q') FROM dual;
SELECT ROUND(TO_DATE('2020-11-16', 'yyyy-mm-dd'), 'Q') FROM dual;
SELECT ROUND(sysdate, 'DAY') FROM dual;-- 일주일 기준, 반올림한 일요일이 나옴
SELECT ROUND(TO_DATE('2020-11-19', 'yyyy-mm-dd'), 'DAY') FROM dual;
SELECT ROUND(sysdate, 'DDD') FROM dual;-- 오후라 거의 내일

SELECT ROUND(sysdate) FROM dual;-- 오늘을 반올림해서 내일(오후라서)
SELECT ROUND(sysdate, 'YEAR') FROM dual;
SELECT ROUND(sysdate, 'MONTH') FROM dual;

SELECT TRUNC(sysdate, 'YEAR') FROM dual;-- 년도만 남겨
SELECT TRUNC(sysdate, 'MONTH') FROM dual;-- 월만 남겨

SELECT hiredate, TRUNC(hiredate, 'MONTH') FROM employee;

SELECT MONTHS_BETWEEN(sysdate, hiredate) FROM employee;-- 몇 개월 차이
SELECT MONTHS_BETWEEN(sysdate, TO_DATE('2020-10-13', 'yyyy-mm-dd')) 한달차이 FROM dual;
SELECT MONTHS_BETWEEN(TO_DATE('2019-10-13', 'yy-mm-dd'), sysdate) 한달차이 FROM dual;

SELECT ename, sysdate, hiredate,
       TRUNC(MONTHS_BETWEEN(sysdate, hiredate))
FROM employee;
SELECT TRUNC(MONTHS_BETWEEN(sysdate, TO_DATE('2020-10-13', 'yyyy-mm-dd'))) FROM dual;

SELECT ADD_MONTHS(sysdate, 12) FROM dual;
SELECT ADD_MONTHS(sysdate, 6) FROM dual;
SELECT ADD_MONTHS(sysdate, -12) FROM dual;
SELECT ename, hiredate, ADD_MONTHS(hiredate, 6) FROM employee;

SELECT NEXT_DAY(sysdate, '토요일') FROM dual;-- 영어가 안 된다
SELECT NEXT_DAY(sysdate, 6) FROM dual;-- 일요일부터 1, 금요일은 6
SELECT sysdate, NEXT_DAY(sysdate, '금요일') FROM dual;

SELECT LAST_DAY(sysdate) FROM dual;
SELECT LAST_DAY(ADD_MONTHS(sysdate, -9)) FROM dual;-- 2월 마지막 날짜
SELECT ename, hiredate, LAST_DAY(hiredate) FROM employee;
