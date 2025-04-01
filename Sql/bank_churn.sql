Create Database bank_churn;
use bank_churn;
create table customers (
	CustomerID INT PRIMARY KEY,
    Age INT,
    Gender VARCHAR(10),
    Balance FLOAT,
    NumOfProducts INT,
    CreditScore INT,
    IsActiveMember BOOLEAN,
    Tenure INT,
    EstimatedSalary FLOAT,
    Geography VARCHAR(50),
    HasCrCard BOOLEAN,
    Exited BOOLEAN);
show tables;
Drop Table customers;
create table customers (
	CustomerID INT PRIMARY KEY,
    Surname VARCHAR(50),
    CreditScore INT,
    Geography VARCHAR(50),
    Gender VARCHAR(10),
    Age INT,
    Tenure INT,
	Balance FLOAT,
    NumOfProducts INT,
    HasCrCard BOOLEAN,
    IsActiveMember BOOLEAN,
    EstimatedSalary FLOAT,
    Exited BOOLEAN);
Load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Bank_Churn.csv'
into table customers
Fields terminated by ','
enclosed by '\"'
lines terminated by '\n'
Ignore 1 rows
(CustomerID,Surname,CreditScore,Geography,Gender,Age,Tenure,Balance,NumOfProducts,HasCrCard,IsActiveMember,EstimatedSalary,Exited);