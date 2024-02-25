/******************* Query 01 *******************/
SELECT CustomerID,
    (SELECT TOP 1 OrderID FROM Northwind.dbo.Orders WHERE Customers.CustomerID = Orders.CustomerID
    ) AS OrderID,
    ( SELECT TOP 1 OrderDate FROM Northwind.dbo.Orders WHERE Customers.CustomerID = Orders.CustomerID
    ) AS OrderDate
FROM Northwind.dbo.Customers;
	/******************* Query 02 *******************/
SELECT CustomerID,
	(SELECT TOP 1 OrderID FROM Northwind.dbo.Orders WHERE Customers.CustomerID = Orders.CustomerID
    ) AS OrderID,
    ( SELECT TOP 1 OrderDate FROM Northwind.dbo.Orders WHERE Customers.CustomerID = Orders.CustomerID
    ) AS OrderDate
FROM Northwind.dbo.Customers
Where CustomerID NOT IN (SELECT DISTINCT CustomerID FROM Northwind.dbo.Orders);
		/******************* Query 03 *******************/
SELECT CustomerID, OrderID, OrderDate
FROM Northwind.dbo.Orders
WHERE MONTH(OrderDate) = 7 AND YEAR(OrderDate) = 1997;
			/******************* Query 04 *******************/
SELECT CustomerID,
    (SELECT Count(OrderID) FROM Northwind.dbo.Orders WHERE Customers.CustomerID = Orders.CustomerID
    ) AS totalorders  
FROM Northwind.dbo.Customers;
				/******************* Query 05 *******************/
SELECT EmployeeID, FirstName, LastName
FROM Northwind.dbo.Employees,
    (SELECT 1 AS num UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5) AS copies
ORDER BY EmployeeID;
					/******************* Query 06 *******************/
SELECT *
FROM Northwind.dbo.Products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Northwind.dbo.Products);
						/******************* Query 07 *******************/
SELECT TOP 1 *
FROM Northwind.dbo.Products
WHERE UnitPrice < (SELECT MAX(UnitPrice) FROM Northwind.dbo.Products)
ORDER BY UnitPrice DESC;
							/******************* Query 08 *******************/
SELECT EmployeeID, HireDate
FROM Northwind.dbo.Employees
WHERE HireDate BETWEEN 04-07-1996 AND 04-08-1997;
								/******************* Query 09 *******************/
SELECT CustomerID, 
(SELECT COUNT(OrderID) From Northwind.dbo.Orders WHERE CustomerID = c.CustomerID) AS totalorders,
(SELECT SUM(Quantity) From Northwind.dbo.[Order Details] WHERE OrderID IN (SELECT OrderID FROM Northwind.dbo.Orders WHERE CustomerID = c.CustomerID)) AS TotalQuantity
FROM Northwind.dbo.Customers c
WHERE Country = 'USA';
									/******************* Query 10 *******************/		
SELECT CustomerID, CompanyName,
(SELECT TOP 1 OrderID FROM Northwind.dbo.Orders WHERE CustomerID = Customers.CustomerID) AS OrderID,
(SELECT TOP 1 OrderDate FROM Northwind.dbo.Orders WHERE DAY(OrderDate)= 4 AND Month(OrderDate) = 7 AND YEAR(OrderDate) = 1997) AS OrderDate
FROM Northwind.dbo.Customers;
										/******************* Query 11 *******************/
SELECT EmployeeID,FirstName,LastName,BirthDate AS EmployeeBirthDate,
    (SELECT BirthDate FROM Northwind.dbo.Employees WHERE EmployeeID = ReportsTo) AS ManagerBirthDate
FROM Northwind.dbo.Employees
WHERE BirthDate > (SELECT BirthDate FROM Northwind.dbo.Employees WHERE EmployeeID = ReportsTo);
											/******************* Query 12 *******************/
SELECT E.FirstName + ' ' + E.LastName AS EmployeeName, DATEDIFF(YEAR, E.BirthDate, GETDATE()) AS Age,
(SELECT DATEDIFF(YEAR, BirthDate, GETDATE()) FROM Northwind.dbo.Employees WHERE EmployeeID = E.ReportsTo) AS ManagerAge
FROM Northwind.dbo.Employees E
WHERE E.BirthDate > (SELECT BirthDate FROM Northwind.dbo.Employees WHERE EmployeeID = E.ReportsTo);
												/******************* Query 13 *******************/
SELECT ProductName, OrderDate
FROM Northwind.dbo.Products, Northwind.dbo.Orders
WHERE ProductID IN (SELECT ProductID FROM Northwind.dbo.[Order Details] WHERE OrderID IN (SELECT  OrderID FROM Northwind.dbo.Orders WHERE CONVERT(DATE, OrderDate) = '1997-08-08'));
													/******************* Query 14 *******************/
SELECT ShipAddress AS Address,ShipCity AS City,ShipCountry AS Country
FROM Northwind.dbo.Orders
WHERE EmployeeID = (SELECT EmployeeID FROM Northwind.dbo.Employees WHERE FirstName = 'Anne')AND ShippedDate > RequiredDate;
														/******************* Query 15 *******************/
SELECT DISTINCT ShipCountry AS Country
FROM Northwind.dbo.Orders
WHERE OrderID IN (SELECT OrderID FROM Northwind.dbo.[Order Details] WHERE ProductID IN (SELECT ProductID FROM Northwind.dbo.Products WHERE CategoryID = 1 ));

