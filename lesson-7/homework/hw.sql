1.Write a query to find the minimum (MIN) price of a product in the Products table.
SELECT MIN(Price) As MinimalPrice 
from Products;
2.Write a query to find the maximum (MAX) Salary from the Employees table.
  CELECT MAX(EmplySalary) AS MaxSalary
from Employees;
3.Write a query to count the number of rows in the Customers table.
  SELECT COUNT(CustID) As CustomerID
  FROM CUSTOMERS;
4.Write a query to count the number of unique product categories from the Products table.
  SELECT COUNT(DISTINCT Category) AS UniqueCategoryCount
FROM Products;
5.Write a query to find the total sales amount for the product with id 7 in the Sales table.
  SELECT SUM(miqdor) AS umumiy_sotilgan
FROM Sotish
WHERE mahsulot_id = 7;
6.Write a query to calculate the average age of employees in the Employees table.
  SELECT AVG(AGE) avarage_age
  from Employees;
7.Write a query to count the number of employees in each department.
  SELECT department_name, count(*) as employee_count
  from Employees
  Group by department_name;
8.Write a query to show the minimum and maximum Price of products grouped by Category. Use products table.
  select category,
        min(price) as min_price
        max(price) as maz_price
   from Products
   Group by category;
9.Write a query to calculate the total sales per Customer in the Sales table.
  select Customer_ID, SUM(amount) as total_sales
  from Sales
  Group by Customer_ID;
10.Write a query to filter departments having more than 5 employees from the Employees table.(DeptID is enough, if you don't have DeptName).
  SELECT DeptName, COUNT(*) AS xodim_soni
FROM xodimlar
GROUP BY DeptName
HAVING COUNT(*) > 5;
11.Write a query to calculate the total sales and average sales for each product category from the Sales table.
  SELECT category, 
       SUM(amount) AS total_sales, 
       AVG(amount) AS average_sales
FROM Sales
GROUP BY category;
12.Write a query to count the number of employees from the Department HR.
  SELECT COUNT(*) AS hr_employee_count
FROM Employees
WHERE department = 'HR';
13.Write a query that finds the highest and lowest Salary by department in the Employees table.(DeptID is enough, if you don't have DeptName).
  SELECT DeptID,
       MAX(Salary) AS Highest_Salary,
       MIN(Salary) AS Lowest_Salary
FROM Employees
GROUP BY DeptID;
14.Write a query to calculate the average salary per Department.(DeptID is enough, if you don't have DeptName).
  SELECT DeptID,
       AVG(Salary) AS average_salary
FROM Employees
GROUP BY DeptID;
15.Write a query to show the AVG salary and COUNT(*) of employees working in each department.(DeptID is enough, if you don't have DeptName).
  SELECT DeptID,
       AVG(Salary) AS average_salary,
       COUNT(*) AS employee_count
FROM Employees
GROUP BY DeptID;
16.Write a query to filter product categories with an average price greater than 400.
SELECT category
FROM products
GROUP BY category
HAVING AVG(price) > 400;
17.Write a query that calculates the total sales for each year in the Sales table.
  SELECT YEAR(sale_date) AS sale_year,
       SUM(amount) AS total_sales
FROM Sales
GROUP BY YEAR(sale_date)
ORDER BY sale_year;
18.Write a query to show the list of customers who placed at least 3 orders.
  SELECT customer_id
FROM Orders
GROUP BY customer_id
HAVING COUNT(*) >= 3;
19.Write a query to filter out Departments with average salary expenses greater than 60000.(DeptID is enough, if you don't have DeptName).
  SELECT DeptID
FROM Employees
GROUP BY DeptID
HAVING AVG(Salary) > 60000;
20.Write a query that shows the average price for each product category, and then filter categories with an average price greater than 150.
  SELECT category, 
       AVG(price) AS average_price
FROM products
GROUP BY category
HAVING AVG(price) > 150;
21.Write a query to calculate the total sales for each Customer, then filter the results to include only Customers with total sales over 1500.
  SELECT customer_id, 
       SUM(amount) AS total_sales
FROM Sales
GROUP BY customer_id
HAVING SUM(amount) > 1500;
22.Write a query to find the total and average salary of employees in each department, and filter the output to include only departments with an average salary greater than 65000.
  SELECT DeptID,
       SUM(Salary) AS total_salary,
       AVG(Salary) AS average_salary
FROM Employees
GROUP BY DeptID
HAVING AVG(Salary) > 65000;
23.Write a query to find total amount for the orders which weights more than $50 for each customer along with their least purchases.(least amount might be lower than 50, use tsql2012.sales.orders table,freight col, ask ur assistant to give the TSQL2012 database).
  SELECT 
    CustomerID,
    SUM(CASE WHEN Freight > 50 THEN TotalDue ELSE 0 END) AS TotalAmount_Over50,
    MIN(TotalDue) AS LeastPurchase
FROM tsql2012.sales.orders
GROUP BY CustomerID;
24.Write a query that calculates the total sales and counts unique products sold in each month of each year, and then filter the months with at least 2 products sold.(Orders)
  SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_sales,
    COUNT(DISTINCT product_id) AS unique_products_sold
FROM Orders
GROUP BY YEAR(order_date), MONTH(order_date)
HAVING COUNT(DISTINCT product_id) >= 2
ORDER BY order_year, order_month;
25.Write a query to find the MIN and MAX order quantity per Year. From orders table. Necessary tables:
  SELECT 
    YEAR(order_date) AS order_year,
    MIN(quantity) AS min_order_quantity,
    MAX(quantity) AS max_order_quantity
FROM orders
GROUP BY YEAR(order_date)
ORDER BY order_year;


  
  
