--  Write a query to find customers who does not have any orders. Use Customers and orders table. The output display should contain
-- Customer number and customer name from customers table, oder number and status from orders table

select customers.customernumber, customername, ordernumber, status
from customers cross join orders
on orders.status = null