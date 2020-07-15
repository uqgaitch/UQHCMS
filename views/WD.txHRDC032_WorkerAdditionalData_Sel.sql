USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC032_WorkerAdditionalData_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[txHRDC032_WorkerAdditionalData_Sel] as


SELECT [EmployeeID]
      ,isnull([EthnicityName],'') as [AboriginalOrTorresStraitIslander]
    
    
  FROM [DQS_STAGING_DATA].[WD].[HRDC032_WorkerAdditionalData]
  where zexclude is null
GO
