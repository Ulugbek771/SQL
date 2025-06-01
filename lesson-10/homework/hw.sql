1.Using the Employees and Departments tables, write a query to return the names and salaries of employees whose salary is greater than 50000, along with their department names.
🔁 Expected Columns: EmployeeName, Salary, DepartmentName
 select 
       E.EmployeeName,
       E.Salary,
       D.DepartmentName
from Employees E
  inner join
  Departments D on E.DepartmentId = D.DepartmentID
where E.Salary > 50000;
 2.Using the Customers and Orders tables, write a query to display customer names and order dates for orders placed in the year 2023.
🔁 Expected Columns: FirstName, LastName, OrderDate
  select 
       C.FirstName,
       C.LastName,
       O.OrderDate
  from Customers C
  inner join
  Orders O on C.CustomerID = C.CustomerID
  Where year(O.OrderDate) = 2023;
  3.Using the Employees and Departments tables, write a query to show all employees along with their department names. Include employees who do not belong to any department.
🔁 Expected Columns: EmployeeName, DepartmentName
  select 
       E.EmployeeName,
       D.DepartmentName
  from Employees E
  inner join 
  Departments D on E.DepartmentID = D.DepartmentID;
  4.Using the Products and Suppliers tables, write a query to list all suppliers and the products they supply. Show suppliers even if they don’t supply any product.
🔁 Expected Columns: SupplierName, ProductName
  select 
      S.SupplierName,
      P.ProductName
  from Products P
  inner join
  Suppliers S on S.SupplierID = P.SupplierID;
  5.Using the Orders and Payments tables, write a query to return all orders and their corresponding payments. Include orders without payments and payments not linked to any order.
🔁 Expected Columns: OrderID, OrderDate, PaymentDate, Amount
  select
       O.OrderID,
       O.OrderDate,
       P.PaymentDate,
       P.Amount
  from Orders
  full outer join Payments
  on O.OrderID = P.OrderID;
  6.Using the Employees table, write a query to show each employees name along with the name of their manager.
🔁 Expected Columns: EmployeeName, ManagerName
  select 
       E.EmployeeName,
       M.MenagerName as ManagerName
  from Employees E
  left join Employees M
  on E.ManagerID = M.EmployeeID;
  7.Using the Students, Courses, and Enrollments tables, write a query to list the names of students who are enrolled in the course named 'Math 101'.
🔁 Expected Columns: StudentName, CourseName
  select 
       S.StudentName,
       C.CourseName,
  from Enrollments E
  join Students S on E.StudentID = S.StudentID
  join C.Courses on C.CourseID = S.CourseID
  where C.CourseName = 'Math 101', 
  8.Using the Customers and Orders tables, write a query to find customers who have placed an order with more than 3 items. Return their name and the quantity they ordered.
🔁 Expected Columns: FirstName, LastName, Quantity
  select 
       C.FirstName,
       C.LastName,
       SUM(od.Quantity) as Quantity
 from Customers C
 join Orders O C.CustomerID = O.CustomerID
 join OrderDetails OD on O.OrderID = OD.OrderID
 Group by  C.FirstName, C.LastName
 Having  SUM(od.Quantity) > 3;
  9.Using the Employees and Departments tables, write a query to list employees working in the 'Human Resources' department.
🔁 Expected Columns: EmployeeName, DepartmentName
 select 
      E.EmployeeName
      D.DepartmentName
from Employees E
inner join Departments D on E.DepartmentID = D.DepartmentID
WHERE 
    D.DepartmentName = 'Human Resources';

10.Using the Employees and Departments tables, write a query to return department names that have more than 5 employees.
🔁 Expected Columns: DepartmentName, EmployeeCount
SELECT b.bolim_nomi, COUNT(x.xodim_id) AS xodimlar_soni
FROM bolimlar b
JOIN xodimlar x ON b.bolim_id = x.bolim_id
GROUP BY b.bolim_nomi
HAVING COUNT(x.xodim_id) > 5;
11.Using the Products and Sales tables, write a query to find products that have never been sold.
🔁 Expected Columns: ProductID, ProductName
  SELECT p.ProductID, p.ProductName
FROM Products p
LEFT JOIN OrderDetails od ON p.ProductID = od.ProductID
WHERE od.ProductID IS NULL;
12.Using the Customers and Orders tables, write a query to return customer names who have placed at least one order.
🔁 Expected Columns: FirstName, LastName, TotalOrders

SELECT c.FirstName AS ism,
       c.LastName AS familiya,
       COUNT(o.OrderID) AS "jami buyurtmalar"
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.FirstName, c.LastName
HAVING COUNT(o.OrderID) >= 1;
13.Using the Employees and Departments tables, write a query to show only those records where both employee and department exist (no NULLs).
 SELECT e.EmployeeID,
       e.FirstName,
       e.LastName,
       d.DepartmentID,
       d.DepartmentName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;
14.Using the Employees table, write a query to find pairs of employees who report to the same manager.
🔁 Expected Columns: Employee1, Employee2, ManagerID
SELECT 
    e1.FirstName || ' ' || e1.LastName AS Xodim1,
    e2.FirstName || ' ' || e2.LastName AS Xodim2,
    e1.ManagerID AS "menejer ID"
