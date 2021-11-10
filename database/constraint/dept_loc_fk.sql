--liquibase formatted sql
--changeset rgrzegorczyk:dept_loc_fk runOnChange:false failOnError:true context:v1 labels:v1
--comment departments to locations FK
--rollback  ALTER TABLE departments DROP CONSTRAINT dept_loc_fk;
ALTER TABLE departments
ADD CONSTRAINT dept_loc_fk
       		 FOREIGN KEY (location_id)
        	  REFERENCES locations (location_id);