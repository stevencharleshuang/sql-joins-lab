BEGIN;

COPY employees(ssn,first_name,last_name,year_of_birth,city) FROM '/Users/steammachine/cog-s1/unit02/hw/sql-joins-lab/starter-code/employees.csv' DELIMITER ',' CSV HEADER;
COPY jobs(ssn,company,salary,experience) FROM '/Users/steammachine/cog-s1/unit02/hw/sql-joins-lab/starter-code/jobs.csv' DELIMITER ',' CSV HEADER;

COMMIT;

ANALYZE employees;
ANALYZE jobs;