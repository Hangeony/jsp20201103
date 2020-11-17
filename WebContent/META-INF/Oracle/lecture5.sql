select sysdate from dual; --���ó�¥
select sysdate +1 from dual;  -- ��¥���� �Ϸ� ���Ѱ�
select sysdate -1 from dual; --�Ϸ� �A��

select ename, hiredate, sysdate - hiredate from employee; --������� ���� �ð� 
select ename, hiredate,round( sysdate - hiredate) from employee; -- �Ҽ��� ����

select round(sysdate) from dual; -- �ݿø��ؼ� ���� �̵�
select round(sysdate, 'year')from dual; --�⵵ �ݿø�
select round(sysdate, 'month')from dual;-- ���� �ݿø�

select trunc(sysdate, 'year')from dual; --���� ����
select trunc(sysdate, 'month')from dual; -- �޹���

select MONTHS_BETWEEN(SYSDATE, hiredate) from employee; --������ ?

select
MONTHS_BETWEEN(sysdate, to_date('2019-10-13' , 'yyyy-mm-dd')) from dual; --?

select
months_between(to_date('2019-10-13' , 'yyyy-mm-dd'),sysdate) from dual;

select add_months(sysdate, 12) from dual; --1����
select add_months(sysdate, 6) from dual;  --6������
select add_months(sysdate, -12) from dual; --1����

select next_day(sysdate, '�����')from dual; --���� ���
select next_day(sysdate, '�ݿ���')from dual;
select next_day(sysdate, 2) from dual; -- ���ڷ� �صε� �Ͽ��� 1

select last_day(sysdate) from dual;
select last_day(add_months(sysdate, -9))from dual;

--117p ��¥ ���ϱ�
select sysdate from dual;

--118p ��¥ ����ϱ� 
select sysdate-1 ����, sysdate ����, sysdate+1 ���� from dual;

--120p Ư�� ��¥ ���� ���� �������� ������ ��¥ ���ϱ�
select hiredate, trunc (hiredate , 'month') from employee;

--121p ��������� �ٹ��� ������ ���ϱ� 
select ename, sysdate, hiredate, trunc(months_between (sysdate, hiredate)) from employee;

--121p ������� 6���� ���� ��¥ ���ϱ�  
select ename, hiredate, add_months(hiredate, 6) from employee;

--122p������ �������� ���ʷ� �����ϴ� ����� ���ϱ� 
select sysdate , next_day(sysdate,'�����') from dual;
 
--123p �Ի��Ѵ��� �������� ���ϱ� 
select ename, hiredate, last_day(hiredate) from employee;
