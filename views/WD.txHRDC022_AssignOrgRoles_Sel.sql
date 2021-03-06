USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC022_AssignOrgRoles_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[txHRDC022_AssignOrgRoles_Sel]
as
SELECT 
 isnull([OrganisationType],'') as [OrganisationType]
,isnull([Organisation],'') as [Organisation]
,isnull([EffectiveDate],'') as [EffectiveDate]
,isnull([OrganisationRoleName],'') as [OrganisationRoleName]
,isnull([PositionID],'') as [PositionID]
FROM [DQS_STAGING_DATA].[WD].[HRDC022_AssignOrgRoles]
where zExclude is null
GO
