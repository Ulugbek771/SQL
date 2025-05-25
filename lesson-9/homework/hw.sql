1.Using Products, Suppliers table List all combinations of product names and supplier names.
  Select  Products.Pruducts_name,Suppliers.Supliers_name
  from Products p
  CROSS JOIN Supliers s;
2.Using Departments, Employees table Get all combinations of departments and employees.
  Select Departments.Departmens_name,Employees.Employees_name
  from Depeartment d
  CROSS JOIN Employees e;
3.Using Products, Suppliers table List only the combinations where the supplier actually supplies the product. Return supplier name and product name
SELECT
    s.supplier_name,
    p.product_name
FROM Products p
INNER JOIN Suppliers s ON p.supplier_id = s.supplier_id;
4.Using Orders, Customers table List customer names and their orders ID.
  SELECT
    c.CustomerName,
    o.OrderID
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
ORDER BY c.CustomerName, o.OrderID;
5.Using Courses, Students table Get all combinations of students and courses.
  SELECT 
      Student.Student_name,Course.Course_name
  FROM Student.Studeny_name
  CROSS JOIN Course.Course_name;
6.Using Products, Orders table Get product names and orders where product IDs match.
  SELECT
    p.product_name,
    o.OrderID
FROM Products p
JOIN Orders o ON p.product_id = o.product_id
ORDER BY p.product_name, o.OrderID;
7.Using Departments, Employees table List employees whose DepartmentID matches the department.
  SELECT 
    d.DepartmentID,
    d.DepartmentName,
    e.EmployeeName
FROM Departments d
JOIN Employees e
  ON d.DepartmentID = e.DepartmentID
ORDER BY d.DepartmentID, e.EmployeeName;
8.Using Students, Enrollments table List student names and their enrolled course IDs.
  SELECT 
    s.StudentName,
    e.CourseID
FROM Students s
JOIN Enrollments e
  ON s.StudentID = e.StudentID
ORDER BY s.StudentName;
9.Using Payments, Orders table List all orders that have matching payments.
  SELECT o.OrderID, o.CustomerID, o.OrderDate
FROM Orders o
JOIN Payments p
  ON o.OrderID = p.OrderID;
10.Using Orders, Products table Show orders where product price is more than 100.
SELECT o.OrderID, o.ProductID, p.ProductName, p.Price, o.OrderDate
FROM Orders o
JOIN Products p
  ON o.ProductID = p.ProductID
WHERE p.Price > 100;
11.Using Employees, Departments table List employee names and department names where department IDs are not equal. It means: Show all mismatched employee-department combinations.
  SELECT e.EmployeeName, d.DeptName
FROM Employees e
CROSS JOIN Departments d
WHERE e.DeptID <> d.DeptID;
12.Using Orders, Products table Show orders where ordered quantity is greater than stock quantity.
  SELECT 
    o.OrderID, 
    o.ProductID, 
    p.ProductName, 
    o.Quantity AS OrderedQuantity, 
    p.Stock AS AvailableStock
FROM 
    Orders o
JOIN 
    Products p ON o.ProductID = p.ProductID
WHERE 
    o.Quantity > p.Stock;
13.Using Customers, Sales table List customer names and product IDs where sale amount is 500 or more.
  SELECT 
    c.CustomerName, 
    s.ProductID, 
    s.Amount
FROM 
    Customers c
JOIN 
    Sales s ON c.CustomerID = s.CustomerID
WHERE 
    s.Amount >= 500;
14.Using Courses, Enrollments, Students table List student names and course names they’re enrolled in.
  SELECT 
    s.StudentName, 
    c.CourseName
FROM 
    Enrollments e
JOIN 
    Students s ON e.StudentID = s.StudentID
JOIN 
    Courses c ON e.CourseID = c.CourseID;
15.Using Products, Suppliers table List product and supplier names where supplier name contains “Tech”.
  SELECT 
    p.ProductName, 
    s.SupplierName
FROM 
    Products p
JOIN 
    Suppliers s ON p.SupplierID = s.SupplierID
WHERE 
    s.SupplierName LIKE '%Tech%';
16.Using Orders, Payments table Show orders where payment amount is less than total amount.
  SELECT 
    o.OrderID,
    o.TotalAmount,
    p.PaymentAmount
FROM 
    Orders o
JOIN 
    Payments p ON o.OrderID = p.OrderID
WHERE 
    p.PaymentAmount < o.TotalAmount;
17.Using Employees and Departments tables, get the Department Name for each employee.
  SELECT 
    e.EmployeeName,
    d.DepartmentName
FROM 
    Employees e
JOIN 
    Departments d ON e.DepartmentID = d.DepartmentID;
18.Using Products, Categories table Show products where category is either 'Electronics' or 'Furniture'.
  SELECT 
    p.ProductName, 
    c.CategoryName
FROM 
    Products p
JOIN 
    Categories c ON p.CategoryID = c.CategoryID
WHERE 
    c.CategoryName IN ('Elektronika', 'Mebel');
19.Using Sales, Customers table Show all sales from customers who are from 'USA'.
  SELECT 
    p.ProductName, 
    c.CategoryName
FROM 
    Products p
JOIN 
    Categories c ON p.CategoryID = c.CategoryID
WHERE 
    c.CategoryName IN ('Elektronika', 'Mebel');
20.Using Orders, Customers table List orders made by customers from 'Germany' and order total > 100.
SELECT 
    o.OrderID, 
    o.OrderDate, 
    c.CustomerName, 
    c.Country
FROM 
    Orders o
JOIN 
    Customers c ON o.CustomerID = c.CustomerID
WHERE 
    c.Country = 'Germaniya';
21.Using Employees table List all pairs of employees from different departments.
  SELECT 
    E1.EmployeeName AS Employee1,
    E1.DeptID AS Dept1,
    E2.EmployeeName AS Employee2,
    E2.DeptID AS Dept2
FROM 
    Employees E1
JOIN 
    Employees E2 ON E1.EmployeeID < E2.EmployeeID
WHERE 
    E1.DeptID <> E2.DeptID;
22.Using Payments, Orders, Products table List payment details where the paid amount is not equal to (Quantity × Product Price).
  Using Payments, Orders, Products table List payment details where the paid amount is not equal to (Quantity × Product Price).
23.Using Students, Enrollments, Courses table Find students who are not enrolled in any course.
SELECT 
    s.StudentID,
    s.StudentName
FROM 
    Students s
LEFT JOIN 
    Enrollments e ON s.StudentID = e.StudentID
WHERE 
    e.CourseID IS NULL;
2.SELECT 
    s.StudentID,
    s.StudentName
FROM 
    Students s
WHERE 
    NOT EXISTS (
        SELECT 1 
        FROM Enrollments e 
        WHERE e.StudentID = s.StudentID
    );
24.Using Employees table List employees who are managers of someone, but their salary is less than or equal to the person they manage.
  SELECT DISTINCT
    m.EmployeeID AS ManagerID,
    m.EmployeeName AS ManagerName,
    m.Salary AS ManagerSalary
FROM
    Employees m
JOIN
    Employees e ON e.ManagerID = m.EmployeeID
WHERE
    m.Salary <= e.Salary;
25.Using Orders, Payments, Customers table List customers who have made an order, but no payment has been recorded for it.
  SELECT DISTINCT
    c.CustomerID,
    c.CustomerName
FROM
    Customers c
JOIN
    Orders o ON c.CustomerID = o.CustomerID
LEFT JOIN
    Payments p ON o.OrderID = p.OrderID
WHERE
    p.OrderID IS NULL;






