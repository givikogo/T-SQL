CREATE TABLE customers (
    customerid INT PRIMARY KEY,
    contactname VARCHAR(100),
    companyname VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(100),
    phone VARCHAR(20),
    fax VARCHAR(20),
    region VARCHAR(50)
);

INSERT INTO customers(
    customerid, 
    contactname, 
    companyname, 
    address, 
    city, 
    phone, 
    fax, 
    region
) 
VALUES (
    1, 
    'Maxy', 
    'Coca-Cola', 
    'wm.nino.street', 
    'Kutaisi', 
    '+995551222650', 
    '11152222', 
    'Imereti'
);
SELECT*FROM customers;