USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_Additional2PhoneNumber_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_Additional2PhoneNumber_UpdSel] AS
SELECT        WD.HRDC001_ApplicantPersonalAndContact.Additional2PhoneCountryISOCode, 'AU' AS Additional2PhoneCountryISOCodeNew, WD.HRDC001_ApplicantPersonalAndContact.Additional2PhoneNumber, 
						 dbo.ReformatPhone(T000.T000F320_CONTACT_MOBILE_PHONE) AS Additional2PhoneNumberNew,
						 WD.HRDC001_ApplicantPersonalAndContact.Additional2PhoneDeviceTypeDescription, 
                         CASE 
							WHEN T000.T000F320_CONTACT_MOBILE_PHONE LIKE '04%' THEN 'PERSONAL_MOBILE' 
							WHEN T000.T000F320_CONTACT_MOBILE_PHONE LIKE '614%' THEN 'PERSONAL_MOBILE' 
							WHEN T000.T000F320_CONTACT_MOBILE_PHONE LIKE '61 4%' THEN 'PERSONAL_MOBILE' 
							WHEN T000.T000F320_CONTACT_MOBILE_PHONE LIKE '+614%' THEN 'PERSONAL_MOBILE' 
							WHEN T000.T000F320_CONTACT_MOBILE_PHONE LIKE '+61 4%' THEN 'PERSONAL_MOBILE' 
							
							ELSE 'HOME' END AS Additional2PhoneDeviceTypeDescriptionNew,
							Additional2PhoneUsageType, 'HOME' as Additional2PhoneUsageTypeNew

FROM            WD.HRDC001_ApplicantPersonalAndContact INNER JOIN
                         AUR.T000_WAMI AS T000 ON WD.HRDC001_ApplicantPersonalAndContact.zWAMIKey = T000.T000F005_WAMI_KEY 
WHERE        (T000.T000F320_CONTACT_MOBILE_PHONE IS NOT NULL)
and (T000.T000F320_CONTACT_MOBILE_PHONE <> '')
and (T000.T000F320_CONTACT_MOBILE_PHONE <> '-')
and dbo.ReformatPhone(T000F320_CONTACT_MOBILE_PHONE) <> dbo.ReformatPhone(isnull(T000F055_HOME_PHONE_NO,''))
and dbo.ReformatPhone(T000F320_CONTACT_MOBILE_PHONE) <> dbo.ReformatPhone(isnull(T000F045_CONTACT_PHONE_NO,''))
and dbo.ReformatPhone(T000F320_CONTACT_MOBILE_PHONE) <> dbo.ReformatPhone(isnull(T000F155_mobile_PHONE,''))


GO
