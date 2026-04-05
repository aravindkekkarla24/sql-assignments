
--Insert data into customer table

 INSERT INTO
  customer(id, name, age)
VALUES
  (1, 'John', 29),
  (2, 'Emma', 24);


--Insert data into address table


INSERT INTO
  address(id, pin_code, door_no, city, customer_id)
VALUES
  (1001, 517130, '6-1', 'Hyderabad', 1),
  (1002, 615670, '6-13', 'Bengaluru', 1);


--Insert data into cart table

INSERT INTO
  cart(id, total_price, customer_id)
VALUES
  (1, 12000, 1),
  (2, 500, 2);


--Insert data into product table

INSERT INTO
  product(id, name, price, brand, category)
VALUES
  (1, 'Jeans', 1500, 'Pepe', 'Clothing'),
  (2, 'T-shirt', 500, 'Puma', 'Clothing'),
  (3, 'Mobile', 10000, 'Redmi', 'Gadgets'),
  (4, 'Watch', 2000, 'Titan', 'Gadgets');


--Insert data into cart_product table

INSERT INTO
  cart_product(id, cart_id, product_id, quantity)
VALUES
  (1, 1, 1, 1),
  (2, 1, 2, 1),
  (3, 1, 3, 1),
  (4, 2, 1, 1);