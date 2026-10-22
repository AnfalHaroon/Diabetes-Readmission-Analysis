# Diabetes Hospital Readmission Analysis

## Project Overview

This project analyzes hospital readmission patterns among diabetic patients using the Diabetes 130-US Hospitals (1999–2008) dataset. The goal is to explore factors associated with readmission and present healthcare KPIs through SQL analysis and an interactive Power BI dashboard.

The project follows a Healthcare Data Analyst workflow: data cleaning, KPI calculation, and visualization.

## Business Problem

Hospital readmissions increase healthcare costs and may indicate gaps in quality of care. Key questions:

- What is the overall readmission rate for diabetic patients?
  
- Which age groups have a higher readmission rate?
  
- Is readmission associated with length of stay or medication count?
  
- Are there differences in readmission rates by gender?

## Dataset Information

- **Source:** Kaggle – Diabetes 130-US Hospitals Dataset
  
- **Time period:** 1999–2008
  
- **Records:** ~101,766 hospital encounters

- **Domain:** Electronic Health Records (EHR)

## Data Preparation (SQL)

- Converted placeholder values ("?", "None") to NULL
  
- Removed rows with missing gender, age, or readmission status
  
- Converted numeric fields to appropriate data types
  
- Selected relevant columns for analysis
  
- Created the final analytics table: `dbo.final_diabetic_analytics`

## Key KPIs

- Total Encounters: 101,766
  
- Overall Readmission Rate: 46% (includes both <30 and >30 days)
  
- 30-Day Readmission Rate: 11%
  
- Average Length of Stay: 4.4 days
  
- Average Number of Medications: 16.0

## Power BI Dashboard

The interactive dashboard includes:

- KPI cards for high-level monitoring
  
- Readmission rate by age group
  
- Readmission rate by gender
  
- Average medications by readmission status

- Slicers for age, gender, and readmission category

![Diabetes Readmission Dashboard](Diabetic_Analysis_Dashboard1.png)

## Key Insights

- **Age:** Readmission rate rises with age, from about 18% (ages 0-10) to about 48% (ages 70-90), then drops to about 40% for ages 90-100.
  
- **Medications:** Patients readmitted within 30 days have a slightly higher average medication count (16.9 vs 15.7 for non-readmitted), which may reflect higher clinical complexity.
  
- **Gender:** Minimal difference between female (46.9%) and male (45.1%) patients.
  
- **Length of stay:** The average stay is 4.4 days; its direct relationship with readmission needs further analysis.

## Recommendations

- **Target high-risk groups:** Focus follow-up on patients aged 70-90.
  
- **Review medication management:** Monitor polypharmacy risks in complex cases.
  
- **Strengthen post-discharge follow-up:** Consider follow-up calls within 7–30 days after discharge.
  
- **Improve discharge planning:** Ensure patients clearly understand medications and care plans.
  
- **Next step:** Build predictive models to identify high-risk patients before discharge.

## Limitations

Observational data (1999–2008). The findings show associations, not causation.

## Tools & Technologies

- SQL Server – data cleaning and analysis
  
- Power BI – dashboard and visualization
  
- Healthcare metrics – readmission rate, length of stay, medication burden

## Project Files

- `1create_raw_diabetic_data.sql`: creates the raw table
- `2create_clean_diabetic_data.sql.sql`: cleans the data
- `3final_diabetic_analytics.sql`: builds the final analytics table
- `4final_diabetic_readmission_kpis.sql`: calculates the KPIs
- `diabetics_dashboard.pbix`: Power BI dashboard
- `Diabetic_Analysis_Dashboard1.png`: dashboard screenshot

---

*Author: Anfal Haroon*
