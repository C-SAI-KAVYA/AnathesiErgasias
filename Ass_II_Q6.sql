
-- Now that you are comforatble joining two table try to extrapolate the concpet to join three tables for the question below:

-- Write a query to join the three tables Orders, orderdetails, Products. Use inner join  The output should contasin the following columns
-- orderNumber,
--  orderDate,
--    orderLineNumber,
--    productName,
--    quantityOrdered,
--    priceEach

select orders.orderNumber, orders.orderDate, orderdetails.orderLineNumber, products.productName, orderdetails.quantityOrdered, orderdetails.priceEach
from orders inner join orderdetails,products