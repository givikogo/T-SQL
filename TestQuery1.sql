use LessonsBD;
CREATE TABLE customers(
            customerid CHAR(5) NOT NULL,
            companyname VARCHAR(40) NOT NULL,
            contactname CHAR(30) NULL,
            address varchar(60) NULL,
            city CHAR(15) NULL,
            phone CHAR(24) NULL,
            fax CHAR(24) NULL
            );
CREATE TABLE orders(
            orderid INT NOT NULL,
            customerid CHAR(5) NOT NULL,
            orderdate DATE NULL,
            shippeddate DATE NULL,
            freight MONEY NULL,
            shipname VARCHAR(40) NULL,
            shipaddress VARCHAR(60) NULL,
            quantity INT NULL
            );