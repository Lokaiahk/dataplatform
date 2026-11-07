--SQL Sub Languages
	--About Select  
	--Column Alias ([], "", '',  as, =) 
	--Literals  
	--Math Expressions 
	--Operators 
	--ANSI NULLs
	--Distinct  
	--Order by  

--SQL Sub Languages
--DATA QUERY OR RETRIVAL LANGUAGE {DQL OR DRL}  

    --It is used to retrieve the data in different ways using “SELECT” Command.  

--DATA MANIPULATION LANGUAGE {DML}  

	--Insertion of new rows, modifications to existing rows, removing unwanted rows, collectively known  
	--As DATA MANIPULATION LANGUAGE, It includes INSERT, UPDATE, DELETE and MERGE (introduced in  
	--2008)  

--TRANSACTION CONTROL LANGUAGE {TCL}  

	--This language supports to make a transaction permanent in a database or supports to cancel the  
	--Transaction. It includes COMMIT, ROLLBACK, SAVE commands.  

--DATA DEFINATION LANGUAGE {DDL}  

	--This language is used to CREATE, ALTER and DROP Database objects like tables, views, indexes,  
	--Synonyms, store procedures, store functions, stored triggers. It includes CREATE, ALTER, TRUNCATE,  
	--DROP Commands.  

--DATA CONTROL LANGUAGE {DCL}  

	--It is used to give rights on Database objects created by one user to get them access by other users it also  
	--supports to cancel the given rights, It includes GRANT, REVOKE, DENY Commands. 

	--About Select 
		--DATA QUERY LANGUAGE  

	--This language supports to retrieve the data in 3 ways  
		-- SELECTION - retrieves the data of all columns.  
		-- PROJECTION - retrieves required columns.  
		-- JOINS - retrieves from multiple tables which always produce a new table.  

	--This language includes “SELECT” Command.  

--Syntax:  

	--SELECT * /LIST_OF_COLS[COL_ALIAS]/LITERALS/MATH EXPRESSIONS/FUNCTIONS/Sub Queries  
	--[ FROM TABLE1 [TABLE_ALIAS, TABLE2 TABLE_ALIAS...]]/Sub  
	--queries/functions/Synonyms/Views  
	--[ WHERE CONDITIONS ]/sub queries/functions/case  
	--[ GROUP BY COLUMN1 [COL2,COL3...] ] [ WITH ROLLUP / CUBE ]/case/functions  
	--[ HAVING CONDITIONS ]/sub queries/function  
	--[ ORDER BY COLUMN1 [COL2,COL3...] ] [ ASC / DESC ]/functions/CASE  
	--[ FOR XML MODES]  

--SQL Clauses 

	--SELECT  
	--FROM  
	--WHERE 
	--GROUP BY  
	--Having 
	--Order by  
	--For XML 
--Column Alias ([], "", '',  as, =) 
	--It is the other name provided for a COLUMN.  
	--It is a temporary name provided for a COLUMN.  
	--It provides its effect only in the output of a query.  
	--It provides its usage till the query is in execution.  
	--It cannot be used in other clauses of SELECT statement except ORDER BY clause.  
	--When COLUMN ALIAS is specified directly it does not allow blank spaces and special characters except underscores.  
	--In order to have blank spaces and special characters it should be enclosed in Double Quotes ” ” or Square Brackets [ ]  
	--It can be specified in two ways:  
	--With using “AS” Key word  
	--Without using “AS” Key word  

	--Examples:  
	--SELECT EMPNO ECODE, ENAME EMPNAME FROM EMP  
	--SELECT EMPNO AS ECODE, ENAME AS EMPNAME FROM EMP  
	--SELECT EMPNO ECODE, SAL MONTHLY_SAL FROM EMP  
	--SELECT EMPNO ECODE, SAL "MONTHLY PAY" FROM EMP  
	--SELECT EMPNO ECODE, SAL [MONTHLY PAY] FROM EMP 
--Literals 
	--USING LITERALS IN A SELECT STATEMENT  
	--Literals refer to a constraint which means input provided for a query the same is provided in the output.  
	--A literal can be of numeric, string and date type data  
--Examples:  
--SELECT ENAME FROM EMP  
--SELECT 'ENAME' FROM EMP  
--SELECT 'ENAME' L1 FROM EMP  
--SELECT 'ENAME'  
--SELECT 'SQL' + 'SERVER' + '2005'  
--SELECT 'SQL'L1, 'SERVER'L2, '2005' L3  
--SELECT ENAME + ' WORKING AS ' + JOB RESULT FROM EMP  
--**In SQL Server “+” acts as a concatenation operator  

--Math Expressions 

--USING MATHEMATICAL EXPRESSION IN SELECT STATEMENT  
--An expression which is consisting of ARITHMETIC OPERATORS like +, -, *, /, %  
	--Examples:  
		--SELECT 10 + 20 {FOR ADDITION}  
		--SELECT 10 * 20 {FOR MULTIPLICATION}  
		--SELECT 5/2 -- WILL TREAT AS INTEGER  
		--SELECT 5/2.0  
		--SELECT 10 + 5 * 6 M1, (10+5)* 6 M2  

--Q) Display ENAME, JOB, SAL and ANNUAL SALARY of all EMPLOYEES.  
	SELECT ENAME,JOB, SAL, SAL *12 ANNUALSAL FROM EMP  
--Q) Display ENAME, SAL, COMM and TOTAL SALARY of all EMPLOYEES.  
	SELECT ENAME, SAL, COMM, SAL + COMM TOTALSAL FROM EMP  

--**The above query calculates TOTAL SALARY of those EMPLOYEES who are earning COMMISSIONS  
--and all other EMPLOYEES TOTAL SALARY has been displayed as NULL values, since VALUE + NULL  
--=NULL. It is applicable for all ARITHMETIC OPERATORS.