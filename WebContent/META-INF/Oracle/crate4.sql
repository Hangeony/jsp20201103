CREATE TABLE post(
title VARCHAR2(255),
body VARCHAR2(255));

INSERT INTO post(title, body)
VALUES('abc', 'def');
INSERT INTO post(title, body)
VALUES('abc', 'def');

SELECT * FROM post;
DELETE post WHERE title = 'abc';

ALTER TABLE post
ADD id NUMBER PRIMARY KEY;

SELECT * FROM post;

INSERT INTO post(id, title, body)
VALUES(1,'abc','def');

INSERT INTO post(id, title, body)
VALUES(2,'abc','def');

DELETE post WHERE id = 1;
SELECT * FROM post;

COMMIT;

--
SELECT max(id) FROM post; --내가

SELECT max(id) FROM post; -- 다른놈

INSERT INTO post(id, title, body)
VALUES (3 ,'abc','def');

--순서대로 증가하는 값을 만드는법을 SEQUENCE
CREATE SEQUENCE my_seq; -- 1부터 1씩 증가

DELETE post;
COMMIT;

INSERT INTO post (id, title, body)
VALUES (my_seq.nextval,'abc','def');

INSERT INTO post (id, title, body)
VALUES (my_seq.nextval,'abc','def');

SELECT * FROM post;
--프라이머리 값을 넣을때 할 때 좋음 

CREATE SEQUENCE my_seq2
START WITH 100;

INSERT INTO post(id, title, body)
VALUES (my_seq2.nextval,'abc','def');

INSERT INTO post(id, title, body)
VALUES (my_seq2.nextval,'abc','def');

SELECT * FROM post;

CREATE SEQUENCE my_seq3
START WITH 1000
INCREMENT BY 100;

INSERT INTO post(id, title, body)
VALUES (my_seq3.nextval, 'abc','def');

INSERT INTO post(id, title, body)
VALUES (my_seq3.nextval, 'abc','def');

SELECT * FROM post;

SELECT * FROM  user_sequences;

SELECT my_seq2.currval FROM dual;
SELECT my_seq2.nextval FROM dual;

--시컨스 수정
ALTER SEQUENCE my_seq3
INCREMENT by 1000;
SELECT my_seq3.currval FROM dual;
SELECT my_seq3.nextval FROM dual;

CREATE TABLE t1;
CREATE SEQUENCE s1;

CREATE TABLE t2;
CREATE SEQUENCE s2;

CREATE TABLE t1(
id NUMBER GENERATED ALWAYS as IDENTITY(START WITH 1 INCREMENT by 1),
name VARCHAR2(30)
);
INSERT INTO t1 (name) VALUES ('jane');
INSERT INTO t1 (name) VALUES ('donald');
SELECT * FROM t1;
SELECT * FROM user_sequences