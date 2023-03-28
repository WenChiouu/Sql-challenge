

CREATE TABLE titles (
    Title_id VARCHAR(30) PRIMARY KEY,
    Title VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
    Emp_No INT PRIMARY KEY,
    Emp_title_id VARCHAR(30) NOT NULL,
	Birth_date VARCHAR(30) NOT NULL,
	First_name VARCHAR(30) NOT NULL,
	Last_name VARCHAR(30) NOT NULL,
	Sex VARCHAR(30) NOT NULL,
	Hire_date DATE NOT NULL,
	FOREIGN KEY (Emp_title_id) REFERENCES titles(Title_id)
);

CREATE TABLE departments (
    Dept_no VARCHAR(30) PRIMARY KEY,
    Dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE dept_manager (
    Dept_no VARCHAR(30) NOT NULL,
    Emp_No INT NOT NULL,
	FOREIGN KEY (Dept_no) REFERENCES departments(Dept_no),
	FOREIGN KEY (Emp_No) REFERENCES employees(Emp_No),
	PRIMARY KEY (Dept_no, Emp_No)
);

CREATE TABLE dept_emp (
	Emp_No INT NOT NULL,
	Dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (Emp_No) REFERENCES employees(Emp_No),
	FOREIGN KEY (Dept_no) REFERENCES departments(Dept_no),
	PRIMARY KEY (Emp_No, Dept_no)
);

CREATE TABLE salaries  (
	Emp_No INT PRIMARY KEY,
    Salary INT NOT NULL,
	FOREIGN KEY (Emp_No) REFERENCES employees(Emp_No)
);

SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM dept_emp;
SELECT * FROM salaries;
