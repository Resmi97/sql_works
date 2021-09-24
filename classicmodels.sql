CREATE DATABASE employeedb;
SHOW DATABASES;

CREATE TABLE employees (
    emp_no      INT             NOT NULL,  -- UNSIGNED AUTO_INCREMENT??
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,  -- Enumeration of either 'M' or 'F'  
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (emp_no)    -- Index built automatically on primary-key column
                                           -- INDEX (first_name)
                                           -- INDEX (last_name)
);
CREATE TABLE titles (
    emp_no      INT          NOT NULL,
    title       VARCHAR(50)  NOT NULL,
    from_date   DATE         NOT NULL,
    to_date     DATE,
    KEY         (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no, title, from_date)
);
CREATE TABLE departments (
    dept_no     CHAR(4)         NOT NULL,  -- in the form of 'dxxx'
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no),                 -- Index built automatically
    UNIQUE  KEY (dept_name)                -- Build INDEX on this unique-value column
);
CREATE TABLE dept_emp (
    emp_no      INT         NOT NULL,
    dept_no     CHAR(4)     NOT NULL,
    from_date   DATE        NOT NULL,
    to_date     DATE        NOT NULL,
    KEY         (emp_no),   -- Build INDEX on this non-unique-value column
    KEY         (dept_no),  -- Build INDEX on this non-unique-value column
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
           -- Cascade DELETE from parent table 'employee' to this child table
           -- If an emp_no is deleted from parent 'employee', all records
           --  involving this emp_no in this child table are also deleted
           -- ON UPDATE CASCADE??
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
           -- ON UPDATE CASCADE??
    PRIMARY KEY (emp_no, dept_no)
           -- Might not be unique?? Need to include from_date
);
CREATE TABLE dept_manager (
   dept_no      CHAR(4)  NOT NULL,
   emp_no       INT      NOT NULL,
   from_date    DATE     NOT NULL,
   to_date      DATE     NOT NULL,
   KEY         (emp_no),
   KEY         (dept_no),
   FOREIGN KEY (emp_no)  REFERENCES employees (emp_no)    ON DELETE CASCADE,
                                  -- ON UPDATE CASCADE??
   FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
   PRIMARY KEY (emp_no, dept_no)  -- might not be unique?? Need from_date
);
CREATE TABLE salaries (
    emp_no      INT    NOT NULL,
    salary      INT    NOT NULL,
    from_date   DATE   NOT NULL,
    to_date     DATE   NOT NULL,
    KEY         (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no, from_date)
);

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (1,'1992-12-05','Shika','Kapoor','F','2020-04-15');

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (2,'1993-12-06','Peter','Brett','M','2021-06-17');

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (3,'1999-04-21','Kris','Tom','M','2021-06-17');

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (4,'1998-08-05','Debra','Danie','F','2021-06-17');

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (5,'1997-09-04','Andre','Vincent','F','2020-04-15');
SELECT * FROM employees;


INSERT INTO departments (dept_no, dept_name)
VALUES ('HR','Human Resources');

INSERT INTO departments (dept_no, dept_name)
VALUES ('IT','Technical');

INSERT INTO departments (dept_no, dept_name)
VALUES ('BN','Banking');

INSERT INTO departments (dept_no, dept_name)
VALUES ('FN','Finance');

INSERT INTO departments (dept_no, dept_name)
VALUES ('MK','Marketing');
SELECT * FROM departments;


INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (1,'HR','2020-04-15','2021-07-14');

INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (2,'FN','2021-06-17','2021-07-14');

INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (3,'MK','2021-06-17','2021-07-14');

INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (4,'IT','2021-06-17','2021-07-14');

INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (5,'BN','2020-04-15','2021-07-14');
SELECT * FROM dept_emp;


INSERT INTO dept_manager (dept_no, emp_no, from_date, to_date)
VALUES ('HR', 1, '2020-04-15','2021-07-14');

INSERT INTO dept_manager (dept_no, emp_no, from_date, to_date)
VALUES ('FN', 2, '2021-06-17','2021-07-14');

INSERT INTO dept_manager (dept_no, emp_no, from_date, to_date)
VALUES ('MK', 3, '2021-06-17','2021-07-14');

INSERT INTO dept_manager (dept_no, emp_no, from_date, to_date)
VALUES ('IT', 4 ,'2021-06-17','2021-07-14');

INSERT INTO dept_manager (dept_no, emp_no, from_date, to_date)
VALUES ('BN', 5 ,'2020-04-15','2021-07-14');
SELECT * FROM dept_manager;
  
  
INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (1, 'HR','2020-04-15','2021-07-14');

INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (2, 'Auditor','2021-06-17','2021-07-14');

INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (3, 'MO','2021-06-17','2021-07-14');

INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (4, 'Developer','2021-06-17','2021-07-14');

INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (5, 'Manager','2020-04-15','2021-07-14');
SELECT * FROM titles;


INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (1, 32000,'2020-04-15','2021-07-14');

INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (2, 30000,'2021-06-17','2021-07-14');

INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (3, 25000,'2021-06-17','2021-07-14');

INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (4, 47000,'2021-06-17','2021-07-14');

INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (5, 45000,'2020-04-15','2021-07-14');
SELECT * FROM salaries;

show tables;
use classicmodels;
show tables;
select * from customers;
select * from orders;
select count(CustomerNumber),country from customers group by country having count(CustomerNumber) >5 order by count(CustomerNumber) desc;
select city from customers union select city from offices order by city;


