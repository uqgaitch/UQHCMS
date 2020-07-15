USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [DD].[CreateAURION_SupervisoryOrganisations_009]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure[DD].[CreateAURION_SupervisoryOrganisations_009]
as 

-- finally update reference id to have the SUP prefix and padded with 0 for 7 chars

update DD.SupervisoryOrganisation
set Reference_ID = CONCAT('SUP', RIGHT(CONCAT('00000000',reference_ID),7)), 
    Superior_Organization_ID = CONCAT('SUP', RIGHT(CONCAT('00000000',Superior_Organization_ID),7))






GO
