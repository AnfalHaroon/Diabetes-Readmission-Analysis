Diabetes Hospital Readmission Analysis
- Project Overview

This project analyzes hospital readmission patterns among diabetic patients using the Diabetes 130‑US Hospitals (1999–2008) dataset. The goal is to identify key drivers of readmissions and present actionable healthcare KPIs through SQL analysis and an interactive Power BI dashboard.
The project simulates a real‑world Healthcare Data Analyst workflow, from data cleaning to KPI reporting and 
visualization.

 - Business Problem
Hospital readmissions increase healthcare costs and indicate potential gaps in quality of care.
Key questions addressed:
What is the overall readmission rate for diabetic patients?
Which age groups have higher readmission risk?
Is readmission associated with length of stay or medication count?
Are there differences in readmission rates by gender?

-  Dataset Information
Source: Kaggle – Diabetes 130‑US Hospitals Dataset
Time Period: 1999–2008
Records: ~101,766 hospital encounters
Domain: Electronic Health Records (EHR)
 Data Preparation (SQL)
Data cleaning and transformation were performed using SQL:
Removed invalid and unknown values ("?", NULLs)
Converted numeric fields to appropriate data types
Selected clinically relevant columns for analysis
Created a final analytics table for reporting
Final table used:
dbo.final_diabetic_analytics

-  Key KPIs
Total Encounters
Overall Readmission Rate (%)
30‑Day Readmission Rate (%)
Average Length of Stay (Days)
Average Number of Medications
These KPIs reflect commonly used healthcare quality and utilization metrics.

- Power BI Dashboard
The interactive dashboard includes:
KPI cards for high‑level monitoring
Readmission rate by age group
Readmission rate by gender
Average medications by readmission status
Slicers for age, gender, and readmission category
The dashboard enables quick identification of high‑risk patient groups.

 Key Observations (Derived from Analysis)
Readmission rates increase with patient age
Patients who are readmitted tend to have higher medication counts
Minimal difference in readmission rates between genders.

# Key Insights  

- Readmission risk increases significantly with age  
  → Elderly patients represent the highest-risk group  

- Higher medication count is associated with increased readmissions  
  → Indicates potential polypharmacy risk and treatment complexity  

- Patients readmitted within 30 days have the highest medication burden 
  → Suggests possible issues in treatment effectiveness or discharge planning  

- Gender is not a significant predictor of readmission risk  
  → Minimal variation observed between male and female patients  

- Average Length of Stay is 4 days 
  → Requires further analysis to determine its direct impact on readmissions  

- High-risk patient profile identified: 
  → Elderly patients + high medication count + frequent readmissions

#  Recommendations  

- Target High-Risk Patients 
  Focus on elderly patients with frequent hospital visits  

- Optimize Medication Management 
  Reduce unnecessary medications and monitor polypharmacy risks  

- Enhance Post-Discharge Follow-Up  
  Implement follow-up calls within 7–30 days after discharge  

- Improve Discharge Planning 
  Ensure patients clearly understand medications and care plans  

- Leverage Predictive Analytics (Next Step) 
  Build models to identify high-risk patients before discharge
  





- Tools & Technologies
SQL Server – Data cleaning & analysis
Power BI – Dashboard & visualization
Healthcare Metrics – Readmission, LOS, Medication Burden.
