--liquibase formatted sql
--changeset rgrzegorczyk:jhist_dept_fk runOnChange:false failOnError:true context:v1
--rollback  ALTER TABLE job_history DROP CONSTRAINT jhist_dept_fk;
ALTER TABLE job_history
ADD  CONSTRAINT jhist_dept_fk
                     FOREIGN KEY (department_id)
                     REFERENCES departments;