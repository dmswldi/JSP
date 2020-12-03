SELECT sysdate FROM dual;
-- 대소문자 변환
SELECT LOWER(ename) AS ename FROM employee;
SELECT UPPER(ename) AS ename FROM employee;
SELECT INITCAP(ename) AS ename FROM employee;-- 앞글자만 대문자
SELECT INITCAP('oracle mania') AS name FROM dual;


SELECT 'Oracle mania',
    UPPER('Oracle mania'),
    LOWER('Oracle mania'),
    INITCAP('Oracle mania')
FROM dual;

SELECT ename, LOWER(ename), job, INITCAP(job) FROM employee;
SELECT eno, ename, dno FROM employee WHERE LOWER(ename) = 'scott';

-- 문자 길이
SELECT ename, LENGTH(ename) length FROM employee;
SELECT LENGTH('웹프로그래밍') FROM dual;

SELECT ename, LENGTHB(ename) length FROM employee;
SELECT LENGTHB('웹프로그래밍') FROM dual;

SELECT LENGTH('Oracle Mania'), LENGTH('오라클매니아') FROM dual;
SELECT LENGTHB('Oracle Mania'), LENGTHB('오라클매니아') FROM dual;-- 한글 3BYTE : UTF-8(설정 어디?)

-- 문자 조작
SELECT CONCAT(ename, job) FROM employee;
SELECT ename || job FROM employee;-- CONCAT == ||
SELECT ename || ', ' || job FROM employee;-- 이걸 더 많이 쓴다!

SELECT ename, SUBSTR(ename, 1, 2) FROM employee;-- 1st부터 2개
SELECT ename, SUBSTR(ename, -2, 2) FROM employee;-- 뒤에서 2nd부터 2'개'

SELECT 'Oracle', 'mania', INITCAP(CONCAT('Oracle ', 'mania')) FROM DUAL;
SELECT SUBSTR('Oracle mania', 4, 3),
       SUBSTR('Oracle mania', -4, 3)
       FROM dual;
SELECT * FROM employee WHERE LOWER(SUBSTR(ename, -1, 1)) = 'n';
SELECT * FROM employee WHERE SUBSTR(hiredate, 1, 2) = '87';
SELECT * FROM employee WHERE SUBSTR(TO_CHAR(hiredate, 'yyyy-mm-dd'), 3, 2) = '87';

SELECT SUBSTR('Oracle mania', 4, 5),
       SUBSTR('Oracle mania', 4, 3)
FROM dual;

SELECT SUBSTR('오라클매니아', 3, 4),
       SUBSTRB('오라클매니아', 3, 4)
FROM dual;
SELECT SUBSTRB('안녕하십니까', 1, 5) FROM dual;-- ??????????
SELECT SUBSTRB('안녕하십니까', 2, 5) FROM dual;-- ??????????
SELECT SUBSTRB('안녕하십니까', 3, 4) FROM dual;-- ??????????
SELECT SUBSTRB('안녕하십니까', 4, 6) FROM dual;-- ??????????

SELECT ename, INSTR(ename, 'AL') FROM employee;
SELECT ename, INSTR(ename, 'T', 2, 2) FROM employee;-- 2번째 것부터 2번째 T의 위치
SELECT INSTR('Tiger Tea Tire Ton', 'T', 2, 2) FROM dual;

SELECT INSTR('Oracle mania', 'a') FROM dual;
SELECT INSTR('Oracle mania', 'a', 5, 2) FROM dual;

SELECT INSTR('오라클매니아', '라'),
       INSTRB('오라클매니아', '라')-- 4에서 발견
FROM dual;

SELECT * FROM employee WHERE INSTR(ename, 'R', 3, 1) = 3;-- 반환은 1부터 계산해서!!

-- ** characterSet 확인
SELECT * FROM nls_database_parameters
WHERE parameter = 'NLS_CHARACTERSET' -- AL16UTF16: 한글 2BYTE?
OR parmeter = 'NLS_NCHAR_CHARACTERSET'; -- AL32UTF8: 한글 3BYTE
--

SELECT ename, LPAD(ename, 10, '#') FROM employee;-- 자리 마련 후 남은 L에 # 채우기
SELECT ename, RPAD(ename, 10, '#') FROM employee;

SELECT LPAD(salary, 10, '*') FROM employee;
SELECT RPAD(salary, 10, '*') FROM employee;

SELECT TRIM('   ABC   '),
       LTRIM('   ABC   '),
       RTRIM('   ABC   ') FROM dual;

SELECT '  Oracle mania  ',
    LTRIM('  Oracle mania  '),
    RTRIM('  Oracle mania  ')
FROM dual;

SELECT 'Oracle mania',
        TRIM('O' FROM 'Oracle mania')
FROM dual;

SELECT TRIM('  Oracle mania  ') FROM dual;