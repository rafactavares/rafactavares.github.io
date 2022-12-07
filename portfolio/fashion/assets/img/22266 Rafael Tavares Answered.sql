-- * QUESTION 1:

CREATE DATABASE multiDB;
use MultiDB;

CREATE TABLE AGENTS(
AGENT_CODE VARCHAR(4) NOT NULL,
AGENT_NAME VARCHAR(40),
WORKING_AREA VARCHAR(20),
COMISSION VARCHAR(20),
PHONE_NO VARCHAR(9) NOT NULL,
COUNRTRY VARCHAR(12) NOT NULL,
PRIMARY KEY (AGENT_CODE));

 CREATE TABLE Costumers(
CUST_CODE VARCHAR(4) NOT NULL,
CUST_NAME VARCHAR(40),
CUST_CITY VARCHAR(20),
WORKING_AREA VARCHAR(20),
CUST_COUNTRY VARCHAR(9) NOT NULL,
GRADE VARCHAR(12) NOT NULL,
OPENING_AMT VARCHAR(40),
RECEIVE_AMT VARCHAR(40),
PAYMENT_AMT VARCHAR(40),
OUTSTANDING_AMT VARCHAR(40),
PHONE_NO VARCHAR(40),
AGENT_CODE VARCHAR(40),
PRIMARY KEY (CUST_CODE));

CREATE TABLE ORDERS(
ORD_NUM VARCHAR(10) NOT NULL,
ORD_AMOUNT VARCHAR(40),
ADVANCE_AMOUNT VARCHAR(20),
ORD_DATE VARCHAR(20),
CUST_CODE VARCHAR(9) NOT NULL,
ORD_DESCRIPTION VARCHAR(12) NOT NULL,
PRIMARY KEY (ORD_NUM));

--  * QUESTION 2:
insert into agents values ('A007', 'Ramasundar', 'Bangalore', 0.15, '077-25814763', '');
Insert into COSTUMERS values ('C00013', 'Holmes', 'London', 'London', 'UK', '2', '6000.00', '5000.00', '7000.00', '4000.00', 'BBBBBBB', 'A003');
insert into ORDERS values ('200100', '1000.00', '600.00', '2022-01-10', 'C00013', 'SOD');

SET SQL_SAFE_UPDATES = 0;

// QUESTION 3:
update agents
set comission = '0.13'
where AGENT_NAME ='Alford';

alter table agents
add JOB_POS varchar(40) not null;

update agents
set POSITION = 'Manager'
WHERE AGENT_NAME = 'Alford';

update agents
set POSITION = 'Manager'
WHERE AGENT_NAME = 'Lucida';

delete from agents
where AGENT_CODE = 'A013';


-- * Quesiton 3:
-- I
select * from costumers, agents where costumers.AGENT_CODE = agents.AGENT_CODE;

-- II


-- III
select agents.agent_code, agents.agent_name, comission as "comission%", costumers.payment_amt*comission as "Comission" from costumers, agents where costumers.AGENT_CODE = agents.AGENT_CODE;

-- IV


-- v 


-- VI
select * from costumers, agents where costumers.CUST_CITY = agents.WORKING_AREA;

-- VII

-- VIII