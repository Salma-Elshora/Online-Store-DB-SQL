Create table Customers (Customer_ID int primary key  , 
Customer_Name varchar(50) not null ,
Customer_City varchar(50) not null );

Create table Products (Product_ID int primary key  ,
Product_Name varchar (50) not null , 
Product_Category varchar (30) ,
Product_Price decimal(7,2) not null );

Create table Orders (Order_ID int primary key ,
Order_Date Date not null,
Customer_ID int,
foreign key (Customer_ID) references Customers(Customer_ID) );

Create table Order_Items (Order_Item_ID int primary key  ,
Quantity int ,
Order_ID int,
Product_ID int,
foreign key (Order_ID) references Orders (Order_ID),
foreign key (Product_ID) references Products(Product_ID) );






INSERT INTO Customers (Customer_ID ,Customer_Name, Customer_City) VALUES
(1,'Ali', 'Cairo'),
(2,'Sara', 'Giza'),
(3,'Omar', 'Alex');


INSERT INTO Products (Product_ID , Product_Name, Product_Category, Product_Price) VALUES
(1,'Laptop', 'Electronics', 15000),
(2,'Phone', 'Electronics', 8000),
(3,'Shoes', 'Fashion', 1200),
(4,'Bag', 'Fashion', 700);


INSERT INTO Orders (Order_ID,Customer_ID, Order_Date) VALUES
(1,1, '2024-01-10'),
(2,2, '2024-02-15'),
(3,3, '2024-03-01');


INSERT INTO Order_Items (Order_Item_ID, Order_ID, Product_ID, Quantity) VALUES
(1, 1, 1, 1), -- Laptop
(2, 1, 4, 2), -- Bag
(3, 2, 2, 1), -- Phone
(4, 3, 3, 3), -- Shoes
(5, 3, 4, 1); -- Bag


Select * from Customers



Select * from Products

Select Customers.Customer_Name , Orders.Order_ID
from Customers
Join Orders On Orders.Customer_ID = Customers.Customer_ID



Select Order_Items.Order_ID ,Products.Product_Name ,Order_Items.Quantity
from Order_Items
join Products on Products.Product_ID = Order_Items.Product_ID


Select Customers.Customer_Name,
SUM(Products.Product_Price * Order_Items.Quantity) AS Total_Spent
from Customers
join Orders 
ON Customers.Customer_ID = Orders.Customer_ID
join Order_Items 
ON Orders.Order_ID = Order_Items.Order_ID
join Products 
ON Order_Items.Product_ID = Products.Product_ID
group by Customers.Customer_Name;


Select Distinct Customer_City from Customers


Select Product_Name from Products
where Product_ID Not In(select Product_ID from Order_Items )


Update Products 
set Product_Price = 8500
where Product_Name = 'Phone'
select * from Products










