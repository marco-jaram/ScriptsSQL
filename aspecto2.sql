CREATE DATABASE bd_costum;
USE bd_costum;

-- Create CUSTOMERS table
CREATE TABLE CUSTOMERS (
  CustomerID INT PRIMARY KEY,
  CustomerName VARCHAR(100)
);

-- Create PRODUCT_INFORMATION table
CREATE TABLE PRODUCT_INFORMATION (
  ProductID INT PRIMARY KEY,
  ProductName VARCHAR(100)
);

-- Create WAREHOUSES table
CREATE TABLE WAREHOUSES (
  WarehouseID INT PRIMARY KEY,
  WarehouseName VARCHAR(100)
);

-- Create ORDERS table
CREATE TABLE ORDERS (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  OrderDate DATE,
  FOREIGN KEY (CustomerID) REFERENCES CUSTOMERS(CustomerID)
);

-- Create ORDER_ITEMS table
CREATE TABLE ORDER_ITEMS (
  OrderItemID INT PRIMARY KEY,
  OrderID INT,
  ProductID INT,
  Quantity INT,
  FOREIGN KEY (OrderID) REFERENCES ORDERS(OrderID),
  FOREIGN KEY (ProductID) REFERENCES PRODUCT_INFORMATION(ProductID)
);

-- Create PRODUCT_DESCRIPTIONS table
CREATE TABLE PRODUCT_DESCRIPTIONS (
  DescriptionID INT PRIMARY KEY,
  ProductID INT,
  Language VARCHAR(50),
  Description VARCHAR(200),
  FOREIGN KEY (ProductID) REFERENCES PRODUCT_INFORMATION(ProductID)
);

-- Create INVENTORIES table
CREATE TABLE INVENTORIES (
  InventoryID INT PRIMARY KEY,
  ProductID INT,
  WarehouseID INT,
  Quantity INT,
  FOREIGN KEY (ProductID) REFERENCES PRODUCT_INFORMATION(ProductID),
  FOREIGN KEY (WarehouseID) REFERENCES WAREHOUSES(WarehouseID)
);

