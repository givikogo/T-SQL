CREATE TABLE customers (
    customerid INT AUTO_INCREMENT PRIMARY KEY,
    contactname VARCHAR(100),
    companyname VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(100),
    phone VARCHAR(20),
    fax VARCHAR(20),
    region VARCHAR(50)
);

INSERT INTO customers(
     
    contactname, 
    companyname, 
    address, 
    city, 
    phone, 
    fax, 
    region
) 
VALUES (
    'Jonh', 
    'Fanta', 
    'wm.nino.street 3', 
    'Kutaisi', 
    '+995551333650', 
    '11133332', 
    'Imereti'
);
SELECT*FROM customers;
CREATE TABLE orders (
    orderid INT AUTO_INCREMENT PRIMARY KEY,
    ordername varchar(100),
    customerid INT AUTO_INCREMENT,
    orderdate DATE,
    shippeddate DATE,
    status VARCHAR(50),
    FOREIGN KEY (customerid) REFERENCES customers(customerid)
);
INSERT INTO orders (
    ordername,
    customerid,
    orderdate, 
    shippeddate, 
    status
) 
VALUES ( 
    'Kate', 
    customerid, -- Ссылается на customerid из таблицы customers
    '2025-03-14', 
    '2025-03-16', 
    'Shipped'
);

DROP TABLE orders;
SELECT*FROM customers;
SELECT 
    orders.orderid, 
    orders.orderdate, 
    orders.shippeddate, 
    orders.status, 
    orders.ordername,
    customers.customerid, 
    customers.contactname, 
    customers.companyname, 
    customers.address, 
    customers.city, 
    customers.phone, 
    customers.fax, 
    customers.region
FROM orders
CROSS JOIN customers;

SELECT 
    orders.orderid, 
    orders.orderdate, 
    orders.shippeddate, 
    orders.status, 
    orders.ordername,
    customers.customerid, 
    customers.contactname, 
    customers.companyname, 
    customers.address, 
    customers.city, 
    customers.phone, 
    customers.fax, 
    customers.region
FROM orders
LEFT JOIN customers
ON customers.customerid = orders.customerid;
DROP TABLE customers;
CREATE TABLE customers (
    customerid INT AUTO_INCREMENT PRIMARY KEY,
    contactname VARCHAR(100),
    companyname VARCHAR(100),
    address VARCHAR(255),
    city VARCHAR(100),
    phone VARCHAR(50),
    fax VARCHAR(50),
    region VARCHAR(50)
);
SELECT*FROM orders;
SELECT*FROM customers;

UPDATE orders
SET customerid = '3'
WHERE orderid = 5;