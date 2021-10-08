create or replace package EMPLOYEES_PKG
as

/** Procedure to give a raise to specified employee by value specified( percentage)
*/
procedure p_give_a_raise(
  pi_employee_id in EMPLOYEES.EMPLOYEE_ID%TYPE,
  pi_raise_pct   in PLS_INTEGER
);

  
end EMPLOYEES_PKG;

/
