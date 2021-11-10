--liquibase formatted sql
--changeset rgrzegorczyk:create_departments_table runOnChange:false failOnError:true context:v1 labels:v1
--comment Create the DEPARTMENTS table to hold company department information. EMPLOYEES and JOB_HISTORY have a foreign key to this table.
--rollback  DROP TABLE departments CASCADE CONSTRAINTS;
CREATE TABLE departments
    ( department_id    NUMBER(4)
    , department_name  VARCHAR2(30)
	CONSTRAINT  dept_name_nn  NOT NULL
    , manager_id       NUMBER(6)
    , location_id      NUMBER(4)
    ) ;
COMMENT ON TABLE departments
IS 'Departments table that shows details of departments where employees 
work. Contains 27 rows; references with locations, employees, and job_history tables.';

COMMENT ON COLUMN departments.department_id
IS 'Primary key column of departments table.';

COMMENT ON COLUMN departments.department_name
IS 'A not null column that shows name of a department. Administration, 
Marketing, Purchasing, Human Resources, Shipping, IT, Executive, Public 
Relations, Sales, Finance, and Accounting. ';

COMMENT ON COLUMN departments.manager_id
IS 'Manager_id of a department. Foreign key to employee_id column of employees table. The manager_id column of the employee table references this column.';

COMMENT ON COLUMN departments.location_id
IS 'Location id where a department is located. Foreign key to location_id column of locations table.';    

CREATE UNIQUE INDEX dept_id_pk
ON departments (department_id) ;

CREATE INDEX dept_location_ix
       ON departments (location_id);       

ALTER TABLE departments
ADD  CONSTRAINT dept_id_pk
       		 PRIMARY KEY (department_id);