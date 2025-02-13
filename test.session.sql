-- @block HOW TO CREATE AND MODIFY Database

CREATE database myDB;
USE myDB;
DROP database myDB;
ALTER database myDB READ ONLY = 1;
ALTER database myDB READ ONLY = 0;


-- @block HOW TO CREATE AND ALTER TABLE

CREATE TABLE employees (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    hourly_pay DECIMAL(5, 2),
    hire_date DATE
);

SELECT * FROM employees;
RENAME TABLE employees TO workers;
DROP TABLE employees;

ALTER TABLE employees
ADD phone_number VARCHAR(15);

ALTER TABLE employees
RENAME COLUMN phone_number TO email;

ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100);

ALTER TABLE employees
MODIFY COLUMN email VARCHAR(100)
AFTER last_name;
FIRST;     -- if u want it at first

ALTER TABLE employees
DROP COLUMN email;



-- @block HOW TO INSERT ROWS INTO TABLE

INSERT INTO employees
VALUES(1, "Eugene", "Krabs", 25.50, "2023-01-02");

INSERT INTO employees
VALUES (2, "Squidward", "Tentacles", 15.00, "2023-01-03"), 
       (3, "Spongebob", "Squarepants", 12.50, "2023-01-04"), 
       (4, "Patrick", "Star", 12.50, "2023-01-05"), 
       (5, "Sandy", "Cheeks", 17.25, "2023-01-06");

INSERT INTO employees (employee_id, first_name, last_name)
VALUES(6, "Sheldon", "Plankton");

-- @block HOW TO SELECT DATA FROM A TABLE

SELECT first_name, last_name FROM employees;

SELECT * FROM employees
WHERE employee_id = 1;

SELECT * FROM employees
WHERE employee_id != 1;

SELECT * FROM employees
WHERE first_name = "Spongebob";

SELECT * FROM employees
WHERE hourly_pay >= 15;

SELECT * FROM employees
WHERE hire_date <= "2023-01-03";

SELECT * FROM employees
WHERE hire_date IS NULL; -- = NULL doesnt work

-- @block HOW TO UPDATE/DELETE DATA FROM A TABLE

UPDATE employees
SET hourly_pay = 10.50,
    hire_date = "2023-01-07" -- or NULL
WHERE employee_id = 6;

DELETE FROM employees; -- be careful as it will delete all rows

DELETE FROM employees
WHERE employee_id = 6;


-- @block AUTOCOMMIT, COMMIT & ROLLBACK

SET AUTOCOMMIT = OFF;
    -- do something
COMMIT;

DELETE FROM employees;

ROLLBACK;


-- @block GETTING CURRENT DATE & TIME

CREATE TABLE test(
    my_date DATE,
    my_time TIME,
    my_datetime DATETIME
);

INSERT INTO test
VALUES(CURRENT_DATE(), CURRENT_TIME(), NOW());

INSERT INTO test
VALUES(CURRENT_DATE() + 1, NULL, NULL);

-- @block TEST

