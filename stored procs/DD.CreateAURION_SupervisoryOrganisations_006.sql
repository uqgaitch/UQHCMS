USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [DD].[CreateAURION_SupervisoryOrganisations_006]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure[DD].[CreateAURION_SupervisoryOrganisations_006] as 

-- update Supervisory OrgId

UPDATE A
SET a.Superior_Organization_ID = b.zneworgid

FROM dd.SupervisoryOrganisation a

inner join DD.SupervisoryOrganisation_IDs b
ON a.Superior_Organization_ID = CASE WHEN LEN(b.LegacyID) <=3 THEN b.LegacyID ELSE CONCAT('NEW',b.LegacyID) END
GO
