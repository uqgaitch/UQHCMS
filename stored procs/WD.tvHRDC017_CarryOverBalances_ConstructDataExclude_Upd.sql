USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[tvHRDC017_CarryOverBalances_ConstructDataExclude_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER Procedure [WD].[tvHRDC017_CarryOverBalances_ConstructDataExclude_Upd] AS
begin
update [WD].[tvHRDC017_CarryOverBalances_ConstructDataExclude_UpdSel]
set zExclude = zExcludeNew,
zExcludeReason = zExcludeReasonNew

END
GO
