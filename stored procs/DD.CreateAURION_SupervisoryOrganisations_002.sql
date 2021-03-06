USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [DD].[CreateAURION_SupervisoryOrganisations_002]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

--truncate table [DQS_STAGING_DATA].[DD].[SupervisoryOrganisation_IDs]

ALTER Procedure[DD].[CreateAURION_SupervisoryOrganisations_002] as


SET IDENTITY_INSERT [DD].[SupervisoryOrganisation_IDs] ON;


INSERT INTO [DD].[SupervisoryOrganisation_IDs]
           ([LegacyID]
           ,[WDOrgId]
		   ,zNewOrgID
           ,[Description])
select [Back to ToC] as LegacyID
		   , [Reference_ID] as WDOrgId
		   , case when cast([Back to ToC] as numeric(18,0)) < 1500 then cast([Back to ToC] as numeric(18,0)) else null end as zNewOrgId
		   , [value] as Description
  from [DD].[SupervisoryOrganisation] b--, cte
  where not exists (select * from [DD].[SupervisoryOrganisation_IDs] a where b.[Back to ToC] = a.[LegacyID])
  and cast([Back to ToC] as numeric(18,0)) < 1500


  SET IDENTITY_INSERT [DD].[SupervisoryOrganisation_IDs] OFF;

  INSERT INTO [DD].[SupervisoryOrganisation_IDs]
           ([LegacyID]
           ,[WDOrgId]
           ,[Description])
select [Back to ToC] as LegacyID
		   , [Reference_ID] as WDOrgId
--		   , case when cast([Back to ToC] as numeric(18,0)) < 1500 then cast([Back to ToC] as numeric(18,0)) else null end as zNewOrgId
		   , [value] as Description
  from [DD].[SupervisoryOrganisation] b--, cte
  where not exists (select * from [DD].[SupervisoryOrganisation_IDs] a where b.[Back to ToC] = a.[LegacyID])
  and cast([Back to ToC] as numeric(18,0)) >= 1500

GO
