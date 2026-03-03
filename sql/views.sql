USE amazon_db;

CREATE VIEW monthly_revenue AS
SELECT
    d.year,
    d.month,
    SUM(f.total_revenue) AS total_revenue
FROM fact_sales f
JOIN dim_date d ON f.date_id = d.date_id
GROUP BY d.year, d.month;
