USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC017_CarryOverBalances_Ins]    Script Date: 9/07/2020 2:20:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [WD].[trHRDC017_CarryOverBalances_Ins] AS
begin
insert into [wd].[HRDC017_CarryOverBalances]
(EmployeeID
,TimeOffPlanName
,zTimeOffPlanName
,OverrideBalanceDate
,OverrideBalanceUnits
,zTotalBalanceMins
,zEmployeeID
,zPositionID
,zWAMIKey
,zSource
,zLoadDate
)

select 
EmployeeID
,TimeOffPlanName
,zTimeOffPlanName
,OverrideBalanceDate
,OverrideBalanceUnits
,zTotalBalanceMins
,zEmployeeID
,zPositionID
,zWAMIKey
,zSource
,zLoadDate
from [WD].[trHRDC017_CarryOverBalances_InsSel]
END
GO
