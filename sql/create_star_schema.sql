USE amazon_db;

-- Create dim_product
CREATE TABLE dim_product AS
SELECT
    product_id,
    MAX(product_category) AS product_category,
    MAX(price) AS price,
    MAX(discount_percent) AS discount_percent,
    MAX(discounted_price) AS discounted_price
FROM sales
GROUP BY product_id;

ALTER TABLE dim_product
ADD PRIMARY KEY (product_id);

-- Create dim_region
CREATE TABLE dim_region AS
SELECT DISTINCT customer_region
FROM sales;

ALTER TABLE dim_region
ADD region_id INT AUTO_INCREMENT PRIMARY KEY;

-- Create dim_payment
CREATE TABLE dim_payment AS
SELECT DISTINCT payment_method
FROM sales;

ALTER TABLE dim_payment
ADD payment_id INT AUTO_INCREMENT PRIMARY KEY;

-- Create dim_date
CREATE TABLE dim_date AS
SELECT DISTINCT
    order_date,
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    MONTHNAME(order_date) AS month_name,
    DAY(order_date) AS day
FROM sales;

ALTER TABLE dim_date
ADD date_id INT AUTO_INCREMENT PRIMARY KEY;

-- Create fact_sales
CREATE TABLE fact_sales AS
SELECT
    s.order_id,
    d.date_id,
    s.product_id,
    r.region_id,
    p.payment_id,
    s.quantity_sold,
    s.total_revenue
FROM sales s
JOIN dim_date d ON s.order_date = d.order_date
JOIN dim_region r ON s.customer_region = r.customer_region
JOIN dim_payment p ON s.payment_method = p.payment_method;

ALTER TABLE fact_sales
ADD PRIMARY KEY(order_id);
