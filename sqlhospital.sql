CREATE DATABASE HOSPITAL;
USE HOSPITAL;
-- DROP TABLE Hospital;
SET SQL_SAFE_UPDATES = 0;

CREATE TABLE Hospital (
    `Hospital Name` VARCHAR(100),
    `Location` VARCHAR(100),
    `Department` VARCHAR(100),
    `Doctors Count` INT,
    `Patients Count` INT,
    `Admission Date` varchar(10),
    `Discharge Date` varchar(10),
    `Medical Expenses` DECIMAL(10,2)
);


SELECT `Admission Date`,
       STR_TO_DATE(`Admission Date`, '%d-%m-%Y') AS formatted_date
FROM Hospital;
select * from Hospital;

ALTER TABLE Hospital
MODIFY COLUMN `Admission Date` DATE;

ALTER TABLE Hospital
ADD COLUMN admission_date_new DATE;
UPDATE Hospital
SET admission_date_new = STR_TO_DATE(`Admission Date`, '%d-%m-%Y');

ALTER TABLE Hospital
ADD COLUMN discharge_date_new DATE;
UPDATE Hospital
SET discharge_date_new = STR_TO_DATE(`discharge Date`, '%d-%m-%Y');

-- 1) WRite an sql query to find the total no of patients across all hospital
select sum(`patients count`) AS patient_count_across from hospital;

-- 2) Retrive the average count of doctors available in each hospital.
Select `hospital name`, Avg(`Doctors Count`) From hospital
group by `hospital name`;

-- 3) Find the top 3 hospital Department that have the highest number of patients 
Select  `Department`, sum(`patients Count`) from hospital
group BY `Department`
order by `Department` DESC LImit 3;

-- 4) Identify the hospital that recorded the highest Medical Expenses
select * from Hospital;
Select `hospital name`, sum(`medical expenses`) From hospital
group by `hospital name` limit 1;

-- 5) Calculate the average medical expenses per day for each hospital 
SELECT `hospital name`,
       `admission date`,
       AVG(`medical expenses`) AS avg_expense
FROM hospital
GROUP BY `hospital name`, `admission date`;

-- 6) Find the patient wiith the longest stay by calculating the differense between Discharge Date and Admission date.
SELECT 
       `Hospital Name`,
       `Admission Date`,
       `Discharge Date`,
       DATEDIFF(`discharge_date_new`, `admission_date_new`) AS stay_days
FROM Hospital
ORDER BY stay_days DESC
LIMIT 1;

-- 7) count the total  no of patients treated in each city ;
select * from hospital;
select Location, sum(`patients count`) As patient_count from hospital
group by Location;

-- 8) Calculate the average no of days patient spend in each department 
SELECT
    `department`,
    ROUND(Avg(DATEDIFF(`discharge_date_new`, `admission_date_new`))) AS Avg_stay_days
FROM Hospital
GROUP BY `department`;


-- 9 Find the department with least no of patients;
select * from hospital;
select department, sum(`patients count`) As patient_count from hospital
group by department
order by patient_count ASC limit 1;

-- 10)Group the data by month and calculate the total medical expenses for each month.
SELECT
    MONTH(`admission_date_new`) AS month_no,
    MONTHNAME(`admission_date_new`) AS month_name,
    SUM(`Medical Expenses`) AS total_medical_expenses
FROM Hospital
GROUP BY
    MONTH(`admission_date_new`),
    MONTHNAME(`admission_date_new`)
ORDER BY
    MONTH(`admission_date_new`);
