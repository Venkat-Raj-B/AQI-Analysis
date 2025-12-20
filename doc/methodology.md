# AQI Methodology (CPCB Based)

This project calculates Air Quality Index (AQI) following the guidelines of the
Central Pollution Control Board (CPCB), India.

## Data Overview

- Input data: Hourly air quality measurements
- Pollutants considered:
  - PM2.5 (µg/m³)
  - PM10 (µg/m³)
  - NO₂ (µg/m³)
  - SO₂ (µg/m³)
  - CO (mg/m³)
  - O₃ (µg/m³)

## Data Processing Steps

### 1. Hourly to Daily Aggregation

- Hourly data is converted to daily values.
- PM2.5, PM10, NO₂, SO₂ → Daily average
- CO and O₃ → 8-hour rolling average, then daily maximum

### 2. AQI Sub-Index Calculation

For each pollutant, AQI is calculated using CPCB breakpoints:

AQI = ((IHI − ILO) / (BHI − BLO)) × (C − BLO) + ILO

Where:

- C = pollutant concentration
- BLO, BHI = concentration breakpoints
- ILO, IHI = AQI index breakpoints

### 3. Overall AQI

- Overall AQI is defined as the **maximum** of all pollutant AQI sub-indices.
- The pollutant with the highest AQI is identified as the **dominant pollutant**.

### 4. AQI Categories

AQI values are classified as:

- 0–50: Good
- 51–100: Satisfactory
- 101–200: Moderate
- 201–300: Poor
- 301–400: Very Poor
- 401–500: Severe

### 5. Monthly Analysis

- Monthly AQI values are calculated as the **average of daily AQI values**.
- Monthly aggregation is used for trend analysis and visualization.

## Tools Used

- Microsoft Excel (advanced formulas, tables, aggregation)
- CPCB AQI standards
