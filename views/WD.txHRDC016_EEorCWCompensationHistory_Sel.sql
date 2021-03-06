USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC016_EEorCWCompensationHistory_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[txHRDC016_EEorCWCompensationHistory_Sel]
as
SELECT
 isnull([EmployeeContingentWorkerID],'') as [EmployeeContingentWorkerID]
,isnull([HistoryRecordReferenceID],'') as [HistoryRecordReferenceID]
,isnull([WorkerHistoryName],'') as [WorkerHistoryName]
,isnull([ActionDate],'') as [ActionDate]
,isnull([Reason],'') as [Reason]
,isnull([Amount],'') as [Amount]
,isnull([CurrencyCode],'') as [CurrencyCode]
,isnull([Frequency],'') as [Frequency]
,isnull([AmountChange],'') as [AmountChange]
,isnull([Description],'') as [Description]
FROM [DQS_STAGING_DATA].[WD].[HRDC016_EEorCWCompensationHistory]
where zExclude is null
GO
