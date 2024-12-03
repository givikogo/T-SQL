INSERT INTO orders (orderid, customerid, shippeddate, freight, shipname, shipaddress)
VALUES (1, 'A001', '2025-01-29', 100.00, 'ShipName', '123 Street');

ALTER TABLE orders
ADD CONSTRAINT DF_orderdate DEFAULT GETDATE() FOR orderdate;