USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[trEmpScope_Subs_InsSel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[trEmpScope_Subs_InsSel]  AS
SELECT        T001.T001F010_WAMI_KEY AS WAMIKey, 
T001.T001F005_EMPLOYEE_NO AS EmployeeID, 
T001.T001F015_EMPLOYEE_STATUS AS EmployeeStatus, 
NULL as WorkdayID,
T000.T000F015_SURNAME AS Surname, 
SUBSTRING(T000.T000F020_GIVEN_NAMES, 1, CHARINDEX(' ', T000.T000F020_GIVEN_NAMES + ' ') - 1) AS FirstName, 
T001.T001F145_SUBS_POSITION_NO AS PositionID, 
T001.T001F145_SUBS_POSITION_NO AS SubsPositionID, 
NULL AS OrgUnitID, 
NULL AS PositionStatus, 
NULL AS PositionType, 
T001.T001F230_ATTENDANCE_TYPE AS AttendanceType, 
T001.T001F220_EMPLOYMENT_TYPE AS EmploymentType,
						 T001.T001F140_SUBS_DATE_EFFECTIVE AS ActualDateEffective, 
						 T001.T001F250_DATE_COMMENCED AS DateCommenced, 
						 T001.T001F251_ORIGINAL_DATE_COMM AS OriginalDateCommenced, 
						 T001.T001F260_CONTRACT_EXPIRY_DATE AS ContractExpiryDate, 
						 T001.T001F062_ACTUAL_DATE_TO  AS ActualDateTo, 
						 T001.T001F352_ADMIN_PAYROLL_FROM AS AdminPayrollFrom, 
						 T001.T001F480_ADMIN_LEAVE_FROM AS AdminLeaveFrom, 
						 T001.T001F355_AWARD_CODE as AwardCode,
						 T001.T001F030_PAY_ENTITY AS PayEntity,
						 T001.T001F120_ACTUAL_JOB_CODE as JobCode,
						 NULL as JobFamily,
						  'CURRENT' as zHireType,
						 NULL AS zExclude, NULL AS zExcludeReason, 'AURION' AS zSource, GETDATE() AS zLoadDate, NULL as zAssignmentType,
						 'X' as zSubs, 'X' as zEmponSecondment
						
FROM            AUR.T000_WAMI AS T000 INNER JOIN
                         AUR.T001_BASIC_DETAILS AS T001 ON T000.T000F005_WAMI_KEY = T001.T001F010_WAMI_KEY
						 cross join wd.PARAM
						 inner join WD.EmpScope
						 on WD.Empscope.EmployeeID = T001.T001F005_EMPLOYEE_NO and WD.Empscope.zEmpOnSecondment = 'X'
WHERE       
(T001.T001F015_EMPLOYEE_STATUS = 'ACTIVE') 
AND
(T001.T001F062_ACTUAL_DATE_TO >= GoLiveDate OR T001.T001F062_ACTUAL_DATE_TO IS NULL)
GO
