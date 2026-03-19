CREATE DATABASE ecommerce;
use ecommerce;  

CREATE TABLE order_payments(
 order_id VARCHAR(50),
 payment_sequential INT,
 payment_type VARCHAR(50),
 payment_installments INT,
 payment_value DECIMAL(10,2)
 );

 
  
 SELECT COUNT(*)
 FROM olist_order_payments_dataset;
  
  DROP TABLE order_payments;
  
  SHOW  TABLES;
  
 
