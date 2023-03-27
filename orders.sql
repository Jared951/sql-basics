-- 1 Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
CREATE TABLE orders(
	order_id SERIAL PRIMARY KEY,
  person_id INTEGER,
  product_name VARCHAR(100),
  product_price NUMERIC,
  quantity INTEGER
);

-- 2 Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.
INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'iPhone', 499, 2)
(2, 'Android', 599, 3)
(3, 'Samsung', 699, 4)
(4, 'T-Mobile', 799, 5)
(5, 'Verizon', 899, 6);

-- 3 Select all the records from the orders table.
SELECT * FROM orders;

-- 4 Calculate the total number of products ordered.
SELECT SUM(quantity) FROM orders;

-- 5 Calculate the total order price.
SELECT SUM(product_price * quantity) FROM orders;

-- 6 Calculate the total order price by a single person_id.
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 2; --that two right there can be any number from above in the person_id 