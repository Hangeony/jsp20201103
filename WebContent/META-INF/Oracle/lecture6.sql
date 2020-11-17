select to_char(sysdate) from dual; -- �������� �޸� �ѱ��� ����־ �������� ���´ٴ� ���� X
select to_char(sysdate, 'yyyy') from dual; --�⵵
select to_char(sysdate, 'yy') from dual; --�⵵ 2����
select to_char(sysdate, 'mm') from dual; --��
select to_char(sysdate, 'dd') from dual; --��
select to_char(sysdate, 'mon') from dual; --��
select to_char(sysdate, 'yyyy-mm-dd') from dual; --��¥ Ǯ

select to_char(sysdate, 'hh') from dual; --�ð�
select to_char(sysdate, 'hh24') from dual; -- ����
select to_char(sysdate, 'mi') from dual; -- ��
select to_char(sysdate, 'ss') from dual; --��
select to_char(sysdate, 'hh:mi:ss') from dual; --��ü ��ȭ �Ѱ�

select to_char(sysdate, 'yyyy-mm-dd hh:mi:ss') from dual; -- ��� 

--number to char
select to_char(56789) from dual;
select to_char(456789456, '999,999,999')from dual; --9���� ����
select to_char(456789456, '000,000,000,000')from dual; --���ڸ��� 0���� ä��
select to_char(456789456, 'L999,999,999')from dual; --��ȭ��ȣ ǥ��
select to_char(456789456, 'L999,999,999.999')from dual; --�Ҽ����ڸ��� 0���� ǥ�� 

--char to date
select to_date('2020-11-13', 'yyyy-mm-dd')from dual;
select to_date('20201113', 'yyyymmdd')from dual;
select to_date('2020/11/13', 'yyyy-mm-dd')from dual; --�����ϸ� ���缭 �����
select to_char(to_date('2020-11-13 01:31:20', 'yyyy-mm-dd hh:mi:ss'), 'yyyy-mm-dd hh:mi:ss')from dual;

--char to date
select to_number('200000')from dual;
select to_number('200,000', '999,999') from dual;




--125p ��¥�Լ� ����ϱ�
select ename, hiredate, to_char(hiredate,'yy-mm'), to_char(hiredate,'yyyy/mm/dd day') from employee;--�ð��� ��¥�� �ɸ��ͷ� ��ȯ�Ͽ� ǥ����

--126p ���� ��¥�� �ð� ����ϱ�
select to_char(sysdate, 'yyyy/mm/dd, hh24:mi:ss') from dual;

--127p �޿��� ����ϸ鼭 ��ȭ ��ȣ ��������
select ename, to_char(salary,'l999,9999')from employee;

--128p 1981�� 2�� 20�Ͽ� �Ի��� ��� �˻��ϱ� ���� �ȵ� �������� ȥ�� ������
select ename, hiredate 
from employee
where hiredate = 19810220;

--128p ��¥������ ��ȯ�ϱ�
select ename, hiredate
from employee
where hiredate = to_date(19810220,'yyyy-mm-dd');

--129p ���������� ���� ����
select to_number('100,000', '999,999')
- to_number('50,000', '999,999') 
from dual;


--ȥ�� �غ��� 1���Ի�⵵�� ����� �Ͻÿ�.
select substr(hiredate, 1,2)�⵵, substr(hiredate, 4,2)�� from employee;

--ȥ���غ��� 2�� substr �Լ��� ����Ͽ� 4���� �Ի��� ����� ����Ͻÿ�.
select * from employee where substr(hiredate, 4,2)='04';

--ȥ���غ��� 3�� mod�Լ��� ����Ͽ� �����ȣ�� ¦���� ����� ����Ͻÿ�.
select * from employee where mod(eno , 2)=0;

--ȥ���غ��� 4�� �Ի��� ������ 2�ڸ� ���� ���ڷ� ǥ������ ������ ���� �����Ͽ� ��� �Ͻÿ�.
select hiredate, to_char(hiredate,'yy/mon/dd/dy') from employee;

--ȥ���غ��� 5�� ���� ������ �������� ����Ͻÿ�.
select trunc(sysdate- to_date('2020/01/01','yyyy/mm/dd')) from dual;

--ȥ���غ� 6�� ������� ��� ����� ����ϵ� ����� ���� ����� ���ؼ��� null ����� 0���� ���
select eno, ename, nvl2(manager, manager, 0) as manager from employee;

--ȥ���غ��� 7�� decode �Լ��� ���޿� ���� �޿��� �λ��ϵ��� �Ͻÿ�. ������ anaityst�� ����� 200 salesman�λ��....
SELECT eno, ename, JOB, salary, decode(JOB, 'ANALYST', salary +200, 'SALESMAN', salary+180,
'MANAGER', salary+150, 'CLERK',salary +100, salary)AS update_salary FROM employee;