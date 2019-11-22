-- 1 Find all employees whose job titles are 'Sales Rep'
SELECT * FROM classicmodels.employees
where jobTitle = 'Sales Rep';

-- 2 find employees whose job titles are Sales Rep and office codes are 1
SELECT * FROM classicmodels.employees
where jobTitle = 'Sales Rep' and officeCode = 1;

-- 3 find employees whose job title is Sales Rep or employees who locate the office with office code 1
SELECT * FROM classicmodels.employees
where jobTitle = 'Sales Rep' or officeCode = 1;

-- 4 find employees whose last names end with the string 'son'
select * from classicmodels.employees
where lastName Like '%son';

-- 5 find employees who locate in offices whose office code is from 1 to 3
select * 
from classicmodels.employees
where officeCode BETWEEN 1 and 3
order by officeCode;

-- 6 Find employee who do not report to anyone else in the office
select *
from classicmodels.employees
where reportsTo is null
order by reportsTo;

-- 7 Find employees whose office code is greater than 5
select *
from classicmodels.employees
where officeCode>5
order by officeCode;

-- 8 find customers who do not have a sales representative
select *
from classicmodels.employees
where JobTitle != 'Sales Rep'
order by reportsTo;

-- 9 You have a repository to store contact number of your colleagues and you have been provided the following set of queries to create the data. 
-- Run it as it is. 
-- Note: Boys and Girls, Contact numbers are imaginary. 
-- Do not get into the excitement mode of checking on these numbers!!
    CREATE TABLE IF NOT EXISTS contacts (
    contactid INT AUTO_INCREMENT PRIMARY KEY,
    contactname VARCHAR(20) NOT NULL,
    Mobilephone VARCHAR(15),
    homephone VARCHAR(15))

INSERT INTO contacts(contactname,Mobilephone,homephone)
VALUES('Rohan Kumar','9456781245',NULL), ('Afzal khan',NULL,'0802345671'), ('Priyali','9678903452','0821345678'),   ('Riyal Jain',NULL,'0804567812'),
      ('Deepika Sharma', '9870123879',NULL);

-- a. Notice that some of them does not have a Mobile number. 
	-- 	So it would be good if you can get their homephone number. 
		-- That is if mobilephone is null, then it should displayhomephone, So write a query to get names and phones of all contacts
select contactname as 'NAME',if(mobilephone is not null ,mobilephone,homephone) as contact
from contacts;




 




