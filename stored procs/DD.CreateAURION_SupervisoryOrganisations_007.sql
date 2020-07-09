USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [DD].[CreateAURION_SupervisoryOrganisations_007]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure[DD].[CreateAURION_SupervisoryOrganisations_007] as 

-- update additional incorrect super orgs


update a 
  set a.Superior_Organization_ID = b.T101F015_ORGANISATION_UNIT_NO

--SELECT a.[Back to ToC], a.Superior_Organization_ID, b.T101F015_ORGANISATION_UNIT_NO , Comments
FROM DD.SupervisoryOrganisation a 
inner join AUR.T101_POSITION b
on a.Superior_Organization_ID = CONCAT('NEW', b.T101F015_ORGANISATION_UNIT_NO, b.T101F005_POSITION_NO) 
GO
