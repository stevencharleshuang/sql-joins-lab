BEGIN;

-- Dropping tables first for HW purposes only, never for real development
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS jobs CASCADE;

CREATE TABLE employees (
  id SERIAL PRIMARY KEY NOT NULL,
  ssn VARCHAR(11),
  first_name VARCHAR(25),
  last_name VARCHAR(25),
  year_of_birth INT,
  city VARCHAR(55)
);

CREATE TABLE jobs (
  id SERIAL PRIMARY KEY NOT NULL,
  ssn VARCHAR(11),
  company VARCHAR(55),
  salary INT,
  experience INT,
  UNIQUE(ssn)
);

COMMIT;