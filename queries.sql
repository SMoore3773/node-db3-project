-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
    SELECT ProductName, CategoryName 
    FROM Product AS Pr
    JOIN Category AS Ca
    ON CategoryId = Ca.id;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
    SELECT Id, CompanyName
    FROM [Order] as O 
    JOIN Shipper as Sh
    ON ShipVia = Sh.id
    where OrderDate < '2012-08-09'
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
    SELECT ProductName, Quantity 
    FROM OrderDetail
    JOIN [Order] as O
    on OrderId = O.id
    JOIN Product as Pr
    ON ProductId = Pr.id
    WHERE OrderId = 10251
    ORDER BY ProductName
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
    SELECT Id, CompanyName, LastName
    FROM [Order] as O
    JOIN Customer as Cus
    ON CustomerId = Cus.Id
    JOIN Employee as Emp
    ON EmployeeId = Emp.id