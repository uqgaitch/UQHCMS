USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_SetAdditionalPrimary_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_SetAdditionalPrimary_UpdSel] as

SELECT  AdditionalPhonePrimary, 
     CASE 
		WHEN HomePhoneNumber is not null then ''
		WHEN AdditionalPhoneNumber is not null and HomePhoneNumber is null then 'Y'
	   ELSE '' END AS AdditionalPhonePrimaryNew
	 ,Additional2PhonePrimary,
	 CASE 
		WHEN HomePhoneNumber is not null then ''
		WHEN AdditionalPhoneNumber is not null then ''
		WHEN Additional2PhoneNumber is not null
			and HomePhoneNumber is null and AdditionalPhoneNumber is null then 'Y'
	   ELSE '' END as Additional2PhonePrimaryNew
FROM wd.HRDC001_ApplicantPersonalAndContact 

GO
