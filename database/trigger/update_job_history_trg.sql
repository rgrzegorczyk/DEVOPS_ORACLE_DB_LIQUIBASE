--liquibase formatted sql
--changeset rgrzegorczyk:update_job_history_trg runOnChange:true stripComments:false context:v1
--rollback DROP TRIGGER update_job_history_trg;
CREATE OR REPLACE TRIGGER update_job_history_trg
  AFTER UPDATE OF job_id, department_id ON employees
  FOR EACH ROW
BEGIN
  p_add_job_history(:old.employee_id, :old.hire_date, sysdate, 
                  :old.job_id, :old.department_id);
END;
/
