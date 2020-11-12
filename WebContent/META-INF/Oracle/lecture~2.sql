SELECT * FROM employee;
SELECT * FROM employee WHERE ename = 'SMITH';-- 이이름으로 된사람을 찾고싶다.
SELECT * FROM employee WHERE salary > 1000; -- 월급이 천만원 이상 인사람
SELECT * FROM employee WHERE commission <500;  --컴미션이 500 미만인사람
SELECT * FROM employee WHERE salary >= 3000;   --셀러리가 3000 보다 같거나 큰사람
SELECT * FROM employee WHERE salary <= 2000;     -- 셀러리가 2000천보다 작은사람
SELECT * FROM employee WHERE ename <= 'G'; -- g 부터 f까지 된 사람들의 이름
SELECT * FROM employee WHERE ename != 'SMITH'; -- 8,9,10 not 연산자
SELECT * FROM employee WHERE ename <> 'SMITH';
SELECT * FROM employee WHERE ename ^= 'SMITH';
SELECT * FROM employee WHERE hiredate = '1981/02/20'; --날짜 데이터 조회
SELECT * FROM employee WHERE hiredate = '81/02/20'; --년도가 4자리로 쓰는게 덜헷갈림

SELECT * FROM employee WHERE hiredate >= '1981/01/01' AND salary > 3000; --두가지 조건을 모두 만족해야만 검색 가능 
SELECT * FROM employee WHERE hiredate >= '1981/01/01' OR  salary > 3000; --두가지 조건중 하나만  만족하면 검색가능

SELECT * FROM employee
WHERE NOT salary > 3000;

SELECT * FROM employee
WHERE ename > 'C' AND salary >2000 AND dno <>30;

Select * From employee
Where Salary >= 3000 And Salary <= 5000;

select * From employee
WHERE salary BETWEEN 3000 and 5000;

SELECT * FROM employee
WHERE hiredate BETWEEN '1982/01/01' AND '1982/12/31';

SELECT * FROM employee
WHERE salary NOT BETWEEN 3000 AND 5000;

SELECT * FROM employee
WHERE salary <3000 OR salary >5000;

SELECT * FROM employee
WHERE salary NOT BETWEEN 3000 AND 5000;

SELECT * FROM Employee
WHERE Dno =10 Or Dno = 20;

SELECT * FROM Employee
WHERE dno IN(10, 20);

SELECT * FROM Employee
WHERE Dno NOT IN (20);

--65p 1 
SELECT ename, salary + 300 FROM employee;
--65 4
SELECT ename,dno FROM employee
WHERE eno = 7788;
--65p 5
SELECT ename, salary FROM employee
WHERE salary NOT BETWEEN 2000 AND 3000;
--65p 6 
SELECT ename, JOB,hiredate FROM employee
WHERE hiredate BETWEEN '1981/02/20' AND '1982/05/01'
--65p 7
select ename, dno from employee
where dno in(20,30)
order by ename;


--관습상 키워드는 대문자 , 태이블, 클럽명은 소문자로
--문자데이터 쓸때만 숫자만 사용
-- 원하는 레코드를 뽑아낼수있음 여러조건
-- 한줄복사 컨트롤 시프트 D
-- 한줄삭제 알트 시프트  D
-- 알트 ' 키워드 대문자 