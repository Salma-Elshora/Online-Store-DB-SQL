# Online-Store-DB-SQL

##  Project Overview
This project represents a simple Order Management System database.

## Database Design
The system consists of four main tables:
- Customers
- Products
- Orders
- Order_Items

     ### Customers Table
     This table stores information about customers.
    
    Attributes:
    
    Customer_ID → Primary Key (unique for each customer)
    Customer_Name → Customer name (cannot be NULL)
    Customer_City → City of the customer
    
    Purpose:
    To store all customer-related data.
    
    
    
     ### Products Table
     This table stores product information.
    
    Attributes:
    
    Product_ID → Primary Key
    Product_Name → Name of the product
    Product_Category → Category (optional)
    Product_Price → Price (required)
    
    Purpose:
    To store all available products.
    
    
    
    ### Orders Table
    This table represents customer orders.
    
    Attributes:
    
    Order_ID → Primary Key
    Order_Date → Date of the order
    Customer_ID → Foreign Key referencing Customers
    
    Purpose:
    Each order belongs to one customer.
    
    
    
    ### Order_Items Table
    This table stores the details of each order.
    
    Attributes:
    
    Order_Item_ID → Primary Key
    Order_ID → Foreign Key referencing Orders
    Product_ID → Foreign Key referencing Products
    Quantity → Number of items

   Purpose:
  To solve the Many-to-Many relationship between Orders and Products


##  Relationships
-One-to-Many between Customers and Orders
-One-to-Many between Orders and Order_Items
-One-to-Many between Products and Order_Items
-A Many-to-Many relationship exists between Orders and Products and is resolved using the Order_Items table.



## DDL (Create Tables)
CREATE TABLE Customers (
    Customer_ID INT PRIMARY KEY,
    Customer_Name VARCHAR(50) NOT NULL,
    Customer_City VARCHAR(50) NOT NULL
);

CREATE TABLE Orders (
    Order_ID INT PRIMARY KEY,
    Order_Date DATE NOT NULL,
    Customer_ID INT,
    FOREIGN KEY (Customer_ID) REFERENCES Customers(Customer_ID)
);

*And Same logic is applied to the entire tables*
ِىي 


## DML Example
INSERT INTO Customers (Customer_ID, Customer_Name, Customer_City)
VALUES (1, 'Ali', 'Cairo');


## Full SQL Script##
The full SQL implementation is available in the project files.

  
