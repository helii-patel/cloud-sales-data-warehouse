USE amazon_db;

-- Indexes
CREATE INDEX idx_fact_product ON fact_sales(product_id);
CREATE INDEX idx_fact_date ON fact_sales(date_id);
CREATE INDEX idx_fact_region ON fact_sales(region_id);
CREATE INDEX idx_fact_payment ON fact_sales(payment_id);
CREATE INDEX idx_date_region ON fact_sales(date_id, region_id);

-- Foreign Key Constraints
ALTER TABLE fact_sales
ADD CONSTRAINT fk_product
FOREIGN KEY (product_id)
REFERENCES dim_product(product_id);

ALTER TABLE fact_sales
ADD CONSTRAINT fk_region
FOREIGN KEY (region_id)
REFERENCES dim_region(region_id);

ALTER TABLE fact_sales
ADD CONSTRAINT fk_payment
FOREIGN KEY (payment_id)
REFERENCES dim_payment(payment_id);

ALTER TABLE fact_sales
ADD CONSTRAINT fk_date
FOREIGN KEY (date_id)
REFERENCES dim_date(date_id);
