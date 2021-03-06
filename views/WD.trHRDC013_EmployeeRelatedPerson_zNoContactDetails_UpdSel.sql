USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC013_EmployeeRelatedPerson_zNoContactDetails_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC013_EmployeeRelatedPerson_zNoContactDetails_UpdSel]  AS
SELECT zNoContactDetails, 'X' AS zNoContactDetailsNew
FROM   WD.HRDC013_EmployeeRelatedPerson
WHERE (HomePhoneNumber IS NULL) AND (WorkPhoneNumber IS NULL) 
AND (MobilePhoneNumber IS NULL) AND (zExclude IS NULL)
GO
