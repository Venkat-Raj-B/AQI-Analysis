# Air Quality Index (AQI) Analysis

## Overview

This project presents an **end-to-end Air Quality Index (AQI) analysis** based on **CPCB standards**, implemented using **Excel, Python, and SQL**.  
Hourly air quality data is processed into **daily and monthly AQI**, dominant pollutants are identified, and air quality trends are analyzed using analytical queries and visualizations.

## Objectives

- Calculate **pollutant-wise AQI** using CPCB breakpoints
- Derive **daily and monthly AQI**
- Identify **overall AQI category** and **dominant pollutant**
- Analyze **seasonal and monthly AQI trends**
- Answer **analytical questions using SQL**

## Project Structure

```text
AQI-Analysis/
├── data/
│   ├── raw/              # Original air quality data
│   ├── processed/        # Cleaned daily & monthly AQI datasets
│   └── external/         # CPCB reference tables
├── notebooks/
│   └── aqi_analysis.ipynb
├── sql/
│   ├── daily_queries.sql
│   └── monthly_queries.sql
├── dashboard/
├── docs/
│   └── methodology.md
├── README.md
└── .gitignore
```

## 📊 Data Processing & Analysis

### 🔹 Excel

- Cleaned raw hourly air quality data
- Implemented **CPCB AQI calculation formula**
- Created **daily and monthly AQI tables**
- Designed initial AQI visualizations

### 🔹 Python

- Replicated Excel AQI logic using **pandas**
- Performed **daily and monthly aggregation**
- Calculated pollutant-wise AQI, final AQI, and categories
- Visualized AQI trends with **CPCB color bands**

### 🔹 SQL

- Queried cleaned **daily and monthly AQI tables**
- Analyzed:
  - Worst AQI days and months
  - AQI category distribution
  - Dominant pollutant frequency
  - Seasonal AQI trends
- Used **GROUP BY, CASE, and window functions**

## 📈 Key Insights

- **PM2.5** is the dominant pollutant on most high-AQI days
- **Winter months** exhibit higher AQI levels
- **Monsoon months** show improved air quality
- Monthly AQI trends highlight long-term air quality patterns

## 🛠️ Tools & Technologies

- **Microsoft Excel**
- **Python** (pandas, matplotlib)
- **SQL** (analytical queries & window functions)
- **Git & GitHub**

## 🚀 Future Enhancements

- Interactive dashboard using **Power BI / Tableau**
- Automated data ingestion and **ETL pipeline**
- Integration with **real-time air quality APIs**

```

```

```

```
