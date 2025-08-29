drop if exists heart;

create table heart(
sku_id serial primary key,
age INT ,
sex INT ,
cp int ,
trestbps int, 
chol int ,
fbs int,
restecg int ,
thalach int ,
exang int,
oldpeak real,
slope int ,
ca int, 
thal int ,
target int
)


select * from heart;

-- report on heart disease with age of 45 and less than 45 

select age ,
CASE WHEN sex = 1 THEN 'Male' ELSE 'Female' END AS sex,trestbps,thalach,oldpeak,target
from heart where age <= '45'  order by age;


--count of disease that existing with respect to heart


select 
CASE WHEN sex = 1 THEN 'Male' ELSE 'Female' END AS sex,
sum(
case when target =1 then 1 else 0 end 
) as with_disease from heart group by sex;

--deletion of data and data entry 

delete from heart where sex=1 and cp=0 and age = 45;
insert into heart (
sku_id,age ,sex,cp, trestbps,chol,fbs,restecg,exang,oldpeak,slope,ca,thal,target
) values (
305,118,1,3,130,250,0,1,170,1,1.2,2,0,1); 
select * from heart;

-- unique chest pain types 

select distinct * from heart order by sku_id;

--avg resting blood pressure by chestpain type

select cp , avg(trestbps) from heart group by cp;

--conversions 
SELECT chol, chol * 0.0259 AS chol_mmol
FROM heart;

-- missing values

select count(*) from heart where chol is null or chol= '0';

--window functions

select * , 
lag(chol) over (order by age) as prev_chol,
lead(chol) over (order by age) as next_chol
from heart;

--Predictive Analytics QueriesFiltering by oldpeak > 2.0 AND thalach < 150 is great and using cases.

SELECT *,
  CASE WHEN oldpeak > 2.0 AND thalach < 150 THEN 'High Risk' ELSE 'Normal' END AS risk_flag
FROM heart;

-- join function for trestbps=thalach

SELECT h.*, p.*
FROM heart h
JOIN heart p ON h.trestbps=p.thalach;

