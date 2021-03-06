USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [DD].[CreateAURION_SupervisoryOrganisations_003]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure[DD].[CreateAURION_SupervisoryOrganisations_003] as

-- updates the WD Reference ID which wll become the new Org ID in WorkDay

UPDATE
    a
SET
    a.Reference_ID = b.zNewOrgId


FROM
    DD.SupervisoryOrganisation a
INNER JOIN
    DD.SupervisoryOrganisation_IDs b
ON 
    a.[Back to ToC] = b.LegacyID;
GO
