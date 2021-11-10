--liquibase formatted sql
--changeset rgrzegorczyk:create_employees_seq runOnChange:false failOnError:true context:v1 labels:v1
--rollback  DROP SEQUENCE employees_seq;
CREATE SEQUENCE employees_seq
 START WITH     207
 INCREMENT BY   1
 NOCACHE
 NOCYCLE;
