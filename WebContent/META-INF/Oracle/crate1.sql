CREATE TABLE customer(
id VARCHAR2(20) CONSTRAINT customer_id_uk unique,
pwd VARCHAR2(20) CONSTRAINT customer_pwd_nn not null,
name VARCHAR2(20) CONSTRAINT customer_name_nn not null,
phon VARCHAR2(30), address VARCHAR2(100));

SELECT table_name, constraint_name FROM user_constraints
WHERE table_name in('CUSTOMER');

--책 253P
DROP TABLE customer;

CREATE TABLE customer(
id VARCHAR2(20),
pwd VARCHAR2(20) CONSTRAINT customer_pwd NOT NULL,
name VARCHAR2(20) CONSTRAINT customer_name_nn NOT NULL ,
phone VARCHAR2(30),
address VARCHAR2(100),
CONSTRAINT customer_name_pk PRIMARY KEY (id)
);

SELECT * FROM user_constraints
WHERE constraint_name LIKE 'CUSTOMER%';

--책255 FOREIGN KEY 제약조건 지정하기
CREATE TABLE emp_second(
eno number(4) constraint emp_seconde_eno_pk primary key,
ename VARCHAR2(10),
job VARCHAR2(9),
dno number(2) CONSTRAINT emp_seconde_dno_fk references departments);

--책256 CHECK 제약조건 지정하기
create table emp_second(
eno number(4) constraint emp_seconde_eno_pk primary key,
ename VARCHAR2(10),
salary number(7,2) CONSTRAINT emp_second_salary_min check (salary >0));