1.Define and explain the purpose of BULK INSERT in SQL Server.

  BULK INSERT Talabalar
FROM 'D:\Data\talabalar.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);

2.List four file formats that can be imported into SQL Server

1). CSV (Comma-Separated Values)
Ustunlar vergul bilan ajratilgan matn fayli.

Juda keng tarqalgan va BULK INSERT, bcp, yoki OPENROWSET orqali oson import qilinadi.

Fayl kengaytmasi: .csv

2). TXT (Plain Text File)
Oddiy matn fayli, odatda ustunlar belgilangan ajratuvchi belgilar (masalan, tab \t, nuqta-vergul ;) bilan ajratilgan bo‘ladi.

Fayl kengaytmasi: .txt

3). XML (eXtensible Markup Language)
Tuziqli va o‘zaro bog‘langan ma’lumotlarni ifodalash uchun ishlatiladi.

SQL Serverda OPENXML, XML ma’lumot turi va nodes() metodi orqali import qilinadi.

Fayl kengaytmasi: .xml

4). JSON (JavaScript Object Notation)
Yengil vaznli ma’lumot almashish formati, tuzilmasi oddiy va mashhur.

SQL Serverda OPENJSON funksiyasi orqali o‘qiladi.

Fayl kengaytmasi: .json

3.Create a table Products with columns: ProductID (INT, PRIMARY KEY), ProductName (VARCHAR(50)), Price (DECIMAL(10,2)).

  CREATE TABLE PRODUCTS(ProductID INT PRIMARY KEY, ProductName VARCHAR(50), Narx DECIMAL(10,2));

4.Insert three records into the Products table using INSERT INTO.

  INSERT INTO Mahsulotlar (id, nomi, narxi, miqdori)
VALUES
    (1, 'Olma', 5000, 100),
    (2, 'Banan', 8000, 50),
    (3, 'Apelsin', 7000, 75);

5.Explain the difference between NULL and NOT NULL.

   🔹 NULL:
Means no value or unknown value.

It represents the absence of data.

You can insert a row without providing a value for a NULL column

INSERT INTO Employees (id, name, phone)
VALUES (1, 'Alice', NULL);

 NOT NULL:
Means the column must always have a value.

It cannot be left empty.

If you try to insert or update a record without a value for a NOT NULL column, you’ll get an error.

   CREATE TABLE Employees (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(20)
);
6.Add a UNIQUE constraint to the ProductName column in the Products table.

  CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) UNIQUE,
    Price DECIMAL(10, 2),
    Quantity INT
);
7.Write a comment in a SQL query explaining its purpose.
-- This query selects all products that are in stock
SELECT * FROM Products
WHERE Quantity > 0;
/* 
   This query retrieves the names and prices 
   of products that cost more than 10,000
*/
SELECT ProductName, Price
FROM Products
WHERE Price > 10000;
8.Add CategoryID column to the Products table.
  
  ALTER TABLE Products
ADD CategoryID INT;

9.Create a table Categories with a CategoryID as PRIMARY KEY and a CategoryName as UNIQUE.

  CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100) UNIQUE
);

10.Explain the purpose of the IDENTITY column in SQL Server.

  ColumnName INT IDENTITY(seed, increment)

CREATE TABLE Employees (
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(100),
    Position VARCHAR(50)
);
11.Use BULK INSERT to import data from a text file into the Products table.

  1,Olma,5000,100
2,Banan,8000,50
3,Apelsin,7000,75

CREATE TABLE Mahsulotlar (
    MahsulotID INT,
    MahsulotNomi VARCHAR(100),
    Narxi INT,
    Miqdori INT
);
BULK INSERT Mahsulotlar
FROM 'C:\Data\mahsulotlar.txt'
WITH (
    FIELDTERMINATOR = ',',   -- maydonlar orasidagi ajratuvchi
    ROWTERMINATOR = '\n',    -- qatorlar orasidagi ajratuvchi
    FIRSTROW = 1              -- nechanchi qatordan boshlab o‘qilsin
);
12.Create a FOREIGN KEY in the Products table that references the Categories table.

  ALTER TABLE Products
