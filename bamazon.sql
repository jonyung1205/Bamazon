DROP DATABASE IF EXISTS bamazonDB;

CREATE DATABASE bamazonDB;

USE bamazonDB;

CREATE TABLE products (
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(50) NULL,
  department_name VARCHAR(100) NULL,
  price INTEGER (150),
  stock_quantity integer(10),  
  primary key (item_id)
);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES ("01", "Apples", "Fruits", 10.50, 100);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES ("02", "Bananas", "Fruits", 15.50, 100);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES ("03", "Apple Pie", "Sweets", 10.50, 200);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES ("04", "Ice Cream", "Sweets", 25.50, 100);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES ("05", "Lettuce", "Vegetables", 10.50, 100);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES ("06", "Tomato", "Vegetables", 30.50, 100);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES ("07", "Chicken", "Poultry", 10.50, 100);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES ("08", "Beef", "Poultry", 25.50, 100);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES ("09", "Shrimp", "Seafood", 10.50, 100);
INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES ("10", "Salmon", "Seafood", 15.50, 100);
