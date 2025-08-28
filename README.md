Heart Disease SQL Data Analyst Student Project

This is a complete, hands-on student portfolio project based on a heart disease dataset — designed to help learners practice SQL and demonstrate real-world healthcare analytics skills. It walks through diagnostic profiling, risk segmentation, and time-series analysis using SQL.

This project is perfect for:

Students learning SQL and data analytics

--Anyone interested in healthcare data

--Preparing for internships or entry-level roles in healthtech or public health

--Project Overview

The goal is to simulate how data analysts in healthcare use SQL to:

 Explore patient demographics and disease prevalence

 Analyze health indicators like cholesterol, ST depression, and heart rate

 Segment patients into risk groups using multi-factor logic

 Track disease cases over time for public health monitoring

 Dataset Overview

The dataset mimics a real-world clinical heart disease database. Each row represents a patient record with diagnostic features, test results, and disease status.

Columns:

age: Patient age

sex: Gender (0 = female, 1 = male)

cp: Chest pain type

trestbps: Resting blood pressure

chol: Serum cholesterol

fbs: Fasting blood sugar

restecg: Resting ECG results

thalach: Maximum heart rate achieved

exang: Exercise-induced angina

oldpeak: ST depression

slope: Slope of peak exercise ST segment

ca: Number of major vessels colored by fluoroscopy

thal: Thalassemia

target: Heart disease presence (1 = disease, 0 = no disease)

test_date: Date of diagnostic test

Project Workflow

Here’s a step-by-step breakdown of what we do in this project:

1. Database & Table Creation

CREATE TABLE heart (
  age INTEGER,
  sex INTEGER,
  cp INTEGER,
  trestbps INTEGER,
  chol INTEGER,
  fbs INTEGER,
  restecg INTEGER,
  thalach INTEGER,
  exang INTEGER,
  oldpeak NUMERIC(4,2),
  slope INTEGER,
  ca INTEGER,
  thal INTEGER,
  target INTEGER,
  test_date DATE
);

2. Data Import

Load CSV using pgAdmin or any PostgreSQL client

Ensure date format is compatible with test_date column

3.  Data Exploration

Count total records

View sample rows

Check for nulls

Identify gender distribution

Compare disease vs non-disease counts

4.  Data Cleaning

Remove rows with missing or invalid values

Normalize column formats

Convert categorical codes to readable labels (optional)

5. Business Insights

Analyze disease prevalence by gender

Compare cholesterol levels across disease status

Measure ST depression among diseased patients

Flag high-risk patients using thresholds

Segment patients into risk groups

Track disease cases over time

How to Use This Project

Clone the repository

git clone https://github.com/your-username/heart-disease-sql-student-project.git
cd heart-disease-sql-student-project

Open heart_disease_sql_analysis.sql

This file contains:

Table creation

Data exploration

Data cleaning

SQL business analysis

Load the dataset into pgAdmin or any PostgreSQL client

Create a database and run the SQL file

Import the dataset

Use the SQL queries to generate insights for dashboards or reports

License

MIT — feel free to fork, star, and use in your student portfolio.

About the Author

Hey, I’m Krishna — a student passionate about healthcare analytics. I simplify complex data into actionable insights that improve decision-making.

💡 Thanks for checking out the project! Feel free to star ⭐ this repo or share it with someone learning SQL.🚀
