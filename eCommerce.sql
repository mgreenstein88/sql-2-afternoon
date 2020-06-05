1. CREATE TABLE users ( name TEXT, email TEXT PRIMARY KEY);

2. CREATE TABLE products ( product_id INT PRIMARY KEY, name TEXT, price INT) ;

3. CREATE TABLE orders ( product_id INT PRIMARY KEY, order_num INT) ;

4. INSERT INTO users
( name, email )
VALUES 
( 'Moriah', 'hey@gmail.com'),
( 'Dana', 'eyo@gmail.com'),
( 'Thorn', 'bye@gmail.com');

5. INSERT INTO products
( product_id, name, price )
VALUES 
( 1, 'Shoes', 3 ),
( 2, 'Sock', 4 ),
( 3, 'Pant', 6 );

6. INSERT INTO orders
( product_id, order_num )
VALUES 
( 1, 200 ),
( 2, 300 ),
( 3, 500 );

7. SELECT *
FROM products
JOIN orders ON orders.product_id = products.product_id
WHERE orders.order_num = 200;

8. SELECT *
FROM orders;

9. SELECT SUM(price), orders.order_num
FROM orders
JOIN products ON products.product_id = orders.product_id
GROUP BY orders.order_num;

10. ALTER TABLE orders
ADD user_name TEXT;

11. UPDATE orders
SET user_name = 'Thorn'
WHERE user_name = null AND order_num = 500;

12. SELECT *
FROM orders
WHERE user_name = 'Dana';

13. SELECT COUNT(*)
FROM orders
WHERE user_name = 'Dana';