DROP TABLE IF EXISTS payments

CREATE TABLE payments (
  payment_id INT PRIMARY KEY,
  customer_id INT,
  staff_id INT,
  rental_id INT,
  amount NUMERIC (5,2),
	payment_date timestamp without time zone);
	
Select *
from payments

--1.Find the count of payments per customer in descending order.
SELECT customer_id, COUNT (*) AS "payments_per_customer"
from payments
Group by customer_id
Order by payments_per_customer DESC;

--2.Find the top 5 customers who have spent the most money.
SELECT customer_id, SUM (amount) AS "big_spender"
from payments
Group by customer_id
Order by big_spender DESC
Limit 5

--3.Find the bottom 5 customers who have spent the least money.
SELECT customer_id, SUM (amount) AS "bargain_shopper"
from payments
Group by customer_id
Order by bargain_shopper ASC
Limit 5

--4.Find the top 10 customers with the highest average payment rounded to two decimal places.
SELECT customer_id, ROUND(AVG(amount), 2) AS "bigger_spender"
from payments
Group by customer_id
Order by AVG(amount) DESC
Limit 10