USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC023_ServiceDates_Sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER view [WD].[txHRDC023_ServiceDates_Sel]  AS
SELECT        
isnull(EmployeeContingentWorkerID,'') as EmployeeContingentWorkerID
,isnull(OriginalHireDate,'') as OriginalHireDate
,isnull(ContinuousServiceDate,'') as ContinuousServiceDate
,isnull(ExpectedRetirementDate,'') as ExpectedRetirementDate
,isnull(RetirementEligibilityDate,'') as RetirementEligibilityDate
,isnull(EndEmploymentDate,'') as EndEmploymentDate
,isnull(SeniorityDate,'') as SeniorityDate
,isnull(SeveranceDate,'') as SeveranceDate
,isnull(ContractEndDate,'') as ContractEndDate
,isnull(BenefitsServiceDate,'') as BenefitsServiceDate
,isnull(CompanyServiceDate,'') as CompanyServiceDate
,isnull(TimeOffServiceDate,'') as TimeOffServiceDate
,isnull(VestingDate,'') as VestingDate
,isnull(DateEnteredWorkforce,'') as DateEnteredWorkforce
,isnull(DaysUnemployed,'') as DaysUnemployed
,isnull(MonthsContinuousPriorEmployment,'') as MonthsContinuousPriorEmployment
FROM            WD.HRDC023_ServiceDates where zexclude is null


GO
