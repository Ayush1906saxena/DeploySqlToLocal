-- Create the Customers table
CREATE TABLE Customers (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100)
);

-- Insert data into the Customers table
INSERT INTO Customers (ID, Name, Email)
VALUES (1, 'John Doe', 'johndoe@example.com'),
       (2, 'Jane Smith', 'janesmith@example.com'),
       (3, 'Alice Johnson', 'alicejohnson@example.com'),
       (4, 'Bob Williams', 'bobwilliams@example.com');

-- Create the Orders table
CREATE TABLE Orders (
    ID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50),
    Quantity INT
);

-- Insert data into the Orders table
INSERT INTO Orders (ID, CustomerID, Product, Quantity)
VALUES (1, 1, 'Widget A', 10),
       (2, 1, 'Widget B', 5),
       (3, 2, 'Widget C', 3),
       (4, 3, 'Widget A', 2),
       (5, 4, 'Widget B', 7);

-- Create the Products table
CREATE TABLE Products (
    ID INT PRIMARY KEY,
    Name VARCHAR(50),
    Price DECIMAL(10, 2)
);

-- Insert data into the Products table
INSERT INTO Products (ID, Name, Price)
VALUES (1, 'Widget A', 10.99),
       (2, 'Widget B', 15.99),
       (3, 'Widget C', 8.99),
       (4, 'Widget D', 12.99);

-- Create the OrderItems table
CREATE TABLE OrderItems (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID)
);

-- Insert data into the OrderItems table
INSERT INTO OrderItems (OrderID, ProductID, Quantity)
VALUES (1, 1, 2),
       (1, 2, 3),
       (2, 1, 1),
       (2, 3, 2),
       (3, 4, 5);
