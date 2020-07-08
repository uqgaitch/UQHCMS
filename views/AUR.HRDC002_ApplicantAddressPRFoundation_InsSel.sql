SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



ALTER view [AUR].[HRDC002_ApplicantAddressPRFoundation_InsSel] as

SELECT DISTInCT T001.T001F005_EMPLOYEE_NO as EmployeeID
    , 'AUS' AS CountryISOCode
	,  case when T000.T000F040_ADDRESS is not null then '74 High Street' else '' end as AddressLine1   
	, '' as AddressLine2
	, '' as AddressLine3
	, '' as AddressLine4
	, '' as AddressLine5
	, '' as AddressLine6
	, '' as AddressLine7
	, '' as AddressLine8
	, '' as AddressLine9
	, 'Toowong' as Municipality
--	, upper(T000.T000F065_SUBURB) as Municipality
	, '' as Submunicipality1
	, '' as Submunicipality2
	,  'AUS-QLD' as [Region]
	, '' as Subregion1
	, '' as Subregion2
	, '4066' PostalCode
	, 'Y' AS HomeAddressPrimary

FROM AUR.T000_WAMI T000
INNER JOIN AUR.T001_BASIC_DETAILS T001
ON T000.T000F005_WAMI_KEY = T001.T001F010_WAMI_KEY
inner join AUR.HRDC006_EmployeePositionManagementMGFoundation_InsSel HRDC006
on HRDC006.employeeID = T001.T001F005_EMPLOYEE_NO
WHERE T001.T001F015_EMPLOYEE_STATUS = 'ACTIVE'






GO
