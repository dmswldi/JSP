-- DML (Data Manipulation Language)
-- INSERT, UPDATE, DELETE
-- TRANSACTION : COMMIT, ROLLBACK

CREATE TABLE bank
(
name VARCHAR2(255),
money NUMBER
);

INSERT INTO bank VALUES ('ironman', 500);
INSERT INTO bank VALUES ('captin', 700);

COMMIT;

SELECT * FROM bank;

-- 업무: 캡틴이 아이언맨에게 200원 건네주기
UPDATE bank
SET money = (money - 200)
WHERE name = 'captin';

UPDATE bank
SET money = money + 200
WHERE name = 'ironman';

-- DCL, DDL 실행되면 DML 트랜잭션 종료되고 자동 COMMIT됨