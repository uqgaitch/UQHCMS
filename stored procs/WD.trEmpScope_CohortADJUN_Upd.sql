USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trEmpScope_CohortADJUN_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trEmpScope_CohortADJUN_Upd]
AS
begin
update [WD].[trEmpScope_CohortADJUN_UpdSel]
set zCohortType = zCohortTypeNew
END
GO
