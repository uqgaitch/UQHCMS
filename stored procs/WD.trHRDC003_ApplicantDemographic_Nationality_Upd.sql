USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC003_ApplicantDemographic_Nationality_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER Procedure [WD].[trHRDC003_ApplicantDemographic_Nationality_Upd]
AS
begin
update [WD].[trHRDC003_ApplicantDemographic_Nationality_UpdSel]
set 
NationalityCountryISOCode = NationalityCountryISOCodeNew
END
GO
