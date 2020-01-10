/* Schema for SQL database/table. We haven't discussed this type of file yet */
DROP DATABASE IF EXISTS bamazon_DB;

/* Create database */
CREATE DATABASE bamazon_DB;
USE bamazon_DB;

/* Create new table with a primary key that auto-increments, and a text field */
CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NOT NULL,
  depart_name VARCHAR(100) NOT NULL,
  price DECIMAL(10,2) NULL,
  stock_quantity INT NULL,
  PRIMARY KEY (id)
);
INSERT INTO products (product_name,depart_name,price,stock_quantity)
VALUES ("Etnie shoe 578", "clothing", 100.50, 5);

INSERT INTO products (product_name,depart_name,price,stock_quantity)
VALUES ("Etnie shoe 661 ", "clothing", 50.50, 69);

INSERT INTO products (product_name,depart_name,price,stock_quantity)
VALUES ("Etnie shoe 969", "clothing", 75.80, 1);

INSERT INTO products (product_name,depart_name,price,stock_quantity)
VALUES ("le cruset 9in. frying pan", "kitchen ware", 107.75, 100);

INSERT INTO products (product_name,depart_name,price,stock_quantity)
VALUES ("le cruset 6qrt. dutch oven (fire red)", "kitchen ware", 305.58, 606);

INSERT INTO products (product_name,depart_name,price,stock_quantity)
VALUES ("le cruset griddel (light-sky blue)", "kitchen ware", 90.66, 500);

INSERT INTO products (product_name,depart_name,price,stock_quantity)
VALUES ("levi 501 size 30", "clothing", 100.50, 5);

INSERT INTO products (product_name,depart_name,price,stock_quantity)
VALUES ("levi 500 size 50", "clothing", 200.50, 5);

INSERT INTO products (product_name,depart_name,price,stock_quantity)
VALUES ("levi 505 size 40", "clothing", 150.50, 5);

INSERT INTO products (product_name,depart_name,price,stock_quantity)
VALUES ("nintendo switch lite", "gaming", 505.50, 5000);



