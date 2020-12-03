-- 테이블 변경
-- ALTER TABLE
-- 컬럼 추가, 변경, 삭제

-- 컬럼 추가
-- ALTER TABLE table_name ADD (new_col DATATYPE...)
DESC dept20;
ALTER TABLE dept20
ADD (birth date);

-- 컬럼 변경
-- ALTER TABLE tname MODIFY (colName type,,,)
ALTER TABLE dept20
MODIFY (ename VARCHAR2(10));
ALTER TABLE dept20
MODIFY (eno NUMBER(4));

-- 컬럼 삭제
-- ALTER TABLE tname COLUMN col_name
ALTER TABLE dept20
DROP COLUMN ename;