ADD CONSTRAINT FK_Products_Categories
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID);
13.Explain the differences between PRIMARY KEY and UNIQUE KEY.

  PRIMARY KEY
Uniqueness: Ensures that each value in the column(s) is unique.

Not NULL: Automatically does not allow NULLs — every row must have a value.

Purpose: Uniquely identifies each row in the table.

Number per table: Only one primary key allowed per table.

Index: Creates a unique clustered index by default (depends on the database system).

Composite keys: Can be made of multiple columns (composite primary key).

  14.Add a CHECK constraint to the Products table ensuring Price > 0.

ALTER TABLE Products
ADD CONSTRAINT chk_price_positive
CHECK (Price > 0);

15.Modify the Products table to add a column Stock (INT, NOT NULL).

  ALTER TABLE Products
ADD Stock INT NOT NULL DEFAULT 0;

16.Use the ISNULL function to replace NULL values in Price column with a 0.

SELECT
    ProductID,
    ProductName,
    ISNULL(Price, 0) AS Price,
    Quantity
FROM Products;

UPDATE Products
SET Price = 0
WHERE Price IS NULL;

17.Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.

  Foreign Key constraints in SQL Server are used to enforce referential integrity between tables. They ensure that the relationship between tables remains consistent by restricting the values allowed in the foreign key column(s).

Purpose of FOREIGN KEY constraints:
Maintain Data Integrity: Prevents inserting a value in a child table that does not exist in the parent table.

Establish Relationships: Defines a link between two tables (parent and child).

Prevent Orphan Records: Ensures child table records always reference existing parent table records.

Control Cascading Actions: Supports actions like ON DELETE CASCADE or ON UPDATE CASCADE to propagate changes.

How FOREIGN KEY works:
The child table has a column (or columns) designated as a foreign key.

The foreign key column references the primary key (or unique key) in the parent table.

When inserting or updating the child table, SQL Server checks that the foreign key value exists in the parent table.

If it doesn’t exist, the operation is rejected.

  CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName VARCHAR(100)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    CategoryID INT,
    CONSTRAINT FK_Products_Categories FOREIGN KEY (CategoryID)
        REFERENCES Categories(CategoryID)
);

18.Write a script to create a Customers table with a CHECK constraint ensuring Age >= 18.

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100) NOT NULL,
    Age INT,
    CONSTRAINT chk_age CHECK (Age >= 18)
);
19.Create a table with an IDENTITY column starting at 100 and incrementing by 10.

CREATE TABLE ExampleTable (
    ID INT IDENTITY(100, 10) PRIMARY KEY,
    SomeData VARCHAR(100)
);
20.Write a query to create a composite PRIMARY KEY in a new table OrderDetails.

  CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10, 2),
    PRIMARY KEY (OrderID, ProductID)
);
21.Explain the use of COALESCE and ISNULL functions for handling NULL values.

  SELECT ISNULL(Price, 0) AS Price FROM Products;

SELECT COALESCE(DiscountPrice, SalePrice, RegularPrice, 0) AS FinalPrice
FROM Products;
22.Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email.

  CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(255) UNIQUE,
    Position VARCHAR(100)
);

CREATE TABLE Employees (
    EmpID INT CONSTRAINT PK_Employees PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(255) CONSTRAINT UQ_Employees_Email UNIQUE,
    Position VARCHAR(100)
);

23.Write a query to create a FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE options.

  ALTER TABLE ChildTable
ADD CONSTRAINT FK_ChildTable_ParentTable
FOREIGN KEY (ParentID)
REFERENCES ParentTable(ParentID)
ON DELETE CASCADE
ON UPDATE CASCADE;

ChildTable has the foreign key column ParentID.

The foreign key references ParentID in ParentTable.

ON DELETE CASCADE: If a row in ParentTable is deleted, related rows in ChildTable are automatically deleted.

ON UPDATE CASCADE: If ParentID is updated in ParentTable, the changes cascade to ChildTable.




  



  



