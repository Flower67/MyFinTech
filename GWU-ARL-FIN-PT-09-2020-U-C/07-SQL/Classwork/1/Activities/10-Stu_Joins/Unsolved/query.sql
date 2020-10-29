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
