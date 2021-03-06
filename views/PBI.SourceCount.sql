USE [DQS_STAGING_DATA]
GO
/****** Object:  View [PBI].[SourceCount]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Script for SelectTopNRows command from SSMS  ******/
ALTER view [PBI].[SourceCount] as 

select 'HRDC001_ApplicantPersonalAndContact' as 'SQL Table','T000_WAMI' as 'Source Table', count(*)  as 'DataSize' fROM [DQS_STAGING_DATA].[AUR].[T000_WAMI] union all
select 'HRDC002_ApplicantAddress' as 'SQL Table','T000_WAMI' as 'Source Table' ,count(*) as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T000_WAMI] union all
select 'HRDC003_ApplicantDemographic' as'SQL Table','T001_BASIC_DETAILS & T007_EEO_DETAILS' as 'Source Table' ,count(*) as 'DataSize'FROM [DQS_STAGING_DATA].[AUR].[T001_BASIC_DETAILS] inner join aur.T007_EEO_DETAILS on T007F005_WAMI_KEY = T001F010_WAMI_KEY union all
select 'HRDC004_ApplicantBiographic' as 'SQL Table','T000_WAMI' as 'Source Table', count(*) as 'DataSize'FROM [DQS_STAGING_DATA].[AUR].[T000_WAMI] union all
select 'HRDC005_ApplicantOtherID' AS 'SQL Table','T011_LICENCES & T019_PASSPORTS & T020_PASSPORT_VISAS & AP_RES.RESEARCHERS (Academic Portal)' AS 'Source Table', count(*) as 'DataSize' from aur.T000_WAMI union all
select 'HRDC006_EmployeePositionManagement' as 'SQL Table','T000_WAMI' as 'Source Table' ,count(*) as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T000_WAMI] union all
select 'HRDC008_EmployeeCompensationData' as 'SQL Table','TBC' AS 'Source Table', count(*) as 'DataSize' FROM aur.T001_BASIC_DETAILS inner join aur.T532_STANDING_ARRANGEMENT on T001F005_EMPLOYEE_NO = T532F005_EMPLOYEE_NO union all
select 'HRDC009_EmployeeOneTimePayments' as 'SQL Table','T510_PAYROLL_TRANSACTION' as 'Source Table' ,count(*) as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T510_PAYROLL_TRANSACTION] union all
select 'HRDC011_AssignEmployeeToPayGroup' as 'SQL Table','T001_BASIC_DETAILS' as 'Source Table', count(*) as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T001_BASIC_DETAILS] union all
Select 'HRDC013_EmployeeRelatedPerson' as'SQL Table','T006_EMERGENCY_CONTACTS' as 'Source Table', count(*) as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T006_EMERGENCY_CONTACTS] union all
Select 'HRDC014_EEorCWSkillsAndExperience' as 'SQL Table', 'T022_QUALIFICATIONS' as 'Source Table', count(*) as 'DataSize' FROM aur.t000_wami inner join aur.T022_QUALIFICATIONS on T000F005_WAMI_KEY = T022F005_WAMI_KEY  union all
Select 'HRDC015_EEorCWJobAndPositionHistory' as 'SQL Table','T104_EMPLOYMENT_HISTORY' as 'Source Table', count(*) as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T104_EMPLOYMENT_HISTORY] union all
Select 'HRDC016_EEorCWCompensationHistory' as 'SQL Table','T510_PAYROLL_TRANSACTION' as 'Source Table', count(*) as 'DataSize'FROM [DQS_STAGING_DATA].[AUR].[T510_PAYROLL_TRANSACTION] union all
Select 'HRDC017_CarryOverBalances' as 'SQL Table', 'T520_LEAVE_TYPE' as 'Source Table' ,count(*) as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T520_LEAVE_TYPE] union all
Select 'HRDC018_EmployeeTimeOffEvents' as 'SQL Table','T522_LEAVE_OCCURRENCE' as 'Source Table', count(*)  as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T522_LEAVE_OCCURRENCE] union all
Select 'HRDC019_EmployeeLeaveOfAbsence' AS 'SQL Table','T522_LEAVE_OCCURRENCE' as 'Source Table', count(*)  as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T522_LEAVE_OCCURRENCE] union all
Select 'HRDC021_EEorCWSystemUserAccount' AS 'SQL Table','T803_SECURITY_USER' as 'Source Table' ,count(*)  as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T803_SECURITY_USER] union all
Select 'HRDC022_AssignOrgRoles' as 'SQL Table', 'T101_POSITION' AS 'Source Table' ,count(*)  as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].T101_POSITION union all
Select 'HRDC023_ServiceDates' AS 'SQL Table','T000_WAMI, T001_BASIC_DETAILS, T520_LEAVE_TYPE' as 'Source Table', count(*)  as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T000_WAMI] inner join aur.T001_BASIC_DETAILS on T000F005_WAMI_KEY = T001F010_WAMI_KEY inner join aur.t520_leave_type on T520F005_EMPLOYEE_NO = T001F005_EMPLOYEE_NO union all
Select 'HRDC024_PaymentElectionsEnrolment' AS 'SQL Table', 'T500_LEAVE_CONTROL' as 'Source Table',count(*)  as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T500_LEAVE_CONTROL] union all
Select 'HRDC027_AcademicAppointment' AS 'SQL Table', 'T001_BASIC_DETAILS' as 'Source Table',count(*)  as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T001_BASIC_DETAILS] union all
Select 'HRDC028_LearningImportedContent' AS 'SQL Table','T252_COURSE_DETAILS' as 'Source Table' ,count(*)  as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T252_COURSE_DETAILS] union all
Select 'HRDC029_LearningImportedRecord' AS 'SQL Table', 'T252_COURSE_DETAILS & T253_ATTENDANCE_DETAILS' AS 'Source Table', count(*)  as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T252_COURSE_DETAILS] inner join aur.T253_ATTENDANCE_DETAILS on T252F005_COURSE_NO = T253F010_COURSE_NO union all
Select 'HRDC030_LearningEnrolments' AS 'SQL Table','T253_ATTENDANCE_DETAILS' as 'Source Table' ,count(*)  as 'DataSize'FROM [DQS_STAGING_DATA].[AUR].[T253_ATTENDANCE_DETAILS] union all
Select 'HRDC031_CostingAllocations' AS 'SQL Table','T123_POSITION_COSTING' as 'Source Table' ,count(*)  as 'DataSize'FROM [DQS_STAGING_DATA].[AUR].[T123_POSITION_COSTING] union all
Select 'HRDC032_WorkerAdditionalData' AS 'SQL Table','T007_EEO_DETAILS'as 'Source Table', count(*)  as 'DataSize'  FROM [DQS_STAGING_DATA].[AUR].[T007_EEO_DETAILS]union all
Select 'HRDC035_FormerWorkers' AS 'SQL Table', 'T038_TERMINATION_DETAILS, T001_BASIC_DETAILS, T104_EMPLOYMENT_HISTORY, T000_WAMI'as 'Source Table',count(*)  as 'DataSize' from AUR.T000_WAMI AS a INNER JOIN AUR.T001_BASIC_DETAILS AS b ON a.T000F005_WAMI_KEY = b.T001F010_WAMI_KEY LEFT OUTER JOIN AUR.T038_TERMINATION_DETAILS ON a.T000F005_WAMI_KEY = AUR.T038_TERMINATION_DETAILS.T038F000_WAMI_KEY LEFT OUTER JOIN AUR.T104_EMPLOYMENT_HISTORY ON b.T001F005_EMPLOYEE_NO = AUR.T104_EMPLOYMENT_HISTORY.T104F005_EMPLOYEE_NO union all
Select 'HRDC036_LearningHistoryRecurring' AS 'SQL Table','TBC' AS 'Source Table', '0'  as 'DataSize' union all
Select 'HRDC038_CollectiveAgreement' AS 'SQL Table','T001_BASIC_DETAILS'as 'Source Table', count(*)  as 'DataSize'FROM [DQS_STAGING_DATA].[AUR].[T001_BASIC_DETAILS]














GO
