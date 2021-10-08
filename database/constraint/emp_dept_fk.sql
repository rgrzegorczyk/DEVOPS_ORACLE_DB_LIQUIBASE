--liquibase formatted sql
--changeset rgrzegorczyk:emp_dept_fk  runOnChange:false failOnError:true context:v1
--rollback  ALTER TABLE employees DROP CONSTRAINT emp_dept_fk;
ALTER TABLE employees
ADD CONSTRAINT   emp_dept_fk
                     FOREIGN KEY (department_id)
                      REFERENCES departments;