SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER view [AUR].[HRDC002_ApplicantAddres_InsSel] as

SELECT DISTInCT T001.T001F005_EMPLOYEE_NO as EmployeeID
    , 'AU' AS CountryISOCode
	,  T000.T000F040_ADDRESS as AddressLine1   
	, '' as AddressLine2
	, '' as AddressLine3
	, '' as AddressLine4
	, '' as AddressLine5
	, '' as AddressLine6
	, '' as AddressLine7
	, '' as AddressLine8
	, '' as AddressLine9
	,  T000.T000F065_SUBURB as Municipality
	, '' as Submunicipality1
	, '' as Submunicipality2
	, T000.T000F070_STATE as Region
	, '' as Subregion1
	, '' as Subregion2
	, T000.T000F075_POSTCODE PostalCode
	, 'Y' AS HomeAddressPrimary

FROM AUR.T000_WAMI T000
INNER JOIN AUR.T001_BASIC_DETAILS T001
ON T000.T000F005_WAMI_KEY = T001.T001F010_WAMI_KEY
WHERE T001.T001F015_EMPLOYEE_STATUS = 'ACTIVE'
GO
