USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC036_LearningHistoryRecurring_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[txHRDC036_LearningHistoryRecurring_Sel]
as
SELECT 
 isnull([Learner],'') as [Learner]
,isnull([LearningContent],'') as [LearningContent]
,isnull([RegisteredDate],'') [RegisteredDate]
,isnull([LearningEnrollmentCompletionDate],'') as [LearningEnrollmentCompletionDate]
,isnull([OverallCourseScore],'') as [OverallCourseScore]
,isnull([LearningGrade],'') as [LearningGrade]
,isnull([AttendanceStatus],'') as [AttendanceStatus]
,isnull([VersionLabel],'') as [VersionLabel]
,isnull([ExpirationDate],'') as [ExpirationDate]
FROM [DQS_STAGING_DATA].[WD].[HRDC036_LearningHistoryRecurring]
where zExclude is null
GO
