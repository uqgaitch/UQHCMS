USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trEmpScopeDupPosition_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER Procedure [WD].[trEmpScopeDupPosition_Upd]
AS
begin
update [WD].[trEmpScopeDupPosition_UpdSel]
set zDupPosition = zDupPositionNew
END
GO
