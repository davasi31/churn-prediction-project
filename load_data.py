import os
import pandas as pd
from sqlalchemy import create_engine
from urllib.parse import quote_plus

# Load CSV
df = pd.read_csv('data/Telco-Customer-Churn.csv')
print("CSV shape:", df.shape)
print(df.head())

# MySQL connection
username = "root"
password = quote_plus(os.environ["MYSQL_PASSWORD"])
database = "churn_db"

engine = create_engine(
    f"mysql+pymysql://{username}:{password}@localhost/{database}"
)

# Push CSV data to MySQL
df.to_sql(
    'customers',
    con=engine,
    if_exists='replace',
    index=False
)

print("Data loaded successfully. Rows inserted:", len(df))