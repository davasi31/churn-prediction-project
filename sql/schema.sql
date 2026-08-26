CREATE DATABASE IF NOT EXISTS churn_db;

USE churn_db;

CREATE TABLE customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    gender VARCHAR(10),
    senior_citizen TINYINT,
    partner VARCHAR(5),
    dependents VARCHAR(5),
    tenure INT,
    phone_service VARCHAR(5),
    multiple_lines VARCHAR(20),
    internet_service VARCHAR(20),
    online_security VARCHAR(20),
    online_backup VARCHAR(20),
    device_protection VARCHAR(20),
    tech_support VARCHAR(20),
    streaming_tv VARCHAR(20),
    streaming_movies VARCHAR(20),
    contract VARCHAR(20),
    paperless_billing VARCHAR(5),
    payment_method VARCHAR(30),
    monthly_charges DECIMAL(10,2),
    total_charges DECIMAL(10,2),
    churn VARCHAR(5)
);