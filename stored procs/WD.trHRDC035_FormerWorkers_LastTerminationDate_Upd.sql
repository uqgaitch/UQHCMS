USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC035_FormerWorkers_LastTerminationDate_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trHRDC035_FormerWorkers_LastTerminationDate_Upd]
AS
begin
update [WD].[trHRDC035_FormerWorkers_LastTerminationDate_UpdSel]
set LastTerminationDate = LastTerminationDateNew
END
GO
