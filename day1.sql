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