--liquibase formatted sql
--changeset rgrzegorczyk:jhist_job_fk runOnChange:false failOnError:true context:v1 labels:v1
--rollback  ALTER TABLE job_history DROP CONSTRAINT jhist_job_fk;
ALTER TABLE job_history
ADD  CONSTRAINT jhist_job_fk
                     FOREIGN KEY (job_id)
                     REFERENCES jobs;