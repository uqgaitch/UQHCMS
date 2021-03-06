USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC035_FormerWorkers_InsSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC035_FormerWorkers_InsSel]
AS
SELECT distinct T000F005_WAMI_KEY as FormerWorkerID,
T000F005_WAMI_KEY as zWAMIKey,
'AURION' as zSource,
getdate() as zLoadDate
from [WD].[tvHRDC035_FormerWorkers_Sel]
GO
