
# Heart Disease Analysis Using SQL

Overview

This project explores heart disease data using SQL to uncover patterns, assess risk factors, and demonstrate practical database operations. It includes data cleaning, transformation, aggregation, and predictive logic—all built on a PostgreSQL table named `heart`.

## Table Schema

```sql
CREATE TABLE heart (
  sku_id SERIAL PRIMARY KEY,
  age INT,
  sex INT,
  cp INT,
  trestbps INT,
  chol INT,
  fbs INT,
  restecg INT,
  thalach INT,
  exang INT,
  oldpeak REAL,
  slope INT,
  ca INT,
  thal INT,
  target INT
);
```

- `target = 1` indicates presence of heart disease.
- `sex = 1` is male, `sex = 0` is female.
- `cp` refers to chest pain type (categorical).
- `thalach` is maximum heart rate achieved.
- `oldpeak` measures ST depression induced by exercise.

---

##  Key Queries & Insights

##Age-Based Risk Report
```sql
SELECT age, sex, trestbps, thalach, oldpeak, target
FROM heart
WHERE age <= 45
ORDER BY age;
```
> Filters and profiles patients aged 45 and below.

---

##Disease Count by Gender
```sql
SELECT sex, SUM(CASE WHEN target = 1 THEN 1 ELSE 0 END) AS with_disease
FROM heart
GROUP BY sex;
```
---

##Data Cleaning and inserting data
```sql
DELETE FROM heart WHERE sex = 1 AND cp = 0 AND age = 45;

insert into heart (
sku_id,age ,sex,cp, trestbps,chol,fbs,restecg,exang,oldpeak,slope,ca,thal,target
) values (
305,118,1,3,130,250,0,1,170,1,1.2,2,0,1); 
select * from heart;
```


---

##Chest Pain Analysis
```sql
SELECT DISTINCT cp FROM heart;

SELECT cp, AVG(trestbps) FROM heart GROUP BY cp;
```
> Identifies unique chest pain types and their average resting blood pressure.

---

## Unit Conversion
```sql
SELECT chol, chol * 0.0259 AS chol_mmol FROM heart;
```
> Converts cholesterol from mg/dL to mmol/L.

---

## Missing Value Detection
```sql
SELECT COUNT(*) FROM heart WHERE chol IS NULL OR chol = 0;
```
---

## Window Functions
```sql
SELECT *, LAG(chol) OVER (ORDER BY age), LEAD(chol) OVER (ORDER BY age) FROM heart;
```
---

## Predictive Risk Flag
```sql
SELECT *, CASE WHEN oldpeak > 2.0 AND thalach < 150 THEN 'High Risk' ELSE 'Normal' END AS risk_flag FROM heart;
```
> Flags patients with high risk based on key indicators.

---

# Join on trestbps = thalach
```sql
SELECT h.*, p.* FROM heart h JOIN heart p ON h.trestbps = p.thalach;
```
> Demonstrates join logic for pattern matching.

---

##  Learning Outcomes

- real-world query structuring
- Data cleaning and transformation
- Aggregation, filtering, and window functions
- Risk prediction using conditional logic 


##  How to Run

1. Set up a PostgreSQL database.
2. Run the schema and insert queries.
3. Execute analysis queries in sequence or explore interactively.

##  Author
Krishnaadupula
