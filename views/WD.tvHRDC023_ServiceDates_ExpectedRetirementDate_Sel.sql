USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC023_ServiceDates_ExpectedRetirementDate_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[tvHRDC023_ServiceDates_ExpectedRetirementDate_Sel]
AS
SELECT WAMIKey, MAX(ActualDateTo) AS ExpectedRetirementDate
FROM   WD.EmpScope
WHERE (EmploymentType = 'PRERT') AND (zExclude IS NULL)
GROUP BY WAMIKey
GO
