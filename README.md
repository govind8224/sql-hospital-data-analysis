# 🏥 SQL Hospital Data Analysis

A complete SQL data analytics project built using **MySQL** to analyze hospital operations, patient records, medical expenses, and departmental performance. This project demonstrates how SQL can be used to solve real-world business problems by extracting meaningful insights from healthcare data.

---

# 📌 Project Overview

Healthcare organizations generate large volumes of data every day. Analyzing this data helps hospitals improve operational efficiency, optimize resource allocation, and make informed decisions.

In this project, I worked with a hospital dataset and solved **10 business-oriented SQL problems** involving patient analysis, medical expenses, hospital stays, and department performance.

---

# 🎯 Problem Statement

Hospitals need actionable insights from their operational data to answer questions such as:

* How many patients have been treated?
* Which department handles the highest number of patients?
* Which hospital has the highest medical expenses?
* How long do patients stay in hospitals?
* Which city has treated the highest number of patients?
* What are the monthly medical expenses?

Using SQL, this project answers these questions and demonstrates practical data analysis skills.

---

# 🛠 Tech Stack

* MySQL
* MySQL Workbench
* SQL
* CSV Dataset
* Git & GitHub

---

# 🗄 Database Schema

## Hospital Table

| Column           |
| ---------------- |
| Hospital Name    |
| Location         |
| Department       |
| Doctors Count    |
| Patients Count   |
| Admission Date   |
| Discharge Date   |
| Medical Expenses |

---

# 📂 Dataset

The project uses a hospital dataset containing information about:

* Hospital Names
* Locations
* Departments
* Number of Doctors
* Number of Patients
* Admission Dates
* Discharge Dates
* Medical Expenses

---

# 📥 Data Import

The dataset was imported from a CSV file into MySQL.

Example:

```sql
LOAD DATA LOCAL INFILE 'Hospital_Data.csv'
INTO TABLE Hospital
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
```

---

# ⚠ Challenges Faced

While working on this project, I encountered several common MySQL data import issues:

### 1. LOCAL INFILE Disabled

**Issue**

```
Loading local data is disabled.
```

**Solution**

* Enabled LOCAL INFILE in MySQL.
* Used MySQL Workbench's **Table Data Import Wizard** when necessary.

---

### 2. Date Format Conversion

The dataset stored dates as text (`DD-MM-YYYY`).

To perform date calculations, I converted them into SQL DATE format.

```sql
STR_TO_DATE()
```

---

### 3. Date Difference Calculation

To calculate patient stay duration, I used:

```sql
DATEDIFF()
```

---

# 📊 Business Problems Solved

### 1. Total Number of Patients

Calculated the total number of patients treated across all hospitals.

### 2. Average Number of Doctors

Calculated the average number of doctors available in each hospital.

### 3. Top 3 Departments

Identified the departments with the highest patient count.

### 4. Highest Medical Expenses

Found the hospital with the maximum medical expenses.

### 5. Daily Medical Expenses

Calculated average medical expenses per day.

### 6. Longest Hospital Stay

Identified the patient with the longest hospital stay.

### 7. Patients Per City

Calculated the total number of patients treated in each city.

### 8. Average Length of Stay

Computed the average stay duration for each department.

### 9. Department with Lowest Patients

Identified departments requiring attention due to lower patient volumes.

### 10. Monthly Medical Expense Report

Generated month-wise medical expense summaries.

---

# 💡 SQL Concepts Used

* SELECT
* WHERE
* GROUP BY
* ORDER BY
* Aggregate Functions
* SUM()
* AVG()
* DATEDIFF()
* STR_TO_DATE()
* MONTH()
* MONTHNAME()
* LIMIT

---

# 📈 Key Insights

* Total patients treated across hospitals
* Department-wise patient distribution
* Hospital with the highest expenses
* Average patient stay by department
* City-wise patient statistics
* Month-wise medical expense trends

---



---

# 📁 Repository Structure

```
sql-hospital-data-analysis
│
├── README.md
├── sqlhospital.sql
├── Hospital_Data.csv
├── docs
│   └── Hospital_SQL_Questions_Answers.pdf
    |__ Question.pdf
```

---

# 🚀 Future Improvements

* Add SQL Views
* Create Stored Procedures
* Implement Triggers
* Optimize queries using Indexes
* Build a Power BI Dashboard
* Perform advanced healthcare analytics

---

# 👨‍💻 Author

**Govind Singh Chouhan**

🎓 B.Tech (Computer Science & Cyber Security)

📊 Aspiring Data Analyst

### Connect with Me

* LinkedIn: https://www.linkedin.com/in/govind-singh-chouhan/
* GitHub: https://github.com/govind8224

---

⭐ If you found this project helpful, consider giving it a **Star** on GitHub!
