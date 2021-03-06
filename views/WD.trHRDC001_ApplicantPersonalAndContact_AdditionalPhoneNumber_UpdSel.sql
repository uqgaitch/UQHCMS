USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_AdditionalPhoneNumber_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_AdditionalPhoneNumber_UpdSel] AS
SELECT     
WD.HRDC001_ApplicantPersonalAndContact.AdditionalPhoneCountryISOCode, 'AU' AS AdditionalPhoneCountryISOCodeNew, WD.HRDC001_ApplicantPersonalAndContact.AdditionalPhoneNumber, 
                         
						 dbo.ReformatPhone(T000.T000F155_MOBILE_PHONE) AS AdditionalPhoneNumberNew
						 
						 , WD.HRDC001_ApplicantPersonalAndContact.AdditionalPhoneDeviceTypeDescription, 
                         CASE 
							WHEN T000.T000F155_MOBILE_PHONE LIKE '04%' THEN 'PERSONAL_MOBILE' 
							WHEN T000.T000F155_MOBILE_PHONE LIKE '61 4%' THEN 'PERSONAL_MOBILE' 
							WHEN T000.T000F155_MOBILE_PHONE LIKE '614%' THEN 'PERSONAL_MOBILE' 
							WHEN T000.T000F155_MOBILE_PHONE LIKE '+614%' THEN 'PERSONAL_MOBILE' 
							WHEN T000.T000F155_MOBILE_PHONE LIKE '+61 4%' THEN 'PERSONAL_MOBILE' 
							ELSE 'HOME' END AS AdditionalPhoneDeviceTypeDescriptionNew,
							AdditionalPhoneUsageType, 'HOME' as AdditionalPhoneUsageTypeNew
FROM            WD.HRDC001_ApplicantPersonalAndContact INNER JOIN
                         AUR.T000_WAMI AS T000 ON WD.HRDC001_ApplicantPersonalAndContact.zWAMIKey = T000.T000F005_WAMI_KEY 
WHERE        (T000.T000F155_MOBILE_PHONE IS NOT NULL) 
AND (T000.T000F155_MOBILE_PHONE <> '') 
AND (T000.T000F155_MOBILE_PHONE <> '-') 
and dbo.ReformatPhone(T000F155_MOBILE_PHONE) <> dbo.ReformatPhone(isnull(T000F055_HOME_PHONE_NO,''))
and dbo.ReformatPhone(T000F155_MOBILE_PHONE) <> dbo.ReformatPhone(isnull(T000F045_CONTACT_PHONE_NO,''))

GO
