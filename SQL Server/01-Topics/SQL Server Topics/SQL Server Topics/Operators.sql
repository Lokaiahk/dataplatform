--OPERATORS: 

--Arithmetic Operators: +,-,*,/,% 
--Assignment Operator: = 
--Comparison Operators: >, <, >=, <=, <>, != (Not Equal To),!< (Not Less Than),!> (Not Greater Than) 
--Bitwise Operators: AND, OR, NOT 
--Compound Operators: +=,-=,*=,/=,%=,&=,^=,|= 
--	+= - Adds some amount to the original value and sets the original value to the result. 
--	-= - Subtracts some amount from the original value and sets the original value to the result. 
--	*= -Multiplies by an amount and sets the original value to the result. 
--	/= - Divides by an amount and sets the original value to the result. 
--	%= - Divides by an amount and sets the original value to the modulo. 
--	&= - Performs a bitwise AND and sets the original value to the result. 
--	^= - Performs a bitwise exclusive OR and sets the original value to the result. 
--	|= - Performs a bitwise OR and sets the original value to the result. 


--Logical Operators: ALL, AND, ANY, BETWEEN, EXISTS, IN, LIKE, NOT, OR, SOME 
--NOT + Logical Operators: NOT IN, NOT BETWEEN, IS NOT, NOT LIKE, NOT EXISTS 

--Operator Precedence: 

--Level Operators 

--1 ~ (Bitwise NOT) 
--2 * (Multiplication), / (Division), % (Modulus) 
--3 + (Positive), - (Negative), + (Addition), + (Concatenation), - (Subtraction), & (Bitwise AND), 
--^ (Bitwise Exclusive OR), | (Bitwise OR) 
--4 =, >, <, >=, <=, <>, !=, !>, !< (Comparison operators) 
--5 NOT 
--6 AND 
--7 ALL, ANY, BETWEEN, IN, LIKE, OR, SOME 
--8 = (Assignment) 



--WHERE CLAUSE:  

--This clause will restrict number of rows in the output of a query.  

--This clause is used to compare the data by making condition in two ways. Filtering Conditions and Joining Conditions.  

--At Filtering Condition data given by a user will be compared into a column.  

--At Joining Condition data of one column will be compared with the data of another column. 

--At Filtering Condition Comparison to string type data is not case sensitive and it should be 

--placed in single query. 

--Comparison to Numeric Type Data is direct or it can also be placed in single quotes. 

--Note:    where clause won’t allow filtering rows based on column alias names 

--    You can filter rows with the help of scalar functions as well, except aggregate functions 

--Q) Display all those EMPLOYEES who are working as CLERKS. 

SELECT ENAME, JOB FROM EMP WHERE JOB = 'CLERK' 

SELECT ENAME, JOB FROM EMP WHERE 'CLERK' =JOB 

--Q) Display all those EMPLOYEES who are working at Department Number 10 

SELECT * FROM DEPT WHERE DEPTNO = 10 

or 

SELECT * FROM DEPT WHERE DEPTNO = '10' 

--Q) Display ENAME, JOB of those EMPLOYES who are not working as MANAGER 

SELECT ENAME, JOB FROM EMP WHERE JOB != 'MANAGER' 

--Q) Display ENAME, JOB, and DEPTNO of those EMPLOYEES who are working as CLERK at DEPT NO 20. 

SELECT * FROM EMP WHERE JOB = 'CLERK' AND DEPTNO = 20 

--Q) Display ENAME, JOB of those EMPLOYEES who are working as CLERK, ANALYST. 

SELECT ENAME, JOB FROM EMP WHERE JOB = 'CLERK' OR JOB = 'ANALYST' 

SELECT ENAME, JOB FROM EMP WHERE JOB IN ('CLERK','ANALYST') 

--Q) Display EMPNO, ENAME, DEPTNO of those EMPLOYEES who are working at 10, 30 Departments. 

SELECT EMPNO, ENAME, DEPTNO FROM EMP WHERE DEPT IN (10,30) 

--IN: 

--This operator compares list of similar type values. 

--It works like “OR” Logical operator. 

--It can be used for any number of times. 

--The list should contain only one column values; multiple columns data is invalid. 

  

--Q) Display ENAME, JOB of those EMPLOYEES who are working as CLERK, ANALYST. 

SELECT ENAME, JOB FROM EMP WHERE JOB IN ('CLERK','ANALYST') 

SELECT ENAME, JOB FROM EMP WHERE ('CLERK','ANALYST') IN JOB  

  

--Q) Display EMPNO, ENAME, DEPTNO of those EMPLOYEES who are working at 10, 30 Departments. 

SELECT EMPNO, ENAME, DEPTNO FROM EMP WHERE DEPT IN (10,30) 

  

--Q) Display ENAME, SAL of EMPLOYEE SAL Greater than or equal to 2000 & SAL less than or equal to 

