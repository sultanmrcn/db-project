--How to find employees information of who is making highest salary in the company?
-- get me the highest Salary
SELECT MAX(SALARY )FROM EMPLOYEES;

--highest salary employee information
SELECT * FROM EMPLOYEES
WHERE SALARY = 24000;

--Subquery Solution in one shot
select * from EMPLOYEES where SALARY =
(select max(SALARY) from EMPLOYEES);

--Finding second highest salary
--1-) get the highest salary
select max(SALARY) from EMPLOYEES;

--2-)highest after 24K? One shot combining two queries
select max(SALARY) from EMPLOYEES
where SALARY< (select max(SALARY) from EMPLOYEES);

--employee information of who is making second highest salary (17K)?
select *
from EMPLOYEES where salary =
( select max(SALARY) from EMPLOYEES
where SALARY < (select max(SALARY) from EMPLOYEES));


--list the employees who is making highest 10 salary

--get the first 10 people then order them high to low based on salary.


select * from EMPLOYEES
where rownum <11
order by salary desc;

--order all employees basen on salary high to low then display only 10 result
select *
from ( (select * from EMPLOYEES
 order by salary desc))
where  rownum <11 ;

--Find the highest 14th Salary
select min(SALARY)
from ( (select distinct salary from EMPLOYEES
        order by salary desc))
where  rownum < 15 ;

--Find the employee info who is making 14th highest salary(with duplicates)
select * from EMPLOYEES where SALARY= (select min(SALARY)
                                       from ( (select distinct salary from EMPLOYEES
                                               order by salary desc))
                                       where  rownum < 15 );

--list salary high to low without duplicate values
select distinct SALARY
from EMPLOYEES order by SALARY desc ;

--Find the employee info who is making 14th highest salary(without duplicates)
select * from EMPLOYEES where SALARY= (select min(SALARY)
                                       from ( (select distinct salary from EMPLOYEES
                                               order by salary desc))
                                       where  rownum < 15 );



