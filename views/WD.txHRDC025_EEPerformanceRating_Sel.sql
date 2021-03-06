USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC025_EEPerformanceRating_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[txHRDC025_EEPerformanceRating_Sel]
as
SELECT  
 isnull([EmployeeID],'') as [EmployeeID]
,isnull([ManagerID],'') as [ManagerID]
,isnull([ReviewTemplate],'') as [ReviewTemplate]
,isnull([ReviewPeriodStartDate],'') as [ReviewPeriodStartDate]
,isnull([ReviewPeriodEndDate],'') as [ReviewPeriodEndDate]
,isnull([ReviewRating],'') as [ReviewRating]
FROM [DQS_STAGING_DATA].[WD].[HRDC025_EEPerformanceRating]
where zExclude is null
GO
