# banking-fraud-detection-analytics
# Banking Fraud Detection & Risk Monitoring

## Business Context
Financial fraud results in direct monetary loss, regulatory risk, and customer trust erosion.
This project detects fraudulent transactions, identifies high-risk patterns, and enables
monitoring dashboards for risk and compliance teams.

## Dataset
- Source: Kaggle – Credit Card Fraud Detection
- Target column: `Class` (1 = Fraud, 0 = Normal)

## Key Deliverables
- Cleaned and validated transaction dataset
- SQL-based fraud KPIs and pattern analysis
- Fraud detection model with probability scoring
- Power BI fraud monitoring dashboard
- Actionable high-risk transaction list

## Tools & Technologies
- Python (pandas, numpy, scikit-learn)
- SQL
- Power BI
- Jupyter Notebook

## Use Cases Covered
- Fraud rate monitoring
- Transaction risk scoring
- Anomaly pattern identification
- Compliance reporting

## How to Run
1. Place dataset in `data/raw/creditcard.csv`
2. Run ETL:
```bash
python src/etl.py
