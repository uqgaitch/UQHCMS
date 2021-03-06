USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC017_CarryOverBalances_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[txHRDC017_CarryOverBalances_Sel]  AS
SELECT        
isnull(EmployeeID, '') as EmployeeID,
isnull(zTimeOffPlanName,'') as TimeOffPlanName, 
isnull(OverrideBalanceDate, '') as OverrideBalanceDate,
--isnull(sum(convert(float, zTotalBalanceMins)), '') as OverrideBalanceUnits,
isnull(convert(nvarchar(12),sum(zBalForExport)) ,'')   as OverrideBalanceUnits,
isnull(CarryoverExpirationDate, '') as CarryoverExpirationDate,
isnull(CarryoverOverrideBalanceUnits, '') as  CarryoverOverrideBalanceUnits
FROM            WD.HRDC017_CarryOverBalances where zExclude is null 
--and EmployeeID = 20605 --and TimeOffPlanName = 'CARE'
group by EmployeeID, zTimeOffPlanName, OverrideBalanceDate, CarryoverExpirationDate, CarryoverOverrideBalanceUnits
GO
