SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/
ALTER view [AUR].[HRDC028_LearningImportedContent_InsSel] as

SELECT distinct [T252F020_COURSE_REFERENCE_CODE] as LearningImportedContentID
      , T900.T900F020_LONG_DESCRIPTION as Title
      ,[T252F165_DESCRIPTION] as [Description]
  FROM [AUR].T252_COURSE_DETAILS_MaxDescription_Sel T252
  inner join AUR.T900_CODES T900
  on t900.T900F010_CODE = T252.T252F020_COURSE_REFERENCE_CODE
 where T900.T900F005_CODE_TYPE = 'T7' and T900.T900F035_RECORD_STATUS = 'ACTIVE'
GO
