USE [DQS_STAGING_DATA]
GO
/****** Object:  View [WD].[txHRDC006_EmployeePositionManagement_sel]    Script Date: 9/07/2020 10:28:17 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




/****** Script for SelectTopNRows command from SSMS  ******/
ALTER view [WD].[txHRDC006_EmployeePositionManagement_sel]
as
SELECT  
isnull([EmployeeID],'') as [EmployeeID]
,isnull([FullName],'') as [FullName]
,isnull([EmployeeTypeName],'') as [EmployeeTypeName]
,isnull([AcademicTenureEligible],'') as [AcademicTenureEligible]
,isnull([HireDate],'') as [HireDate]
,isnull([ContinuousServiceDate],'') as [ContinuousServiceDate]
,isnull([ProbationStartDate],'') as [ProbationStartDate]
,isnull([ProbationEndDate],'') as [ProbationEndDate]
,isnull([EndEmploymentDate],'') as [EndEmploymentDate]
,isnull([PositionStartDateForConversion],'') as [PositionStartDateForConversion]
,isnull([BenefitServiceDate],'') as [BenefitServiceDate]
,isnull([CompanyServiceDate],'') as [CompanyServiceDate]
,isnull([SupervisoryOrganisationPositionManagementOrg],'') as [SupervisoryOrganisationPositionManagementOrg]
,isnull([CostCenterOrganisation],'') as [CostCenterOrganisation]
,isnull([CompanyOrganisation],'') as [CompanyOrganisation]
,isnull([RegionOrganisation],'') as [RegionOrganisation]
,isnull([MatrixOrganisation],'') as [MatrixOrganisation]
,isnull([BusinessUnitOrganisation],'') as [BusinessUnitOrganisation]
,isnull([CustomOrganization1],'') as [CustomOrganization1]
,isnull([CustomOrganization2],'') as [CustomOrganization2]
,isnull([CustomOrganization3],'') as [CustomOrganization3]
,isnull([CustomOrganization4],'') as [CustomOrganization4]
,isnull([JobPositionID],'') as [JobPositionID]
,isnull([JobPositionTitle],'') as [JobPositionTitle]
,isnull([JobCode],'') as [JobCode]
,isnull([PositionTitle],'') as [PositionTitle]
,isnull([BusinessTitle],'') as [BusinessTitle]
,isnull([Location],'') as [Location]
,isnull([WorkSpace],'') as [WorkSpace]
,isnull([TimeType],'') as [TimeType]
,isnull([zDefaultWeeklyHours],'') as [DefaultWeeklyHours]
,isnull([zScheduledWeeklyHours],'') as [ScheduledWeeklyHours]
,isnull([PayTypeName],'') as [PayTypeName]
,isnull([AdditionalJobClassificationName],'') as [AdditionalJobClassificationName]
,isnull([CriticalJob],'') as [CriticalJob]
,isnull([DifficultyToFill],'') as [DifficultyToFill]
,isnull([CompanyInsiderTypeName],'') as [CompanyInsiderTypeName]
,isnull([AnnualWorkPeriodName],'') as [AnnualWorkPeriodName]
,isnull([DisbursementPlanPeriodName],'') as [DisbursementPlanPeriodName]
,isnull([WorkHoursProfileDescription],'') as [WorkHoursProfileDescription]
,isnull([WorkShiftName],'') as [WorkShiftName]
,isnull([CountryISOCode],'') as [CountryISOCode]
,isnull([CountryRegionName],'') as [CountryRegionName]
,isnull([HireReason],'') as [HireReason]
,isnull([PositionRequestReason],'') as [PositionRequestReason]
,isnull([InternationalAssignmentTypes],'') as [InternationalAssignmentTypes]
,isnull([InternationalAssignmentReason],'') as [InternationalAssignmentReason]
,isnull([AdditionalPosition],'') as [AdditionalPosition]
,isnull([LoadPhase],'') as [LoadPhase]
,isnull([ChangeFromPositionID],'') as [ChangeFromPositionID]
,isnull([Substantive],'') as [Substantive]
,isnull([EmployeeContractType],'') as [EmployeeContractType]
,isnull([EmployeeContractStatus],'') as [EmployeeContractStatus]
,isnull([ContractDescription],'') as [ContractDescription]
,isnull([ContractEffectiveDate],'') as [ContractEffectiveDate]
,isnull([ContractStartDate],'') as [ContractStartDate]
,isnull([ContractReviewDate],'') as [ContractReviewDate]
 FROM [DQS_STAGING_DATA].[WD].[HRDC006_EmployeePositionManagement]
 where zExclude is null
GO
