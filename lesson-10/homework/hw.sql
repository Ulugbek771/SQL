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
       
        
  
