USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC030_LearningEnrolments_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [WD].[txHRDC030_LearningEnrolments_Sel]
as
SELECT
 isnull([LearningCourse],'') as [LearningCourse]
,isnull([InstructorLedCourse],'') as [InstructorLedCourse]
,isnull([LearnerType],'') as [LearnerType]
,isnull([Learner],'') as [Learner]
,isnull([Required],'') as [Required]
FROM [DQS_STAGING_DATA].[WD].[HRDC030_LearningEnrolments]
where zExclude is null
GO
