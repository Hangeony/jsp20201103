select round(345.1456) from dual; --반올림
select round(345.1456, 0) from dual; --안적은거랑 똑같음 
select round(345.1456, 1) from dual; -- 소수점 1번쨰
select round(345.1456, 2) from dual; -- 소수점 2번쨰
select round(345.1456, -1) from dual; -- 1의 자리 반올림
select round(345.1456, -2) from dual; --반올림 10의자리

select trunc(345.1456) from dual; -- 버림
select trunc(345.1456, 0) from dual; -- 0번쨰자리버림
select trunc(345.1456, 1) from dual; -- 소수점 첫번째 뒤포함 버림
select trunc(345.1456, 2) from dual; --  동일 두번쨰임
select trunc(345.1456, -1) from dual; --1번쨰부터 버림 10의자리까지 남기는 소수점이 기준

select mod(135, 3) from dual; --나머지 연산자
select mod(135, 2) from dual;

select CEIL(345.1456)from dual; --소수점 버림
select abs(-15) from dual; --절대값
select power(3, 264) from dual; -- 앞에수에 뒤에수만큼 제곱함 
select sqrt(361) from dual;  --루트 


--114p 반올림 하기
select 98.7654, round(98.7654), round(98.7654, 2), round(98.7654, -1) from dual;

--115p 버림
select 98.7654, trunc(98.7654), trunc(98.7654, 2), trunc(98.7654, -1) from dual;

--115p 나머지 반환하기
select mod(31,2), mod(31,5), mod(31,8) from dual;

--116나머지 구하기
select ename, salary, MOD(salary, 500) from employee;