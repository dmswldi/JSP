-- 기본값 찾기 DEFAULT
CREATE TABLE const12 (
    id NUMBER DEFAULT 0,
    name VARCHAR2(30)
);

INSERT INTO const12 (name)
VALUES ('hello');-- 괄호 치기......

SELECT * FROM const12;