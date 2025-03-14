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
CREATE TABLE orders (
    orderid INT PRIMARY KEY,
    ordername varchar(100),
    customerid INT,
    orderdate DATE,
    shippeddate DATE,
    status VARCHAR(50),
    FOREIGN KEY (customerid) REFERENCES customers(customerid)
);
INSERT INTO orders (
    orderid, 
    ordername,
    customerid, 
    orderdate, 
    shippeddate, 
    status
) 
VALUES (
    1, 
    'Liza',
    1,  -- Ссылается на customerid из таблицы customers
    '2025-03-14', 
    '2025-03-16', 
    'Shipped'
);

DROP TABLE orders;
SELECT*FROM customers where customerid = 1;
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

