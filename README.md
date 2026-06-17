# Banking Credit Card Fraud Detection Analytics

An end-to-end **fraud analytics and risk monitoring** project using SQL, Python, machine learning, and Power BI to identify suspicious credit card transactions and support fraud operations teams.

This project demonstrates how transaction-level behavioural data can be transformed into fraud KPIs, risk scores, investigation queues, and executive dashboards.

---

## Business Problem

Banks need to detect suspicious card transactions quickly to reduce fraud losses, protect customers, and support fraud investigation teams.

Fraud risk can increase when transactions involve:

- Foreign country usage
- New or unrecognised devices
- High transaction amount deviation
- Night-time activity
- High-risk merchant categories
- Repeated failed attempts
- Unusual transaction velocity

This project identifies fraud patterns and provides an analytics dashboard for monitoring fraud exposure and prioritising investigation.

---

## Dataset

This project uses a synthetic credit card transaction dataset created for fraud analytics practice.

| Attribute | Value |
|---|---|
| File | `data/raw/credit_card_transactions.csv` |
| Transaction Records | 35,000 |
| Fraud Cases | 313 |
| Fraud Rate | 0.89% |
| Main Target | `is_fraud` |
| Currency | MYR |

---

## Tools Used

- **SQL**: data quality checks, fraud KPI queries, risk analysis
- **Python**: EDA, feature engineering, machine learning model
- **Scikit-learn**: fraud classification model
- **Power BI**: fraud monitoring dashboards
- **DAX**: fraud rate, fraud amount, risk scoring KPIs

---

## Business Questions Answered

1. What is the overall fraud rate and fraud amount?
2. Which channels have the highest fraud exposure?
3. Which merchant categories are most risky?
4. What transaction behaviour is strongly associated with fraud?
5. Which customers or cards should be prioritised for review?
6. How can the fraud team reduce manual review effort?
7. What model performance metrics matter for imbalanced fraud data?

---

## Important Fraud Analytics Note

Fraud data is highly imbalanced. Accuracy alone is not enough.

This project should evaluate the model using:

- Precision
- Recall
- F1 Score
- Confusion Matrix
- PR-AUC
- False Positive count
- False Negative count
- Threshold tuning

For fraud use cases, **recall is important** because missing a fraud transaction can create financial loss. Precision is also important because too many false positives can overload investigation teams.

---

## Power BI Dashboard

> Important: Export these screenshots from the actual Power BI `.pbix` file after connecting to the processed dataset. Do not use mocked screenshots.

### 1. Executive Fraud Overview

![Executive Fraud Overview](powerbi/screenshots/banking_fraud_detection_dashboard.png)

Recommended visuals:

- Total transactions
- Fraud cases
- Fraud rate %
- Fraud amount
- Average fraud amount
- Monthly fraud trend
- Fraud rate by channel
- Fraud amount by merchant category

### 2. Risk Investigation Dashboard

![Risk Investigation](powerbi/powerbi_risk_investigation_dashboard.png)

Recommended visuals:

- High-risk transaction table
- Risk score distribution
- Fraud by device type
- Fraud by country
- Fraud by transaction hour
- Merchant category risk ranking
- Customer/card investigation queue
---

## Key Insights

1. Fraud activity is more likely when multiple risk signals occur together, such as foreign transaction, new device, high amount deviation, and night-time activity.

2. E-commerce and mobile wallet transactions require stronger monitoring because card-not-present transactions have higher fraud exposure.

3. High-risk merchant categories such as digital goods, gaming, travel, electronics, and jewellery should be reviewed separately.

4. Small-value transactions should not be ignored because fraudsters may test cards using small transactions before larger attempts.

5. A risk-scoring approach helps fraud teams prioritise investigation instead of manually reviewing all transactions.

---

## Business Recommendations

| Area | Recommendation | Business Impact |
|---|---|---|
| Transaction Monitoring | Flag transactions with multiple risk signals | Improves early fraud detection |
| Authentication | Trigger step-up authentication for foreign + new device + high amount transactions | Reduces fraud loss |
| Investigation Queue | Create High, Medium, Low risk review queues | Improves fraud team productivity |
| Merchant Risk | Monitor high-risk merchant categories separately | Helps identify repeated exposure |
| Customer Protection | Send customer alerts for suspicious foreign or night transactions | Improves customer trust |
| Model Monitoring | Track recall, precision, and false positives monthly | Keeps fraud model useful in production |

---

## This Project Demonstrates

- Fraud pattern analysis
- Imbalanced classification understanding
- SQL fraud analytics
- Python machine learning workflow
- Power BI risk dashboarding
- Fraud investigation prioritisation
- Business recommendation writing
