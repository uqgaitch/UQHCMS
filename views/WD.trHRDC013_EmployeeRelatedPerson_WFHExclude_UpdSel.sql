USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC013_EmployeeRelatedPerson_WFHExclude_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[trHRDC013_EmployeeRelatedPerson_WFHExclude_UpdSel] as
SELECT zExclude, 'X' AS zExcludeNew, zExcludeReason, 'WFH - Excluded from Config load' AS zExcludeReasonNew
FROM   WD.HRDC013_EmployeeRelatedPerson
WHERE (zExclude IS NULL) AND (RelatedPersonRelationshipName LIKE N'%WFH%')

GO
