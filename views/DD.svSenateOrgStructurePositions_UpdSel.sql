SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [DD].[svSenateOrgStructurePositions_UpdSel] as 

select [Back to ToC], Group2, Group3, Group4, Group5, Group6, Group7, Group8, Group9, Group10, 'SUP0010001'  as [Reference ID]
, [Position ID], [Job Posting Title], [Job Title], [ADDITIONAL JOB], [Position Business Title], [Job Description Summary], [Job Description], [Critical Job Y/N]
, [Availability Date], [Earliest Hire Date], [Job Family ID], [Job Profile ID], [Location ID], [Worker Type ID], [Position Time Type ID], [Key Risk Role], [Regulated Role]
, [Type Of Regulated Role 1], [Type Of Regulated Role 2], [Type Of Regulated Role 3], [Type Of Regulated Role 4], [Type Of Regulated Role 5], [Type Of Regulated Role 6]
, [Code Staff / Material Risk Taker], Malus, Comments, [MATRIX ORG ID], [Reference ID1], [Key Risk Role 2], [JOB CLASSIFICATION - SUPERVISORY CATEGORY_1]
, [JOB CLASSIFICATION - SUPERVISORY CATEGORY_2], [JOB CLASSIFICATION - SUPERVISORY CATEGORY_3], [JOB CLASSIFICATION - EXTENDED SUPERVISORY CATEGORY]

from dd.ddPositions where [Back to ToC] in (



SELECT T101F005_POSITION_NO FROM [AUR].[T101_POSITION] where T101F130_REPORTS_TO_POSITION = '1048347' and T101F010_POSITION_STATUS = 'active')
GO
