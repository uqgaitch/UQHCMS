SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [AUR].[HRDC002_ApplicantAddressPR_InsSel] as

SELECT DISTInCT T001.T001F005_EMPLOYEE_NO as EmployeeID
    , 'AUS' AS CountryISOCode
	,  T000.T000F040_ADDRESS as AddressLine1   
	, '' as AddressLine2
	, '' as AddressLine3
	, '' as AddressLine4
	, '' as AddressLine5
	, '' as AddressLine6
	, '' as AddressLine7
	, '' as AddressLine8
	, '' as AddressLine9
	, upper(T000.T000F065_SUBURB) as Municipality
	, '' as Submunicipality1
	, '' as Submunicipality2
	,  case 
		when T000.T000F070_STATE = 'ACT' then 'AUS-ACT'
		when T000.T000F070_STATE = 'NSW' or T000F070_STATE = 'NEW SOUTH WALES' then 'AUS-NSW'
		when T000.T000F070_STATE = 'NT'  then 'AUS-NT'
		when T000.T000F070_STATE = 'QLD' or T000F070_STATE = 'QUEENSLAND' or T000F070_STATE = ' QLD' or T000F070_STATE = 'BRISBANE' then 'AUS-QLD'
		when T000.T000F070_STATE = 'SA'  then 'AUS-SA'
		when T000.T000F070_STATE = 'TAS' or T000F070_STATE = 'TASMANIA' then 'AUS-TAS'
		when T000.T000F070_STATE = 'VIC' then 'AUS-VIC'
		when T000.T000F070_STATE = 'WA'  then 'AUS-WA'

		END as [Region]
	, '' as Subregion1
	, '' as Subregion2
	, T000.T000F075_POSTCODE PostalCode
	, 'Y' AS HomeAddressPrimary

FROM AUR.T000_WAMI T000
INNER JOIN AUR.T001_BASIC_DETAILS T001
ON T000.T000F005_WAMI_KEY = T001.T001F010_WAMI_KEY
inner join AUR.HRDC006_EmployeePositionManagementMG_InsSel HRDC006
on HRDC006.employeeID = T001.T001F005_EMPLOYEE_NO
WHERE T001.T001F015_EMPLOYEE_STATUS = 'ACTIVE'






GO
