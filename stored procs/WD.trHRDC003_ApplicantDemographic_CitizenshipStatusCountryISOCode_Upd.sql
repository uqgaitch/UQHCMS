USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC003_ApplicantDemographic_CitizenshipStatusCountryISOCode_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [WD].[trHRDC003_ApplicantDemographic_CitizenshipStatusCountryISOCode_Upd]
AS
begin
update [WD].[trHRDC003_ApplicantDemographic_CitizenshipStatusCountryISOCode_UpdSel]
set CitizenshipStatusCountryISOCode = CitizenshipStatusCountryISOCodeNew
END
GO
