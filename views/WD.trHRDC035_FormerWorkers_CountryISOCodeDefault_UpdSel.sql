USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC035_FormerWorkers_CountryISOCodeDefault_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC035_FormerWorkers_CountryISOCodeDefault_UpdSel]
AS
SELECT CountryISOCode, 'AUS' AS CountryISOCodeNew
FROM   WD.HRDC035_FormerWorkers
WHERE (CountryISOCode IS NULL OR
             CountryISOCode = N'')
GO
