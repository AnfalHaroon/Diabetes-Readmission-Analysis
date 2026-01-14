USE [Healthcare_Diabetes]
GO

/****** Object:  Table [dbo].[raw_diabetic_data]   
Script Date: 13/11/2025 10:21:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[raw_diabetic_data](
	[encounter_id] [varchar](50) NULL,
	[patient_nbr] [varchar](50) NULL,
	[race] [varchar](50) NULL,
	[gender] [varchar](50) NULL,
	[age] [varchar](50) NULL,
	[weight] [varchar](50) NULL,
	[admission_type_id] [varchar](50) NULL,
	[discharge_disposition_id] [varchar](50) NULL,
	[admission_source_id] [varchar](50) NULL,
	[time_in_hospital] [varchar](50) NULL,
	[payer_code] [varchar](50) NULL,
	[medical_specialty] [varchar](50) NULL,
	[num_lab_procedures] [varchar](50) NULL,
	[num_procedures] [varchar](50) NULL,
	[num_medications] [varchar](50) NULL,
	[number_outpatient] [varchar](50) NULL,
	[number_emergency] [varchar](50) NULL,
	[number_inpatient] [varchar](50) NULL,
	[diag_1] [varchar](50) NULL,
	[diag_2] [varchar](50) NULL,
	[diag_3] [varchar](50) NULL,
	[number_diagnoses] [varchar](50) NULL,
	[max_glu_serum] [varchar](50) NULL,
	[A1Cresult] [varchar](50) NULL,
	[metformin] [varchar](50) NULL,
	[repaglinide] [varchar](50) NULL,
	[nateglinide] [varchar](50) NULL,
	[chlorpropamide] [varchar](50) NULL,
	[glimepiride] [varchar](50) NULL,
	[acetohexamide] [varchar](50) NULL,
	[glipizide] [varchar](50) NULL,
	[glyburide] [varchar](50) NULL,
	[tolbutamide] [varchar](50) NULL,
	[pioglitazone] [varchar](50) NULL,
	[rosiglitazone] [varchar](50) NULL,
	[acarbose] [varchar](50) NULL,
	[miglitol] [varchar](50) NULL,
	[troglitazone] [varchar](50) NULL,
	[tolazamide] [varchar](50) NULL,
	[examide] [varchar](50) NULL,
	[citoglipton] [varchar](50) NULL,
	[insulin] [varchar](50) NULL,
	[glyburide-metformin] [varchar](50) NULL,
	[glipizide-metformin] [varchar](50) NULL,
	[glimepiride-pioglitazone] [varchar](50) NULL,
	[metformin-rosiglitazone] [varchar](50) NULL,
	[metformin-pioglitazone] [varchar](50) NULL,
	[change] [varchar](50) NULL,
	[diabetesMed] [varchar](50) NULL,
	[readmitted] [varchar](50) NULL
) ON [PRIMARY]
GO


