--Creation of databases
	--System data bases 
	--User defined databases 
	--Sample databases 

Create database SQL_Practice

CREATE DATABASE [SQL_Practice]
  
( NAME = N'SQL_Practice', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL17.AITSOLUTIONS_DEV\MSSQL\DATA\SQL_Practice.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SQL_Practice_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL17.AITSOLUTIONS_DEV\MSSQL\DATA\SQL_Practice_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
