--liquibase formatted sql
--changeset rgrzegorczyk:countr_reg_fk runOnChange:false failOnError:true context:v1
--comment countries to regions FK
--rollback  ALTER TABLE countries DROP CONSTRAINT countr_reg_fk;
ALTER TABLE countries
ADD CONSTRAINT countr_reg_fk
        	 FOREIGN KEY (region_id)
          	  REFERENCES regions(region_id);