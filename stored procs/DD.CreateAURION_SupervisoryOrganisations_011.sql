USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [DD].[CreateAURION_SupervisoryOrganisations_011]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER Procedure[DD].[CreateAURION_SupervisoryOrganisations_011] 
as

-- UPdate the external Org IDs
update [DD].[CreateAURION_SupervisoryOrganisations_011_UpdSel] 
set externalorgid = zExternalORgId
GO
