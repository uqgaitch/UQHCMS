USE [DQS_STAGING_DATA]
GO
/****** Object:  View [PRO].[EmployeeData]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [PRO].[EmployeeData] as 
select 
	T106F065_ORGANISATION_DESC as 'Employee Faculty/Institute/Division'
	,wd.Empscope_Bkp20200621.EmployeeID as 'Employee ID'
	,T000F030_SALUTATION as 'Employee title'
	,FirstName
	,Surname
	,T000F160_EMAIL_ADDRESS as 'Employee email address'
	,T900F020_LONG_DESCRIPTION as 'Employee location'
	,T001F100_ACTUAL_JOB_TITLE as 'Position title'
	,PositionID
	,EmploymentType
	,T001F230_ATTENDANCE_TYPE as 'Employee time type'
	,T803F005_USER as 'Employee username'

from wd.Empscope_Bkp20200621
inner join aur.T001_BASIC_DETAILS on EmployeeID = T001F005_EMPLOYEE_NO
inner join aur.t000_wami on T000F005_WAMI_KEY = WAMIKey
inner join aur.t900_codes on T001F135_ACTUAL_LOCATION_CODE = T900F010_CODE
inner join aur.T803_SECURITY_USER on T803F050_WAMI_KEY = WAMIKey
inner join aur.T106_ORGANISATION_UNITS on T001F070_ACTUAL_ORG_UNIT_NO = T106F005_ORGANISATION_UNIT_NO

where zExclude is null

GO
