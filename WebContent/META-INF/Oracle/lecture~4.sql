select round(345.1456) from dual; --�ݿø�
select round(345.1456, 0) from dual; --�������Ŷ� �Ȱ��� 
select round(345.1456, 1) from dual; -- �Ҽ��� 1����
select round(345.1456, 2) from dual; -- �Ҽ��� 2����
select round(345.1456, -1) from dual; -- 1�� �ڸ� �ݿø�
select round(345.1456, -2) from dual; --�ݿø� 10���ڸ�

select trunc(345.1456) from dual; -- ����
select trunc(345.1456, 0) from dual; -- 0�����ڸ�����
select trunc(345.1456, 1) from dual; -- �Ҽ��� ù��° ������ ����
select trunc(345.1456, 2) from dual; --  ���� �ι�����
select trunc(345.1456, -1) from dual; --1�������� ���� 10���ڸ����� ����� �Ҽ����� ����

select mod(135, 3) from dual; --������ ������
select mod(135, 2) from dual;

select CEIL(345.1456)from dual; --�Ҽ��� ����
select abs(-15) from dual; --���밪
select power(3, 264) from dual; -- �տ����� �ڿ�����ŭ ������ 
select sqrt(361) from dual;  --��Ʈ 


--114p �ݿø� �ϱ�
select 98.7654, round(98.7654), round(98.7654, 2), round(98.7654, -1) from dual;

--115p ����
select 98.7654, trunc(98.7654), trunc(98.7654, 2), trunc(98.7654, -1) from dual;

--115p ������ ��ȯ�ϱ�
select mod(31,2), mod(31,5), mod(31,8) from dual;

--116������ ���ϱ�
select ename, salary, MOD(salary, 500) from employee;