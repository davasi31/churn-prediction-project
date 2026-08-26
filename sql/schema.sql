CREATE DATABASE IF NOT EXISTS churn_db;

USE churn_db;

CREATE TABLE IF NOT EXISTS customers (
    customerID TEXT,
    gender TEXT,
    SeniorCitizen BIGINT,
    Partner TEXT,
    Dependents TEXT,
    tenure BIGINT,
    PhoneService TEXT,
    MultipleLines TEXT,
    InternetService TEXT,
    OnlineSecurity TEXT,
    OnlineBackup TEXT,
    DeviceProtection TEXT,
    TechSupport TEXT,
    StreamingTV TEXT,
    StreamingMovies TEXT,
    Contract TEXT,
    PaperlessBilling TEXT,
    PaymentMethod TEXT,
    MonthlyCharges DOUBLE,
    TotalCharges TEXT,
    Churn TEXT
);
