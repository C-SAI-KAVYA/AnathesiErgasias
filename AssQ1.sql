-- create database named vehicle_inventory
create database vehicle_inventory;

-- create table named Inventory_details which is housed by vehicle_inventory database with following columns
create table Inventory_details
(serial_number int, Vehicle_name varchar(50), purchase_date date, Onroad_price decimal(8,2));

--  Enter any 5 vehicle's data of your choice into this
insert into Inventory_details
values(1,'Harley Davidson Ultimate Chopper', '2003-01-06', 650000.00),(2,'Alpine Renault 1300', '2003-01-09', 789956.20),
(3,'Moto Guzzi 1100i', '2004-03-11', 996234.68),(4,'Ford Mustang', '2004-09-01', 895673.45),
(5,'Ferrari Enzo', '2005-02-28', 789999.99);




