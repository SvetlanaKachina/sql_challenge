create table titles (
	title_id varchar not null,
	title varchar not null,
	primary key (title_id)
);

CREATE TABLE employees (
    emp_no INT NOT NULL,
    emp_title_id VARCHAR NOT NULL,
    birth_date date NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date date   NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id),
    PRIMARY KEY (emp_no)
);

create table departments (
	dept_no varchar not null,
	dept_name varchar not null, 
	primary key (dept_no)
);

create table dept_manager (
	dept_no varchar not null,
	emp_no int not null,
	foreign key (dept_no) references departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	primary key (dept_no, emp_no)
);

create table dept_emp (
	emp_no int not null, 
	dept_no varchar not null,
	foreign key (dept_no) references departments (dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	primary key (emp_no, dept_no)
);

create table salaries (
	emp_no int not null,
	salary int not null,
	primary key (emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
