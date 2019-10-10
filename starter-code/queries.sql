/*
Show the full names of employees working at Macy's.
Show the companies located in Boston.
Show the full name of the employee with the highest salary.
*/

SELECT employees.first_name, employees.last_name, jobs.company
  FROM employees
  JOIN jobs
    ON employees.ssn = jobs.ssn
 WHERE jobs.company = 'Macy''s';