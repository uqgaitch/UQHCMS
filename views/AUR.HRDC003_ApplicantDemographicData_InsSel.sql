SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [AUR].[HRDC003_ApplicantDemographicData_InsSel] as

SELECT DISTINCT T001.T001F005_EMPLOYEE_NO as EmployeeID
   , 'AUS' AS CountryISOCodeForTheBusinessSiteCountry
   , 'NA' as MaritalStatusName
   , '' as MaritalStatusDate
   , '' as HispanicOrLatino
   , '' as EthnicityName
   , '' as CitizenshipStatusDescription
   , '' as CitizenshipStatusCountryISOCode
   , T000F270_COUNTRY_CODE as NationalityCountryISOCode
   , '' as MilitaryStatusName
   , '' as MilitaryStatusCountryISOCode
   , '' as MilitaryDischargeDate
   , '' as ReligionNam
   , '' as PoliticalAffiliationName
FROM AUR.T000_WAMI T000
INNER JOIN AUR.T001_BASIC_DETAILS T001
ON T000.T000F005_WAMI_KEY = T001.T001F010_WAMI_KEY
WHERE T001.T001F015_EMPLOYEE_STATUS = 'ACTIVE'
GO
