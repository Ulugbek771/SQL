1.Using Products table, find the total number of products available in each category.
  select category,
           count(*) as Product_name
  from Products
  Group by category;
2.Using Products table, get the average price of products in the 'Electronics' category.
SELECT AVG(Price) as Avg_price
  from Products
  Where category = 'Electronics';
3.Using Customers table, list all customers from cities that start with 'L'.
  SELECT * FROM Customers
   WHERE city LIKE 'L%';
4.Using Products table, get all product names that end with 'er'.
 SELECT * FROM Products
   WHERE Product_name LIKE '%er';
5.Using Customers table, list all customers from countries ending in 'A'.
  SELECT * FROM CUSTOMERS
  WHERE Country LIKE '%A';
6.Using Products table, show the highest price among all products.
  SELECT  
         MAX(Product_Price)
  FROM Products;
7.Using Products table, label stock as 'Low Stock' if quantity < 30, else 'Sufficient'.
  SELECT product_name,
       quantity,
       CASE 
           WHEN quantity < 30 THEN 'Kam'
           ELSE 'Etarli'
       END AS zaxira_holati
FROM products;
8.Using Customers table, find the total number of customers in each country.
SELECT Country
         COUNT(*) AS CustomerID
      from Customers
      Group by Country;
9.Using Orders table, find the minimum and maximum quantity ordered.
  SELECT 
    MIN(quantity) AS min_quantity,
    MAX(quantity) AS max_quantity
FROM Orders;
10.Using Orders and Invoices tables, list customer IDs who placed orders in 2023 January to find those who did not have invoices.
  SELECT DISTINCT o.customer_id
FROM Orders o
LEFT JOIN Invoices i ON o.order_id = i.order_id
WHERE 
    o.order_date >= '2023-01-01' AND o.order_date < '2023-02-01'
    AND i.order_id IS NULL;
11.Using Products and Products_Discounted table, Combine all product names from Products and Products_Discounted including duplicates.
  SELECT product_name FROM Products
UNION ALL
SELECT product_name FROM DiscountedProducts;
12.Using Products and Products_Discounted table, Combine all product names from Products and Products_Discounted without duplicates.
  SELECT product_name FROM Products
UNION ALL
SELECT product_name FROM DiscountedProducts;
13.Using Orders table, find the average order amount by year.
  SELECT 
    YEAR(order_date) AS yil,
    AVG(quantity) AS o'rtacha_miqdor
FROM Buyurtmalar
GROUP BY YEAR(order_date)
ORDER BY yil;
14.Using Products table, group products based on price: 'Low' (<100), 'Mid' (100-500), 'High' (>500). Return productname and pricegroup.
  SELECT 
    product_name,
    price,
    CASE 
        WHEN price < 100 THEN 'Past'
        WHEN price BETWEEN 100 AND 500 THEN 'O‘rta'
        ELSE 'Yuqori'
    END AS narx_guruhi
FROM Products;
15.Using City_Population table, use Pivot to show values of Year column in seperate columns ([2012], [2013]) and copy results to a new Population_Each_Year table.
  SELECT *
INTO Aholi_yillik_yil
FROM (
    SELECT Shahar, Yil, Aholi
    FROM Shahar_Aholisi
) AS manba
PIVOT (
    SUM(Aholi)
    FOR Yil IN ([2012], [2013])
) AS pivot_natija;
16.Using Sales table, find total sales per product Id.
  SELECT 
    product_id,
    SUM(sale_amount) AS jami_sotuv
FROM Sales
GROUP BY product_id
ORDER BY product_id;
17.Using Products table, use wildcard to find products that contain 'oo' in the name. Return productname.
  SELECT product_name
FROM Products
WHERE product_name LIKE '%oo%';
18.Using City_Population table, use Pivot to show values of City column in seperate columns (Bektemir, Chilonzor, Yakkasaroy) and copy results to a new Population_Each_City table.
  SELECT *
INTO Population_Each_City
FROM (
    SELECT Year, City, Population
    FROM City_Population
) AS source_data
PIVOT (
    SUM(Population)
    FOR City IN ([Bektemir], [Chilonzor], [Yakkasaroy])
) AS pivot_result;
19.Using Invoices table, show top 3 customers with the highest total invoice amount. Return CustomerID and Totalspent.
  SELECT TOP 3
    CustomerID,
    SUM(TotalSent) AS TotalSpent
FROM Invoices
GROUP BY CustomerID
ORDER BY TotalSpent DESC;
20.Transform Population_Each_Year table to its original format (City_Population).
  SELECT
    Year,
    City,
    Population
FROM
    Population_Each_Year
UNPIVOT
(
    Population FOR City IN ([Bektemir], [Chilonzor], [Yakkasaroy])
) AS unpivot_result;
21.Using Products and Sales tables, list product names and the number of times each has been sold. (Research for Joins)
  SELECT 
    p.product_name,
    COUNT(s.product_id) AS times_sold
FROM Products p
LEFT JOIN Sales s ON p.product_id = s.product_id
GROUP BY p.product_name
ORDER BY times_sold DESC;
22.Transform Population_Each_City table to its original format (City_Population).
SELECT
    Year,
    City,
    Population
FROM
    Population_Each_City
UNPIVOT
(
    Population FOR City IN ([Bektemir], [Chilonzor], [Yakkasaroy])
) AS UnpivotResult;

  
       

