SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
	For foundation purposes have changed this view from an outer join on BasicDetails to an Inner Join so it is only returning data that exists on T004 / T006
*/

ALTER view [AUR].[HRDC013_EmployeeRelatedPersonPR_InsSel] as 

SELECT DISTINCT
   T001.T001F005_EMPLOYEE_NO as EmployeeID
 , 'D' + T001.T001F005_EMPLOYEE_NO as Dependent_Beneficiary_EC_ID
 , T900.T900F015_SHORT_DESCRIPTION as RelatedPersonRelationshipName
 , 'AUS' as CountryISOCode
 , SUBSTRING(T000.T000F020_GIVEN_NAMES,1,(CHARINDEX(' ',T000.T000F020_GIVEN_NAMES + ' ')-1)) as LegalFirstName
 , '' as LegalMiddleName
 , '' as LegalLastName
 , '' as LegalSecondaryName
 ,	SUBSTRING(T004.T004F025_NAME,1,(CHARINDEX(' ', T004.T004F025_NAME + ' ')-1)) as PreferredFirstName
 , '' as PreferredLastName
 , '' as LocalScript
 , '' as LocalScriptFirstName
 , '' as LocalScriptMiddleName
 , '' as LocalScriptLastName
 , '' as PrefixType
 , '' as Prefix
 , '' as SuffixType
 , '' as Suffix
 , '' as HomeCountryISOCode
 , NULL as HomePhoneNumber
 , '' as HomePhoneExtension
 , '' as HomePhoneDeviceTypeDescription
 , '' as HomePrimary
 , '' as WorkCountryISOCode
 , NULL as WorkPhoneNumber
 , '' as WorkPhoneExtension
 , '' as WorkPhoneDeviceTypeDescription
 , '' as WorkPrimary
 , '' as MobileCountryISOCode
 , NULL as MobilePhoneNumber
 , '' as MobilePhoneExtension
 , '' as MobilePhoneDeviceTypeDescription
 , '' as MobileUsageType
 , '' as MobilePrimary
 , '' as HomeAddressCountryISOCode
 , '' as HomeAddress_Line_1
 , '' as HomeAddress_Line_2
 , '' as HomeAddress_Line_3
 , '' as HomeAddress_Line_4
 , '' as HomeAddress_Line_5
 , '' as HomeAddress_Line_6
 , '' as HomeAddress_Line_7
 , '' as HomeAddress_Line_8
 , '' as HomeAddress_Line_9
 , '' as HomeMunicipality
 , '' as HomeSubmunicipality1
 , '' as HomeSubmunicipality2
 , '' as HomeRegion
 , '' as HomeSubregion1
 , '' as Subregion2
 , '' as HomePostalCode
 , '' as HomePrimary1
 , T004.T004F040_DATE_OF_BIRTH as DateOfBirth
 , T004.T004F035_GENDER as GenderDescription
 , '' as EmergencyContact
 , '' as LanguageDescription
 , NULL as EmergencyContactPriority
 , '' as Beneficiary
 , '' as Irrevocable
 , '' as CourtOrderBenefitCoverageType
 , '' as StartDate
 , '' as EndDate
 , '' as Dependant
 , '' as FullTimeStudent
 , '' as StudentStatusStartDate
 , '' as StudentStatusEndDate
 , '' as [Disabled]
 , '' as DependentForPayrollPurposes
 , '' as CitizenshipStatus
 , '' as Nationality
 , '' as CountryOfBirth
 , '' as RegionOfBirth
 , '' as CourtOrderBenefitCoverageType1
 , '' as StartDate1
 , '' as EndDate1
 FROM AUR.[T001_BASIC_DETAILS] T001
INNER JOIN [AUR].[T004_DEPENDANTS] T004
on t004.T004F005_WAMI_KEY = t001.T001F010_WAMI_KEY
LEFT OUTER JOiN aur.t900_codes T900
on T900.T900F010_CODE = T004.T004F020_RELATIONSHIP_CODE
INNER JOIN AUR.T000_WAMI T000
on T000.T000F005_WAMI_KEY = T001.T001F010_WAMI_KEY
WHERE T001F015_EMPLOYEE_STATUS <> 'TERMINATED'

