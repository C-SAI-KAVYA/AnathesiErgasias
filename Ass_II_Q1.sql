-- Write a query to get ProductCode, productname and textdescripion of productlines. use products and productlines table
select productcode, productname, textdescription
from products cross join productlines