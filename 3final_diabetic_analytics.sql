
/*project :Diabetes Readmission Analysis
Dataset   :130 US Hospitals (1999 - 2008)
purposet  :final analytics_ready table
created by :Anfal Haroon*/

IF OBJECT_ID('dbo.final_diabetic_analytics','U')IS NOT NULL
DROP TABLE dbo.final_diabetic_analytics;


SELECT
encounter_id,
	patient_nbr,
	race,
	gender,
	age,
	CAST(admission_type_id AS INT) AS admission_type_id,
	CAST(discharge_disposition_id AS INT) AS discharge_disposition_id,
	
    CAST(admission_source_id AS INT) AS admission_source_id,

	CAST(time_in_hospital AS INT) AS time_in_hospital,
	payer_code,
	medical_specialty,

	CAST(num_lab_procedures AS INT) AS num_lab_procedures,
	CAST(num_procedures AS INT) AS num_procedures,
	CAST(num_medications AS INT) AS num_medications,
	CAST(number_outpatient AS INT) AS number_outpatient,
	CAST(number_emergency AS INT) AS number_emergency,
   CAST( number_inpatient AS INT) AS number_inpatient ,
	diag_1,
	diag_2,
    diag_3,

	CAST(number_diagnoses AS INT) AS number_diagnoses,
	max_glu_serum,
	A1Cresult,
	metformin,
	change,
	diabetesMed,
	readmitted

	INTO dbo.final_diabetic_analytics
	FROM dbo.clean_diabetic_data;

	

SELECT TOP 10*
FROM dbo.clean_diabetic_data;
