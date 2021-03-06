USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC013_EmployeeRelatedPersonRegion_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC013_EmployeeRelatedPersonRegion_UpdSel] AS
SELECT WD.HRDC013_EmployeeRelatedPerson.HomeRegion, WD.HRDC013_EmployeeRelatedPerson.zRegion, MAP.CountryRegion.ReferenceID AS zRegionNew
FROM   WD.HRDC013_EmployeeRelatedPerson INNER JOIN
             MAP.CountryRegion ON WD.HRDC013_EmployeeRelatedPerson.HomeRegion = MAP.CountryRegion.SourceValue
WHERE (WD.HRDC013_EmployeeRelatedPerson.HomeRegion IS NOT NULL)
GO
