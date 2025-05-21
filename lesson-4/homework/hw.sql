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
11.Write a query to select the top 10 products from the Products table, ordered by Price DESC.

  SELECT TOP 10 *
FROM Products
ORDER BY Price DESC;

12.Use COALESCE to return the first non-NULL value from FirstName or LastName in the Employees table.
  SELECT COALESCE(FirstName, Familiya) AS IsmYokiFamiliya
FROM Xodimlar;
13.Write a query that selects distinct Category and Price from the Products table.
  SELECT DISTINCT Turkum, Narx
FROM Mahsulotlar;
14.Write a query that filters the Employees table to show employees whose Age is either between 30 and 40 or Department = 'Marketing'.
  SELECT *
FROM Xodimlar
WHERE (Yosh BETWEEN 30 AND 40)
   OR (Departament = 'Marketing');
15.Use OFFSET-FETCH to select rows 11 to 20 from the Employees table, ordered by Salary DESC.
  SELECT *
FROM Xodimlar
ORDER BY IshHaqi DESC
OFFSET 10 ROWS
FETCH NEXT 10 ROWS ONLY;
16.Write a query to display all products with Price <= 1000 and Stock > 50, sorted by Stock in ascending order.
  SELECT *
FROM Mahsulotlar
WHERE Narx <= 1000
  AND Birja > 50
ORDER BY Birja ASC;
17.Write a query that filters the Products table for ProductName values containing the letter 'e' using LIKE.
  SELECT *
FROM Mahsulotlar
WHERE ProductName LIKE '%e%';
18.Use IN operator to filter for employees who work in either 'HR', 'IT', or 'Finance'.
  SELECT *
FROM Xodimlar
WHERE Departament IN ('HR', 'IT', 'Moliya');
19.Use ORDER BY to display a list of customers ordered by City in ascending and PostalCode in descending order.Use customers table
SELECT *
FROM Mijozlar
ORDER BY Shahar ASC, PochtaIndeksi DESC;
20.Write a query that selects the top 5 products with the highest sales, using TOP(5) and ordered by SalesAmount DESC.
  SELECT TOP(5) *
FROM Mahsulotlar
ORDER BY SalesAmount DESC;
21.Combine FirstName and LastName into one column named FullName in the Employees table. (only in select statement)
SELECT CONCAT(Ism, ' ', Familiya) AS [To'liqIsm]
FROM Xodimlar;
22.Write a query to select the distinct Category, ProductName, and Price for products that are priced above $50, using DISTINCT on three columns.
  SELECT DISTINCT Turkum, ProductName, Narx
FROM Mahsulotlar
WHERE Narx > 50;
23.Write a query that selects products whose Price is less than 10% of the average price in the Products table. (Do some research on how to find average price of all products)
  SELECT AVG(Narx) AS OrtachaNarx
FROM Mahsulotlar;
24.Use WHERE clause to filter for employees whose Age is less than 30 and who work in either the 'HR' or 'IT' department.
  SELECT *
FROM Employees
WHERE Age < 30
  AND Department IN ('HR', 'IT');
  
25.Use LIKE with wildcard to select all customers whose Email contains the domain '@gmail.com'.
  SELECT *
FROM Mijozlar
WHERE Email LIKE '%@gmail.com';
26.Write a query that uses the ALL operator to find employees whose salary is greater than all employees in the 'Sales' department.
  SELECT *
FROM Mijozlar
WHERE Email LIKE '%@gmail.com';
27.

