USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trEmpScope_CombinedKey_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER Procedure [WD].[trEmpScope_CombinedKey_Upd]
AS
begin
update [WD].[trEmpScope_CombinedKey_UpdSel]
set zCombinedKey = zCombinedKeyNew
END
GO
