-- Write a query to return order  number, status and total sales for each order. use orders and orderdetails tables;

Select orders.orderNumber, orders.status, Sum(quantityOrdered*priceEach) as 'TotalSales'
from orders cross join orderdetails
on orderdetails.orderNumber=orders.orderNumber
group by orders.orderNumber;

