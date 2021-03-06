USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC035_FormerWorkers_LastTerminationDate_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC035_FormerWorkers_LastTerminationDate_UpdSel]
AS
SELECT WD.HRDC035_FormerWorkers.LastTerminationDate, WD.tvHRDC035_FormerWorkers_LastTerminationDate_Sel.MaxLastTerminatonDate AS LastTerminationDateNew
FROM   WD.HRDC035_FormerWorkers INNER JOIN
             WD.tvHRDC035_FormerWorkers_LastTerminationDate_Sel ON WD.HRDC035_FormerWorkers.FormerWorkerID = WD.tvHRDC035_FormerWorkers_LastTerminationDate_Sel.T000F005_WAMI_KEY
GO
