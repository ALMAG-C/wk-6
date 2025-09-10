USE salesDB;
-- Retrieve employee details along with their office code using INNER JOIN
SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM 
    employees e
INNER JOIN 
    offices o ON e.officeCode = o.officeCode;
    
    -- Retrieve product details and their product line info using LEFT JOIN
SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM 
    products p
LEFT JOIN 
    productlines pl ON p.productLine = pl.productLine;
    
    -- Retrieve order details for the first 10 orders using RIGHT JOIN
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


    
    
-- Retrieve customer details along with their payments using FULL OUTER JOIN
SELECT 
    c.customerName,
    c.contactLastName,
    c.contactFirstName,
    p.paymentDate,
    p.amount

FROM 
    customers c 
FULL OUTER JOIN 
    payments p ON c.customerNumber = p.customerNumber
ORDER BY 
    c.customerName;
                        
