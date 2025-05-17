1.Write a query to select the top 5 employees from the Employees table.
SELECT TOP 5 *
FROM Employees;
2.Use SELECT DISTINCT to select unique Category values from the Products table.
  SELECT DISTINCT Category
FROM Products;
3.Write a query that filters the Products table to show products with Price > 100.
SELECT *
FROM Products
WHERE Price > 100;
4.Write a query to select all Customers whose FirstName start with 'A' using the LIKE operator.
  SELECT *
FROM Customers
WHERE FirstName LIKE 'A%';
5.Order the results of a Products table by Price in ascending order.
  SELECT *
FROM Products
ORDER BY Price ASC;
6.Write a query that uses the WHERE clause to filter for employees with Salary >= 60000 and Department = 'HR'.
  SELECT *
FROM Employees
WHERE Salary >= 60000 AND Department = 'HR';
7.Use ISNULL to replace NULL values in the Email column with the text "noemail@example.com".From Employees table
SELECT 
    EmployeeID,
    FirstName,
    LastName,
    ISNULL(Email, 'noemail@example.com') AS Email,
    Salary,
    Department
FROM Employees;
8.Write a query that shows all products with Price BETWEEN 50 AND 100.

SELECT *
FROM Products
WHERE Price BETWEEN 50 AND 100;
9.Use SELECT DISTINCT on two columns (Category and ProductName) in the Products table.
  SELECT DISTINCT Category, ProductName
FROM Products;
10.Ikki ustunda SELECT DISTINCT dan so'ng (Kategoriya va Mahsulot nomi) Natijalarni mahsulot nomi bo'yicha kamayish tartibida tartiblang.
  SELECT DISTINCT Category, ProductName
FROM Products
ORDER BY ProductName DESC;

  

