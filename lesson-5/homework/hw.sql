1.Write a query that uses an alias to rename the ProductName column as Name in the Products table.
  SELECT ProductName AS Nom
FROM Mahsulotlar;
2.Write a query that uses an alias to rename the Customers table as Client for easier reference.
  SELECT *
FROM Mijozlar AS Mijoz;
3.Use UNION to combine results from two queries that select ProductName from Products and ProductName from Products_Discounted.
  SELECT Mahsulot nomi
FROM Mahsulotlar

UNION

SELECT Mahsulot nomi
FROM Mahsulotlar_Discounted;
4.Write a query to find the intersection of Products and Products_Discounted tables using INTERSECT.
  SELECT [Mahsulot nomi]
FROM Mahsulotlar

INTERSECT

SELECT [Mahsulot nomi]
FROM Mahsulotlar_Discounted;
5.Write a query to select distinct customer names and their corresponding Country using SELECT DISTINCT.
  SELECT DISTINCT MijozNomi, Davlat
FROM Mijozlar;
6.Write a query that uses CASE to create a conditional column that displays 'High' if Price > 1000, and 'Low' if Price <= 1000 from Products table.

  SELECT
  ProductName,
  Narx,
  CASE
    WHEN Narx > 1000 THEN 'Yuqori'
    ELSE 'Past'
  END AS NarxDarajasi
FROM Mahsulotlar;
7.Use IIF to create a column that shows 'Yes' if Stock > 100, and 'No' otherwise (Products_Discounted table, StockQuantity column).
  SELECT
  ProductName,
  Narx,
  CASE
    WHEN Narx > 1000 THEN 'Yuqori'
    ELSE 'Past'
  END AS NarxDarajasi
FROM Mahsulotlar;
8.Use UNION to combine results from two queries that select ProductName from Products and ProductName from Products_Discounted tables.
  SELECT [Mahsulot nomi] FROM Mahsulotlar
UNION
SELECT [Mahsulot nomi] FROM [Chigirmali mahsulotlar];
9.Write a query that returns the difference between the Products and Products_Discounted tables using EXCEPT.
  SELECT [Mahsulot nomi] FROM Mahsulotlar
EXCEPT
SELECT [Mahsulot nomi] FROM Mahsulotlar_Discounted;
10.Create a conditional column using IIF that shows 'Expensive' if the Price is greater than 1000, and 'Affordable' if less, from Products table.
  SELECT
  [Mahsulot nomi],
  Narx,
  IIF(Narx > 1000, 'Qimmat', 'Qimmat') AS NarxKategoriyasi
FROM Mahsulotlar;
11.Write a query to find employees in the Employees table who have either Age < 25 or Salary > 60000.
SELECT *
FROM Xodimlar
WHERE Yoshi < 25 OR IshHaqi > 60000;
12.Update the salary of an employee based on their department, increase by 10% if they work in 'HR' or EmployeeID = 5
UPDATE Xodimlar
SET IshHaqi = IshHaqi * 1.10
WHERE Bo'lim = 'HR' OR EmployeeID = 5;
13.Write a query that uses CASE to assign 'Top Tier' if SaleAmount > 500, 'Mid Tier' if SaleAmount BETWEEN 200 AND 500, and 'Low Tier' otherwise. (From Sales table)
SELECT
  Sotish_summasi,
  CASE
    WHEN Sotish_summasi > 500 THEN 'Yuqori daraja'
    WHEN Sotish_summasi BETWEEN 200 AND 500 THEN 'Oʻrta daraja'
    ELSE 'Past daraja'
  END AS Daraja
FROM Savdo;
14.Use EXCEPT to find customers' ID who have placed orders but do not have a corresponding record in the Sales table.
  SELECT MijozID
FROM Buyurtmalar
EXCEPT
SELECT MijozID
FROM Savdolar;
15.Write a query that uses a CASE statement to determine the discount percentage based on the quantity purchased. Use orders table. Result set should show customerid, quantity and discount percentage. The discount should be applied as follows: 1 item: 3% Between 1 and 3 items : 5% Otherwise: 7%
SELECT 
    MijozID,
    Miqdor,
    CASE
        WHEN Miqdor = 1 THEN 3
        WHEN Miqdor > 1 AND Miqdor <= 3 THEN 5
        ELSE 7
    END AS ChegirmaFoizi
FROM Buyurtmalar;
