USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trEmpScope_CohortBothEmpandContingent_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [WD].[trEmpScope_CohortBothEmpandContingent_Upd]
AS
begin
update [WD].[trEmpScope_CohortBothEmpandContingent_UpdSel]
set zCohortEEandContingent = zCohortEEandContingentNew
END
GO