3000. 

SELECT ENAME, SAL FROM EMP WHERE SAL >= 2000 AND SAL <=3000 

SELECT ENAME, SAL FROM EMP WHERE SAL BETWEEN 2000 AND 3000 

--BETWEEN: 

--It is used to compare range of values (Numbers or dates) 

--Compares range of values including the specified data 

--It can also be used for any number of times 

--Q) Display ENAME, JOB, DEPTNO of those Employees who are not working as CLERK, ANALYST. 

SELECT ENAME, JOB, DEPTNO FROM EMP WHERE JOB NOT IN ('CLERK','ANALYST') 

--Q) Display all those Employees whose salary is not in a range of 1000 and 3000. 

SELECT * FROM EMP WHERE SAL NOT BETWEEN 1000 AND 3000 

--Q) Display all the Employees who are working as CLERK, ANALYST and SAL is greater than 1000. 

SELECT * FROM EMP WHERE JOB = 'CLERK' OR 'ANALYST' AND SAL > 1000 

SELECT * FROM EMP WHERE JOB IN ('CLERK','ANALYST') AND SAL > 1000 

--Q) Display ENAME, SAL, ANNUAL SAL of those Employees whose annual salary is in range of 18000 

and 36000. 

SELECT ENAME, SAL, SAL*12 AS ANNUALSAL FROM EMP 

WHERE SAL*12 BETWEEN 18000 AND 36000 

--Q) Display ENAME, JOB, SAL, COMM and DEPTNO who are working as SALESMAN at DEPTNO 30 and 

there commission is > half of their salary. 

SELECT * FROM EMP WHERE JOB = 'SALESMAN' AND DEPTNO = 30 AND COMM > SAL/2 

--WILD CHARACTERS: 

--These characters are used to provide pattern matching when data is searched into a column 

--SQL SERVER supports to work with following characters. 

	--“_” – it is used for single characters 

	--“%” - it is used for group of characters 

	--“-“– it is used for range of characters 

	--“[]”- Escape character  

--LIKE OPERATOR: 

--It is used for comparing the data which is enclosed with wild characters. It can be used for 

--any number of times. 

--This operator when compares the data using wild characters it should be enclosed in single 

--quotes. 

--Comparison to any type data should be placed in single quotes 

--If data in a column is enclosed with wild characters to search the data escape option should be specified 

SELECT * FROM EMP WHERE ENAME LIKE 'J%' 

SELECT * FROM EMP WHERE ENAME LIKE '%S' 

SELECT * FROM EMP WHERE ENAME LIKE 'J%S' 

SELECT * FROM EMP WHERE ENAME LIKE '%A%' 

SELECT * FROM EMP WHERE ENAME LIKE '%A%E%' 

SELECT * FROM EMP WHERE ENAME LIKE 'J[_]%' 

SELECT * FROM EMP WHERE ENAME LIKE '[a-klm]%' --a%,b%,..j%,k%,l%,m% 

SELECT * FROM EMP WHERE ENAME LIKE '[-aklm]%' --à-%,a%,k%...m% 

SELECT * FROM EMP WHERE ENAME LIKE 'sm[iabc]' --smi,sma,smb,smc 

SELECT * FROM EMP WHERE ENAME LIKE '[smi]abc' --sabc,mabc,iabc 

SELECT * FROM EMP WHERE ENAME LIKE 'sm[ia]bc' --smibc,smabc 

SELECT * FROM EMP WHERE ENAME LIKE 'J\_%' ESCAPE '\' 

--**In ESCAPE we can use any characters except WILD CHARACTERS. 

SELECT * FROM EMP WHERE ENAME LIKE '[A-F]%' 

SELECT * FROM EMP WHERE ENAME NOT LIKE '[A-F]%' 

SELECT * FROM EMP WHERE ENAME LIKE '[^A-F]%' 

SELECT * FROM EMP WHERE ENAME LIKE '___' 

SELECT * FROM EMP WHERE ENAME LIKE '%?_%' ESCAPE '?' 



--ANSI NULLs 

--Working with IS Operator. 

--This operator is exclusively used for comparing NULL values. 

--It can be used any number of times. 

--SQL server also supports to compare the NULL values using relation operator. 

--Following SET Command should be used  SET ANSI_NULLS OFF | ON [Default it is ON] 

--It should be turned to off when NULL value is compared with relational operator. 

--Q) Display all those Employees who are not earning commission. 

SELECT * FROM EMP WHERE COMM IS NULL 

--Q) Display all those Employees whose are earning commission. 

SELECT * FROM EMP WHERE COMM IS NOT NULL 

SELECT * FROM EMP WHERE NOT COMM IS NULL 

--Q) Display EMPNO, ENAME & MGR of those Employees who don’t have manager to report. 

