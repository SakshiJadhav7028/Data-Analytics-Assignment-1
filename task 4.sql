-- Create a new database
CREATE DATABASE customer_db;

-- Use the database
USE customer_db;


CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    order_date DATE,
    amount_spent DECIMAL(10,2)
);

INSERT INTO customers (customer_id, name, city, order_date, amount_spent)
VALUES
(1, 'Alice', 'New York', '2025-01-05', 600.00),
(2, 'Bob', 'New York', '2025-01-10', 450.00),
(3, 'Charlie', 'New York', '2025-01-15', 800.00),
(4, 'David', 'Los Angeles', '2025-01-20', 70.00),
(5, 'Eva', 'New York', '2025-02-05', 550.00),
(6, 'Frank', 'New York', '2025-01-25', 300.00),
(7, 'Grace', 'New York', '2025-01-30', 900.00);

select * from customers;

SELECT customer_id, name, city, amount_spent, order_date
FROM customers
WHERE city = 'New York'
  AND amount_spent > 500
  AND order_date BETWEEN '2025-01-01' AND '2025-01-31'
ORDER BY amount_spent DESC;

