SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [AUR].[HRDC001_ApplicantPersonalAndContact_InsSel] as

SELECT DISTInCT T001.T001F005_EMPLOYEE_NO as EmployeeID
     , T001.T001F060_ACTUAL_DATE_EFFECTIVE as ApplicantEnteredDate
	 , '' as ApplicantSourceName
	 , '' as HireSourceCategoryName
	 , SUBSTRING(T000.T000F020_GIVEN_NAMES,1,(CHARINDEX(' ',T000.T000F020_GIVEN_NAMES + ' ')-1)) + '_' + T000.T000F015_SURNAME as FullName
	 , 'AU' as CountryISOCode
	 , SUBSTRING(T000.T000F020_GIVEN_NAMES,1,(CHARINDEX(' ',T000.T000F020_GIVEN_NAMES + ' ')-1)) as LegalFirstName
	 , ltrim(substring(T000.T000F020_GIVEN_NAMES,charindex(' ',T000.T000F020_GIVEN_NAMES), CHARINDEX(' ',ltrim(SUBSTRING(T000.T000F020_GIVEN_NAMES,charindex(' ',T000.T000F020_GIVEN_NAMES),LEN(T000.T000F020_GIVEN_NAMES)-charindex(' ',T000.T000F020_GIVEN_NAMES)))) )) as LegalMiddleName
     , T000.T000F015_SURNAME as LegalLastName
	 , '' as LegalSecondaryName
	 , t000.T000F025_PREFERRED_NAME as PreferredFirstName
	 , '' as PreferredLastName
	 , '' as PreferredSecondaryName
	 , '' as LocalScript
	 , '' as LocalScriptFirstName
	 , '' as LocalScriptMiddleName
	 , '' as LocalScriptLastName
	 , '' as LocalScriptSecondaryName
	 , 'TITLE' as PrefixType
	 , T000.T000F030_SALUTATION as Prefix 
	 , '' as SuffixType
	 , '' as Suffix
	 , CASE WHEN T000.T000F160_EMAIL_ADDRESS NOT LIKE '%uq.edu.au%' THEN T000.T000F160_EMAIL_ADDRESS ELSE '' END as HomeEmailAddress
	 , CASE WHEN T000.T000F160_EMAIL_ADDRESS NOT LIKE '%uq.edu.au%' THEN 'Y' ELSE 'N' END as HomeEmailPrimary
	 , CASE WHEN T000.T000F160_EMAIL_ADDRESS LIKE '%uq.edu.au%' THEN T000.T000F160_EMAIL_ADDRESS ELSE '' END as WorkEmailAddress
	 , CASE WHEN T000.T000F160_EMAIL_ADDRESS LIKE '%uq.edu.au%' THEN 'Y' ELSE 'N' END as WorkEmailPrimary
	 , 'AU' AS WorkPhoneCountryISOCode
	 , '' as WorkPhoneInternationalPhoneCode
	 , '' as WorkPhoneAreaCode
     , T000.T000F045_CONTACT_PHONE_NO as WorkPhoneNumber    
	 , '' as WorkPhoneExtension
	 , '' as WorkPhoneDeviceTypeDescription
	 , CASE WHEN T000.T000F045_CONTACT_PHONE_NO IS NOT NULL THEN 'Y' ELSE 'N' END AS WorkPhonePrimary
     , 'AU' as Additional1CountryISOCode
	 , '' as Additional1InternationalPhoneCode
	 , '' as Additional1AreaCode
	 , T000.T000F055_HOME_PHONE_NO as Additional1PhoneNumber 
     , '' as Additional1PhoneExtension
	 , '' as Additional1PhoneDeviceTypeDescription
	 , '' as Additional1UsageType
	 , 'N' as Additional1Primary
     , 'AU' as Additional2CountryISOCode
	 , '' as Additional2InternationalPhoneCode
	 , '' as Additional2AreaCode
     , T000.T000F155_MOBILE_PHONE as Additional2PhoneNumber 
	 , '' as Additional2PhoneExtension
	 , '' as Additional2PhoneDeviceTypeDescription
	 , '' as Additional2UsageType
	 , '' as Additional2Primary
	 , 'AU' as Additional3CountryISOCode
	 , '' as Additional3InternationalPhoneCode
	 , '' as Additional3AreaCode
	 , T000.T000F320_CONTACT_MOBILE_PHONE as Additional3PhoneNumber
	 , '' as Additional3PhoneExtension
	 , '' as Additional3PhoneDeviceTypeDescription
	 , '' as Additional3UsageType
	 , '' as Additional3Primary
	 , '' as Additional4CountryISOCode
	 , '' as Additional4InternationalPhoneCode
	 , '' as Additional4AreaCode
	 , '' as Additional4PhoneNumber
	 , '' as Additional4PhoneExtension
	 , '' as Additional4PhoneDeviceTypeDescription
	 , '' as Additional4UsageType
	 , '' as Additional4Primary
	 , '' as Additional5CountryISOCode
	 , '' as Additional5InternationalPhoneCode
	 , '' as Additional5AreaCode
	 , '' as Additional5PhoneNumber
	 , '' as Additional5PhoneExtension
	 , '' as Additional5PhoneDeviceTypeDescription
	 , '' as Additional5UsageType
	 , '' as Additional5Primary
	 , '' as WebAddress
	 , '' as WebAddressUsageType
	 , '' as WebAddressPrimary
	 , '' as InstantMessengerAddress
	 , '' as InstantMessengerProvider
	 , '' as IMUsageType
	 , '' as IMPrimary
FROM AUR.T000_WAMI T000
INNER JOIN AUR.T001_BASIC_DETAILS T001
ON T000.T000F005_WAMI_KEY = T001.T001F010_WAMI_KEY
WHERE T001.T001F015_EMPLOYEE_STATUS = 'ACTIVE'
GO
