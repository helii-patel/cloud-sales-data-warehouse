import pandas as pd
from sqlalchemy import create_engine

print("Starting ETL process...")

# 1️⃣ Extract
df = pd.read_csv("amazon_sales_dataset.csv")
print(f"Dataset loaded with {len(df)} records.")

# 2️⃣ Transform
df["order_date"] = pd.to_datetime(df["order_date"])
df = df.drop_duplicates()

print("Data cleaned successfully.")

# 3️⃣ Load
engine = create_engine(
    "mysql+pymysql://etl_user:YOUR_PASSWORD@localhost/amazon_db"
)

df.to_sql(
    name="sales",
    con=engine,
    if_exists="replace",
    index=False
)

print("ETL completed successfully.")
