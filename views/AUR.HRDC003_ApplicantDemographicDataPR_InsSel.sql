SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [AUR].[HRDC003_ApplicantDemographicDataPR_InsSel] as

SELECT DISTINCT T001.T001F005_EMPLOYEE_NO as EmployeeID
   , 'AUS' AS CountryISOCodeForTheBusinessSiteCountry
   , 'NA' as MaritalStatusName
   , '' as MaritalStatusDate
   , '' as HispanicOrLatino
   , '' as EthnicityName
   , '' as CitizenshipStatusDescription
   , '' as CitizenshipStatusCountryISOCode
   ,MAP.CountryAndNationality.Aurion as NationalityCountryISOCode
   , '' as MilitaryStatusName
   , '' as MilitaryStatusCountryISOCode
   , '' as MilitaryDischargeDate
   , '' as ReligionNam
   , '' as PoliticalAffiliationName
FROM AUR.T000_WAMI T000
INNER JOIN AUR.T001_BASIC_DETAILS T001
ON T000.T000F005_WAMI_KEY = T001.T001F010_WAMI_KEY
INNER JOIN
MAP.CountryAndNationality ON T000.T000F270_COUNTRY_CODE = MAP.CountryAndNationality.Aurion
inner join AUR.HRDC006_EmployeePositionManagementMGFoundation_InsSel HRDC006
on HRDC006.employeeID = T001.T001F005_EMPLOYEE_NO
WHERE T001.T001F015_EMPLOYEE_STATUS = 'ACTIVE'


GO
