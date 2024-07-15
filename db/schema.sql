DROP DATABASE IF EXISTS employees_db;
CREATE DATABASE employees_db;

\c employees_db;

CREATE TABLE departments (
  id SERIAL PRIMARY KEY,
  name VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE roles (
    id SERIAL PRIMARY KEY,
    title VARCHAR(30) UNIQUE NOT NULL,
    salary DECIMAL NOT NULL,
    department_id INT NOT NULL,
    FOREIGN KEY (department_id)
    REFERENCES departments(id)
    ON DELETE SET NULL
);
CREATE TABLE employees(
id SERIAL PRIMARY KEY
first_name VARCHAR(30) NOT NULL
);
id SERIAL PRIMARY KEY

first_name VARCHAR(30) NOT NULL 

last_name VARCHAR(30) NOT NULL

role_id INTEGER NOT NULL

manager_id: INTEGER to hold reference to another employee that is the manager of the current employee (null if the employee has no manager)