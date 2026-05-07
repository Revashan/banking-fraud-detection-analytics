
# Banking Credit Card Fraud Detection Data Analysis Project

## 1. Project Overview

This is an end-to-end **banking credit card fraud detection analytics project 
This project detects fraudulent transactions, identifies high-risk patterns, and enables
monitoring dashboards for risk and compliance teams.It includes a realistic transaction dataset, SQL scripts, Python EDA/modeling code, Power BI DAX measures, dashboard build guide, actual dashboard screenshots, and a detailed business README.

## 2. Business Problem

Banks need to detect and monitor suspicious credit card transactions to reduce financial loss, protect customers, and support fraud operations teams. This project identifies fraud patterns by customer behavior, merchant category, transaction channel, device, geography, time, amount deviation, and transaction velocity.

## 3. Dataset Details

Dataset file: `data/raw/credit_card_transactions.csv`

- Rows: **35,000**
- Columns: **34**
- Fraud cases: **313**
- Fraud rate: **0.89%**
- Total transaction value: **MYR 14,596,307.15**
- Fraud amount: **MYR 278,288.96**

Important columns include transaction_id, transaction_datetime, customer_id, card_id, merchant_id, merchant_category, merchant_country, channel, device_type, auth_method, amount, is_foreign_transaction, is_new_device, distance_from_home_km, previous_declines_24h, amount_to_avg_ratio, ip_risk_score, txn_status, is_fraud, and fraud_pattern.

## 4. Folder Structure

```text
banking_credit_card_fraud_detection_project/
├── data/
│   ├── raw/credit_card_transactions.csv
│   └── processed/monthly_fraud_summary.csv, category_fraud_summary.csv
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_data_quality_checks.sql
│   └── 03_analytics_queries.sql
├── python/
│   ├── 01_generate_dataset.py
│   ├── 02_eda_and_modeling.py
│   └── 03_dashboard_visuals.py
├── powerbi/
│   ├── PowerBI_DAX_Measures.md
│   └── PowerBI_Build_Guide.md
├── screenshots/
│   ├── powerbi_dashboard_overview.png
│   ├── powerbi_risk_investigation_dashboard.png
│   ├── monthly_fraud_rate_trend.png
│   ├── fraud_rate_by_channel.png
│   ├── top_fraud_categories.png
│   └── fraud_pattern_distribution.png
└── README.md
```

## 5. SQL Implementation

The SQL folder contains scripts for:
- Table creation and indexing
- Data quality checks
- KPI summary
- Monthly fraud trend
- Fraud by channel
- Fraud by merchant category
- Top high-risk customers
- Fraud pattern analysis

## 6. Python Implementation

Install libraries:

```bash
pip install pandas numpy scikit-learn matplotlib pillow
```

Run EDA and modeling:

```bash
python python/02_eda_and_modeling.py
```

Run visual generation:

```bash
python python/03_dashboard_visuals.py
```

The Python modeling script trains baseline Logistic Regression and Random Forest models, prints ROC-AUC, confusion matrix, classification report, and saves scored transactions.

## 7. Power BI Dashboard

Power BI files include:
- `PowerBI_DAX_Measures.md`
- `PowerBI_Build_Guide.md`

Recommended dashboard pages:
1. Executive Fraud Overview
2. Risk Investigation View

## 8. Actual Dashboard Screenshots

### Executive Fraud Overview

![Power BI Dashboard Overview](screenshots/powerbi_dashboard_overview.png)

### Risk Investigation Dashboard

![Power BI Risk Investigation Dashboard](screenshots/powerbi_risk_investigation_dashboard.png)

## 9. Key Insights

1. Fraud is concentrated in higher-risk behavioral patterns such as foreign transactions, new devices, night transactions, and high amount deviation.
2. Ecommerce and mobile wallet channels require stronger monitoring due to card-not-present exposure.
3. Merchant category risk is uneven. High-risk categories include Jewelry, Digital Goods, Gaming, Travel, and Electronics.
4. Fraud is not only about high transaction amount. Smaller transactions can be suspicious when combined with new device, repeated declines, or foreign usage.
5. Risk scoring helps fraud teams prioritize high-risk cases and reduce manual review effort.

## 10. Business Recommendations

| Area | Recommendation |
|---|---|
| Transaction Monitoring | Monitor high-risk combinations such as new device + foreign country + high amount |
| Authentication | Trigger step-up authentication for abnormal transactions |
| Fraud Operations | Create High and Critical risk investigation queues |
| Customer Protection | Notify customers for suspicious night or foreign transactions |
| Merchant Risk | Monitor categories with repeated fraud exposure |
| Model Monitoring | Track fraud rate, false positives, and model drift monthly |
| Dashboard Governance | Refresh dashboard daily or hourly depending on business requirement |

## 11. Enhancements

For a production-ready bank setup:
- Real-time streaming using Kafka or Kinesis
- Feature store for customer transaction behavior
- Model registry and versioning
- Explainability using SHAP
- Case management integration
- Fraud analyst feedback loop
- Data drift and model drift monitoring
- Regulatory audit trail
- Role-based dashboard access


## Author
Revathy Shanmugaraj
