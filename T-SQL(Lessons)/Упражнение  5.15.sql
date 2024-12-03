ALTER TABLE orders
DROP CONSTRAINT pk_orderid;

ALTER TABLE orders
DROP CONSTRAINT fk_orderid;

ALTER TABLE orders
DROP CONSTRAINT chk_quantity;
