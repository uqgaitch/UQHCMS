USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_HomePhoneNumber_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_HomePhoneNumber_UpdSel] AS
SELECT        WD.HRDC001_ApplicantPersonalAndContact.HomePhoneCountryISOCode, 'AU' AS HomePhoneCountryISOCodeNew, 
WD.HRDC001_ApplicantPersonalAndContact.HomePhoneNumber, 
						 dbo.ReformatPhone(T000.T000F055_HOME_PHONE_NO) AS HomePhoneNumberNew, 
						 
						 WD.HRDC001_ApplicantPersonalAndContact.HomePhoneDeviceTypeDescription, 
                         CASE 
							WHEN T000.T000F055_HOME_PHONE_NO LIKE '04%' THEN 'PERSONAL_MOBILE' 
							WHEN T000.T000F055_HOME_PHONE_NO LIKE '614%' THEN 'PERSONAL_MOBILE' 
							WHEN T000.T000F055_HOME_PHONE_NO LIKE '+614%' THEN 'PERSONAL_MOBILE' 
							WHEN T000.T000F055_HOME_PHONE_NO LIKE '61 4%' THEN 'PERSONAL_MOBILE' 
							WHEN T000.T000F055_HOME_PHONE_NO LIKE '+61 4%' THEN 'PERSONAL_MOBILE' 
							
							ELSE 'HOME' END AS HomePhoneDeviceTypeDescriptionNew, WD.HRDC001_ApplicantPersonalAndContact.HomePhonePrimary, 
                         'Y' AS HomePhonePrimaryNew
FROM            WD.HRDC001_ApplicantPersonalAndContact INNER JOIN
                         AUR.T000_WAMI AS T000 ON WD.HRDC001_ApplicantPersonalAndContact.zWAMIKey = T000.T000F005_WAMI_KEY 
WHERE        (T000.T000F055_HOME_PHONE_NO IS NOT NULL) 
and (T000.T000F055_HOME_PHONE_NO <> '') and (T000.T000F055_HOME_PHONE_NO <> '-')

GO
