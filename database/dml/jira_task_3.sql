--liquibase formatted sql
--changeset jkowalski:add_missing_countries  context:CR_conferences labels:JIRA_TASK_3
--comment Added Croatia
--rollback DELETE FROM  countries where country_id='HR';
insert into countries (
   country_id,
   country_name,
   region_id
) values
        ( 'HR'
        , 'Croatia'
        , 1 
        );