USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC033_TalentStatement_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [WD].[txHRDC033_TalentStatement_Sel]
as
SELECT 
 isnull([EmployeeID],'') as [EmployeeID]
,isnull([TalentStatementReferenceID],'') as [TalentStatementReferenceID]
,isnull([TalentStatementType],'') [TalentStatementType]
,isnull([TalentStatement],'') as [TalentStatement]
,isnull([AuthorReference],'') as [AuthorReference]
FROM [DQS_STAGING_DATA].[WD].[HRDC033_TalentStatement]
where zExclude is null
GO