union 
SELECT 
   T001.T001F005_EMPLOYEE_NO as EmployeeID
 , 'EC' + T001.T001F005_EMPLOYEE_NO as Dependent_Beneficiary_EC_ID
 , T900.T900F015_SHORT_DESCRIPTION as RelatedPersonRelationshipName
 , 'AUS' as CountryISOCode
 , SUBSTRING(T000.T000F020_GIVEN_NAMES,1,(CHARINDEX(' ',T000.T000F020_GIVEN_NAMES + ' ')-1)) as LegalFirstName
 , '' as LegalMiddleName
 , '' as LegalLastName
 , '' as LegalSecondaryName
 ,SUBSTRING(T006.T006F025_NAME,1,(CHARINDEX(' ',T006.T006F025_NAME + ' ')-1)) as PreferredFirstName
 , '' as PreferredLastName
 , '' as LocalScript
 , '' as LocalScriptFirstName
 , '' as LocalScriptMiddleName
 , '' as LocalScriptLastName
 , '' as PrefixType
 , '' as Prefix
 , '' as SuffixType
 , '' as Suffix
 , '' as HomeCountryISOCode
 , T006.T006F060_HOME_PHONE_NO as HomePhoneNumber
 , '' as HomePhoneExtension
 , '' as HomePhoneDeviceTypeDescription
 , '' as HomePrimary
 , '' as WorkCountryISOCode
 , T006.T006F065_WORK_PHONE_NO as WorkPhoneNumber
 , '' as WorkPhoneExtension
 , '' as WorkPhoneDeviceTypeDescription
 , '' as WorkPrimary
 , '' as MobileCountryISOCode
 , T006.T006F100_MOBILE_PHONE as MobilePhoneNumber
 , '' as MobilePhoneExtension
 , '' as MobilePhoneDeviceTypeDescription
 , '' as MobileUsageType
 , '' as MobilePrimary
 , T006.T006F095_COUNTRY_CODE as HomeAddressCountryISOCode
 , T006.T006F040_ADDRESS as HomeAddress_Line_1
 , '' as HomeAddress_Line_2
 , '' as HomeAddress_Line_3
 , '' as HomeAddress_Line_4
 , '' as HomeAddress_Line_5
 , '' as HomeAddress_Line_6
 , '' as HomeAddress_Line_7
 , '' as HomeAddress_Line_8
 , '' as HomeAddress_Line_9
 , T006.T006F075_SUBURB as HomeMunicipality
 , '' as HomeSubmunicipality1
 , '' as HomeSubmunicipality2
 , T006.T006F080_STATE as HomeRegion
 , '' as HomeSubregion1
 , '' as Subregion2
 , T006.T006F085_POSTCODE as HomePostalCode
 , '' as HomePrimary
 , '' as DateOfBirth
 , '' as GenderDescription
 , '' as EmergencyContact
 , '' as LanguageDescription
 , T006.T006F010_PRIORITY as EmergencyContactPriority
 , '' as Beneficiary
 , '' as Irrevocable
 , '' as CourtOrderBenefitCoverageType
 , '' as StartDate
 , '' as EndDate
 , '' as Dependant
 , '' as FullTimeStudent
 , '' as StudentStatusStartDate
 , '' as StudentStatusEndDate
 , '' as [Disabled]
 , '' as DependentForPayrollPurposes
 , '' as CitizenshipStatus
 , '' as Nationality
 , '' as CountryOfBirth
 , '' as RegionOfBirth
 , '' as CourtOrderBenefitCoverageType1
 , '' as StartDate1
 , '' as EndDate1
 FROM AUR.[T001_BASIC_DETAILS] T001
INNER JOIN [AUR].[T006_EMERGENCY_CONTACTS] T006
on t006.T006F005_WAMI_KEY = t001.T001F010_WAMI_KEY

LEFT OUTER JOiN aur.t900_codes T900
on T900.T900F010_CODE = T006.T006F020_RELATIONSHIP_CODE
INNER JOIN AUR.T000_WAMI T000
on T000.T000F005_WAMI_KEY = T001.T001F010_WAMI_KEY

WHERE T001F015_EMPLOYEE_STATUS <> 'TERMINATED'


GO
