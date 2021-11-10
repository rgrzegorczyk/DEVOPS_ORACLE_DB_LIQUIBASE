--liquibase formatted sql
--changeset rgrzegorczyk:create_departments_seq runOnChange:false failOnError:true context:v1 labels:v1
--rollback  DROP SEQUENCE departments_seq;
CREATE SEQUENCE departments_seq
 START WITH     280
 INCREMENT BY   10
 MAXVALUE       9990
 NOCACHE
 NOCYCLE;