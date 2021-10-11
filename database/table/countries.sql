--liquibase formatted sql
--changeset rgrzegorczyk:create_COUNTRIES_table context:v1
--comment Create the COUNTRIES table to hold country information for customers and company locations. LOCATIONS have a foreign key to this table.
--rollback  DROP TABLE countries CASCADE CONSTRAINTS;
CREATE TABLE countries 
    ( country_id      CHAR(2) 
       CONSTRAINT  country_id_nn NOT NULL 
    , country_name    VARCHAR2(40) 
    , region_id       NUMBER 
    , CONSTRAINT     country_c_id_pk 
        	     PRIMARY KEY (country_id) 
    );
COMMENT ON TABLE countries
IS 'country table. Contains 25 rows. References with locations table.';

COMMENT ON COLUMN countries.country_id
IS 'Primary key of countries table.';

COMMENT ON COLUMN countries.country_name
IS 'Country name';

COMMENT ON COLUMN countries.region_id
IS 'Region ID for the country. Foreign key to region_id column in the departments table.';    

--changeset rgrzegorczyk:add_universe_id_column context:v1
--comment new column
--rollback ALTER TABLE countries DROP COLUMN universe_id;
ALTER TABLE countries ADD universe_id NUMBER;

--changeset rafal:add_missing_comment context:PROD_FIX  labels:JIRA_TASK_PROD_FIX_1
--comment Missing column
--rollback COMMENT ON COLUMN countries.universe_id IS '';  
COMMENT ON COLUMN countries.universe_id
IS 'Id of the universe to which country belongs';    




