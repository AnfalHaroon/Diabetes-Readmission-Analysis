
/*project:Diabetes Readmission Analysis
DATAset  :Diabetes 130-us Hospitals(1999-2008)
step     :Data Cleaning : Handle missing and invalid values( ?, none , Unknown/Invalid )
Author   :Anfal Haroon*/

IF OBJECT_ID('dbo.clean_diabetic_data','U')IS NOT NULL
DROP TABLE dbo.clean_diabetic_data;


SELECT
encounter_id,
	patient_nbr,
	NULLIF(race, '?') AS race,
	NULLIF(gender,'unknown /Invalid')AS gender,
	age,
	admission_type_id,
	discharge_disposition_id,
	admission_source_id,
	time_in_hospital,
	NULLIF(payer_code,'?') AS payer_code,
	NULLIF(medical_specialty,'?') AS medical_specialty,
	num_lab_procedures,
	num_procedures,
	num_medications,
	number_outpatient,
	number_emergency,
    number_inpatient,
	NULLIF(diag_1,'?') AS diag_1,
	NULLIF(diag_2,'?') AS diag_2,
    NULLIF (diag_3,'?') AS diag_3,

	number_diagnoses,
	NULLIF(max_glu_serum,'None')AS max_glu_serum,
	NULLIF(A1Cresult,'None')AS A1Cresult,
	metformin,
	change,
	diabetesMed,
	readmitted
	INTO dbo.clean_diabetic_data
	FROM dbo.raw_diabetic_data
	WHERE 
	gender IS NOT NULL
	AND age IS NOT NULL
	AND readmitted IS NOT NULL;

SELECT TOP 10*
FROM dbo.clean_diabetic_data;

SELECT COUNT (*)
FROM dbo.clean_diabetic_data;
 
SELECT
COUNT(*) null_gender
FROM dbo.clean_diabetic_data
WHERE gender IS NULL;

SELECT
COUNT(*)AS question_mark_race
FROM dbo.clean_diabetic_data
WHERE race ='?';

