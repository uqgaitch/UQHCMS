USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC035_FormerWorkers_Ins]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trHRDC035_FormerWorkers_Ins]
AS
begin
insert into [wd].[HRDC035_FormerWorkers]
(
FormerWorkerID,
zWAMIKey,
zSource,
zLoadDate
)
select  FormerWorkerID,
zWAMIKey,
zSource,
zLoadDate
from [WD].[trHRDC035_FormerWorkers_InsSel]
END


GO
