USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC017_CarryOverBalances_CarryOverExpirationDate_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER Procedure [WD].[trHRDC017_CarryOverBalances_CarryOverExpirationDate_Upd] AS
begin
update [WD].[tvHRDC017_CarryOverBalances_CarryOverExpirationDate_UpdSel]
set CarryoverExpirationDate = CarryoverExpirationDateNew

END
GO
