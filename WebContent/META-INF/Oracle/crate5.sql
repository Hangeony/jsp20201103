DROP TABLE post;
CREATE TABLE post (
id NUMBER GENERATED AS IDENTITY,
title VARCHAR2(255),
body VARCHAR2(4000),
PRIMARY KEY(id) 

);
SELECT * FROM post;

SELECT id, title FROM post ORDER BY id;

UPDATE post
SET title = 'b', body = 'c' WHERE title='b';