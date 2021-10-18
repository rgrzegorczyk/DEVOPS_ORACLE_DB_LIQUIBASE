--liquibase formatted sql
--changeset rafal:conf_countr_fk context:CR_conferences labels:JIRA_TASK_1
--comment Conferences to regions FK
--rollback  ALTER TABLE conferences DROP CONSTRAINT conf_countr_fk;
ALTER TABLE conferences
ADD CONSTRAINT conf_countr_fk
        	 FOREIGN KEY (country_id)
          	  REFERENCES countries(country_id);