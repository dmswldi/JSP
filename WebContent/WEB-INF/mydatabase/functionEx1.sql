SELECT sysdate FROM dual;
-- ��ҹ��� ��ȯ
SELECT LOWER(ename) AS ename FROM employee;
SELECT UPPER(ename) AS ename FROM employee;
SELECT INITCAP(ename) AS ename FROM employee;-- �ձ��ڸ� �빮��
SELECT INITCAP('oracle mania') AS name FROM dual;


SELECT 'Oracle mania',
    UPPER('Oracle mania'),
    LOWER('Oracle mania'),
    INITCAP('Oracle mania')
FROM dual;

SELECT ename, LOWER(ename), job, INITCAP(job) FROM employee;
SELECT eno, ename, dno FROM employee WHERE LOWER(ename) = 'scott';

-- ���� ����
SELECT ename, LENGTH(ename) length FROM employee;
SELECT LENGTH('�����α׷���') FROM dual;

SELECT ename, LENGTHB(ename) length FROM employee;
SELECT LENGTHB('�����α׷���') FROM dual;

SELECT LENGTH('Oracle Mania'), LENGTH('����Ŭ�ŴϾ�') FROM dual;
SELECT LENGTHB('Oracle Mania'), LENGTHB('����Ŭ�ŴϾ�') FROM dual;-- �ѱ� 3BYTE : UTF-8(���� ���?)

-- ���� ����
SELECT CONCAT(ename, job) FROM employee;
SELECT ename || job FROM employee;-- CONCAT == ||
SELECT ename || ', ' || job FROM employee;-- �̰� �� ���� ����!

SELECT ename, SUBSTR(ename, 1, 2) FROM employee;-- 1st���� 2��
SELECT ename, SUBSTR(ename, -2, 2) FROM employee;-- �ڿ��� 2nd���� 2'��'

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

SELECT SUBSTR('����Ŭ�ŴϾ�', 3, 4),
       SUBSTRB('����Ŭ�ŴϾ�', 3, 4)
FROM dual;
SELECT SUBSTRB('�ȳ��Ͻʴϱ�', 1, 5) FROM dual;-- ??????????
SELECT SUBSTRB('�ȳ��Ͻʴϱ�', 2, 5) FROM dual;-- ??????????
SELECT SUBSTRB('�ȳ��Ͻʴϱ�', 3, 4) FROM dual;-- ??????????
SELECT SUBSTRB('�ȳ��Ͻʴϱ�', 4, 6) FROM dual;-- ??????????

SELECT ename, INSTR(ename, 'AL') FROM employee;
SELECT ename, INSTR(ename, 'T', 2, 2) FROM employee;-- 2��° �ͺ��� 2��° T�� ��ġ
SELECT INSTR('Tiger Tea Tire Ton', 'T', 2, 2) FROM dual;

SELECT INSTR('Oracle mania', 'a') FROM dual;
SELECT INSTR('Oracle mania', 'a', 5, 2) FROM dual;

SELECT INSTR('����Ŭ�ŴϾ�', '��'),
       INSTRB('����Ŭ�ŴϾ�', '��')-- 4���� �߰�
FROM dual;

SELECT * FROM employee WHERE INSTR(ename, 'R', 3, 1) = 3;-- ��ȯ�� 1���� ����ؼ�!!

-- ** characterSet Ȯ��
SELECT * FROM nls_database_parameters
WHERE parameter = 'NLS_CHARACTERSET' -- AL16UTF16: �ѱ� 2BYTE?
OR parmeter = 'NLS_NCHAR_CHARACTERSET'; -- AL32UTF8: �ѱ� 3BYTE
--

SELECT ename, LPAD(ename, 10, '#') FROM employee;-- �ڸ� ���� �� ���� L�� # ä���
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