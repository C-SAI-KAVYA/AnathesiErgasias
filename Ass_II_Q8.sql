-- Create a copy of the Customers table. In this copy table, you will find some customers do not have a Sales rep employee. In other words [salesRepEmployeeNumber] is null. 
-- Now do the following updates:
-- Update [salesRepEmployeeNumber] to 1056 for customers who has "imports" in their name
-- Update [salesRepEmployeeNumber] to 1000 for customemr who has "Co" or "inc" in their names
-- For the rest of the cusotmers, update the [salesRepEmployeeNumber] to 1001.

create table customerscopy
select * from customers

set sql_safe_updates = 0 ;-- unlocking the safety mode

Update customerscopy
set salesRepEmployeeNumber = 1056
where customerName like '%imports%';

Update customerscopy
set salesRepEmployeeNumber = 1000
where customerName like '%Co%' or customerName like '%Inc%';

update customerscopy 
set salesRepEmployeeNumber = 1001
where customerName not like '%imports%' and customerName not like '%Co%' and customerName not like '%inc%';