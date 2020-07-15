USE [DQS_STAGING_DATA]
GO

/****** Object:  StoredProcedure [WD].[trHRDC017_CarryOverBalances_BalanceDates_Upd]    Script Date: 15/07/2020 3:57:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO



CREATE Procedure [WD].[trHRDC017_CarryOverBalances_BalanceDates_Upd] AS
begin
UPDATE [trHRDC017_CarryOverBalances_BalanceDates_UpdSel]
set  OverrideBalanceDate = OverrideBalanceDateNew

END

GO


