USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC035_FormerWorkers_WorkerTypeDefault_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC035_FormerWorkers_WorkerTypeDefault_UpdSel]
AS
SELECT WorkerType, 'EE' as WorkerTypeNew
from wd.HRDC035_FormerWorkers
GO
