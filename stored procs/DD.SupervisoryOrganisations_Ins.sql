USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [DD].[SupervisoryOrganisations_Ins]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure [DD].[SupervisoryOrganisations_Ins]
as
truncate table dd.[Supervisory Organisations]
---------------
insert into dd.[Supervisory Organisations]
SELECT distinct 
       isnull([Back to ToC],'')
      ,isnull([Group2],'')
      ,isnull([Group3],'')
      ,isnull([Group4],'')
      ,isnull([Group5],'')
      ,isnull([Group6],'')
      ,isnull([Group7],'')
      ,isnull([Group8],'')
      ,isnull([Group9],'')
      ,isnull([Group10],'')
      ,isnull([Reference_ID],'')
      ,isnull([Value],'')
      ,isnull([Organization Subtype],'')
      ,isnull([Location Name],'')
      ,isnull([Location ID],'')
      ,isnull([Superior Organization Name],'')
      ,isnull([Superior_Organization_ID],'')
      ,isnull([Comments],'')
      ,isnull([Sup Org Manager],'')
      ,isnull([Inactive],'')
      ,isnull([CreateDateTime],'')
      ,isnull([ModifiedDateTime],'')
      ,isnull([Active],'')
  FROM [DQS_STAGING_DATA].[DD].[SupervisoryOrganisationsTemp]
GO
