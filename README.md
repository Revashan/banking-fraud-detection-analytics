# Banking Credit Card Fraud Detection Analytics

An end-to-end fraud detection analytics project built with SQL, Python, and Power BI. It covers data generation, exploratory analysis, machine learning modeling, and interactive dashboards for fraud monitoring and risk investigation.

---

## Business Problem

Banks need to detect and monitor suspicious credit card transactions to reduce financial loss, protect customers, and support fraud operations teams. This project identifies fraud patterns across customer behavior, merchant category, transaction channel, device type, geography, time, amount deviation, and transaction velocity.

---

## Dataset

| Attribute | Value |
|---|---|
| File | `data/raw/credit_card_transactions.csv` |
| Rows | 35,000 |
| Columns | 34 |
| Fraud Cases | 313 |
| Fraud Rate | 0.89% |
| Total Transaction Value | MYR 14,596,307.15 |
| Fraud Amount | MYR 278,288.96 |

Key features include: `transaction_id`, `transaction_datetime`, `customer_id`, `merchant_category`, `merchant_country`, `channel`, `device_type`, `auth_method`, `amount`, `is_foreign_transaction`, `is_new_device`, `distance_from_home_km`, `previous_declines_24h`, `amount_to_avg_ratio`, `ip_risk_score`, `is_fraud`, `fraud_pattern`.

> The dataset is synthetic but designed with realistic banking fraud patterns. Safe for portfolio and interview use.

---

## Project Structure

```
banking-fraud-detection-analytics/
├── data/
│   ├── raw/                        # Raw transaction dataset
│   └── processed/                  # Aggregated summaries and scored output
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_data_quality_checks.sql
│   └── 03_analytics_queries.sql
├── python/
│   ├── 01_generate_dataset.py      # Synthetic dataset generation
│   ├── 02_eda_and_modeling.py      # EDA + Logistic Regression / Random Forest
│   └── 03_dashboard_visuals.py     # Chart exports
├── powerbi/
│   ├── PowerBI_DAX_Measures.md
│   └── PowerBI_Build_Guide.md
├── screenshots/                    # Dashboard screenshots
└── README.md
```

---

## Tech Stack

- Python — pandas, scikit-learn, matplotlib
- SQL — table creation, data quality checks, fraud analytics queries
- Power BI — executive and risk investigation dashboards with DAX measures

---

## Setup

```bash
pip install pandas numpy scikit-learn matplotlib pillow
```

Run EDA and modeling:

```bash
python python/02_eda_and_modeling.py
```

Run visual exports:

```bash
python python/03_dashboard_visuals.py
```

---

## Machine Learning Models

Two baseline models are trained and evaluated:

| Model | Notes |
|---|---|
| Logistic Regression | Class-weighted, max_iter=1000 |
| Random Forest | 120 estimators, depth 12, balanced subsample |

Outputs: ROC-AUC, confusion matrix, classification report, and a scored CSV with `fraud_probability` and `risk_band` (Low / Medium / High / Critical).

---

## SQL Analytics

- Table creation and indexing
- Data quality checks
- KPI summary (fraud rate, fraud amount)
- Monthly fraud trend
- Fraud by channel and merchant category
- Top high-risk customers
- Fraud pattern breakdown

---

## Power BI Dashboards

Two dashboard pages built in Power BI:

**Page 1 — Executive Fraud Overview**
KPI cards, monthly fraud trend line chart, fraud rate by channel, fraud amount by merchant category, fraud pattern donut chart.

**Page 2 — Risk Investigation View**
High-risk customer table, merchant category risk bar chart, country risk map, transaction hour/day heatmap.

### Dashboard Screenshots

![Power BI Dashboard Overview](https://raw.githubusercontent.com/Revashan/banking-fraud-detection-analytics/main/powerbi/powerbi_dashboard_overview.png)

![Power BI Risk Investigation Dashboard](https://raw.githubusercontent.com/Revashan/banking-fraud-detection-analytics/main/powerbi/powerbi_risk_investigation_dashboard.png)

---

## Key Insights

1. Fraud concentrates around foreign transactions, new devices, night-time activity, and high amount deviation.
2. Ecommerce and mobile wallet channels carry higher risk due to card-not-present exposure.
3. High-risk merchant categories include Jewelry, Digital Goods, Gaming, Travel, and Electronics.
4. Small transactions can still be suspicious when combined with new device, repeated declines, or foreign usage.
5. Risk scoring helps fraud teams prioritize high-risk cases and reduce manual review effort.

---

## Business Recommendations

| Area | Recommendation |
|---|---|
| Transaction Monitoring | Flag high-risk combos: new device + foreign country + high amount |
| Authentication | Trigger step-up auth for abnormal transactions |
| Fraud Operations | Create High and Critical risk investigation queues |
| Customer Protection | Alert customers on suspicious night or foreign transactions |
| Merchant Risk | Monitor categories with repeated fraud exposure |
| Model Monitoring | Track fraud rate, false positives, and model drift monthly |

---

## Resume Summary

Built an end-to-end banking fraud detection analytics solution using SQL, Python, and Power BI. Created a realistic 35,000-row transaction dataset with customer, merchant, device, channel, velocity, and fraud-risk features. Performed SQL-based data quality checks and fraud trend analysis, developed Python EDA and baseline ML models (Logistic Regression, Random Forest), and designed Power BI dashboards to monitor fraud KPIs, trends, high-risk channels, merchant categories, and suspicious customers.
