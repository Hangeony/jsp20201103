select sysdate from dual; --오늘날짜
select sysdate +1 from dual;  -- 날짜에서 하루 더한거
select sysdate -1 from dual; --하루 뺸거

select ename, hiredate, sysdate - hiredate from employee; --현재까지 일한 시간 
select ename, hiredate,round( sysdate - hiredate) from employee; -- 소수점 제거

select round(sysdate) from dual; -- 반올림해서 내일 이됨
select round(sysdate, 'year')from dual; --년도 반올림
select round(sysdate, 'month')from dual;-- 월을 반올림

select trunc(sysdate, 'year')from dual; --연도 버림
select trunc(sysdate, 'month')from dual; -- 달버림

select MONTHS_BETWEEN(SYSDATE, hiredate) from employee; --개월수 ?

select
MONTHS_BETWEEN(sysdate, to_date('2019-10-13' , 'yyyy-mm-dd')) from dual; --?

select
months_between(to_date('2019-10-13' , 'yyyy-mm-dd'),sysdate) from dual;

select add_months(sysdate, 12) from dual; --1년후
select add_months(sysdate, 6) from dual;  --6개월후
select add_months(sysdate, -12) from dual; --1년전

select next_day(sysdate, '토요일')from dual; --다음 계산
select next_day(sysdate, '금요일')from dual;
select next_day(sysdate, 2) from dual; -- 숫자로 해두됨 일요일 1

select last_day(sysdate) from dual;
select last_day(add_months(sysdate, -9))from dual;

--117p 날짜 구하기
select sysdate from dual;

--118p 날짜 계산하기 
select sysdate-1 어제, sysdate 오늘, sysdate+1 내일 from dual;

--120p 특정 날짜 에서 월을 기준으로 버림한 날짜 구하기
select hiredate, trunc (hiredate , 'month') from employee;

--121p 각사원들이 근무한 개월수 구하기 
select ename, sysdate, hiredate, trunc(months_between (sysdate, hiredate)) from employee;

--121p 사원들의 6개월 지난 날짜 구하기  
select ename, hiredate, add_months(hiredate, 6) from employee;

--122p오늘을 기준으로 최초로 도래하는 토요일 구하기 
select sysdate , next_day(sysdate,'토요일') from dual;
 
--123p 입사한달의 마지막날 구하기 
select ename, hiredate, last_day(hiredate) from employee;
