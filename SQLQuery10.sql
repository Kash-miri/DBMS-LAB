/********* QUERY 3 *********/
SELECT TOP (1000) [Registration Number]
      ,[First Name]
      ,[Last Name]
      ,[GPA]
      ,[Contact]
  FROM [Lab3].[dbo].[Student];
  /********* QUERY 4 *********/
  SELECT [GPA]
  FROM [Lab3].[dbo].[Student];
    /********* QUERY 5 *********/
  SELECT [GPA]
  FROM [Lab3].[dbo].[Student]
  where [GPA] >3.5;
      /********* QUERY 6 *********/
  SELECT [GPA]
  FROM [Lab3].[dbo].[Student]
  where [GPA] <=3.5;
      /********* QUERY 7 *********/
  SELECT [First Name] + [Last Name]
  FROM [Lab3].[dbo].[Student];
        /********* QUERY 8.1 *********/
  SELECT [CategoryName]
  FROM [Northwind].[dbo].[Categories]
  Order By CategoryID ASC;
          /********* QUERY 8.5 *********/
  SELECT [EmployeeID]
  FROM [Northwind].[dbo].[Employees]
  Where [EmployeeID] % 2 = 1;
            /********* QUERY 8.4 *********/
  SELECT [ContactName]
  FROM [Northwind].[dbo].[Customers]
  Where Country = 'Germany' 
  AND City = 'Berlin' 
  AND PostalCode > 1000;
              /********* QUERY 8.6 *********/
 SELECT [TerritoryID], COUNT(EmployeeID) AS EmployeeCount
  FROM [Northwind].[dbo].[EmployeeTerritories]
  Where EmployeeID = 2
  Group By [TerritoryID];
                /********* QUERY 8.7 *********/
 SELECT [ProductID], COUNT(Quantity) AS ProductCount  
  FROM [Northwind].[dbo].[Order Details]
  Where [UnitPrice] > 10.0
  Group By [ProductID];
                  /********* QUERY 8.8 *********/
 SELECT [ProductID], COUNT(Quantity) AS ProductCount  
  FROM [Northwind].[dbo].[Order Details]
  Where [UnitPrice] > 10.0
  Group By [ProductID];







