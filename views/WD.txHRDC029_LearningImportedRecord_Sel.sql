USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC029_LearningImportedRecord_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[txHRDC029_LearningImportedRecord_Sel]
as
SELECT 
 isnull([LearningImportedContentID],'') as [LearningImportedContentID]
,isnull([LearnerType],'') as [LearnerType]
,isnull([Learner],'') as [Learner]
,isnull([StartDate],'') as [StartDate]
,isnull([CompletionDate],'') as [CompletionDate]
,isnull([LearningGrade],'') as [LearningGrade]
,isnull([OverallScore],'') as [OverallScore]
,isnull([Inactive],'') as [Inactive]
FROM [DQS_STAGING_DATA].[WD].[HRDC029_LearningImportedRecord]
where zExclude is null
GO
