USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[svHRDC_RecordCounts_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER view [WD].[svHRDC_RecordCounts_Sel] AS

select 'EmpScope' as TableName, count(*) as Occurrences from WD.EmpScope where zexclude is null
union all
select 'HRDC001_ApplicantPersonalAndContact' as TableName, count(*) as Occurrences from WD.HRDC001_ApplicantPersonalAndContact where zexclude is null
union all
select 'HRDC002_ApplicantAddress' as TableName, count(*) as Occurrences from WD.HRDC002_ApplicantAddress where zexclude is null
union all
select 'HRDC003_ApplicantDemographic' as TableName, count(*) as Occurrences from WD.HRDC003_ApplicantDemographic where zexclude is null
union all
select 'HRDC004_ApplicantBiographic' as TableName, count(*) as Occurrences from WD.HRDC004_ApplicantBiographic where zexclude is null
union all
select 'HRDC005_ApplicantOtherID' as TableName, count(*) as Occurrences from WD.HRDC005_ApplicantOtherID where zexclude is null
union all
select 'HRDC006_EmployeePositionManagement' as TableName, count(*) as Occurrences from WD.HRDC006_EmployeePositionManagement where zexclude is null
union all
select 'HRDC007_ContingentWorkerPosition' as TableName, count(*) as Occurrences from WD.HRDC007_ContingentWorkerPosition where zexclude is null
union all
select 'HRDC008_EmployeeCompensationData' as TableName, count(*) as Occurrences from WD.HRDC008_EmployeeCompensationData where zexclude is null
union all
select 'HRDC009_EmployeeOneTimePayments' as TableName, count(*) as Occurrences from WD.HRDC009_EmployeeOneTimePayments where zexclude is null
union all
select 'HRDC010_ContingentWorkerCompensation' as TableName, count(*) as Occurrences from WD.HRDC010_ContingentWorkerCompensation where zexclude is null
union all
select 'HRDC011_AssignEmployeeToPayGroup' as TableName, count(*) as Occurrences from WD.HRDC011_AssignEmployeeToPayGroup where zexclude is null
union all
select 'HRDC012_ActivityPay' as TableName, count(*) as Occurrences from WD.HRDC012_ActivityPay where zexclude is null
union all
select 'HRDC013_EmployeeRelatedPerson' as TableName, count(*) as Occurrences from WD.HRDC013_EmployeeRelatedPerson where zexclude is null
union all
select 'HRDC014_EEorCWSkillsAndExperience' as TableName, count(*) as Occurrences from WD.HRDC014_EEorCWSkillsAndExperience where zexclude is null
union all
select 'HRDC015_EEorCWJobAndPositionHistory' as TableName, count(*) as Occurrences from WD.HRDC015_EEorCWJobAndPositionHistory where zexclude is null
union all
select 'HRDC016_EEorCWCompensationHistory' as TableName, count(*) as Occurrences from WD.HRDC016_EEorCWCompensationHistory where zexclude is null
union all
select 'HRDC017_CarryOverBalances' as TableName, count(*) as Occurrences from WD.HRDC017_CarryOverBalances where zexclude is null
union all
select 'HRDC018_EmployeeTimeOffEvents' as TableName, count(*) as Occurrences from WD.HRDC018_EmployeeTimeOffEvents where zexclude is null
union all
select 'HRDC019_EmployeeLeaveOfAbsence' as TableName, count(*) as Occurrences from WD.HRDC019_EmployeeLeaveOfAbsence where zexclude is null
union all
select 'HRDC020_TerminatedEmployees' as TableName, count(*) as Occurrences from WD.HRDC020_TerminatedEmployees where zexclude is null
union all
select 'HRDC021_EEorCWSystemUserAccount' as TableName, count(*) as Occurrences from WD.HRDC021_EEorCWSystemUserAccount where zexclude is null
union all
select 'HRDC022_AssignOrgRoles' as TableName, count(*) as Occurrences from WD.HRDC022_AssignOrgRoles where zexclude is null
union all
select 'HRDC023_ServiceDates' as TableName, count(*) as Occurrences from WD.HRDC023_ServiceDates where zexclude is null
union all
select 'HRDC024_PaymentElectionsEnrolment' as TableName, count(*) as Occurrences from WD.HRDC024_PaymentElectionsEnrolment where zexclude is null
union all
select 'HRDC025_EEPerformanceRating' as TableName, count(*) as Occurrences from WD.HRDC025_EEPerformanceRating where zexclude is null
union all
select 'HRDC026_UserBasedSecurityGroupAssignment' as TableName, count(*) as Occurrences from WD.HRDC026_UserBasedSecurityGroupAssignment where zexclude is null
union all
select 'HRDC027_AcademicAppointment' as TableName, count(*) as Occurrences from WD.HRDC027_AcademicAppointment where zexclude is null
union all
select 'HRDC028_LearningImportedContent' as TableName, count(*) as Occurrences from WD.HRDC028_LearningImportedContent where zexclude is null
union all
select 'HRDC029_LearningImportedRecord' as TableName, count(*) as Occurrences from WD.HRDC029_LearningImportedRecord where zexclude is null
union all
select 'HRDC030_LearningEnrolments' as TableName, count(*) as Occurrences from WD.HRDC030_LearningEnrolments where zexclude is null
union all
select 'HRDC031_CostingAllocations' as TableName, count(*) as Occurrences from WD.HRDC031_CostingAllocations where zexclude is null
union all
select 'HRDC032_WorkerAdditionalData' as TableName, count(*) as Occurrences from WD.HRDC032_WorkerAdditionalData where zexclude is null
union all
select 'HRDC035_FormerWorkers' as TableName, count(*) as Occurrences from WD.HRDC035_FormerWorkers where zexclude is null
union all
select 'HRDC038_CollectiveAgreement' as TableName, count(*) as Occurrences from WD.HRDC038_CollectiveAgreement where zexclude is null

GO
