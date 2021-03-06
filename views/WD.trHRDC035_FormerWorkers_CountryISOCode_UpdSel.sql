USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC035_FormerWorkers_CountryISOCode_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC035_FormerWorkers_CountryISOCode_UpdSel]
AS
SELECT WD.HRDC035_FormerWorkers.CountryISOCode, AUR.T000_WAMI.T000F270_COUNTRY_CODE AS CountryISOCodeNew
FROM   WD.HRDC035_FormerWorkers INNER JOIN
             AUR.T000_WAMI ON WD.HRDC035_FormerWorkers.FormerWorkerID = AUR.T000_WAMI.T000F005_WAMI_KEY
GO
