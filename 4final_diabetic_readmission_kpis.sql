
/*
 Project: Diabetes Readmission Analysis
 Dataset: Diabetes 130-US Hospitals (1999–2008)
 Table Used: dbo.final_diabetic_analytics
 Purpose:
   - Analyze hospital readmissions
   - Calculate key healthcare KPIs
 Author: Anfal Haroon
*/


-- 1. DATA OVERVIEW
SELECT *
FROM dbo.final_diabetic_analytics;




SELECT 
    COUNT(*) AS total_encounters
FROM dbo.final_diabetic_analytics;

-- 2. READMISSION DISTRIBUTION

SELECT 
    readmitted,
    COUNT(*) AS total_cases,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (), 2) AS percentage
FROM dbo.final_diabetic_analytics
GROUP BY readmitted;

-- 3. KPI: OVERALL READMISSION RATE

SELECT 
    ROUND(
        SUM(CASE WHEN readmitted IN ('<30','>30') THEN 1 ELSE 0 END) * 100.0 
        / COUNT(*),
        2
    ) AS readmission_rate_percentage
FROM dbo.final_diabetic_analytics;

-- 4. KPI: READMISSION WITHIN 30 DAYS (HIGH RISK)

SELECT 
    ROUND(
        SUM(CASE WHEN readmitted = '<30' THEN 1 ELSE 0 END) * 100.0 
        / COUNT(*),
        2
    ) AS readmitted_within_30_days_percentage
FROM dbo.final_diabetic_analytics;

-- 5. KPI: AVERAGE LENGTH OF STAY (ALOS)


SELECT 
    ROUND(AVG(time_in_hospital), 2) AS avg_length_of_stay
FROM dbo.final_diabetic_analytics;


-- 6. KPI: LENGTH OF STAY BY READMISSION STATUS

SELECT 
    readmitted,
    ROUND(AVG(CAST(time_in_hospital AS 
	DECIMAL(10,2))), 2) AS
	avg_days_in_hospital
FROM dbo.final_diabetic_analytics
GROUP BY readmitted;



-- 7. KPI: AVERAGE NUMBER OF MEDICATIONS

SELECT 
    ROUND(AVG(num_medications), 2) AS avg_num_medications
FROM dbo.final_diabetic_analytics;

-- 8. MEDICATIONS VS READMISSION

SELECT 
    readmitted,
    ROUND(AVG(num_medications), 2) AS avg_medications
FROM dbo.final_diabetic_analytics
GROUP BY readmitted;

-- 9. READMISSION BY AGE GROUP

SELECT 
    age,
    COUNT(*) AS total_cases,
    ROUND(
        SUM(CASE WHEN readmitted IN ('<30','>30') THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS readmission_rate_percentage
FROM dbo.final_diabetic_analytics
GROUP BY age
ORDER BY age;

-- 10. READMISSION BY GENDER

SELECT 
    gender,
    COUNT(*) AS total_cases,
    ROUND(
        SUM(CASE WHEN readmitted IN ('<30','>30') THEN 1 ELSE 0 END) * 100.0
        / COUNT(*),
        2
    ) AS readmission_rate_percentage
FROM dbo.final_diabetic_analytics
GROUP BY gender;

-- 11. HIGH COMPLEXITY PATIENTS
-- Definition:
--   - More than 5 diagnoses
--   - Hospital stay longer than 7 days

SELECT 
    COUNT(*) AS high_complexity_patients
FROM dbo.final_diabetic_analytics
WHERE number_diagnoses > 5
  AND time_in_hospital > 7;