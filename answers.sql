USE salesdb;
-- Retrieve employee details using INNER JOIN with offices table
SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM 
    employees e
INNER JOIN 
    offices o ON e.officeCode = o.officeCode;
-- Retrieve product details using LEFT JOIN with productlines table
USE salesdb;
SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM 
    products p
LEFT JOIN 
    productlines pl ON p.productLine = pl.productLine;
-- Retrieve first 10 orders using RIGHT JOIN with customers table
USE salesdb;
SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM 
    customers c
RIGHT JOIN 
    orders o ON c.customerNumber = o.customerNumber
ORDER BY 
    o.orderDate ASC
LIMIT 10;
