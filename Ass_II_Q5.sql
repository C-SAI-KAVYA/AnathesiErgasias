 -- write a query to find employees who are not in charge of any customers using right join.
 
 select concat(firstName,lastname) as employees, customernumber
 from customers
 right join employees on
 salesRepEmployeeNumber = employeeNumber
 -- where customerNumber is null
 order by employees;