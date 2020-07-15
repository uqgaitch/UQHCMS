SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [AUR].[HRDC001_ApplicantPersonalAndContactPR_InsSel] as

SELECT DISTInCT T001.T001F005_EMPLOYEE_NO as EmployeeID
     , convert(varchar ,(ISNULL(T001.T001F060_ACTUAL_DATE_EFFECTIVE, '2000-01-01')), 103) as ApplicantEnteredDate
	 , '' as ApplicantSourceName
	 , '' as HireSourceCategoryName
	 , SUBSTRING(T000.T000F020_GIVEN_NAMES,1,(CHARINDEX(' ',T000.T000F020_GIVEN_NAMES + ' ')-1)) + '_' + T000.T000F015_SURNAME as FullName
	 , 'AUS' as CountryISOCode
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

     , case when T000.T000F055_HOME_PHONE_NO is not null then 'AU' else '' end as HomePhoneISOCode
	 , '' as HomePhoneInternationalCode
	 , '' as HomePhoneAreaCode
	 , ISnull(T000.T000F055_HOME_PHONE_NO, '') as HomePhoneNumber 
     , '' as HomeExtension
	 , case when T000.T000F055_HOME_PHONE_NO is not null then 'HOME' else '' end as HomePhoneDeviceTypeDescription
	 , case when T000.T000F055_HOME_PHONE_NO is not null then 'Y' else '' end  as HomePrimary

	 ,  case when T000.T000F045_CONTACT_PHONE_NO is not null then 'AU' else '' end AS WorkPhoneCountryISOCode
	 , '' as WorkPhoneInternationalPhoneCode
	 , '' as WorkPhoneAreaCode
     , ISNULL(T000.T000F045_CONTACT_PHONE_NO,'') as WorkPhoneNumber    
	 , '' as WorkPhoneExtension
	 , case
		when T000.T000F045_CONTACT_PHONE_NO is not null and T000.T000F045_CONTACT_PHONE_NO like '04%' then 'BUSINESS_MOBILE'
	    when T000.T000F045_CONTACT_PHONE_NO is not null and T000.T000F045_CONTACT_PHONE_NO not like '04%' then 'BUSINESS_PHONE'
		else '' 
	   END
			as WorkPhoneDeviceTypeDescription
	 , CASE WHEN T000F045_CONTACT_PHONE_NO   is not null then 'Y'
	   ELSE '' END AS WorkPhonePrimary

     , case when T000.T000F155_MOBILE_PHONE is not null then 'AU' else '' end  as AdditionalCountryISOCode
	 , '' as AdditionalInternationalPhoneCode
	 , '' as AdditionalAreaCode
     , isnull(T000.T000F155_MOBILE_PHONE, '') as AdditionalPhoneNumber 
	 , '' as AdditionalPhoneExtension
	 ,case
		when T000.T000F155_MOBILE_PHONE is not null and T000.T000F155_MOBILE_PHONE like '04%' then 'PERSONAL_MOBILE'
	    when T000.T000F155_MOBILE_PHONE is not null and T000.T000F155_MOBILE_PHONE not like '04%' then 'HOME'
		else '' 
	   END  as AdditionalPhoneDeviceTypeDescription
	 , case when T000.T000F155_MOBILE_PHONE is not null then 'HOME' else '' end as AdditionalUsageType
	 , CASE 
		WHEN T000.T000F055_HOME_PHONE_NO is not null then ''
		WHEN T000.T000F155_MOBILE_PHONE is not null then 'Y'
	   ELSE '' END AS AdditionalPrimary

	 , case when T000.T000F320_CONTACT_MOBILE_PHONE is not null then 'AU' else '' end as Additional2CountryISOCode
	 , '' as Additional2InternationalPhoneCode
	 , '' as Additional2AreaCode
	 , isnull(T000.T000F320_CONTACT_MOBILE_PHONE , '') as Additional2PhoneNumber
	 , '' as Additional2PhoneExtension
	 , '' as Additional2PhoneDeviceTypeDescription
	 , case when T000.T000F320_CONTACT_MOBILE_PHONE is not null then 'HOME' else '' end as Additional2UsageType
	 ,CASE 
		WHEN T000.T000F055_HOME_PHONE_NO is not null then ''
		WHEN T000.T000F155_MOBILE_PHONE is not null then ''
		WHEN T000.T000F320_CONTACT_MOBILE_PHONE is not null then 'Y'
	   ELSE '' END as Additional2Primary

	 , '' as Additional3CountryISOCode
	 , '' as Additional3InternationalPhoneCode
	 , '' as Additional3AreaCode
	 , '' as Additional3PhoneNumber
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
inner join AUR.HRDC006_EmployeePositionManagementMG_InsSel HRDC006
on HRDC006.employeeID = T001.T001F005_EMPLOYEE_NO


WHERE T001.T001F015_EMPLOYEE_STATUS = 'ACTIVE'
and 
	(
		(T000.T000F055_HOME_PHONE_NO is not null and T000.T000F055_HOME_PHONE_NO not in ('NA','N/A','-'))
	or
		T000.T000F055_HOME_PHONE_NO is null
	)
GO
