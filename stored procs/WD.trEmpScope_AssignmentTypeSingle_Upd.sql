USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trEmpScope_AssignmentTypeSingle_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER Procedure [WD].[trEmpScope_AssignmentTypeSingle_Upd]
AS
begin
update [WD].[trEmpScope_AssignmentTypeSingle_UpdSel]
set zAssignmentType = zAssignmentTypeNew
END
GO
