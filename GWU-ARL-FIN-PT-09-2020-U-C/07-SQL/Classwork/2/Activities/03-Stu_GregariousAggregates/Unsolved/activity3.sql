CREATE TABLE banks (
  bank_id SERIAL PRIMARY KEY,
  bank_name VARCHAR(50),
  bank_routing_number BIGINT
);

Select *
from banks;

CREATE TABLE payments (
  payment_id SERIAL PRIMARY KEY,
  bank_number BIGINT,
  bank_routing_number BIGINT,
  customer_id SERIAL
);

Select *
from payments

SELECT *
FROM payments as a
INNER JOIN banks as b ON a.bank_routing_number = b.bank_routing_number;

SELECT *
FROM payments as a
Left JOIN banks as b ON a.bank_routing_number = b.bank_routing_number;

Select *
From payments as a
Left JOIN banks as b ON a.bank_routing_number = b.bank_routing_number;

Select *
From payments

DROP TABLE IF EXISTS payments

CREATE TABLE payments (
  payment_id INT PRIMARY KEY,
  customer_id INT,
  staff_id INT,
  rental_id INT,
  amount FLOAT,
	payment_date timestamp without time zone);

Select *
from payments

--1. What is the average payment amount?
SELECT AVG(amount) AS "avg_payment_amount"
from payments;

--2. What is the total payment amount?
SELECT SUM(amount) AS "total_payment_amount"
from payments;

--3. What is the minimum payment amount?
SELECT MIN(amount) AS "min_payment_amount"
from payments;

--4. What is the maximum payment amount?
SELECT MAX(amount) AS "max_payment_amount"
from payments;

--5. What is the count of payments for each customer?
Select customer_id, COUNT(*) AS "payment_count"
FROM payments
GROUP BY customer_id;

--6. How many customers has each staff serviced?
Select staff_id, Count(*) AS "customers_serviced_by_staff"
from payments
Group By staff_id;


