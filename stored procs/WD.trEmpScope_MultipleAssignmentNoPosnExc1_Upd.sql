USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trEmpScope_MultipleAssignmentNoPosnExc1_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [WD].[trEmpScope_MultipleAssignmentNoPosnExc1_Upd]
AS
begin
update [WD].trEmpScope_MultipleAssignmentNoPosnExc1_UpdSel
set zExclude = zExcludeNew, zExcludeReason = zExcludeReasonNew
END
GO
