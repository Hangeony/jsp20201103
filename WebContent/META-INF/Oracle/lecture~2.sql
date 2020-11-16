select * from employee;
SELECT * FROM employee WHERE ename = 'SMITH';
SELECT * FROM employee WHERE salary > 1000;
SELECT * FROM employee WHERE commission < 500;
SELECT * FROM employee WHERE salary >= 3000;
SELECT * FROM employee WHERE salary <= '2000';
SELECT * FROM employee WHERE ename <= 'G';
SELECT * FROM employee WHERE ename != 'SMITH';
SELECT * FROM employee WHERE ename <> 'SMITH';
SELECT * FROM employee WHERE ename ^= 'SMITH';
SELECT * FROM employee WHERE hiredate = '1981/02/20';
--SELECT * FROM employee WHERE hiredate = '81/02/20';

DESCRIBE employee; --DESC 풀네임 옆에 가로는 (4자리의 숫자만 들어올수있음) 10바이트까지 들어올수있음 
DESC employee;  --데이터 타입은 문자 ,숫자 , 날짜 
SELECT ename FROM employee; --문자열 자바로 읽어올 ?? 문자열로 저장된것을 불러옴

SELECT * FROM employee 
WHERE hiredate >= '1981/01/01' AND salary > 3000;

SELECT * FROM employee
WHERE hiredate >= '1981/01/01' OR salary > 3000;

SELECT * FROM employee
WHERE NOT salary > 3000;

SELECT * FROM employee
WHERE ename > 'C' AND salary > 2000 AND dno <> 30;


SELECT * FROM employee
WHERE salary >= 3000 AND salary <= 5000;

SELECT * FROM employee
WHERE salary BETWEEN 3000 AND 5000;

SELECT * FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

SELECT * FROM employee
WHERE salary < 3000 OR salary > 5000;

SELECT * FROM employee
WHERE salary NOT BETWEEN 3000 AND 5000;

SELECT * FROM employee
WHERE dno = 10 OR dno = 20;

SELECT *FROM employee WHERE dno IN (10, 20);

SELECT *FROM employee WHERE dno NOT IN (20);

SELECT ename FROM employee WHERE eno = 0;

SELECT loc FROM department WHERE dno = 10;