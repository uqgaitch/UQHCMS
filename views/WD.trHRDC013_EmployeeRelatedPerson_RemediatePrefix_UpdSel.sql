USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC013_EmployeeRelatedPerson_RemediatePrefix_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC013_EmployeeRelatedPerson_RemediatePrefix_UpdSel]  AS
SELECT WD.HRDC013_EmployeeRelatedPerson.Prefix, MAP.RemediatePrefix.Target as PrefixNew
FROM   WD.HRDC013_EmployeeRelatedPerson INNER JOIN
             MAP.RemediatePrefix ON WD.HRDC013_EmployeeRelatedPerson.zPrefix 
			 = MAP.RemediatePrefix.Source

GO
