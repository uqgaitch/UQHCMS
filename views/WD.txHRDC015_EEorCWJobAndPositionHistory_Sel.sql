USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC015_EEorCWJobAndPositionHistory_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[txHRDC015_EEorCWJobAndPositionHistory_Sel]
as
SELECT 
 isnull([EmployeeContingentWorkerID],'') as [EmployeeContingentWorkerID]
,isnull([HistoryRecordReferenceID],'') as [HistoryRecordReferenceID]
,isnull([WorkerHistoryName],'') as [WorkerHistoryName]
,isnull([ActionDate],'') as [ActionDate]
,isnull([Reason],'') as [Reason]
,isnull([Description],'') as [Description]
FROM [DQS_STAGING_DATA].[WD].[HRDC015_EEorCWJobAndPositionHistory]
where zExclude is null
GO
