USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC035_FormerWorkers_LastTerminationDateT038_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC035_FormerWorkers_LastTerminationDateT038_UpdSel] AS
SELECT WD.HRDC035_FormerWorkers.LastTerminationDate, WD.tvHRDC035_FormerWorkers_LastTerminationDateT038_Sel.DateTerminated AS LastTerminationDateNew
FROM   WD.tvHRDC035_FormerWorkers_LastTerminationDateT038_Sel INNER JOIN
             WD.HRDC035_FormerWorkers ON WD.tvHRDC035_FormerWorkers_LastTerminationDateT038_Sel.T038F000_WAMI_KEY = WD.HRDC035_FormerWorkers.FormerWorkerID

GO
