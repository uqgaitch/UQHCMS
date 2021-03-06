USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC031_CostingAllocations_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[txHRDC031_CostingAllocations_Sel]
as
select
 isnull([EmployeeID],'') as [EmployeeID]
,isnull([PositionID],'') as [PositionID]
,isnull([StartDate],'')  as [StartDate]
,isnull([EndDate],'') as [EndDate]
,isnull([CostingOverride],'') as [CostingOverride]
,isnull([DistributionPercent],'') as [DistributionPercent]
FROM [DQS_STAGING_DATA].[WD].[HRDC031_CostingAllocations]
where zExclude is null
GO
