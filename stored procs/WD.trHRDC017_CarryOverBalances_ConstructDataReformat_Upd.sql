USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC017_CarryOverBalances_ConstructDataReformat_Upd]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trHRDC017_CarryOverBalances_ConstructDataReformat_Upd] AS
begin
UPDATE [trHRDC017_CarryOverBalances_ConstructDataReformat_UpdSel]
set  EmployeeID = EmployeeIDNew, 
OverrideBalanceDate = OverrideBalanceDateNew, 
zTimeOffPlanName =	zTimeOffPlanNameNew,
zSource = zSourceNew, 
zLoadDate = zLoadDateNew,
zTotalBalanceHoursDec = zTotalBalanceHoursDecNew,
zBalForExport = zBalForExportNew,
zWAMIKey = zWAMIKeyNew

END

GO
