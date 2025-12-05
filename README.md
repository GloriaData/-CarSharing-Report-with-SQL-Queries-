# CarSharing Report with SQL Queries

## 📌 Overview

This repository contains the SQL queries and documentation for the CarSharing dataset analysis.  
The dataset has been imported into a MySQL database named **`carsharing`** with the following tables:

1. **carsharing_df** – Main fact table  
   *(columns: id, temp_code, weather_code, humidity, windspeed, demand)*

2. **temperature** – Temperature dimension  
   *(columns: temp_code, temp_category)*

3. **time** – Time dimension  
   *(columns: id, timestamp, season, Hour, Weekday_Name, Month_Name)*


---

## 📂 Google Drive (Dataset & SQL Files)

All database tables (`carsharing_df`, `weather`, `temperature`, `time`) and the EER Diagram are stored here:

🔗 **Google Drive Folder:**  
https://drive.google.com/drive/folders/1-QmIELgWyLW2K_sRWG3pumaQzfO7bQ3E?usp=drive_link

---

## 📘 SQL Queries (Full Analysis)

All SQL queries used in this project are contained in the file below:

👉 **[Click here to view the SQL Queries](queries.sql)**  

### This file includes:

- Highest demand date & time in 2017  
- Highest & lowest average demand (weekday, month, season)  
- Hourly analysis of the highest-demand weekday  
- Weather summary statistics  
- Monthly windspeed & humidity analysis  
- Temperature-category demand breakdown  

---

## 📊 EER Diagram

Click here to download: https://github.com/GloriaData/-CarSharing-Report-with-SQL-Queries-/blob/main/Carsharing%20EER%20Daigram.png

---

## 👤 Author  
**Tochukwu Gloria Ekeleme**

