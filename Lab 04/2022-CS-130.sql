/********* QUERY 1 *********/
SELECT ProductName
FROM Northwind.dbo.Products
WHERE UnitPrice > (SELECT AVG(UnitPrice) FROM Northwind.dbo.Products);
	/********* QUERY 2 *********/
SELECT ShippedDate, Count(ShippedDate) AS numberoforders
FROM Northwind.dbo.Orders
WHERE ShippedDate IS NOT NULL
GROUP BY ShippedDate
ORDER BY ShippedDate;
		/********* QUERY 3 *********/
SELECT Country
FROM Northwind.dbo.Suppliers
GROUP BY Country
HAVING (SELECT COUNT(Country)) >= 2;
			/********* QUERY 4 *********/
SELECT MONTH(OrderDate) AS 'Month Number', Count(*) AS 'Orders Delayed'
FROM Northwind.dbo.Orders
WHERE ShippedDate > OrderDate AND ShippedDate IS NOT NULL
GROUP BY OrderDate
ORDER BY MONTH(OrderDate);
				/********* QUERY 5 *********/
SELECT OrderID, SUM(Discount) AS TotalDiscount
FROM Northwind.dbo.[Order Details]
GROUP BY OrderID, Discount
HAVING SUM(Discount) > 0;
					/********* QUERY 6 *********/
SELECT ShipCity, Count(*) AS 'Number of Orders'
FROM Northwind.dbo.Orders
WHERE ShipCountry= 'USA' AND YEAR(ShippedDate) = 1997
GROUP BY ShipCity;
						/********* QUERY 7 *********/
SELECT ShipCountry, Count(*) AS 'Orders Delayed'
FROM Northwind.dbo.Orders
WHERE ShippedDate > OrderDate AND ShippedDate IS NOT NULL
GROUP BY ShipCountry;
							/********* QUERY 8 *********/
SELECT OrderID, SUM(Discount) AS Discount, SUM(UnitPrice * Quantity) AS 'Total Price'
FROM Northwind.dbo.[Order Details]
GROUP BY OrderID
HAVING SUM(Discount) > 0;
								/********* QUERY 9 *********/
SELECT ShipRegion, ShipCity, Count(*) AS Orders
FROM Northwind.dbo.Orders
WHERE Year(ShippedDate) = 1997
GROUP BY ShipRegion, ShipCity;