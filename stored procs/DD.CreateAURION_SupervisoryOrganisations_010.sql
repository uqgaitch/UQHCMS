USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [DD].[CreateAURION_SupervisoryOrganisations_010]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure[DD].[CreateAURION_SupervisoryOrganisations_010]
as 

update DD.SupervisoryOrganisation
SET Value = CASE when [Organization Subtype] = 'Team' then [Superior Organization Name] + ' - ' + [value] else [Value] end

from DD.SupervisoryOrganisation
where  [Organization Subtype] = 'Team'
GO
