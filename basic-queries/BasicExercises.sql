use northwind;
-- Exercise 2
-- Question 1
Select * from Products;
-- Question 2
Select ProductID, ProductName, UnitPrice from Products;
-- Question 3
Select ProductID, ProductName, UnitPrice from Products 
order by UnitPrice;
-- Question 4
Select ProductName, UnitPrice From Products
where UnitPrice <= 7.50;
-- Question 5
Select ProductID, ProductName, UnitPrice, UnitsInStock from Products
where UnitsInStock >= 100 ORDER BY UnitPrice desc;
-- Question 6
SELECT 
    ProductID, ProductName, UnitPrice, UnitsInStock
FROM
    Products
WHERE
    UnitsInStock >= 100
ORDER BY 
	UnitPrice DESC,
    ProductName asc;
-- Question 7
SELECT 
    ProductID, ProductName, UnitPrice, UnitsInStock, UnitsOnOrder
FROM
    Products
WHERE UnitsinStock = 0 and UnitsOnOrder >= 1
Order By 
	ProductName;
-- Question 8 and 9
Select * from Categories;
-- Question 10
Select ProductName, CategoryID from Products where CategoryID = 8;
-- Question 11
Select FirstName, LastName from Employees;
-- Question 12
Select FirstName, LastName, Title from Employees
where Title like '%Manager%';
-- Question 13
Select Distinct Title from Employees;
-- Question 14
Select  FirstName, LastName, Salary from Employees where Salary between 2000 and 2500;
-- Question 15
Select * from Suppliers;
-- Question 16
Select ProductName from Products
where SupplierId = 4;




