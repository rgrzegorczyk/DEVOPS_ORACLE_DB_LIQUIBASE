--liquibase formatted sql
--changeset rgrzegorczyk:dept_mgr_fk runOnChange:false failOnError:true context:v1 labels:v1
--rollback  ALTER TABLE departments DROP CONSTRAINT dept_mgr_fk;
ALTER TABLE departments
ADD ( CONSTRAINT dept_mgr_fk
      		 FOREIGN KEY (manager_id)
      		  REFERENCES employees (employee_id)
    ) ;
