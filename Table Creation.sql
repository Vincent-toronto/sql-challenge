Create Table departments (
dept_no VARCHAR(30) NOT NULL,
dept_name VARCHAR(30)NOT NULL,
PRIMARY KEY(dept_no))

Create Table dept_emp (
emp_no INTEGER NOT NULL,
dept_no VARCHAR(30) NOT NULL,
PRIMARY KEY (emp_no,dept_no),	
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no))

Create Table dept_manager (
dept_no VARCHAR(30) NOT NULL,
emp_no INTEGER NOT NULL,
PRIMARY KEY (dept_no,emp_no),	
FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no))

Create Table employees (
emp_no INTEGER NOT NULL,
emp_title_id VARCHAR(30)NOT NULL,
birth_date Date NOT NULL ,
first_name VARCHAR(30)NOT NULL,
last_name VARCHAR(30)NOT NULL,
sex VARCHAR(30)NOT NULL,
hire_date Date NOT NULL,
PRIMARY KEY(emp_no),
FOREIGN KEY (emp_title_id) REFERENCES titles(title_id))

Create Table salaries (
emp_no INTEGER NOT NULL,
salary INTEGER NOT NULL,
PRIMARY KEY(emp_no),
FOREIGN KEY(emp_no) REFERENCES employees(emp_no))

Create Table titles (
title_id VARCHAR(30)NOT NULL,
title VARCHAR(30)NOT NULL,
PRIMARY KEY(title_id))