FROM Employees e1
JOIN Employees e2 
    ON e1.ManagerID = e2.ManagerID 
   AND e1.EmployeeID < e2.EmployeeID
WHERE e1.ManagerID IS NOT NULL;
15.Using the Orders and Customers tables, write a query to list all orders placed in 2022 along with the customer name.
🔁 Expected Columns: OrderID, OrderDate, FirstName, LastName
SELECT 
    o.OrderID AS "Buyurtma identifikatori",
    o.OrderDate AS "Buyurtma sanasi",
    c.FirstName AS Ism,
    c.LastName AS Familiya
FROM Orders o
JOIN Customers c ON
16.Using the Employees and Departments tables, write a query to return employees from the 'Sales' department whose salary is above 60000.
🔁 Expected Columns: EmployeeName, Salary, DepartmentName
       SELECT 
    e.FirstName || ' ' || e.LastName AS "Xodimning ismi",
    e.Salary AS "ish haqi",
    d.DepartmentName AS "bo'lim nomi"
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'Savdo'
  AND e.Salary > 60000;
17.Using the Orders and Payments tables, write a query to return only those orders that have a corresponding payment.
🔁 Expected Columns: OrderID, OrderDate, PaymentDate, Amount
SELECT 
    o.OrderID AS "Buyurtma identifikatori",
    o.OrderDate AS "Buyurtma sanasi",
    p.PaymentDate AS "to'lov sanasi"
18.Using the Products and Orders tables, write a query to find products that were never ordered.
🔁 Expected Columns: ProductID, ProductName
SELECT 
    p.ProductID,
    p.ProductName
FROM Products p
LEFT JOIN OrderDetails od ON p.ProductID = od.ProductID
WHERE od.ProductID IS NULL;
19.Using the Employees table, write a query to find employees whose salary is greater than the average salary in their own departments.
🔁 Expected Columns: EmployeeName, Salary
SELECT 
    e.FirstName || ' ' || e.LastName AS EmployeeName,
    e.Salary
FROM Employees e
WHERE e.Salary > (
    SELECT AVG(e2.Salary)
    FROM Employees e2
    WHERE e2.DepartmentID = e.DepartmentID
);
20.Using the Orders and Payments tables, write a query to list all orders placed before 2020 that have no corresponding payment.
🔁 Expected Columns: OrderID, OrderDate
SELECT 
    o.OrderID AS "Buyurtma identifikatori",
    o.OrderDate AS "Buyurtma sanasi"
FROM Orders o
LEFT JOIN Payments p ON o.OrderID = p.OrderID
WHERE p.OrderID IS NULL
  AND o.OrderDate < '2020-01-01';

21.Using the Products and Categories tables, write a query to return products that do not have a matching category.
🔁 Expected Columns: ProductID, ProductName
SELECT 
    p.ProductID,
    p.ProductName
FROM Products p
LEFT JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryID IS NULL;
22.Using the Employees table, write a query to find employees who report to the same manager and earn more than 60000.
🔁 Expected Columns: Employee1, Employee2, ManagerID, Salary
SELECT 
    e1.FirstName || ' ' || e1.LastName AS Xodim1,
    e2.FirstName || ' ' || e2.LastName AS Xodim2,
    e1.ManagerID AS "menejer ID",
    e1.Salary AS ish_haqi
FROM Employees e1
JOIN Employees e2 ON e1.ManagerID = e2.
23.Using the Employees and Departments tables, write a query to return employees who work in departments which name starts with the letter 'M'.
🔁 Expected Columns: EmployeeName, DepartmentName
SELECT 
    e.FirstName || ' ' || e.LastName AS "Xodim nomi",
    d.DepartmentName AS "bo'lim nomi"
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName LIKE 'M%';
24.Using the Products and Sales tables, write a query to list sales where the amount is greater than 500, including product names.
🔁 Expected Columns: SaleID, ProductName, SaleAmount
SELECT 
    s.SaleID,
    p.ProductName AS "Mahsulot nomi",
    s.SaleAmount
FROM Sales s
JOIN Products p ON s.ProductID = p.ProductID
WHERE s.SaleAmount > 500;
25.Using the Students, Courses, and Enrollments tables, write a query to find students who have not enrolled in the course 'Math 101'.
🔁 Expected Columns: StudentID, StudentName
 SELECT 
    s.StudentID,
    s.StudentName
FROM Students s
LEFT JOIN Enrollments e ON s.StudentID = e.StudentID
LEFT JOIN Courses c ON e.CourseID = c.CourseID AND c.CourseName = 'Matematik 101'
WHERE c.CourseID I
26.Using the Orders and Payments tables, write a query to return orders that are missing payment details.
🔁 Expected Columns: OrderID, OrderDate, PaymentID
SELECT 
    o.OrderID AS "Buyurtma identifikatori",
    o.OrderDate AS "Buyurtma sanasi",
    p.PaymentID AS "to'lov identifikatori"
FROM Orders o
LEFT JOIN Payments p ON o.OrderID = p.OrderID
WHERE p.PaymentID IS
27.Using the Products and Categories tables, write a query to list products that belong to either the 'Electronics' or 'Furniture' category.
🔁 Expected Columns: ProductID, ProductName, CategoryName
SELECT 
    p.ProductID,
    p.ProductName,
    c.CategoryName
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName IN ('Elektronika', 'Mebel');


        
  
