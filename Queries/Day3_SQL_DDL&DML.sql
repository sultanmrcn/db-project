select * from EMPLOYEES;

/*
 Create table Syntax:
 create table TableName(
      colName1 DataType Constraints,
      colName2 DataType Constraints(optional)
      colName3 DataType Constraints,
      ...
    );
 */
CREATE
    TABLE ScrumTeamSultan(
                                Emp_ID integer Primary Key,
                                FirstName varchar(30) not null,
                                LastName varchar(30),
                                JobTitle varchar(20)
);

SELECT * from ScrumTeamSultan;

/*
 Insert Into tableName (column1, column2, ...)
 Values (value1, value2...);dd
 */
INSERT INTO
    SCRUMTEAMSULTAN (emp_id, firstname, lastname, jobtitle)
VALUES  (1,'Severus','Snape','Tester');

INSERT INTO SCRUMTEAMSULTAN VALUES (2,'Harold','Finch','Developer');

INSERT INTO SCRUMTEAMSULTAN VALUES (3,'Mike','Jason','Tester');

INSERT INTO SCRUMTEAMSULTAN VALUES (4,'Lisa','Taylor','Developer');

INSERT INTO SCRUMTEAMSULTAN VALUES (5,'Eren','Ozer','Developer');

INSERT INTO SCRUMTEAMSULTAN VALUES (6,'David','marc','ScrumMaster');

INSERT INTO SCRUMTEAMSULTAN VALUES (7,'LIsa','Fun','PO');


SELECT  * FROM SCRUMTEAMSULTAN;
