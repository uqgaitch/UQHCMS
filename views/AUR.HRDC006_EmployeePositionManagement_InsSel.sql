SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- HRDC006 Employee Position Manamagement (Main Query)
-- Gets all inscope employees and the positions 
ALTER view [AUR].[HRDC006_EmployeePositionManagement_InsSel] as 

SELECT 
   T001.T001F005_EMPLOYEE_NO as EmployeeID
 , T001.T001F345_NAME_FOR_HEADINGS as FullName
 , T001.T001F220_EMPLOYMENT_TYPE as EmployeeTypeName
 , T001.T001F250_DATE_COMMENCED as HireDate -- or T001F251_ORIGINAL_DATE_COMM
 , T520.T520F110_DATE_COMMENCED_TYPE as ContinuousServiceDate--T520_LEAVE_TYPE --with Leave Type = LSLV.T520F110_DATE_COMMENCED_TYPE
 , '' as ProbationStartDate
 , T028.T028F015_PROBATION_DATE as ProbationEndDate
 , CASE WHEN T001.T001F062_ACTUAL_DATE_TO IS NULL THEN T001.T001F260_CONTRACT_EXPIRY_DATE ELSE '' END as EndEmploymentDate
 , T001.T001F352_ADMIN_PAYROLL_FROM as PositionStartDateForConversion
 , T001.T001F480_ADMIN_LEAVE_FROM as CompanyServiceDate
 , T101.T101F015_ORGANISATION_UNIT_NO as SupervisoryOrganisationPositionManagementOrg
 , '' as CostCenterOrganisation
 , '' as CompanyOrganisation
 , T101.T101F035_LOCATION_CODE as RegionOrgansitation
 , '' as MatrixOrganisation 
 , '' as BusinessUnitOrganisation
 , '' as CustomOrganization1
 , '' as CustomOrganization2
 , '' as CustomOrganization3
 , '' as CustomOrganization4
 ,T001.T001F065_ACTUAL_POSITION_NO as JobPositionID
 , T001.T001F100_ACTUAL_JOB_TITLE as JobPositionTitle
 , '' as JobCode
 , T101.T101F045_POSITION_TITLE as PositionTitle
 , T101.T101F050_FULL_TITLE as BusinessTitle
 , T001.T001F135_ACTUAL_LOCATION_CODE as [Location]
 , '' as WorkSpace
 , T001.T001F230_ATTENDANCE_TYPE as TimeType
 , T101.T101F095_HOURS_PER_WEEK as DefaultWeeklyHours
 , T001.T001F315_HOURS_PER_WEEK as ScheduledWeeklyHours
 , T001.T001F235_PAYMENT_TYPE as PayTypeName
 , T101.T101F020_CLASSIFICATION as AdditionalJobClassificationName
 , '' as CriticalJob
 , '' as DifficultyToFill
 , '' as CompanyInsiderTypeName
 , '' as AnnualWorkPeriodName
 , '' as DisbursementPlanPeriodName
 , T001.T001F120_ACTUAL_JOB_CODE as WorkHoursProfileDescription
 , '' as WorkShiftName
 , '' as HireReason
 , '' as InternationalAssignmentTypes 
 , '' as InternationalAssignmentReason
 , '' as AdditionalPosition
 , T001.T001F220_EMPLOYMENT_TYPE as EmployeeContractType
 , '' as EmployeeContractStatus
 , '' as ContractDescription
 , T001.T001F060_ACTUAL_DATE_EFFECTIVE as ContractEffectiveDate
 , T001.T001F060_ACTUAL_DATE_EFFECTIVE as ContractStartDate

FROM [AUR].[T001_BASIC_DETAILS] T001
LEFT OUTER JOIN AUR.T101_POSITION T101
ON T001.T001F065_ACTUAL_POSITION_NO = T101F005_POSITION_NO

LEFT OUTER JOIN [AUR].[T520_LEAVE_TYPE] T520
ON T001.T001F005_EMPLOYEE_NO = T520.T520F005_EMPLOYEE_NO
LEFT OUTER JOIN [AUR].[T028_PROBATION_HISTORY] T028
ON T001.T001F005_EMPLOYEE_NO = T028.T028F005_EMPLOYEE_NO

WHERE T520.T520F010_LEAVE_TYPE_CODE = 'LSLV'
AND T001F015_EMPLOYEE_STATUS <> 'TERMINATED'



GO
