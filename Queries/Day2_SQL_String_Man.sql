--how can we rename the column that we displayed
select first_name as given_name,
LAST_NAME as surname
from EMPLOYEES;
----text functions, string manipulation
--in SQL Concat is ||
select  FIRST_NAME || ' '|| LAST_NAME as full_name
from EMPLOYEES;

--Task:
--add @gmail.com and name new column to full email

select EMAIL from EMPLOYEES;
select  EMAIL||'@gmail.com' as "Full Email" from  EMPLOYEES;

--Making all lowercase
select  lower(EMAIL||'@gmail.com') as "Full Email" from  EMPLOYEES;

--Making all lowercase
select  upper(EMAIL||'@gmail.com') as "Full Email" from  EMPLOYEES;

select  FIRST_NAME from EMPLOYEES;
--length (value)
select FIRST_NAME, length(FIRST_NAME)
as "Length Name"  from EMPLOYEES
ORDER BY "Length Name" desc ;

--Substr (colName,BegIndex,NumberOfChar)
select substr(FIRST_NAME,0,1)||'.'|| substr(LAST_NAME,0,1)
as "Initials ",
FIRST_NAME || ' '|| LAST_NAME as full_name,
lower(EMAIL||'@gmail.com') as "Full Email" from EMPLOYEES;

--VIEW
CREATE VIEW Email_list_Sultan

as select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)
                                        as "Initials ",
          FIRST_NAME|| ' '||LAST_NAME as full_name,
          lower(EMAIL||'@gmail.com') as "Full Email" from EMPLOYEES;


--to remove view
 drop view  Emaillist;









