--liquibase formatted sql
--changeset rgrzegorczyk:create_regions_seq runOnChange:false failOnError:true context:v1 labels:v1
--rollback  DROP SEQUENCE locations_seq;
CREATE SEQUENCE locations_seq
 START WITH     3300
 INCREMENT BY   100
 MAXVALUE       9900
 NOCACHE
 NOCYCLE;