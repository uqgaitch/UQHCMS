USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC010_ContingentWorkerCompensation_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[txHRDC010_ContingentWorkerCompensation_Sel]
as
SELECT 
 isnull([ContingentWorkerID],'') as [ContingentWorkerID]
,isnull([ContractPayRate],'') as [ContractPayRate]
,isnull([CurrencyCode],'') as [CurrencyCode]
,isnull([FrequencyName],'') as [FrequencyName]
FROM [DQS_STAGING_DATA].[WD].[HRDC010_ContingentWorkerCompensation]
where zExclude is null
GO
