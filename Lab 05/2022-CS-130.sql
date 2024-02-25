/*************** QUERY 1 ***************/
SELECT Customers.CustomerID, OrderID, OrderDate
FROM Northwind.dbo.Customers join Northwind.dbo.Orders
ON Customers.CustomerID = Orders.CustomerID;
	/*************** QUERY 2 ***************/
SELECT Customers.CustomerID, OrderID, OrderDate
FROM Northwind.dbo.Customers join Northwind.dbo.Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE Orders.OrderID IS NULL;
		/*************** QUERY 3 ***************/
SELECT Customers.CustomerID, OrderID, OrderDate
FROM Northwind.dbo.Customers join Northwind.dbo.Orders
ON Customers.CustomerID = Orders.CustomerID
WHERE MONTH(Orders.OrderDate) = 7 AND YEAR(Orders.OrderDate) = 1997;
			/*************** QUERY 4 ***************/
SELECT  Orders.CustomerID, Count(OrderID) AS totalorders
FROM Northwind.dbo.Orders
Group by Orders.CustomerID;
				/*************** QUERY 5 ***************/
SELECT EmployeeID, FirstName, LastName
FROM Northwind.dbo.Employees CROSS JOIN 
(SELECT 1 AS n UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5) AS copies;
					/*************** QUERY 6 ***************/


						/*************** QUERY 7 ***************/
SELECT CustomerID, COUNT(OrderID) AS Totalorders, Sum(Quantity) AS totalquantity
FROM Northwind.dbo.Customers CROSS JOIN Northwind.dbo.[Order Details]
WHERE Country = 'USA'
GROUP BY CustomerID
ORDER BY CustomerID;
							/*************** QUERY 8 ***************/
SELECT Customers.CustomerID, CompanyName, OrderID, OrderDate
FROM Northwind.dbo.Customers CROSS JOIN Northwind.dbo.[Orders]
WHERE MONTH(Orders.OrderDate) = 7 
AND DAY(Orders.OrderDate) = 4 
AND YEAR(Orders.OrderDate) = 1997;
								/*************** QUERY 9 ***************/


									/*************** QUERY 10 ***************/


										/*************** QUERY 11 ***************/
SELECT ProductName, OrderDate
FROM Northwind.dbo.Products CROSS JOIN Northwind.dbo.Orders
WHERE MONTH(Orders.OrderDate) = 8 AND DAY(Orders.OrderDate) = 8 
AND YEAR(Orders.OrderDate) = 1997;
											/*************** QUERY 12 ***************/
SELECT Orders.ShipAddress, Customers.City, Customers.Country
FROM Northwind.dbo.Customers join Northwind.dbo.Orders join Northwind.dbo.Employees
ON CustomerID = Orders.CustomerID
ON Orders.EmployeeID = Employees.EmployeeID
WHERE Employees.FirstName = 'Anne' AND Orders.ShippedDate > Orders.RequiredDate;
												/*************** QUERY 13 ***************/
