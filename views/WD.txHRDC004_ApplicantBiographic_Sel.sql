USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC004_ApplicantBiographic_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[txHRDC004_ApplicantBiographic_Sel] as

SELECT        
isnull(EmployeeID, '') AS EmployeeID,
isnull(CountryISOCode,  '') AS CountryISOCode,
isnull(RegionOfBirth,  '') AS RegionOfBirth,
isnull(CityOfBirth,  '') AS CityOfBirth,
isnull(DateOfBirth,  '') AS DateOfBirth,
isnull(Gender,  '') AS Gender,
isnull(DisabilityName,  '') AS DisabilityName,
isnull(UsesTobacco,  '') AS UsesTobacco,
isnull(LastMedicalExam,  '') AS LastMedicalExam,
isnull(LastExamValidTo,  '') AS LastExamValidTo,
isnull(MedicalExamNotes, '') AS MedicalExamNotes

FROM            WD.HRDC004_ApplicantBiographic
where zExclude is  null
GO
