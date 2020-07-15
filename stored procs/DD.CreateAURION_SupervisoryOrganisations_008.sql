USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [DD].[CreateAURION_SupervisoryOrganisations_008]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure[DD].[CreateAURION_SupervisoryOrganisations_008] as

-- update final orgs

UPDATE A
 set a.Superior_Organization_ID = b.T101F015_ORGANISATION_UNIT_NO
--SELECT * 
FROM dd.SupervisoryOrganisation a
inner join AUR.svAurionOrgUnitsReportsToPosition b
on a.[Back to ToC] = b.[Back to ToC]
GO
