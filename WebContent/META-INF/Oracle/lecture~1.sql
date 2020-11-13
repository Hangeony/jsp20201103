SELECT * FROM employee;    --
SELECT * FROM bonus;       -- 
SELECT * FROM department;  --부서
SELECT * FROM salgrade;    --

SELECT ename FROM employee;
SELECT eno, ename FROM employee;
SELECT ename, eno FROM employee;
SELECT ename, salary FROM employee;
SELECT ename, salary, salary*12 FROM employee;
SELECT ename, salary / 100 FROM employee;
SELECT ename, salary + 100 FROM employee;
SELECT ename, salary - 100 FROM employee;
SELECT ename, salary, salary*12 AS 대출금 FROM employee;
SELECT ename, salary, salary*12 대출금 FROM employee; --as 생략가능 
-- 한 줄 주석 /대소문자를 구별하지 않음
/*
  여러줄 주석
*/
SELECT * FROM employee;
SELECT ename, salary, commission, salary + commission FROM employee;
SELECT ename, salary, commission, NVL(commission, 0) FROM employee;
SELECT ename, salary + NVL(commission, 0) FROM employee;
SELECT ename, salary + NVL(commission, 0) 합 FROM employee;

SELECT DISTINCT (dno) FROM employee; --어떤 데이터는 값이 중복해서 나오는경우가 있음
SELECT DISTINCT dno FROM employee; -- () 생략 가능


