CREATE TABLE person (
id SERIAL PRIMARY KEY,
name VARCHAR(100),
age INT,
height FLOAT,
city VARCHAR(100),
favorite_color VARCHAR(25)
);

INSERT INTO person
(name, age, height, city, favorite_color)
VALUES
('Steven', 31, 178, 'Orem', 'blue'),
('Kari', 32, 165, 'Orem', 'red'),
('Nakai', 1, 64, 'Orem', 'blue'),
('Bill', 35, 178, 'Orem', 'green'),
('Dianna', 60, 160, 'Castle Dale', 'red');

SELECT * FROM person
ORDER BY height DESC;

SELECT * FROM person
ORDER BY height; 

SELECT * FROM person
ORDER BY age DESC;

SELECT * FROM person
WHERE age > 20;

SELECT * FROM person
WHERE age = 18;

SELECT * FROM person
WHERE age < 20 OR age > 30;

SELECT * FROM person
WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'red';

SELECT * FROM person
WHERE favorite_color != 'red' OR favorite_color != 'blue';

SELECT * FROM person
WHERE favorite_color IN ('orange', 'green');

SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');


CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  person_id INT,
  product_name VARCHAR(100),
  product_price INT,
  quantity INT
  );
  
  INSERT INTO orders
  (person_id, product_name, product_price, quantity)
  VALUES
  (23, 'iPad', 500, 1),
  (80, 'HomePod', 300, 2),
  (75, 'MacBook', 2000, 1),
  (23, 'Beats', 250, 2),
  (75, 'iPhone', 850, 3);

SELECT * FROM orders;

SELECT SUM(quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders;

SELECT SUM(product_price * quantity) FROM orders
WHERE person_id = 75;


INSERT INTO artist
(name)
VALUES
('Disturbed'),
('Five Finger Death Punch'),
('Tonight Alive');

SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

SELECT * FROM artist
ORDER BY name
LIMIT 5;

SELECT * FROM artist
WHERE name LIKE 'Black%';

SELECT * FROM artist 
WHERE name LIKE '%Black%';


SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT birth_date FROM employee
ORDER BY birth_date DESC
LIMIT 1;

SELECT birth_date FROM employee
ORDER BY birth_date
LIMIT 1;

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';


SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA'; 

SELECT MAX(total) FROM invoice;

SELECT MIN(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT COUNT(*) FROM invoice
WHERE total < 5;

SELECT COUNT(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT SUM(total) FROM invoice;


