CREATE TABLE post
(
    title VARCHAR2(255),
    body VARCHAR2(255)
);
-- 게시물 2개 똑같이 생성
INSERT INTO post
VALUES ('abc', 'def');

SELECT * FROM post;

-- 원하지 않게 중복된 2개행 삭제
DELETE post
WHERE title = 'abc';

ALTER TABLE post
ADD id NUMBER PRIMARY KEY;

INSERT INTO post
VALUES ('abc', 'def', 1);

INSERT INTO post
VALUES ('abc', 'def', 2);

DELETE post WHERE id=1;

-- 사람이 id숫자 관리하기 힘듦 -> sequence 이용
SELECT max(id) FROM post;-- 내가
SELECT max(id) FROM post;-- 다른

DROP TABLE post;-- 테이블 삭제
DELETE post; -- 내용만 지우기 !!!!!!!!

--------------
-- SEQUENCE
CREATE SEQUENCE my_seq;

INSERT INTO post
VALUES ('abc', 'def', my_seq.nextVal);

SELECT * FROM post;

--
CREATE SEQUENCE my_seq2
START WITH 100;

INSERT INTO post
VALUES('abc', 'def', my_seq2.nextVal);

SELECT * FROM post;

CREATE SEQUENCE my_seq3
START WITH 1000
INCREMENT BY 100;

INSERT INTO post
VALUES('abc', 'def', my_seq3.nextVal);

SELECT * FROM user_sequences;

SELECT my_seq2.currval FROM dual;

-- 시퀀스 삭제
-- DROP SEQUENCE LIKE '%SEQ%';
DROP SEQUENCE EMP_SEQ;

-- 시퀀스 수정
ALTER SEQUENCE my_seq3
INCREMENT BY 1000;

SELECT my_seq3.currval FROM dual;
SELECT my_seq3.nextval FROM dual;


-- 자동 증가 컬럼
CREATE TABLE t1 (
    id NUMBER GENERATED ALWAYS as IDENTITY(START WITH 1 INCREMENT BY 1),
    name VARCHAR2(30)
);

INSERT INTO t1 (name)
VALUES ('eun');
INSERT INTO t1 (name)
VALUES ('hyo');

SELECT * FROM t1;

CREATE TABLE t2 (
    id NUMBER GENERATED ALWAYS as IDENTITY,
    name VARCHAR2(30)
);

INSERT INTO t2 (id, name)
VALUES (100, 'eun');
INSERT INTO t2 (name)
VALUES ('hyo');

SELECT * FROM t2;

SELECT * FROM user_sequences;
DROP TABLE t2;
DROP SEQUENCE ISEQ$$_74170;

-- drop된 table의 sequence 비우기!!
purge recyclebin;-- 제거하다
select * from recyclebin;
-- or drop하면서 purger
drop table t2 purge;

CREATE TABLE t3 (
    id NUMBER GENERATED as IDENTITY,
    name VARCHAR2(30)
);

INSERT INTO t3 (id, name)
VALUES (100, 'eun');
INSERT INTO t3 (name)
VALUES ('hyo');

SELECT * FROM t3;
