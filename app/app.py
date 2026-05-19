import os

import streamlit as st
import pandas as pd
import joblib

# Load model
model_path = os.path.join(
    os.path.dirname(__file__),
    "simple_churn_model.pkl"
)

model = joblib.load(model_path)

# Title
st.title("Bank Customer Churn Prediction")

st.write(
    "Predict whether customer is likely to churn"
)

# Inputs
credit_score = st.number_input(
    "Credit Score",
    min_value=300,
    max_value=900,
    value=600
)

age = st.number_input(
    "Age",
    min_value=18,
    max_value=100,
    value=35
)

tenure = st.number_input(
    "Tenure",
    min_value=0,
    max_value=15,
    value=5
)

balance = st.number_input(
    "Balance",
    min_value=0.0,
    value=50000.0
)

products_number = st.number_input(
    "Products Number",
    min_value=1,
    max_value=5,
    value=2
)

active_member = st.selectbox(
    "Active Member",
    [0, 1]
)

estimated_salary = st.number_input(
    "Estimated Salary",
    min_value=0.0,
    value=50000.0
)

# Predict button
if st.button("Predict Churn"):

    input_data = pd.DataFrame({

        'credit_score': [credit_score],
        'age': [age],
        'tenure': [tenure],
        'balance': [balance],
        'products_number': [products_number],
        'active_member': [active_member],
        'estimated_salary': [estimated_salary]

    })

    prediction = model.predict(input_data)[0]

    probability = model.predict_proba(
        input_data
    )[0][1]

    st.subheader("Prediction Result")

    if prediction == 1:
        st.error("Customer likely to churn")
    else:
        st.success("Customer likely to stay")

    st.write(
        f"Churn Probability: {probability:.2%}"
    )