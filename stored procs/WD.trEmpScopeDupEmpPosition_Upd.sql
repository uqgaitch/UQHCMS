USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trEmpScopeDupEmpPosition_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER Procedure [WD].[trEmpScopeDupEmpPosition_Upd]
AS
begin
update [WD].[trEmpScopeDupEmpPosition_UpdSel]
set zDupEmpPosition = zDupEmpPositionNew
END
GO
