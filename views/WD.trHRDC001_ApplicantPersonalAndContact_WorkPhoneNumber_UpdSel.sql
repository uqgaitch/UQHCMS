USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trHRDC001_ApplicantPersonalAndContact_WorkPhoneNumber_UpdSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[trHRDC001_ApplicantPersonalAndContact_WorkPhoneNumber_UpdSel] AS
SELECT     WD.HRDC001_ApplicantPersonalAndContact.EmployeeID,
WD.HRDC001_ApplicantPersonalAndContact.WorkPhoneCountryISOCode, 'AU' AS WorkPhoneCountryISOCodeNew, WD.HRDC001_ApplicantPersonalAndContact.WorkPhoneNumber, 
                         
						 dbo.ReformatPhone(T000.T000F045_CONTACT_PHONE_NO) AS WorkPhoneNumberNew
						 
						 , WD.HRDC001_ApplicantPersonalAndContact.WorkPhoneDeviceTypeDescription, 
                         CASE 
							WHEN T000.T000F045_CONTACT_PHONE_NO LIKE '04%' THEN 'BUSINESS_MOBILE' 
							WHEN T000.T000F045_CONTACT_PHONE_NO LIKE '+614%' THEN 'BUSINESS_MOBILE' 
							WHEN T000.T000F045_CONTACT_PHONE_NO LIKE '+61 4%' THEN 'BUSINESS_MOBILE' 
							WHEN T000.T000F045_CONTACT_PHONE_NO LIKE '614%' THEN 'BUSINESS_MOBILE' 
							WHEN T000.T000F045_CONTACT_PHONE_NO LIKE '61 4%' THEN 'BUSINESS_MOBILE' 
						 
						 ELSE 'BUSINESS_PHONE' END AS WorkPhoneDeviceTypeDescriptionNew, 
                         WD.HRDC001_ApplicantPersonalAndContact.WorkPhonePrimary, 'Y' AS WorkPhonePrimaryNew
FROM            WD.HRDC001_ApplicantPersonalAndContact INNER JOIN
                         AUR.T000_WAMI AS T000 ON WD.HRDC001_ApplicantPersonalAndContact.zWAMIKey = T000.T000F005_WAMI_KEY 
WHERE        (T000.T000F045_CONTACT_PHONE_NO IS NOT NULL) and 
(T000.T000F045_CONTACT_PHONE_NO <> '') and 
(T000.T000F045_CONTACT_PHONE_NO <> '-') and 
dbo.reformatPhone(T000F045_CONTACT_PHONE_NO) <> dbo.ReformatPhone(isnull(T000F055_HOME_PHONE_NO,''))
GO
