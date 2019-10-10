
-- Show the full names of employees working at Macy's.
SELECT employees.first_name, employees.last_name, jobs.company
  FROM employees
  JOIN jobs
    ON employees.ssn = jobs.ssn
 WHERE jobs.company = 'Macy''s';

 -->  
/*
 first_name | last_name | company
------------+-----------+---------
 Donald     | Lee       | Macy's
 William    | Newey     | Macy's
*/

-- Show the companies located in Boston.
SELECT jobs.company, employees.city
  FROM employees
  JOIN jobs
    ON employees.ssn = jobs.ssn
 WHERE employees.city = 'Boston';

 --> 
 /*
   company    |  city
--------------+--------
 Little Place | Boston
 Macy's       | Boston
 */

-- Show the full name of the employee with the highest salary.
SELECT employees.first_name, employees.last_name, jobs.salary
  FROM employees
  JOIN jobs
    ON employees.ssn = jobs.ssn
 ORDER BY jobs.salary 
  DESC
 LIMIT 1;

-->
/*
 first_name | last_name | salary
------------+-----------+--------
 Melony     | Smith     |    299
*/

