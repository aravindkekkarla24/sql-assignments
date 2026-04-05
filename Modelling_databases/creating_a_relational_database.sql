--Consider the e-commerce scenario

--Primary key: Uniquely identify each record(row) in the table, every customer have its own unique id 
--FOREIGN KEY: Links a column to another table's primary key to maintain relationship between tables
--ON DELETE CASCADE: Automatically deletes child records when parent record is deleted



--creating customer table
CREATE TABLE customer(
  id integer NOT NULL PRIMARY KEY,   --Primary key                                  
  name varchar(250),
  age int
)


--creating product table
CREATE TABLE product(
  id integer NOT NULL PRIMARY KEY,  --primary key
  name varchar(250),
  price int,
  brand varchar(250),
  category varchar(250)
)


--creating address table to establish one-to-many relationship between customer and address tables

CREATE TABLE address(
  id integer NOT NULL PRIMARY KEY,
  pin_code integer,
  door_no varchar(250),
  city varchar(250),
  customer_id integer,

  --Foreign key : links customer_id in address table  to customer tables's id 

  -- ON DELETE CASCADE : if a customer is deleted then all the address associated with that customer will aslso be deleted

  FOREIGN KEY (customer_id) REFERENCES customer(id) ON DELETE CASCADE   
)


--creating cart table to establish one-to-one relationship between customer and cart tables

CREATE TABLE cart(
  id integer NOT NULL PRIMARY KEY,
  customer_id integer NOT NULL UNIQUE,   -- UNIQUE: Ensures all values in the column are different (no duplicates)
  total_price integer,
  FOREIGN KEY (customer_id) REFERENCES customer(id) ON DELETE CASCADE
)


--creating cart_product junction table to establish many-to-many relationship between cart and product tables

CREATE TABLE cart_product(
  id integer NOT NULL PRIMARY KEY,
  cart_id integer,
  product_id integer,
  quantity integer,
  FOREIGN KEY (cart_id) REFERENCES cart(id) ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE
)