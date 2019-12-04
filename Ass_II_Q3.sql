--  Write a query to return the records of those product codes whose sales price is less than MSRP. Use products and orderdetails table
-- The columns to be displayed are Ordernumber, productname, msrp, priceeach.

select Ordernumber, productName, msrp, priceEach as 'salesPrice/priceEach'
from orderdetails cross join products
on orderdetails.priceEach < products.MSRP
group by OrderNumber