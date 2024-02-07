        /********* QUERY 1 *********/
  SELECT OrderID, CustomerID,ShippedDate,OrderDate
  FROM [Northwind].[dbo].[Orders]
  WHERE ShippedDate > OrderDate; 
          /********* QUERY 2 *********/
  SELECT DISTINCT Country
  FROM [Northwind].[dbo].[Employees];
            /********* QUERY 3 *********/
  SELECT EmployeeID,LastName,FirstName
  FROM [Northwind].[dbo].[Employees]
  WHERE ReportsTo IS NULL;
              /********* QUERY 4 *********/
  SELECT ProductName
  FROM [Northwind].[dbo].[Products]
  WHERE Discontinued = 1;
               /********* QUERY 5 *********/
  SELECT OrderID
  FROM [Northwind].[dbo].[Order Details]
  WHERE Discount = 0;
                 /********* QUERY 6 *********/
  SELECT ContactName
  FROM [Northwind].[dbo].[Customers]
  WHERE Region IS NULL;
                   /********* QUERY 7 *********/
  SELECT ContactName,Phone
  FROM [Northwind].[dbo].[Customers]
  WHERE Country = 'UK' OR Country = 'USA';
                     /********* QUERY 8 *********/
  SELECT CompanyName,HomePage
  FROM [Northwind].[dbo].Suppliers
  WHERE HomePage IS NOT NULL;
                       /********* QUERY 9 *********/
  SELECT ShipCountry
  FROM [Northwind].[dbo].Orders
  WHERE YEAR(ShippedDate) = 1997;
                         /********* QUERY 10 *********/
  SELECT CustomerID
  FROM [Northwind].[dbo].Customers
  WHERE CustomerID NOT IN (Select DISTINCT CustomerID from [Northwind].[dbo].Orders);
                           /********* QUERY 11 *********/
  SELECT SupplierID, CompanyName, City
  FROM [Northwind].[dbo].Suppliers
                             /********* QUERY 12 *********/
  SELECT LastName,FirstName
  FROM [Northwind].[dbo].Employees
  WHERE Country = 'London';
							  /********* QUERY 13 *********/
  SELECT ProductName
  FROM [Northwind].[dbo].[Products]
  WHERE Discontinued = 0;
							   /********* QUERY 14 *********/
  SELECT OrderID
  FROM [Northwind].[dbo].[Order Details]
  WHERE Discount <= 0.1;
							     /********* QUERY 15 *********/
  SELECT EmployeeID, LastName, FirstName, HomePhone, Extension
  FROM [Northwind].[dbo].Employees
  WHERE Region IS NULL;