# Bank Customer Churn Analytics & Prediction System

## Overview

This project is an end-to-end **Bank Customer Churn Analytics System** built using:

* SQL
* Python
* Machine Learning
* Power BI
* Streamlit

The goal of this project is to identify customers likely to leave the bank and help businesses take proactive retention actions using data-driven insights.

This project simulates a real-world banking analytics workflow:

* customer behavior analysis
* transaction analytics
* churn segmentation
* predictive modeling
* business dashboarding
* deployment

---

# Problem Statement

Customer churn is one of the biggest financial risks for banks.

Losing existing customers impacts:

* revenue
* long-term profitability
* customer acquisition costs
* cross-selling opportunities

This project aims to:

* analyze customer behavior
* identify churn patterns
* predict customer churn probability
* estimate revenue at risk
* support retention decision-making

---

# Project Architecture

```text
Raw Data
   ↓
Data Cleaning
   ↓
SQL Analytics
   ↓
EDA & Visualization
   ↓
Feature Engineering
   ↓
Machine Learning
   ↓
Business Dashboard
   ↓
Streamlit Deployment
```

---

# Tech Stack

| Category         | Tools Used            |
| ---------------- | --------------------- |
| Programming      | Python                |
| Database         | PostgreSQL            |
| Data Analysis    | Pandas, NumPy         |
| Visualization    | Matplotlib, Seaborn   |
| Machine Learning | Scikit-learn, XGBoost |
| Explainability   | SHAP                  |
| Dashboard        | Power BI              |
| Deployment       | Streamlit             |
| Version Control  | Git & GitHub          |

---

# Dataset Information

## Customer Dataset

Contains:

* credit score
* age
* gender
* geography
* tenure
* account balance
* products owned
* active member status
* salary
* churn status

## Transaction Dataset

Generated synthetic banking transactions:

* ATM
* UPI
* salary credits
* shopping
* bill payments

---

# SQL Analytics Phase

The SQL phase focused on converting raw banking data into business intelligence.

## Key SQL Analysis

### Monthly Customer Activity

Analyzed:

* monthly transaction volume
* spending behavior
* activity trends

### Churn Segmentation

Identified churn patterns by:

* country
* age group
* customer activity

### Revenue Risk Analysis

Detected:

* high-value customers at churn risk
* balance decline patterns
* financial behavior changes

### Window Functions

Used SQL window functions for:

* moving average balance analysis
* customer financial trend monitoring

---

# Exploratory Data Analysis (EDA)

Performed visual analysis on:

* churn distribution
* customer demographics
* balance behavior
* product adoption
* activity patterns

## Key Insights

* inactive customers showed significantly higher churn
* certain geographic regions had elevated churn rates
* customers with fewer banking products were more likely to leave
* lower engagement strongly correlated with churn behavior

---

# Feature Engineering

Created business-oriented features such as:

## Balance Salary Ratio

Measures financial proportionality.

## Products Per Year

Measures banking product engagement over tenure.

## Transaction Activity Metrics

Analyzed customer transaction behavior over time.

## Digital Usage Patterns

Measured online banking engagement levels.

These engineered features improved churn prediction capability.

---

# Machine Learning

## Models Used

### Logistic Regression

Baseline classification model.

### XGBoost Classifier

Advanced boosting model for improved prediction performance.

---

# Evaluation Metrics

Models were evaluated using:

* Precision
* Recall
* F1-Score
* ROC-AUC

## Important Business Logic

False negatives are highly dangerous in churn prediction.

If the model fails to identify a customer who is about to leave:

* the bank loses revenue
* retention opportunities are missed

Therefore:

```text
Recall becomes critically important
```

---

# SHAP Explainability

Implemented SHAP analysis to explain:

* why customers churn
* feature influence
* prediction transparency

Example insights:

* declining activity increases churn probability
* inactive members show higher churn tendency
* balance reduction patterns indicate financial disengagement

---

# Power BI Dashboard

The Power BI dashboard contains multiple analytical pages.

## Executive Summary

KPIs:

* churn rate
* active customers
* revenue at risk
* retention ROI

## Customer Segmentation

Visualizations:

* churn by country
* churn by age group
* churn by balance
* churn by activity

## ML Insights

Included:

* feature importance
* churn distribution
* prediction insights

## Retention Strategy

Identified:

* high-risk customer segments
* priority retention targets
* estimated financial savings

---

# Streamlit Deployment

Built a deployed ML application where users can:

* input customer details
* predict churn probability
* view churn risk category

---

# Business Impact

This system helps banks:

* proactively reduce churn
* prioritize retention strategies
* identify high-risk customers
* estimate revenue exposure
* improve customer engagement decisions

---

# Folder Structure

```text
bank-churn-analytics/
│
├── data/
│
├── notebooks/
│   ├── 01_data_cleaning.ipynb
│   ├── 02_transaction_generation.ipynb
│   ├── 03_eda.ipynb
│   ├── 04_feature_engineering.ipynb
│   ├── 05_machine_learning.ipynb
│   └── 06_deployment_model.ipynb
│
├── sql/
│   ├── churn_analysis.sql
│   ├── customer_segmentation.sql
│   └── revenue_risk.sql
│
├── powerbi/
│
├── app/
│   ├── app.py
│   └── simple_churn_model.pkl
│
├── requirements.txt
│
└── README.md
```

---

# Future Improvements

Possible enhancements:

* real-time churn prediction
* API integration
* advanced customer lifetime value modeling
* deep learning models
* automated retention recommendations

---

# Deployment Link

```text
https://bankchurnanalysis-ltwaex3zxvqj7revzmnbmq.streamlit.app/
```
# Docker Deployment

* Build Docker Image
  ```
  docker build -t churn-app .
  ```
* Run Container
  ```
  docker run -p 8501:8501 churn-app
  ```
# Conclusion

This project demonstrates how data analytics and machine learning can be combined to solve real banking business problems.

Instead of building isolated visualizations, this project focuses on:

* business intelligence
* churn prediction
* revenue risk analysis
* actionable retention insights

The project follows a practical analytics workflow similar to real-world banking data science systems.
