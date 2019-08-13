select * from customers;

select distinct Country from customers;

select * from customers where CustomerID like 'bl%';

select * from orders limit 100;

select * from customers where PostalCode in (1010, 3012, 12209, 05023);

select * from orders where ShipRegion is not null;

select * from customers order by Country, City;

insert into customers(CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax)
values('SOLAR', 'Solar Alliance', 'Maximos Legun', 'Captain', 'The Bridge', 'SAS Bastille', null, 'DG421b', 'Gorslieb Sector', '8a-4b20-2f15', '2d-9c91-8ba1');

update orders set Region = 'EuroZone' where Country = 'France';

delete from northwind.`order details` where Quantity = 1;

select avg(Quantity), min(Quantity), max(Quantity) from `order details`;

select OrderID, avg(Quantity), min(Quantity), max(Quantity) from `order details` group by OrderID;

select CustomerID from orders where OrderID=10290;

select * from orders inner join customers on orders.CustomerID = customers.CustomerID;
select * from orders left join customers on orders.CustomerID = customers.CustomerID;
select * from orders right join customers on orders.CustomerID = customers.CustomerID;

select FirstName from employees where ReportsTo is null;

select FirstName from employees where ReportsTo = 2;