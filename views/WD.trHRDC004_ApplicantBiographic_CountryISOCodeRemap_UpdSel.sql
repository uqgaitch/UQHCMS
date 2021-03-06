USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC004_ApplicantBiographic_CountryISOCodeRemap_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC004_ApplicantBiographic_CountryISOCodeRemap_UpdSel] AS
SELECT CountryISOCode,
	case 
		when zCountryISOCode = 'CARRIB' then ''
		when zCountryISOCode = 'MIDEAS' then ''
		when zCountryISOCode = 'NOINFO' then ''
		when zCountryISOCode = 'AUSTRT' then ''
		else zCountryISOCode
	end as CountryISOCodeNew
FROM   WD.HRDC004_ApplicantBiographic
WHERE (zCountryISOCode IS NOT NULL)
GO
