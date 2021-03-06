USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC009_EmployeeOneTimePayments_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[txHRDC009_EmployeeOneTimePayments_Sel]
as
SELECT
 isnull([EmployeeID],'') as [EmployeeID]
,isnull([PositionID],'') as [PositionID]
,isnull([EffectiveDate],'') as [EffectiveDate]
,isnull([ReasonReference],'') as [ReasonReference]
,isnull([OneTimePaymentPlan],'') as [OneTimePaymentPlan]
,isnull([Amount],'') as [Amount]
,isnull([CurrencyCode],'') as [CurrencyCode]
FROM [DQS_STAGING_DATA].[WD].[HRDC009_EmployeeOneTimePayments]
where zExclude is null
GO
