1.Create a table Employees with columns: EmpID INT, Name (VARCHAR(50)), and Salary (DECIMAL(10,2)):

  CREATE TABLE Employees (
    EmpID INT,
    Name VARCHAR(50),
    Salary DECIMAL(10, 2)
);


2.Insert three records into the Employees table using different INSERT INTO approaches (single-row insert and multiple-row insert).


INSERT INTO Employees (EmpID, Name, Salary) VALUES (1, 'ANNA', 75000.00)

INSERT INTO Employees (EmpID, Name, Salary) VALUES (10, 'DEVID', 10000.00)

INSERT INTO Employees (EmpID, Name, Salary) VALUES (15, 'JOHN', 16000.00)
  ;

3.Update the Salary of an employee to 7000 where EmpID = 1

UPDATE Employees
SET Salary = 7000.00
WHERE EmpID= 1
  ;

4.Delete a record from the Employees table where EmpID = 2.

DELETE FROM Employees
WHERE EmpID = 10
  ;

5.Give a brief definition for difference between DELETE, TRUNCATE, and DROP.

  Here’s a brief definition of the difference between DELETE, TRUNCATE, and DROP in SQL:

DELETE: Removes specific rows from a table based on a WHERE clause. It can be rolled back (transactional) and triggers are fired.

TRUNCATE: Removes all rows from a table quickly and efficiently. It cannot be rolled back in some systems and does not fire triggers. Table structure remains.

DROP: Completely removes a table (or other database object) from the database. It deletes the data and the structure. Cannot be rolled back

6.Modify the Name column in the Employees table to VARCHAR(100).

  ALTER TABLE Employees
MODIFY Name VARCHAR(100);

-- For SQL Server
ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(100);

7.Add a new column Department (VARCHAR(50)) to the Employees table.

  ALTER TABLE Employees
ADD Department VARCHAR(50);

8.Change the data type of the Salary column to FLOAT.

  ALTER TABLE Employees
ALTER COLUMN Salary FLOAT;

9.Create another table Departments with columns DepartmentID (INT, PRIMARY KEY) and DepartmentName (VARCHAR(50)).

  CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

10.Remove all records from the Employees table without deleting its structure.

  TRUNCATE TABLE Employees;

DELETE FROM Employees;

11.Insert five records into the Departments table using INSERT INTO SELECT method(you can write anything you want as data)

INSERT INTO Departments (DepartmentID, DepartmentName)
SELECT * FROM (
    SELECT 1 AS DepartmentID, 'Human Resources' AS DepartmentName UNION ALL
    SELECT 2, 'Finance' UNION ALL
    SELECT 3, 'Engineering' UNION ALL
    SELECT 4, 'Marketing' UNION ALL
    SELECT 5, 'Sales'
) AS dept_data;

12.Update the Department of all employees where Salary > 5000 to 'Management'.

  UPDATE Employees
SET Department = 'Management'
WHERE Salary > 5000;


13.Write a query that removes all employees but keeps the table structure intact.

    TRUNCATE TABLE Employees;

DELETE FROM Employees;

14.Drop the Department column from the Employees table.

  ALTER TABLE Employees
DROP COLUMN Department;

15.Rename the Employees table to StaffMembers using SQL commands.

ALTER TABLE Employees
RENAME TO StaffMembers;

16.Write a query to completely remove the Departments table from the database.

  DROP TABLE Departments;

17.Create a table named Products with at least 5 columns, including: ProductID (Primary Key), ProductName (VARCHAR), Category (VARCHAR), Price (DECIMAL)

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

18.Add a CHECK constraint to ensure Price is always greater than 0.

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    CHECK (Price > 0)
);

19.Modify the table to add a StockQuantity column with a DEFAULT value of 50.

ALTER TABLE Products
ADD StockQuantity INT DEFAULT 50;

20.Rename Category to ProductCategory

ALTER TABLE Products
RENAME COLUMN Category TO ProductCategory;

21.Insert 5 records into the Products table using standard INSERT INTO queries.

  INSERT INTO Products (ProductID, ProductName, ProductCategory, Price, StockQuantity)
VALUES
(1, 'Laptop', 'Electronics', 799.99, 50),
(2, 'Smartphone', 'Electronics', 599.99, 50),
(3, 'Coffee Maker', 'Appliances', 49.99, 50),
(4, 'Desk Chair', 'Furniture', 120.00, 50),
(5, 'Headphones', 'Accessories', 89.99, 50);

22.Use SELECT INTO to create a backup table called Products_Backup containing all Products data.

  SELECT * INTO Products_Backup
FROM Products;

23.Rename the Products table to Inventory.

  ALTER TABLE Products
RENAME TO Inventory;

24.Alter the Inventory table to change the data type of Price from DECIMAL(10,2) to FLOAT.

  ALTER TABLE Inventory
ALTER COLUMN Price TYPE FLOAT;

25.Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5 to Inventory table.

  ALTER TABLE Inventory
ADD ProductCode INT IDENTITY(1000, 5);








