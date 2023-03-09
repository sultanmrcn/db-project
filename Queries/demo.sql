SELECT * FROM EMPLOYEES ;
--Reads all column from employees table

SELECT  * FROM DEPARTMENTS ;
--Reads all column from departments table

select  first_name from EMPLOYEES;
--get only first names from employees table

select CITY from LOCATIONS;
--display city names

select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES;
--display first_name, last_name_salary from employees table.

select STREET_ADDRESS,POSTAL_CODE from LOCATIONS;
--display street_address, postal code from locations table.

SELECT  distinct FIRST_NAME FROM EMPLOYEES;
--romes duplicates