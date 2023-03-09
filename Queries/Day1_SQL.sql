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
--removes duplicates

SELECT FIRST_NAME,LAST_NAME,PHONE_NUMBER FROM EMPLOYEES
WHERE FIRST_NAME = 'David'  ;
--I want to see first_name, last_name and Phone number of david(s)

SELECT FIRST_NAME,LAST_NAME,PHONE_NUMBER FROM EMPLOYEES
WHERE FIRST_NAME = 'David'  and LAST_NAME ='Lee';

select *from EMPLOYEES
where SALARY >7000;
--get me all information about who is making more than 7000 salary

select EMAIL, SALARY from EMPLOYEES where SALARY <4000;
--get me  email of who is making less than 4000 salary

select  * from EMPLOYEES where JOB_ID ='IT_PROG' OR JOB_ID ='SA_REP';
--get me all information about who is working as IT PROG. or SA_REP

select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES where SALARY >=5000 and SALARY <= 10000;
--get me first name, last name and salary  who is making more than 5000 and less than 10000 salary

select FIRST_NAME,LAST_NAME,SALARY from EMPLOYEES where SALARY between 5000 and 10000;
--get me first name, last name and salary  who is making more than 5000 and less than 10000 salary

select * from EMPLOYEES where EMPLOYEE_ID between 130 and 170;
-- get me all info where employee id 130 t0 170

select * from EMPLOYEES where EMPLOYEE_ID = 135 or EMPLOYEE_ID =176 or EMPLOYEE_ID = 154 or EMPLOYEE_ID =129;
-- get me all info where employee id 135 176 154 129
select * from EMPLOYEES where EMPLOYEE_ID  in (135,176,154,129) ;


--get me the city of where country id IT,US,UK
select  CITY, COUNTRY_ID from LOCATIONS  WHERE COUNTRY_ID IN  ('IT', 'US','UK');








