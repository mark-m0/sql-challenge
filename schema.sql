CREATE TABLE employees (
    emp_no INT PRIMARY KEY NOT NULL,
    emp_title VARCHAR,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date DATE
);

CREATE TABLE departments (
    dept_no VARCHAR PRIMARY KEY NOT NULL,
    dept_name VARCHAR
);

CREATE TABLE titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR
);

CREATE TABLE dept_managers (
    dept_no VARCHAR NOT NULL,
    emp_no INT
);

CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no VARCHAR
);

CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT
);