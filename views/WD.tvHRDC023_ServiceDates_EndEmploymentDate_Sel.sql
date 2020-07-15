USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[tvHRDC023_ServiceDates_EndEmploymentDate_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[tvHRDC023_ServiceDates_EndEmploymentDate_Sel]
AS
SELECT WAMIKey, MAX(ActualDateTo) AS EndEmploymentDate
FROM   WD.EmpScope
WHERE (zExclude IS NULL) AND (EmploymentType IN (N'PRERT', N'FIXED')) 
GROUP BY WAMIKey
GO
