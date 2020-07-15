SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [AUR].[HRDC004_ApplicantBiographicDataPRFoundation_InsSel] as

SELECT DISTINCT T001.T001F005_EMPLOYEE_NO as EmployeeID
   , 'AUS' AS CountryISOCode
   , '' as RegionOfBirth
   , '' as CityOfBirth
   , '01/01/1970' as DateOfBirth
   , MAP.Gender.Aurion as Gender
   , '' as DisabilityName
   , '' as UsesTobacco
   , '' as LastMedicalExam
   , '' as LastExamValidTo
   , '' as MedicalExamNotes
FROM AUR.T000_WAMI T000
INNER JOIN AUR.T001_BASIC_DETAILS T001
ON T000.T000F005_WAMI_KEY = T001.T001F010_WAMI_KEY
INNER JOIN MAP.Gender
on MAP.Gender.Aurion = T000.T000F105_GENDER
inner join AUR.HRDC006_EmployeePositionManagementMGFoundation_InsSel HRDC006
on HRDC006.employeeID = T001.T001F005_EMPLOYEE_NO
WHERE T001.T001F015_EMPLOYEE_STATUS = 'ACTIVE'
GO
