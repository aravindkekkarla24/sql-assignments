

--One-to-Many Relationships
--One customer can have multiple addresses,but each address belongs to only one customer

SELECT
  *
FROM
  customer
  JOIN address ON customer.id = address.customer_id
WHERE
  customer.name = "John"


--one-to-one relationship
--one customer can have only one cart and one cart belongs to only one customer
SELECT
  *
FROM
  customer
  JOIN cart ON customer.id = cart.customer_id



--many-to-many relationship
--one cart can have multiple products and one product can be in multiple carts

SELECT
  *
FROM
  cart
  JOIN cart_product ON cart.id = cart_product.cart_id
  JOIN product ON product.id = cart_product.product_id