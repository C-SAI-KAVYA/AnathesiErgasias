-- Select 1/0 gives a division by zero error. 
-- use nullif function to prevent this divison by zero error. 
-- Write a query to demonstrate this.
select 1/nullif(5,0) as result