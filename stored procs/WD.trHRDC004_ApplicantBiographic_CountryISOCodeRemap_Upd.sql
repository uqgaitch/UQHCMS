USE [DQS_STAGING_DATA]
GO
/****** Object:  StoredProcedure [WD].[trHRDC004_ApplicantBiographic_CountryISOCodeRemap_Upd]    Script Date: 9/07/2020 2:20:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER Procedure [WD].[trHRDC004_ApplicantBiographic_CountryISOCodeRemap_Upd]
AS
begin
update [WD].[trHRDC004_ApplicantBiographic_CountryISOCodeRemap_UpdSel]
set 
CountryISOCode = CountryISOCodeNew
END


GO
