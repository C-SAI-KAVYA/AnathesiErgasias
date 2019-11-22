-- use orderdetails table. 
-- Write a query to display orders whose total sales price is greater than 5000 and contains items more than 500.
select orderNumber, sum(quantityOrdered) as 'items', Sum(priceEach) as 'salesPrice' from orderdetails
group by orderNumber
having sum(priceEach)>500 and sum(quantityOrdered) > 500


