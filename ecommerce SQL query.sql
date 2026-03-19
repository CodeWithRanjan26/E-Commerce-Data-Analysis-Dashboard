SELECT
    SUM(payment_value) AS total_revenue
FROM olist_order_payments_dataset

-- card, boleto, etc.

SELECT 
    payment_type,
    SUM(payment_value) AS revenue
FROM olist_order_payments_dataset
GROUP BY payment_type
ORDER BY revenue DESC;

-- delivered orders real revenue

SELECT
    SUM(p.payment_value) AS total_revenue
FROM olist_orders_dataset o
JOIN olist_order_payments_dataset p
ON o.order_id = p.order_id
WHERE o.order_status = 'delivered';

-- Monthly Revenue Trend 

SELECT 
    DATE_FORMAT(o.order_purchase_timestamp, '%Y-%m') AS month,
    SUM(p.payment_value) AS revenue
FROM olist_orders_dataset o
JOIN olist_order_payments_dataset p
ON o.order_id = p.order_id
WHERE o.order_status = 'delivered'
GROUP BY month
ORDER BY month;
   
   
   -- Top 10 Customers
   
SELECT
	c.customer_unique_id,
	SUM(p.payment_value) AS total_spent
FROM olist_customers_dataset c
JOIN olist_orders_dataset o
ON c.customer_id = o.customer_id 
JOIN olist_order_payments_dataset p
ON o.order_id = p.order_id
GROUP BY c.customer_unique_id 
ORDER BY total_spent DESC
LIMIT 10;   

-- Region Wise Revenue

SELECT 
   c.customer_state,
   SUM(p.payment_value) AS total_revenue
FROM olist_customers_dataset c
JOIN olist_orders_dataset o
ON c.customer_id = o.customer_id
JOIN olist_order_payments_dataset p
ON o.order_id = p.order_id
GROUP BY c.customer_state
ORDER BY total_revenue DESC;


-- Repeat vs New Customers 

SELECT
    CASE
        WHEN order_count > 1 THEN 'Repeat'
        ELSE 'NEW'
	END AS customer_type,
    COUNT(*) AS total_customers
FROM (
     SELECT 
          c.customer_unique_id,
          COUNT(o.order_id) AS order_count
	 FROM olist_customers_dataset c
     JOIN olist_orders_dataset o
     ON c.customer_id = o.customer_id
     GROUP BY c.customer_unique_id
)t
GROUP BY customer_type;   

-- Top Selling Product Categories

SELECT 
	p.product_category_name,
    COUNT(oi.order_id) AS total_orders
FROM olist_products_dataset p 
JOIN olist_order_items_dataset oi
ON p.product_id = oi.product_id
GROUP BY p.product_category_name
ORDER BY total_orders DESC
LIMIT 10;  

-- Customer Lifetime Value (CLV)

SELECT 
    c.customer_unique_id,
    SUM(p.payment_value) AS lifetime_value
FROM olist_customers_dataset c
JOIN olist_orders_dataset o
ON c.customer_id = o.customer_id
JOIN olist_order_payments_dataset p
ON o.order_id = p.order_id
GROUP BY c.customer_unique_id
ORDER BY lifetime_value DESC
LIMIT 10;

-- Delivery Time Analysis

SELECT
    AVG(DAtEDIFF(order_delivered_customer_date, order_purchase_timestamp)) AS avg_delivered_days
FROM olist_orders_dataset 
WHERE order_status = 'delivered';  

-- Top slow deliveries  

SELECT
     order_id,
     DAtEDIFF(order_delivered_customer_date, order_purchase_timestamp) AS  delivery_days
FROM olist_orders_dataset
WHERE order_status = 'delivered'
ORDER BY delivery_days DESC
LIMIT 10;