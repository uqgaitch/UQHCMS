USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC028_LearningImportedContent_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[txHRDC028_LearningImportedContent_Sel] as

SELECT        isnull(LearningImportedContentID,'') as LearningImportedContentID, 
isnull(Title,'') as Title, 
isnull(Description,'') as Description
FROM            WD.HRDC028_LearningImportedContent
WHERE        (zExclude IS NULL)
GO
