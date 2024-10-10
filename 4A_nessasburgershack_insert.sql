## Inserting values into nessasburgershack database

USE nessasburgershack;

## Inserting values into customer table

INSERT INTO customers
VALUES 
(null, 'Jane','Doe','555-1234','jane@email.com'),
(null, 'John', 'Smith', '555-5678', 'john@email.com'),
(null, 'Jack', 'Williams', '555-8765', 'jack@email.com'),
(null, 'Jessica', 'Brown', '555-4321', 'jessica@email.com');

## Inserting values into employees tables

INSERT INTO employees
VALUES 
(null, 'Chef','Johnny', 'Rocket', '123-4567', 'johnnywork@email.com', '2024-01-01', 4000.00),
(null, 'Waiter','Jeff', 'Smith', '765-4321', 'jeffwork@email.com', '2024-01-01', 2000.00),
(null, 'Waitress','Jen', 'Villa', '987-1234', 'jenwork@email.com', '2024-01-01', 2500.00),
(null, 'Host','Julius', 'Jones', '321-4758', 'juliuswork@email.com', '2024-01-01', 2200.00);

## Inserting values into orders table

INSERT INTO orders 
VALUES
(null, 1, 2, 35.50, 'Visa'),
(null, 2, 3, 28.00, 'Cash'),
(null, 3, 2, 50.75, 'Mastercard'),
(null, 4, 3, 65.50, 'Discover');

## Inserting values into reservations table

INSERT INTO reservations
VALUES
(null, 1, 4, '2024-01-07 12:30:05'),
(null, 2, 2, '2024-01-07 12:45:30'),
(null, 3, 3, '2024-01-07 13:15:00'),
(null, 4, 1, '2024-01-07 13:37:55');

# Checking to see if values appeared correctly

Select * FROM customers;

Select * FROM employees;

Select * from orders;

SELECT * FROM reservations;