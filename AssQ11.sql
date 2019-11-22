-- use the customers table and find out the number of customers in each country.
select country,
count(*) as NoOfCustomers
from customers 
group by country
order by country;