SELECT * FROM EMP WHERE MGR IS NULL 

--Q) Display EMPNO, ENAME & MGR of those Employees who have managers to report. 

SELECT * FROM EMP WHERE MGR IS NOT NULL 

--Q) Display EMPNO, ENAME, MGR, SAL and COMM of those Employees who have managers to report 
	--and do not earn commission. 

SELECT * FROM EMP WHERE MGR IS NOT NULL AND COMM IS NULL 

--SET ANSL_NULLS OFF 

SELECT * FROM EMP WHERE COMM != NULL 

SELECT * FROM EMP WHERE COMM = NULL 

SELECT * FROM EMP WHERE MGR = NULL 

SELECT * FROM EMP WHERE NULL = NULL 

  --SET ANISI_NUNLLS OFF 
  --SET CONCAT_NULL_YIELDS_NULL { ON | OFF }  



--Distinct  

--Eliminates duplicates. 

--Always arranges the data in ASCENDING ORDER. 

--It should be used immediately after SELECT command. 

--It includes NULL VALUES. 

--When multiple columns are used with DISTINCT operator it eliminates only if all the columns contains duplicates. 

--If you are trying to use order by clause with distinct then the columns which you are used in the select list those only you need use in order by clause 

SELECT DISTINCT DEPTNO FROM EMP 

SELECT DISTINCT JOB FROM EMP 

SELECT DISTINCT COMM FROM EMP 

SELECT DISTINCT MGR FROM EMP WHERE MGR IS NOT NULL 

SELECT DISTINCT DEPTNO, JOB FROM EMP 

SELECT DISTINCT DEPTNO, JOB FROM EMP order by DEPTNO 

  

--ALL 
--DISTINCT (Nulls with Distinct) 
--TOP 
--Percent 
--WITH Ties 
--SET ROWCOUNT

--Order by  

--This clause is used to arrange the data in ASCENDING / DESCENDING order. 

--By default it arranges the data in ASCENDING order. 

--Order by clause will work after the execution of “SELECT” statement. 

--Order by clause will arrange the data in order at buffer location, hence it is temporary. 

--It can arrange the data in order based on COLUMN_NAME or COLUMN_ALIAS_NAME or 

--COLUMN_POSITION {according to query} to specify order type. 

--ASC ----- ASCENDING & DESC ---- DESCENDING 

--When multiple columns are used at ORDER BY clause. First column will be fully arranged in 

--order and other columns will be arranged based on previous column. 

--When multiple columns are used at ORDER BY clause, they can be specified with same order 

--type or different order type. 

--There is no limit to the number of columns in the ORDER BY clause; however, the total size of the columns specified in an ORDER BY clause cannot exceed 8,060 bytes. 

--Columns of type ntext, text, image, geography, geometry, and xml cannot be used in an ORDER BY clause 

--Column names and aliases specified in the ORDER BY clause must be defined in the select list if the SELECT statement contains one of the following clauses or operators: 

--UNION operator 
--EXCEPT operator 
--INTERSECT operator 
--SELECT DISTINCT 

  

--SELECT * FROM EMP ORDER BY SAL 

--SELECT EMPNO, ENAME, JOB, SAL AS PAY FROM EMP ORDER BY PAY 

--SELECT EMPNO, ENAME, JOB, SAL AS PAY FROM EMP ORDER BY 3 

--SELECT EMPNO, ENAME, JOB, SAL AS PAY FROM EMP ORDER BY 3,4 DESC 

--SELECT EMPNO, ENAME, JOB, SAL AS PAY FROM EMP ORDER BY 3 ASC, 4 DESC 

--SELECT EMPNO, ENAME, JOB, SAL AS PAY FROM EMP ORDER BY len(ename) 

--New feature of SQL server 2012(OFFSET,FETCH NEXT) 

--SELECT * FROM EMP Order by EMPNO 

--Skip the first 5 rows from the sorted result set and return all remaining rows.   

--SELECT * FROM EMP Order by EMPNO OFFSET 5 ROWS;   

--Skip 0 rows and return only the first 10 rows from the sorted result set.   

--SELECT * FROM EMP Order by EMPNO OFFSET 0 ROWS FETCH NEXT 10 ROWS ONLY; 

--Skip10 rows and return only the first 10 rows from the sorted result set.   

--SELECT * FROM EMP Order by EMPNO OFFSET 10 ROWS FETCH NEXT 10 ROWS ONLY; 

--Note: 

--• ORDER BY is mandatory to use OFFSET and FETCH clause. 

-- • OFFSET clause is mandatory with FETCH. You cannot use, ORDER BY … FETCH. 

-- • TOP cannot be combined with OFFSET and FETCH in the same query expression. 

  

--Pagination (Chunks of data) 
--Priority sorting 
--Offset, fetch 
--You can't combine TOP with OFFSET and FETCH in the same query expression 