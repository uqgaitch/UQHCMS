USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [DD].[CreateAURION_SupervisoryOrganisations_004]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure[DD].[CreateAURION_SupervisoryOrganisations_004] as

-- updates the WD Location ID to the original locatin ID from AURION

UPDATE A 
   SET A.[Location ID] = b.T106F055_LOCATION_CODE

   FROM DD.SupervisoryOrganisation a
   INNER JOIN [AUR].[T106_ORGANISATION_UNITS] b
   ON A.LegacyOrgID = b.T106F005_ORGANISATION_UNIT_NO
   WHERE a.[Location ID] <> b.T106F055_LOCATION_CODE
GO
