--liquibase formatted sql
--changeset rgrzegorczyk:create_REGIONS_table runOnChange:false failOnError:true context:v1
--comment Create the REGIONS table to hold region information for locations. LOCATIONS table has a foreign key to this table. 
--rollback  DROP TABLE regions CASCADE CONSTRAINTS;
create table regions (
    region_id                      number  
                                   constraint regions_id_pk primary key,
    region_name                    varchar2(255 char)
);
COMMENT ON TABLE regions 
IS 'Regions table that contains region numbers and names. Contains 4 rows; references with the Countries table.';

COMMENT ON COLUMN regions.region_id
IS 'Primary key of regions table.';

COMMENT ON COLUMN regions.region_name
IS 'Names of regions. Locations are in the countries of these regions.';