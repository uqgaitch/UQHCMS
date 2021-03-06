USE [DQS_STAGING_DATA]
GO
/****** Object:  View [PBI].[ActiveSourceCount]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [PBI].[ActiveSourceCount] as 

select 'HRDC001_ApplicantPersonalAndContact' as 'SQL Table', count(*)  as 'DataSize' fROM [DQS_STAGING_DATA].[AUR].[T000_WAMI] inner join pbi.ActiveSource on T000F005_WAMI_KEY = WAMIKey union all
select 'HRDC002_ApplicantAddress' as 'SQL Table',count(*) as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T000_WAMI] inner join pbi.ActiveSource on T000F005_WAMI_KEY = WAMIKey union all
select 'HRDC003_ApplicantDemographic' as'SQL Table' ,count(*) as 'DataSize'FROM [DQS_STAGING_DATA].[AUR].[T001_BASIC_DETAILS] inner join pbi.ActiveSource on T001F010_WAMI_KEY = WAMIKey union all
select 'HRDC004_ApplicantBiographic' as 'SQL Table', count(*) as 'DataSize'FROM [DQS_STAGING_DATA].[AUR].[T000_WAMI] inner join pbi.ActiveSource on T000F005_WAMI_KEY = WAMIKey union all
select 'HRDC005_ApplicantOtherID' AS 'SQL Table', '0' as 'DataSize' union all
select 'HRDC006_EmployeePositionManagement' as 'SQL Table',count(*) as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T000_WAMI] inner join pbi.ActiveSource on T000F005_WAMI_KEY = WAMIKey union all
select 'HRDC008_EmployeeCompensationData' as 'SQL Table', '0' as 'DataSize' union all
select 'HRDC009_EmployeeOneTimePayments' as 'SQL Table',count(*) as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T510_PAYROLL_TRANSACTION] inner join pbi.ActiveSource on T510F005_EMPLOYEE_NO = EmployeeID union all
select 'HRDC011_AssignEmployeeToPayGroup' as 'SQL Table', count(*) as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T001_BASIC_DETAILS] inner join pbi.ActiveSource on T001F010_WAMI_KEY = WAMIKey union all
Select 'HRDC013_EmployeeRelatedPerson' as'SQL Table', count(*) as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T006_EMERGENCY_CONTACTS] inner join pbi.ActiveSource on T006F005_WAMI_KEY = WAMIKey union all
Select 'HRDC014_EEorCWSkillsAndExperience' as 'SQL Table', '0' as 'DataSize'  union all
Select 'HRDC015_EEorCWJobAndPositionHistory' as 'SQL Table', count(*) as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T104_EMPLOYMENT_HISTORY] inner join pbi.ActiveSource on T104F005_EMPLOYEE_NO = EmployeeID union all
Select 'HRDC016_EEorCWCompensationHistory' as 'SQL Table', count(*) as 'DataSize'FROM [DQS_STAGING_DATA].[AUR].[T510_PAYROLL_TRANSACTION] inner join pbi.ActiveSource on T510F005_EMPLOYEE_NO = EmployeeID union all
Select 'HRDC017_CarryOverBalances' as 'SQL Table', count(*) as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T520_LEAVE_TYPE] inner join pbi.ActiveSource on T520F005_EMPLOYEE_NO = EmployeeID union all
Select 'HRDC018_EmployeeTimeOffEvents' as 'SQL Table', count(*)  as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T522_LEAVE_OCCURRENCE] inner join pbi.ActiveSource on T522F005_EMPLOYEE_NO = EmployeeID union all
Select 'HRDC019_EmployeeLeaveOfAbsence' AS 'SQL Table', count(*)  as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T522_LEAVE_OCCURRENCE] inner join pbi.ActiveSource on T522F005_EMPLOYEE_NO = EmployeeID union all
Select 'HRDC021_EEorCWSystemUserAccount' AS 'SQL Table',count(*)  as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T803_SECURITY_USER] inner join pbi.ActiveSource on T803F050_WAMI_KEY = WAMIKey union all
Select 'HRDC022_AssignOrgRoles' as 'SQL Table', '0' 'DataSize' union all
Select 'HRDC023_ServiceDates' AS 'SQL Table', count(*)  as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T000_WAMI] inner join pbi.ActiveSource on T000F005_WAMI_KEY = WAMIKey union all
Select 'HRDC024_PaymentElectionsEnrolment' AS 'SQL Table',count(*)  as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T500_LEAVE_CONTROL] inner join pbi.ActiveSource on T500F005_EMPLOYEE_NO = EmployeeID union all
Select 'HRDC027_AcademicAppointment' AS 'SQL Table', count(*)  as 'DataSize' FROM [DQS_STAGING_DATA].[AUR].[T001_BASIC_DETAILS] inner join pbi.ActiveSource on T001F010_WAMI_KEY = WAMIKey union all
Select 'HRDC028_LearningImportedContent' AS 'SQL Table','0' as 'DataSize' union all
Select 'HRDC029_LearningImportedRecord' AS 'SQL Table', '0'  as 'DataSize' union all
Select 'HRDC030_LearningEnrolments' AS 'SQL Table',count(*)  as 'DataSize'FROM [DQS_STAGING_DATA].[AUR].[T253_ATTENDANCE_DETAILS] inner join pbi.ActiveSource on T253F020_ATTEND_WAMI_KEY = WAMIKey union all
Select 'HRDC031_CostingAllocations' AS 'SQL Table',count(*)  as 'DataSize'FROM [DQS_STAGING_DATA].[AUR].[T123_POSITION_COSTING] inner join pbi.ActiveSource on T123F005_POSITION_NO = PositionID union all
Select 'HRDC032_WorkerAdditionalData' AS 'SQL Table', count(*)  as 'DataSize'  FROM [DQS_STAGING_DATA].[AUR].[T007_EEO_DETAILS] inner join pbi.ActiveSource on T007F005_WAMI_KEY = WAMIKey union all
Select 'HRDC035_FormerWorkers' AS 'SQL Table',count(*)  as 'DataSize'FROM   [DQS_STAGING_DATA].[AUR].[T038_TERMINATION_DETAILS] inner join aur.T001_BASIC_DETAILS on T001F010_WAMI_KEY = T038F000_WAMI_KEY where T001F015_EMPLOYEE_STATUS = 'terminated' union all
Select 'HRDC036_LearningHistoryRecurring' AS 'SQL Table', '0'  as 'DataSize' union all
Select 'HRDC038_CollectiveAgreement' AS 'SQL Table', count(*)  as 'DataSize'FROM [DQS_STAGING_DATA].[AUR].[T001_BASIC_DETAILS] inner join pbi.ActiveSource on T001F010_WAMI_KEY = WAMIKey 


GO
