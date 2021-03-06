USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC013_EmployeeRelatedPerson_RemediateWFH_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC013_EmployeeRelatedPerson_RemediateWFH_UpdSel]  AS
SELECT LegalFirstName,
'Working from Home' as LegalFirstNameNew,
LegalLastName, 
'Working from Home' as LegalLastNameNew
FROM   WD.HRDC013_EmployeeRelatedPerson
WHERE (zFullName LIKE '%Working from Home%')
GO
